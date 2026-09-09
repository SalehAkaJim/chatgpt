#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
import shutil
import tempfile
import urllib.request
from collections import defaultdict
from pathlib import Path

from reference_data import (
    LEVELS,
    build_cefr_indexes,
    dump_json,
    is_curriculum_eligible,
    is_production_eligible,
    normalize_lemma,
    normalize_persian,
    normalize_pos,
    parse_grammar_csv,
    parse_profile_csv,
    resolve_cefr,
    score_reference_record,
    sha256_file,
    stable_reference_key,
)

USER_AGENT = "NovaReferenceSync/1.0 (+https://github.com/SalehAkaJim/chatgpt)"
BASE_SOURCE_NAMES = ("openjam", "cefrj")


def raw_github(repo: str, commit: str, path: str) -> str:
    return f"https://raw.githubusercontent.com/{repo}/{commit}/{path}"


def download(url: str, dest: Path) -> None:
    req = urllib.request.Request(url, headers={"User-Agent": USER_AGENT})
    with urllib.request.urlopen(req, timeout=120) as response, dest.open("wb") as out:
        shutil.copyfileobj(response, out)


def load_json(path: Path):
    return json.loads(path.read_text(encoding="utf-8"))


def build_snapshot(repo_root: Path, source_cache: Path | None = None) -> dict:
    root = repo_root / "nova/reference/en-fa"
    lock = load_json(root / "sources.lock.json")
    threshold = int(lock.get("qualityThreshold", 90))

    # This builder owns only the deterministic base lexical/grammar layer.
    # CMUdict, NGSL-Spoken and Tatoeba are handled by the extension sync.
    sources = lock.get("sources", {})
    missing_base = [name for name in BASE_SOURCE_NAMES if name not in sources]
    if missing_base:
        raise RuntimeError(f"Missing required base reference sources: {missing_base}")

    with tempfile.TemporaryDirectory(prefix="nova-reference-") as td:
        cache = Path(source_cache) if source_cache else Path(td)
        cache.mkdir(parents=True, exist_ok=True)
        fetched = {}
        for source_name in BASE_SOURCE_NAMES:
            source = sources[source_name]
            required = ("repository", "commit", "files")
            missing = [key for key in required if not source.get(key)]
            if missing:
                raise RuntimeError(f"Base source {source_name} is missing fields: {missing}")
            for logical_name, rel_path in source["files"].items():
                filename = f"{source_name}__{logical_name}__{Path(rel_path).name}"
                dest = cache / filename
                if not dest.exists():
                    download(raw_github(source["repository"], source["commit"], rel_path), dest)
                fetched[(source_name, logical_name)] = dest

        words = load_json(fetched[("openjam", "words")])
        translations = load_json(fetched[("openjam", "translationsFa")])
        categories = load_json(fetched[("openjam", "categories")])
        word_categories = load_json(fetched[("openjam", "wordCategories")])
        cefrj_text = fetched[("cefrj", "vocabulary")].read_text(encoding="utf-8-sig")
        octanove_text = fetched[("cefrj", "c1c2")].read_text(encoding="utf-8-sig")
        grammar_text = fetched[("cefrj", "grammar")].read_text(encoding="utf-8-sig")

        cefrj_rows = parse_profile_csv(cefrj_text, source="cefrj")
        octanove_rows = parse_profile_csv(octanove_text, source="octanove")
        exact_index, lemma_index = build_cefr_indexes(cefrj_rows, octanove_rows)
        translation_by_sense = {
            str(t.get("sense_id")): t for t in translations
            if t.get("language_code") == "fa" and t.get("sense_id")
        }
        category_by_id = {str(c["id"]): c for c in categories if c.get("id")}
        category_ids_by_word: dict[str, list[str]] = defaultdict(list)
        for wc in word_categories:
            if wc.get("word_id") and wc.get("category_id"):
                category_ids_by_word[str(wc["word_id"])].append(str(wc["category_id"]))

        by_level: dict[str, list[dict]] = {level: [] for level in LEVELS}
        unplaced: list[dict] = []
        counts = {
            "words": len(words), "senses": 0, "records": 0, "profileOnly": 0,
            "curriculumEligible": 0, "productionEligible": 0, "reviewOnly": 0,
        }
        seen_lemma_pos: set[tuple[str, str | None]] = set()

        for word in words:
            lemma = normalize_lemma(word.get("english"))
            word_id = str(word.get("id") or "")
            topic_slugs = sorted({
                category_by_id[cid].get("slug")
                for cid in category_ids_by_word.get(word_id, [])
                if cid in category_by_id and category_by_id[cid].get("slug")
            })
            for sense in word.get("senses") or []:
                counts["senses"] += 1
                counts["records"] += 1
                sense_id = str(sense.get("id") or "")
                pos = normalize_pos(sense.get("part_of_speech"))
                tr = translation_by_sense.get(sense_id, {})
                cefr = resolve_cefr(lemma, pos, word.get("level"), exact_index, lemma_index)
                source_translation = (tr.get("meaning") or "").strip()
                normalized_translation = normalize_persian(source_translation)
                record = {
                    "referenceKey": stable_reference_key(lemma, pos, sense_id),
                    "lemma": lemma,
                    "partOfSpeech": pos,
                    "senseId": sense_id,
                    "senseOrder": sense.get("sense_order"),
                    "definitionEn": (sense.get("definition_en") or "").strip() or None,
                    "exampleEn": (sense.get("example_en") or "").strip() or None,
                    "translationFa": normalized_translation or None,
                    "translationFaSource": source_translation or None,
                    "exampleFa": (tr.get("example") or "").strip() or None,
                    "frequencyRank": word.get("frequency_rank"),
                    "cefr": cefr.get("level"),
                    "cefrSource": cefr.get("source"),
                    "cefrEvidenceLevels": list(cefr.get("evidenceLevels") or []),
                    "cefrConflict": bool(cefr.get("conflict")),
                    "openjamLevel": word.get("level"),
                    "topics": topic_slugs,
                    "sourceType": "openjam_sense",
                    "flags": [],
                    "provenance": {
                        "openjamWordId": word_id or None,
                        "openjamSenseId": sense_id or None,
                        "openjamTranslationId": str(tr.get("id")) if tr.get("id") else None,
                        "openjamCommit": sources["openjam"]["commit"],
                        "cefrJCommit": sources["cefrj"]["commit"],
                    },
                }
                record["qualityScore"], score_flags = score_reference_record(record)
                record["flags"] = sorted(set(record["flags"] + score_flags))
                record["curriculumEligible"] = is_curriculum_eligible(cefr)
                record["productionEligible"] = is_production_eligible(record, threshold)
                if record["curriculumEligible"]:
                    counts["curriculumEligible"] += 1
                if record["productionEligible"]:
                    counts["productionEligible"] += 1
                else:
                    counts["reviewOnly"] += 1
                seen_lemma_pos.add((lemma, pos))
                level = cefr.get("level")
                if level in by_level:
                    by_level[level].append(record)
                else:
                    unplaced.append(record)

        # Add profile-only rows so curriculum coverage is not limited to Openjam.
        for profile_row in [*cefrj_rows, *octanove_rows]:
            lemma = normalize_lemma(profile_row.get("lemma"))
            pos = normalize_pos(profile_row.get("partOfSpeech"))
            profile_level = profile_row.get("level")
            if not lemma or profile_level not in by_level or (lemma, pos) in seen_lemma_pos:
                continue
            counts["records"] += 1
            counts["profileOnly"] += 1
            cefr = resolve_cefr(lemma, pos, None, exact_index, lemma_index)
            record = {
                "referenceKey": stable_reference_key(lemma, pos, f"profile:{profile_row.get('source')}:{profile_level}"),
                "lemma": lemma,
                "partOfSpeech": pos,
                "senseId": None,
                "senseOrder": None,
                "definitionEn": None,
                "exampleEn": None,
                "translationFa": None,
                "translationFaSource": None,
                "exampleFa": None,
                "frequencyRank": None,
                "cefr": cefr.get("level") or profile_level,
                "cefrSource": cefr.get("source") or profile_row.get("source"),
                "cefrEvidenceLevels": list(cefr.get("evidenceLevels") or []) or [profile_level],
                "cefrConflict": bool(cefr.get("conflict")),
                "openjamLevel": None,
                "topics": [],
                "sourceType": "cefr_profile_only",
                "flags": ["missing_persian", "missing_sense"],
                "provenance": {
                    "openjamWordId": None,
                    "openjamSenseId": None,
                    "openjamTranslationId": None,
                    "openjamCommit": sources["openjam"]["commit"],
                    "cefrJCommit": sources["cefrj"]["commit"],
                    "profileSource": profile_row.get("source"),
                },
            }
            record["qualityScore"], score_flags = score_reference_record(record)
            record["flags"] = sorted(set(record["flags"] + score_flags))
            record["curriculumEligible"] = is_curriculum_eligible(cefr)
            record["productionEligible"] = is_production_eligible(record, threshold)
            if record["curriculumEligible"]:
                counts["curriculumEligible"] += 1
            if record["productionEligible"]:
                counts["productionEligible"] += 1
            else:
                counts["reviewOnly"] += 1
            by_level[profile_level].append(record)
            seen_lemma_pos.add((lemma, pos))

        grammar_by_level = parse_grammar_csv(grammar_text)
        file_records = []
        lexical_summary = {}
        grammar_summary = {}
        for level in LEVELS:
            lexical_items = sorted(
                by_level[level],
                key=lambda x: (
                    x.get("frequencyRank") is None,
                    x.get("frequencyRank") or 10**9,
                    x.get("lemma") or "",
                    x.get("partOfSpeech") or "",
                    x.get("senseOrder") or 10**9,
                    x.get("referenceKey") or "",
                ),
            )
            lexical_path = root / "lexical" / f"{level}.json"
            dump_json(lexical_path, {
                "schemaVersion": 1,
                "courseCode": "en-fa",
                "level": level,
                "items": lexical_items,
            })
            lexical_summary[level] = {
                "records": len(lexical_items),
                "curriculumEligible": sum(bool(x.get("curriculumEligible")) for x in lexical_items),
                "productionEligible": sum(bool(x.get("productionEligible")) for x in lexical_items),
            }
            file_records.append({
                "path": str(lexical_path.relative_to(root)),
                "sha256": sha256_file(lexical_path),
                "records": len(lexical_items),
            })

            grammar_items = sorted(
                grammar_by_level.get(level, []),
                key=lambda x: (x.get("shorthandCode") or "", x.get("grammarKey") or ""),
            )
            grammar_path = root / "grammar" / f"{level}.json"
            dump_json(grammar_path, {
                "schemaVersion": 1,
                "courseCode": "en-fa",
                "level": level,
                "items": grammar_items,
            })
            grammar_summary[level] = len(grammar_items)
            file_records.append({
                "path": str(grammar_path.relative_to(root)),
                "sha256": sha256_file(grammar_path),
                "records": len(grammar_items),
            })

        source_sha = {
            f"{source_name}.{logical_name}": sha256_file(path)
            for (source_name, logical_name), path in sorted(fetched.items())
        }
        manifest = {
            "schemaVersion": 1,
            "courseCode": "en-fa",
            "generatorVersion": 1,
            "qualityThreshold": threshold,
            "sourceLocks": {
                name: {
                    "repository": sources[name]["repository"],
                    "commit": sources[name]["commit"],
                    "license": sources[name].get("license"),
                }
                for name in BASE_SOURCE_NAMES
            },
            "sourceSha256": source_sha,
            "counts": counts,
            "lexicalByLevel": lexical_summary,
            "grammarByLevel": grammar_summary,
            "files": file_records,
        }
        dump_json(root / "manifest.json", manifest)
        return manifest


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--repo-root", default=".")
    parser.add_argument("--source-cache")
    args = parser.parse_args()
    manifest = build_snapshot(Path(args.repo_root).resolve(), Path(args.source_cache) if args.source_cache else None)
    print(json.dumps({"status": "PASS", "counts": manifest["counts"]}, ensure_ascii=False))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

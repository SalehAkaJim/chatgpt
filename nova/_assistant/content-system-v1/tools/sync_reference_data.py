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

    with tempfile.TemporaryDirectory(prefix="nova-reference-") as td:
        cache = Path(source_cache) if source_cache else Path(td)
        cache.mkdir(parents=True, exist_ok=True)

        fetched = {}
        for source_name, source in lock["sources"].items():
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
            str(t.get("sense_id")): t
            for t in translations
            if t.get("language_code") == "fa" and t.get("sense_id")
        }
        category_by_id = {str(c["id"]): c for c in categories if c.get("id")}
        category_ids_by_word: dict[str, list[str]] = defaultdict(list)
        for wc in word_categories:
            if wc.get("word_id") and wc.get("category_id"):
                category_ids_by_word[str(wc["word_id"])].append(str(wc["category_id"]))

        by_level: dict[str, list[dict]] = {level: [] for level in LEVELS}
        unplaced: list[dict] = []
        counts = {"words": len(words), "senses": 0, "productionEligible": 0, "reviewOnly": 0}

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
                    "translationFa": normalized_translation,
                    "translationFaSource": source_translation if source_translation != normalized_translation else None,
                    "exampleFa": normalize_persian(tr.get("example")) if tr.get("example") else None,
                    "frequencyRank": word.get("frequency_rank"),
                    "cefr": cefr["level"],
                    "cefrSource": cefr["source"],
                    "cefrEvidenceLevels": cefr["evidenceLevels"],
                    "cefrConflict": cefr["conflict"],
                    "openjamLevel": word.get("level"),
                    "topics": topic_slugs,
                    "qualityScore": None,
                    "productionEligible": False,
                    "flags": [],
                    "provenance": {
                        "openjamWordId": word_id,
                        "openjamSenseId": sense_id,
                        "openjamTranslationId": tr.get("id"),
                        "openjamCommit": lock["sources"]["openjam"]["commit"],
                        "cefrJCommit": lock["sources"]["cefrj"]["commit"],
                    },
                }
                score, flags = score_reference_record(record)
                record["qualityScore"] = score
                record["flags"] = flags
                record["productionEligible"] = score >= threshold and bool(record["translationFa"] and record["cefr"])
                counts["productionEligible" if record["productionEligible"] else "reviewOnly"] += 1

                if record["cefr"] in by_level:
                    by_level[record["cefr"]].append(record)
                else:
                    unplaced.append(record)

        lexical_dir = root / "lexical"
        grammar_dir = root / "grammar"
        lexical_dir.mkdir(parents=True, exist_ok=True)
        grammar_dir.mkdir(parents=True, exist_ok=True)

        file_entries = []
        level_counts = {}
        for level in LEVELS:
            rows = sorted(
                by_level[level],
                key=lambda r: (
                    not r["productionEligible"],
                    r["frequencyRank"] is None,
                    r["frequencyRank"] or 10**9,
                    r["lemma"],
                    r["partOfSpeech"] or "",
                    r["senseOrder"] or 0,
                ),
            )
            out = lexical_dir / f"{level}.json"
            dump_json(out, {"schemaVersion": 1, "courseCode": "en-fa", "level": level, "items": rows})
            level_counts[level] = {
                "records": len(rows),
                "productionEligible": sum(1 for r in rows if r["productionEligible"]),
            }
            file_entries.append({"path": str(out.relative_to(root)), "sha256": sha256_file(out), "records": len(rows)})

        if unplaced:
            out = lexical_dir / "UNPLACED.json"
            dump_json(out, {"schemaVersion": 1, "courseCode": "en-fa", "level": None, "items": unplaced})
            file_entries.append({"path": str(out.relative_to(root)), "sha256": sha256_file(out), "records": len(unplaced)})
        else:
            (lexical_dir / "UNPLACED.json").unlink(missing_ok=True)

        grammar_rows = parse_grammar_csv(grammar_text)
        grammar_counts = {}
        for level in LEVELS:
            rows = [r for r in grammar_rows if r["cefr"] == level]
            out = grammar_dir / f"{level}.json"
            dump_json(out, {"schemaVersion": 1, "courseCode": "en-fa", "level": level, "items": rows})
            grammar_counts[level] = len(rows)
            file_entries.append({"path": str(out.relative_to(root)), "sha256": sha256_file(out), "records": len(rows)})

        source_hashes = {}
        for (source_name, logical_name), path in sorted(fetched.items()):
            source_hashes[f"{source_name}.{logical_name}"] = sha256_file(path)

        manifest = {
            "schemaVersion": 1,
            "courseCode": "en-fa",
            "generatorVersion": 1,
            "qualityThreshold": threshold,
            "sourceLocks": {
                name: {"repository": s["repository"], "commit": s["commit"], "license": s.get("license")}
                for name, s in lock["sources"].items()
            },
            "sourceSha256": source_hashes,
            "counts": counts,
            "lexicalByLevel": level_counts,
            "grammarByLevel": grammar_counts,
            "files": file_entries,
        }
        dump_json(root / "manifest.json", manifest)
        return manifest


def main() -> int:
    p = argparse.ArgumentParser()
    p.add_argument("--repo-root", default=".")
    p.add_argument("--source-cache", default=None, help="Optional directory containing pre-downloaded source files")
    args = p.parse_args()
    manifest = build_snapshot(Path(args.repo_root).resolve(), Path(args.source_cache) if args.source_cache else None)
    print(json.dumps({"counts": manifest["counts"], "lexicalByLevel": manifest["lexicalByLevel"]}, ensure_ascii=False, indent=2))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

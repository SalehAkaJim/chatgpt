#!/usr/bin/env python3
"""Nova production reference-data layer.

Commands:
  sync      Fetch Openjam + CEFR-J and build a versioned snapshot.
  validate  Validate an existing snapshot offline.
  compare   Compare canonical Nova lesson lexical items with the snapshot.

Normal lesson CI should use validate/compare only. `sync` is intentionally a
separate networked operation so authoring/runtime builds remain reproducible.
"""
from __future__ import annotations

import argparse
import csv
import hashlib
import io
import json
import re
import sys
import time
import unicodedata
import urllib.error
import urllib.request
from collections import defaultdict
from datetime import datetime, timezone
from pathlib import Path
from typing import Any

SCHEMA_VERSION = "1.0.0"
QUALITY_THRESHOLD = 90
LEVEL_ORDER = {v: i for i, v in enumerate(("A1", "A2", "B1", "B2", "C1", "C2"))}

DEFAULT_SOURCES = {
    "openjam_words": "https://raw.githubusercontent.com/amirj4m/openjam/main/data/json/words_en.json",
    "openjam_fa": "https://raw.githubusercontent.com/amirj4m/openjam/main/data/json/translations_fa.json",
    "cefrj_vocab": "https://raw.githubusercontent.com/openlanguageprofiles/olp-en-cefrj/master/cefrj-vocabulary-profile-1.5.csv",
    "cefrj_grammar": "https://raw.githubusercontent.com/openlanguageprofiles/olp-en-cefrj/master/cefrj-grammar-profile-20180315.csv",
}

SOURCE_META = {
    "openjam": {
        "name": "Openjam",
        "homepage": "https://github.com/amirj4m/openjam",
        "license": "MIT",
        "role": ["lemma", "sense", "frequency", "translation_fa", "cefr_signal"],
    },
    "cefrj": {
        "name": "Open Language Profiles / CEFR-J",
        "homepage": "https://github.com/openlanguageprofiles/olp-en-cefrj",
        "license": "See upstream README; attribution retained in Nova reference metadata",
        "role": ["cefr_vocabulary", "cefr_grammar"],
    },
}

POS_ALIASES = {
    "n": "noun", "v": "verb", "adj": "adjective", "adv": "adverb",
    "prep": "preposition", "conj": "conjunction", "det": "determiner",
    "interj": "interjection", "pron": "pronoun", "num": "numeral",
}


def utc_now() -> str:
    return datetime.now(timezone.utc).replace(microsecond=0).isoformat().replace("+00:00", "Z")


def sha256_bytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def normalize_lemma(value: str) -> str:
    value = unicodedata.normalize("NFKC", value or "").strip().lower()
    value = value.replace("’", "'").replace("‘", "'")
    return re.sub(r"\s+", " ", value)


def normalize_pos(value: str | None) -> str | None:
    if not value:
        return None
    value = normalize_lemma(value)
    return POS_ALIASES.get(value, value)


def normalize_fa(value: str | None) -> str:
    value = unicodedata.normalize("NFKC", value or "")
    value = value.replace("ي", "ی").replace("ك", "ک")
    value = value.replace("\u200c", " ")
    value = re.sub(r"[\u064b-\u065f\u0670]", "", value)
    value = re.sub(r"[^\w\s]", " ", value, flags=re.UNICODE)
    return re.sub(r"\s+", " ", value).strip()


def level_base(value: str | None) -> str | None:
    if not value:
        return None
    match = re.search(r"\b(A1|A2|B1|B2|C1|C2)\b", value.upper())
    return match.group(1) if match else None


def min_level(levels: list[str]) -> str | None:
    clean = sorted({x for x in levels if x in LEVEL_ORDER}, key=LEVEL_ORDER.get)
    return clean[0] if clean else None


def fetch(url: str, retries: int = 3, timeout: int = 90) -> bytes:
    headers = {"User-Agent": "Nova-Reference-Layer/1.0 (+https://github.com/SalehAkaJim/chatgpt)"}
    last: Exception | None = None
    for attempt in range(retries):
        try:
            req = urllib.request.Request(url, headers=headers)
            with urllib.request.urlopen(req, timeout=timeout) as response:
                return response.read()
        except (urllib.error.URLError, TimeoutError) as exc:
            last = exc
            if attempt + 1 < retries:
                time.sleep(2 ** attempt)
    raise RuntimeError(f"failed to fetch {url}: {last}")


def load_json_bytes(data: bytes) -> Any:
    return json.loads(data.decode("utf-8-sig"))


def csv_rows(data: bytes) -> list[dict[str, str]]:
    text = data.decode("utf-8-sig")
    return [dict(row) for row in csv.DictReader(io.StringIO(text))]


def build_cefr_index(rows: list[dict[str, str]]) -> dict[str, list[dict[str, Any]]]:
    out: dict[str, list[dict[str, Any]]] = defaultdict(list)
    for row in rows:
        lemma = normalize_lemma(row.get("headword", ""))
        level = level_base(row.get("CEFR"))
        if not lemma or not level:
            continue
        out[lemma].append({
            "partOfSpeech": normalize_pos(row.get("pos")),
            "level": level,
            "coreInventory1": (row.get("CoreInventory 1") or "").strip() or None,
            "coreInventory2": (row.get("CoreInventory 2") or "").strip() or None,
            "threshold": (row.get("Threshold") or "").strip() or None,
        })
    return out


def build_translation_index(rows: list[dict[str, Any]]) -> dict[str, dict[str, Any]]:
    return {
        str(row.get("sense_id")): row
        for row in rows
        if row.get("sense_id") and row.get("language_code") == "fa"
    }


def lexical_quality(item: dict[str, Any]) -> tuple[int, list[str]]:
    score = 0
    signals: list[str] = []
    if item.get("cefrJEntries"):
        score += 30; signals.append("cefrj")
    if item.get("openjamLevel"):
        score += 10; signals.append("openjam_cefr")
    if item.get("frequencyRank") is not None:
        score += 15; signals.append("frequency")
    senses = item.get("senses") or []
    if senses:
        score += 20; signals.append("sense")
    if any(s.get("translationFa") for s in senses):
        score += 20; signals.append("translation_fa")
    if any(s.get("partOfSpeech") for s in senses) or any(e.get("partOfSpeech") for e in item.get("cefrJEntries", [])):
        score += 5; signals.append("pos")
    return min(score, 100), signals


def normalize_grammar(rows: list[dict[str, str]], level: str) -> list[dict[str, Any]]:
    out = []
    for row in rows:
        primary = level_base(row.get("CEFR-J Level"))
        supporting = [
            level_base(row.get("FREQ*DISP")),
            level_base(row.get("Core Inventory")),
            level_base(row.get("GSELO")),
        ]
        resolved = primary or min_level([x for x in supporting if x])
        if resolved != level:
            continue
        out.append({
            "id": (row.get("ID") or "").strip(),
            "code": (row.get("Shorthand Code") or "").strip(),
            "grammaticalItem": (row.get("Grammatical Item") or "").strip(),
            "sentenceType": (row.get("Sentence Type") or "").strip() or None,
            "cefrJLevel": (row.get("CEFR-J Level") or "").strip() or None,
            "resolvedLevel": resolved,
            "coreInventory": (row.get("Core Inventory") or "").strip() or None,
            "egp": (row.get("EGP") or "").strip() or None,
            "gselo": (row.get("GSELO") or "").strip() or None,
        })
    return out


def build_snapshot(words: list[dict[str, Any]], translations: list[dict[str, Any]],
                   cefr_rows: list[dict[str, str]], grammar_rows: list[dict[str, str]],
                   level: str, source_hashes: dict[str, str]) -> dict[str, Any]:
    trans = build_translation_index(translations)
    cefr_index = build_cefr_index(cefr_rows)
    openjam_index = {normalize_lemma(w.get("english", "")): w for w in words if w.get("english")}
    lemmas = set(cefr_index) | set(openjam_index)
    lexical: list[dict[str, Any]] = []

    for lemma in sorted(lemmas):
        ow = openjam_index.get(lemma)
        ce = cefr_index.get(lemma, [])
        ce_levels = [e["level"] for e in ce]
        open_level = level_base(ow.get("level")) if ow else None
        resolved = min_level(ce_levels) or open_level
        if resolved != level:
            continue

        senses = []
        if ow:
            for sense in ow.get("senses", []):
                tr = trans.get(str(sense.get("id")))
                senses.append({
                    "sourceSenseId": sense.get("id"),
                    "partOfSpeech": normalize_pos(sense.get("part_of_speech")),
                    "senseOrder": sense.get("sense_order"),
                    "definitionEn": sense.get("definition_en"),
                    "exampleEn": sense.get("example_en"),
                    "translationFa": tr.get("meaning") if tr else None,
                    "translationExampleFa": tr.get("example") if tr else None,
                })

        item = {
            "lemma": lemma,
            "resolvedLevel": resolved,
            "cefrJEntries": ce,
            "openjamWordId": ow.get("id") if ow else None,
            "openjamLevel": open_level,
            "frequencyRank": ow.get("frequency_rank") if ow else None,
            "openjamSourceList": ow.get("source_list") if ow else None,
            "senses": senses,
        }
        score, signals = lexical_quality(item)
        item["qualityScore"] = score
        item["qualitySignals"] = signals
        item["eligibleForAutoSelection"] = score >= QUALITY_THRESHOLD
        lexical.append(item)

    grammar = normalize_grammar(grammar_rows, level)
    return {
        "schemaVersion": SCHEMA_VERSION,
        "generatedAt": utc_now(),
        "courseCode": "en-fa",
        "level": level,
        "qualityThreshold": QUALITY_THRESHOLD,
        "sourcePolicy": {
            "cefrResolution": "CEFR-J first; Openjam only as fallback",
            "translation": "Openjam Persian sense translation is reference evidence, never a blind runtime overwrite",
            "runtimeImport": "reference data does not write runtime tables directly",
        },
        "sources": [
            {"sourceKey": "openjam", **SOURCE_META["openjam"], "hashes": {
                "words": source_hashes.get("openjam_words"), "fa": source_hashes.get("openjam_fa")}},
            {"sourceKey": "cefrj", **SOURCE_META["cefrj"], "hashes": {
                "vocab": source_hashes.get("cefrj_vocab"), "grammar": source_hashes.get("cefrj_grammar")}},
        ],
        "summary": {
            "lexicalItems": len(lexical),
            "eligibleForAutoSelection": sum(1 for x in lexical if x["eligibleForAutoSelection"]),
            "cefrJBacked": sum(1 for x in lexical if x["cefrJEntries"]),
            "openjamBacked": sum(1 for x in lexical if x["openjamWordId"]),
            "withPersianTranslation": sum(1 for x in lexical if any(s.get("translationFa") for s in x["senses"])),
            "grammarTargets": len(grammar),
        },
        "lexicalItems": lexical,
        "grammarTargets": grammar,
    }


def write_json(path: Path, value: Any) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(value, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def sync_command(args: argparse.Namespace) -> int:
    blobs = {key: fetch(url) for key, url in DEFAULT_SOURCES.items()}
    hashes = {key: sha256_bytes(data) for key, data in blobs.items()}
    snapshot = build_snapshot(
        load_json_bytes(blobs["openjam_words"]),
        load_json_bytes(blobs["openjam_fa"]),
        csv_rows(blobs["cefrj_vocab"]),
        csv_rows(blobs["cefrj_grammar"]),
        args.level,
        hashes,
    )
    write_json(Path(args.output), snapshot)
    print(json.dumps(snapshot["summary"], ensure_ascii=False))
    return 0


def validate_snapshot(snapshot: dict[str, Any]) -> list[str]:
    errors: list[str] = []
    if snapshot.get("schemaVersion") != SCHEMA_VERSION:
        errors.append(f"schemaVersion must be {SCHEMA_VERSION}")
    if snapshot.get("level") not in LEVEL_ORDER:
        errors.append("invalid level")
    lexical = snapshot.get("lexicalItems")
    if not isinstance(lexical, list) or not lexical:
        errors.append("lexicalItems must be a non-empty list")
        return errors
    seen: set[str] = set()
    for i, item in enumerate(lexical):
        lemma = item.get("lemma")
        if not lemma:
            errors.append(f"lexicalItems[{i}] missing lemma")
            continue
        if lemma in seen:
            errors.append(f"duplicate lemma: {lemma}")
        seen.add(lemma)
        if item.get("resolvedLevel") != snapshot.get("level"):
            errors.append(f"{lemma}: resolvedLevel differs from snapshot level")
        expected_eligible = int(item.get("qualityScore", -1)) >= int(snapshot.get("qualityThreshold", QUALITY_THRESHOLD))
        if bool(item.get("eligibleForAutoSelection")) != expected_eligible:
            errors.append(f"{lemma}: eligibility/quality mismatch")
    if [x.get("lemma") for x in lexical] != sorted(x.get("lemma") for x in lexical):
        errors.append("lexicalItems must be sorted by lemma")
    return errors


def validate_command(args: argparse.Namespace) -> int:
    snapshot = json.loads(Path(args.snapshot).read_text(encoding="utf-8"))
    errors = validate_snapshot(snapshot)
    if errors:
        print("\n".join(f"ERROR: {x}" for x in errors), file=sys.stderr)
        return 1
    print(f"reference snapshot OK: {snapshot['summary']}")
    return 0


def iter_lesson_files(root: Path, level: str):
    for path in sorted(root.glob("*/lesson.source.json")):
        data = json.loads(path.read_text(encoding="utf-8"))
        if data.get("levelKey") == level:
            yield path, data


def compare_lessons(snapshot: dict[str, Any], lessons_root: Path, level: str) -> dict[str, Any]:
    ref = {item["lemma"]: item for item in snapshot["lexicalItems"]}
    unique: dict[tuple[str, str | None, str | None], dict[str, Any]] = {}
    per_lesson = []
    missing = set()
    level_conflicts = []
    translation_mismatches = []

    for path, lesson in iter_lesson_files(lessons_root, level):
        checks = []
        for lex in lesson.get("lexicalItems", []):
            lemma = normalize_lemma(lex.get("lemma") or lex.get("displayForm") or "")
            pos = normalize_pos(lex.get("partOfSpeech"))
            fa = lex.get("translationFa")
            key = (lemma, pos, lex.get("senseKey"))
            unique[key] = lex
            item = ref.get(lemma)
            if not item:
                missing.add(lemma)
                checks.append({"lemma": lemma, "status": "missing_reference"})
                continue
            cefr_ok = item.get("resolvedLevel") == level
            if not cefr_ok:
                level_conflicts.append({"lessonKey": lesson.get("lessonKey"), "lemma": lemma, "referenceLevel": item.get("resolvedLevel")})
            ext_fa = sorted({s.get("translationFa") for s in item.get("senses", []) if s.get("translationFa")})
            fa_ok = not ext_fa or normalize_fa(fa) in {normalize_fa(x) for x in ext_fa}
            if ext_fa and not fa_ok:
                translation_mismatches.append({
                    "lessonKey": lesson.get("lessonKey"), "lemma": lemma,
                    "nova": fa, "openjamCandidates": ext_fa,
                })
            checks.append({
                "lemma": lemma,
                "partOfSpeech": pos,
                "referenceQualityScore": item.get("qualityScore"),
                "eligibleForAutoSelection": item.get("eligibleForAutoSelection"),
                "cefrMatch": cefr_ok,
                "translationMatchOrNoExternalTranslation": fa_ok,
                "referenceSources": {
                    "cefrJ": bool(item.get("cefrJEntries")),
                    "openjam": bool(item.get("openjamWordId")),
                },
            })
        per_lesson.append({"lessonKey": lesson.get("lessonKey"), "path": str(path), "lexicalChecks": checks})

    total = len(unique)
    referenced = total - len(missing)
    return {
        "generatedAt": utc_now(),
        "courseCode": "en-fa",
        "level": level,
        "snapshotSummary": snapshot.get("summary"),
        "summary": {
            "lessons": len(per_lesson),
            "uniqueCanonicalLexicalItems": total,
            "withReferenceEntry": referenced,
            "referenceCoveragePercent": round((referenced / total * 100), 2) if total else 100.0,
            "missingReference": len(missing),
            "levelConflicts": len(level_conflicts),
            "translationMismatchesForReview": len(translation_mismatches),
        },
        "missingReferenceLemmas": sorted(missing),
        "levelConflicts": level_conflicts,
        "translationMismatchesForReview": translation_mismatches,
        "lessons": per_lesson,
    }


def compare_command(args: argparse.Namespace) -> int:
    snapshot = json.loads(Path(args.snapshot).read_text(encoding="utf-8"))
    report = compare_lessons(snapshot, Path(args.lessons_root), args.level)
    write_json(Path(args.output), report)
    print(json.dumps(report["summary"], ensure_ascii=False))
    if args.fail_on_level_conflicts and report["summary"]["levelConflicts"]:
        return 2
    return 0


def parser() -> argparse.ArgumentParser:
    p = argparse.ArgumentParser()
    sub = p.add_subparsers(dest="command", required=True)
    s = sub.add_parser("sync")
    s.add_argument("--level", default="A1", choices=LEVEL_ORDER)
    s.add_argument("--output", required=True)
    s.set_defaults(func=sync_command)
    v = sub.add_parser("validate")
    v.add_argument("--snapshot", required=True)
    v.set_defaults(func=validate_command)
    c = sub.add_parser("compare")
    c.add_argument("--level", default="A1", choices=LEVEL_ORDER)
    c.add_argument("--snapshot", required=True)
    c.add_argument("--lessons-root", required=True)
    c.add_argument("--output", required=True)
    c.add_argument("--fail-on-level-conflicts", action="store_true")
    c.set_defaults(func=compare_command)
    return p


def main() -> int:
    args = parser().parse_args()
    return args.func(args)

if __name__ == "__main__":
    raise SystemExit(main())

#!/usr/bin/env python3
"""Build Nova-owned lexical supplements for reference gaps.

External dictionaries are intentionally not authoritative for every learner
unit. Formulae, interjections, numerals, proper nouns and pedagogical senses
can be missing or poorly represented. This tool promotes only lexical units
already present in canonical Nova lessons whose automated quality score meets
Nova's >=90 gate.

Identity is lemma + partOfSpeech + pedagogical identity. `senseKey` is preferred;
when older canonical items do not have one, their stable `lexicalKey` is used as
the fallback. This keeps distinct uses such as SORRY-REPEAT and SORRY-APOLOGY
separate without rewriting already-reviewed lesson copy.
"""
from __future__ import annotations

import argparse
import json
import re
import unicodedata
from collections import defaultdict
from datetime import datetime, timezone
from pathlib import Path
from typing import Any

QUALITY_THRESHOLD = 90


def utc_now() -> str:
    return datetime.now(timezone.utc).replace(microsecond=0).isoformat().replace("+00:00", "Z")


def norm(value: str | None) -> str:
    value = unicodedata.normalize("NFKC", value or "").strip().lower()
    value = value.replace("’", "'").replace("‘", "'")
    return re.sub(r"\s+", " ", value)


def norm_fa(value: str | None) -> str:
    value = unicodedata.normalize("NFKC", value or "")
    value = value.replace("ي", "ی").replace("ك", "ک").replace("\u200c", " ")
    value = re.sub(r"[\u064b-\u065f\u0670]", "", value)
    value = re.sub(r"[^\w\s]", " ", value, flags=re.UNICODE)
    return re.sub(r"\s+", " ", value).strip()


def pos(value: str | None) -> str | None:
    value = norm(value)
    aliases = {
        "n": "noun", "v": "verb", "adj": "adjective", "adv": "adverb",
        "prep": "preposition", "conj": "conjunction", "det": "determiner",
        "interj": "interjection", "pron": "pronoun", "num": "numeral",
    }
    return aliases.get(value, value) if value else None


def pedagogical_identity(lex: dict[str, Any]) -> str | None:
    return norm(lex.get("senseKey")) or norm(lex.get("lexicalKey")) or None


def identity(lex: dict[str, Any]) -> tuple[str, str | None, str | None]:
    return (
        norm(lex.get("lemma") or lex.get("displayForm")),
        pos(lex.get("partOfSpeech")),
        pedagogical_identity(lex),
    )


def external_identity(lex: dict[str, Any]) -> tuple[str, str | None]:
    return (norm(lex.get("lemma") or lex.get("displayForm")), pos(lex.get("partOfSpeech")))


def load_status_scores(path: Path) -> dict[str, int]:
    status = json.loads(path.read_text(encoding="utf-8"))
    scores: dict[str, int] = {}
    for row in status.get("pilotLessons", []):
        if row.get("lessonKey"):
            scores[row["lessonKey"]] = int(row.get("automatedQualityScore", 0))
    return scores


def lesson_files(root: Path, level: str):
    for path in sorted(root.glob("*/lesson.source.json")):
        data = json.loads(path.read_text(encoding="utf-8"))
        if data.get("levelKey") == level:
            yield path, data


def supplement_score(row: dict[str, Any]) -> tuple[int, list[str]]:
    score = 0
    signals: list[str] = []
    if row["minimumSourceLessonQualityScore"] >= QUALITY_THRESHOLD:
        score += 50; signals.append("canonical_lesson_quality_gate")
    if len(row["translationVariantsFa"]) == 1 and row["translationFa"]:
        score += 15; signals.append("stable_translation")
    if row["lemma"] and row.get("itemType"):
        score += 10; signals.append("stable_identity")
    if row.get("identityKey"):
        score += 10; signals.append("pedagogical_identity")
    if row.get("partOfSpeech") or row.get("itemType") == "formula":
        score += 5; signals.append("typed_lexical_unit")
    if row.get("externalStatus") == "review" or row["occurrenceCount"] > 1 or row.get("itemType") in {"formula", "word"}:
        score += 10; signals.append("supporting_evidence")
    return min(score, 100), signals


def build_supplement(pool: dict[str, Any], lessons_root: Path, status_path: Path) -> dict[str, Any]:
    level = pool["level"]
    external_eligible = {
        (norm(x["lemma"]), pos(x.get("partOfSpeech")))
        for x in pool.get("eligibleVariants", [])
    }
    external_review = {
        (norm(x["lemma"]), pos(x.get("partOfSpeech"))): x
        for x in pool.get("reviewVariants", [])
    }
    lesson_scores = load_status_scores(status_path)

    occurrences: dict[tuple[str, str | None, str | None], list[dict[str, Any]]] = defaultdict(list)
    for _, lesson in lesson_files(lessons_root, level):
        lesson_key = lesson.get("lessonKey")
        score = lesson_scores.get(lesson_key, 0)
        for lex in lesson.get("lexicalItems", []):
            if external_identity(lex) in external_eligible:
                continue
            occurrences[identity(lex)].append({
                "lessonKey": lesson_key,
                "lessonQualityScore": score,
                "displayForm": lex.get("displayForm"),
                "translationFa": lex.get("translationFa"),
                "itemType": lex.get("itemType"),
                "lemma": lex.get("lemma") or lex.get("displayForm"),
                "partOfSpeech": lex.get("partOfSpeech"),
                "senseKey": lex.get("senseKey"),
                "lexicalKey": lex.get("lexicalKey"),
                "identityKey": pedagogical_identity(lex),
            })

    items: list[dict[str, Any]] = []
    for key, rows in sorted(occurrences.items(), key=lambda kv: (kv[0][0], kv[0][1] or "", kv[0][2] or "")):
        lemma, part_of_speech, identity_key = key
        translations = sorted({r.get("translationFa") for r in rows if r.get("translationFa")})
        display_forms = sorted({r.get("displayForm") for r in rows if r.get("displayForm")})
        item_types = sorted({r.get("itemType") for r in rows if r.get("itemType")})
        lesson_keys = sorted({r["lessonKey"] for r in rows if r.get("lessonKey")})
        lesson_quality = [int(r.get("lessonQualityScore", 0)) for r in rows]
        sense_keys = sorted({r.get("senseKey") for r in rows if r.get("senseKey")})
        lexical_keys = sorted({r.get("lexicalKey") for r in rows if r.get("lexicalKey")})
        review = external_review.get((lemma, part_of_speech))
        row = {
            "lemma": lemma,
            "partOfSpeech": part_of_speech,
            "identityKey": identity_key,
            "senseKey": sense_keys[0] if len(sense_keys) == 1 else None,
            "sourceLexicalKeys": lexical_keys,
            "itemType": item_types[0] if len(item_types) == 1 else (item_types or [None])[0],
            "displayForms": display_forms,
            "translationFa": translations[0] if len(translations) == 1 else None,
            "translationVariantsFa": translations,
            "level": level,
            "occurrenceCount": len(rows),
            "sourceLessonKeys": lesson_keys,
            "minimumSourceLessonQualityScore": min(lesson_quality) if lesson_quality else 0,
            "externalStatus": "review" if review else "missing",
            "externalReviewQualityScore": review.get("qualityScore") if review else None,
        }
        score, signals = supplement_score(row)
        row["qualityScore"] = score
        row["qualitySignals"] = signals
        row["eligibleForReference"] = score >= QUALITY_THRESHOLD
        row["eligibleForFutureAutoSelection"] = score >= QUALITY_THRESHOLD
        items.append(row)

    return {
        "schemaVersion": "1.1.0",
        "generatedAt": utc_now(),
        "courseCode": "en-fa",
        "level": level,
        "qualityThreshold": QUALITY_THRESHOLD,
        "policy": {
            "authority": "Nova canonical lessons only",
            "minimumSourceLessonQualityScore": QUALITY_THRESHOLD,
            "identity": "lemma + partOfSpeech + (senseKey || lexicalKey)",
            "purpose": "fill external reference gaps without relaxing external quality rules",
            "runtimeImport": "never writes runtime tables directly",
        },
        "summary": {
            "items": len(items),
            "eligible": sum(1 for x in items if x["eligibleForReference"]),
            "notEligible": sum(1 for x in items if not x["eligibleForReference"]),
        },
        "items": items,
    }


def coverage(pool: dict[str, Any], supplement: dict[str, Any], lessons_root: Path) -> dict[str, Any]:
    level = pool["level"]
    external = {
        (norm(x["lemma"]), pos(x.get("partOfSpeech")))
        for x in pool.get("eligibleVariants", [])
    }
    local = {
        (norm(x["lemma"]), pos(x.get("partOfSpeech")), norm(x.get("identityKey")) or None)
        for x in supplement.get("items", []) if x.get("eligibleForReference")
    }
    canonical: set[tuple[str, str | None, str | None]] = set()
    unresolved: list[dict[str, Any]] = []
    lessons = 0
    for _, lesson in lesson_files(lessons_root, level):
        lessons += 1
        for lex in lesson.get("lexicalItems", []):
            key = identity(lex)
            canonical.add(key)
            if (key[0], key[1]) not in external and key not in local:
                unresolved.append({
                    "lessonKey": lesson.get("lessonKey"),
                    "lemma": key[0], "partOfSpeech": key[1], "identityKey": key[2],
                    "senseKey": lex.get("senseKey"), "lexicalKey": lex.get("lexicalKey"),
                    "translationFa": lex.get("translationFa"), "itemType": lex.get("itemType"),
                })
    external_count = sum(1 for key in canonical if (key[0], key[1]) in external)
    resolved_count = sum(1 for key in canonical if (key[0], key[1]) in external or key in local)
    return {
        "schemaVersion": "1.1.0",
        "generatedAt": utc_now(),
        "courseCode": "en-fa", "level": level,
        "summary": {
            "lessons": lessons,
            "uniqueCanonicalLexicalItems": len(canonical),
            "externalEligibleResolved": external_count,
            "externalCoveragePercent": round(external_count / len(canonical) * 100, 2) if canonical else 100.0,
            "localSupplementResolved": resolved_count - external_count,
            "resolvedCoveragePercent": round(resolved_count / len(canonical) * 100, 2) if canonical else 100.0,
            "unresolvedUnique": len({(x["lemma"], x["partOfSpeech"], x["identityKey"]) for x in unresolved}),
        },
        "unresolved": unresolved,
    }


def write_json(path: Path, value: Any) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(value, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--pool", required=True)
    ap.add_argument("--lessons-root", required=True)
    ap.add_argument("--status", required=True)
    ap.add_argument("--output", required=True)
    ap.add_argument("--coverage-output", required=True)
    args = ap.parse_args()
    pool = json.loads(Path(args.pool).read_text(encoding="utf-8"))
    supplement = build_supplement(pool, Path(args.lessons_root), Path(args.status))
    report = coverage(pool, supplement, Path(args.lessons_root))
    write_json(Path(args.output), supplement)
    write_json(Path(args.coverage_output), report)
    print(json.dumps(supplement["summary"], ensure_ascii=False))
    print(json.dumps(report["summary"], ensure_ascii=False))
    return 1 if report["summary"]["unresolvedUnique"] else 0


if __name__ == "__main__":
    raise SystemExit(main())

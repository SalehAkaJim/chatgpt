#!/usr/bin/env python3
"""Validate canonical Lesson vocabulary against Nova's production reference layer.

Policy is intentionally forward-only. Existing Lessons 1–20 predate the reference
layer and remain valid. From Lesson 21 onward, every newly taught single-word target
must have an exact lemma+POS production-eligible record at the Lesson's CEFR level.
Multiword expressions remain Nova-authored lexical units.
"""
from __future__ import annotations

import argparse
import json
from pathlib import Path

from reference_catalog import ReferenceCatalog
from reference_data import normalize_lemma, normalize_pos

DEFAULT_ENFORCE_FROM_SORT_ORDER = 21


def validate_lesson_reference(
    lesson: dict,
    catalog: ReferenceCatalog,
    *,
    enforce_from_sort_order: int = DEFAULT_ENFORCE_FROM_SORT_ORDER,
) -> dict:
    lesson_key = lesson.get("lessonKey")
    level = lesson.get("levelKey")
    sort_order = int(lesson.get("sortOrder") or 0)
    enforced = catalog.course_code == "en-fa" and sort_order >= enforce_from_sort_order
    errors: list[str] = []
    warnings: list[str] = []
    items: list[dict] = []

    for lexical in lesson.get("lexicalItems", []):
        role = lexical.get("role")
        item_type = lexical.get("itemType")
        lexical_key = lexical.get("lexicalKey")
        lemma = normalize_lemma(lexical.get("lemma") or lexical.get("displayForm"))
        pos = normalize_pos(lexical.get("partOfSpeech"))
        row = {
            "lexicalKey": lexical_key,
            "role": role,
            "itemType": item_type,
            "lemma": lemma or None,
            "partOfSpeech": pos,
            "status": "not_required",
            "referenceKeys": [],
        }

        if item_type != "word":
            if role == "target":
                row["status"] = "nova_authored_multiword"
            items.append(row)
            continue

        # Target words are the strict production boundary. Review/support words are
        # audited but do not block because they may be inherited from pre-reference
        # Lessons or intentionally supplied as contextual language.
        exact_production = catalog.query_lexical(
            levels=[level],
            lemma=lemma,
            part_of_speech=pos,
            production_only=True,
            curriculum_only=True,
            limit=25,
        ) if level and lemma else []

        if exact_production:
            row["status"] = "exact_production_match"
            row["referenceKeys"] = [x.get("referenceKey") for x in exact_production]
            row["referenceTranslationsFa"] = sorted({
                x.get("translationFa") for x in exact_production if x.get("translationFa")
            })
        else:
            # Get review-only exact records for diagnostics. This never satisfies
            # the target-word production gate.
            exact_any = catalog.query_lexical(
                levels=[level],
                lemma=lemma,
                part_of_speech=pos,
                production_only=False,
                curriculum_only=False,
                limit=25,
            ) if level and lemma else []
            row["status"] = "no_exact_production_match"
            row["referenceKeys"] = [x.get("referenceKey") for x in exact_any]
            row["reviewOnlyCandidates"] = [
                {
                    "referenceKey": x.get("referenceKey"),
                    "qualityScore": x.get("qualityScore"),
                    "curriculumEligible": x.get("curriculumEligible"),
                    "productionEligible": x.get("productionEligible"),
                    "flags": x.get("flags", []),
                }
                for x in exact_any[:8]
            ]

            if role == "target" and enforced:
                errors.append(
                    f"{lesson_key}: target word {lexical_key} ({lemma}/{pos or 'unknown POS'}) "
                    f"has no exact production-eligible {level} reference record"
                )
            elif role == "target":
                warnings.append(
                    f"{lesson_key}: legacy target word {lexical_key} has no exact production reference match"
                )

        items.append(row)

    return {
        "schemaVersion": 1,
        "lessonKey": lesson_key,
        "levelKey": level,
        "sortOrder": sort_order,
        "enforceFromSortOrder": enforce_from_sort_order,
        "enforced": enforced,
        "status": "PASS" if not errors else "FAIL",
        "errors": errors,
        "warnings": warnings,
        "items": items,
    }


def main() -> int:
    p = argparse.ArgumentParser()
    p.add_argument("lesson", type=Path)
    p.add_argument("--repo-root", default=".")
    p.add_argument("--course", default="en-fa")
    p.add_argument("--enforce-from", type=int, default=DEFAULT_ENFORCE_FROM_SORT_ORDER)
    p.add_argument("--output", type=Path)
    args = p.parse_args()

    root = Path(args.repo_root).resolve()
    lesson = json.loads(args.lesson.read_text(encoding="utf-8"))
    catalog = ReferenceCatalog(root, args.course)
    report = validate_lesson_reference(lesson, catalog, enforce_from_sort_order=args.enforce_from)
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(report, ensure_ascii=False, indent=2))
    return 0 if report["status"] == "PASS" else 2


if __name__ == "__main__":
    raise SystemExit(main())

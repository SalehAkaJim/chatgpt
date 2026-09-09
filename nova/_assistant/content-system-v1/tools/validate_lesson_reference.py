#!/usr/bin/env python3
"""Validate canonical Lesson words/lexemes against Nova's production reference layer.

Target words should resolve to one exact production reference sense whenever the
reference layer has coverage. A real word does not stop being a word because a
source snapshot has a gap: narrowly-scoped Nova-authored curriculum words may use
an explicit, auditable reference-gap fallback. Phrases/constructions are not put
in lexicalItems to work around missing reference data.
"""
from __future__ import annotations

import argparse
import json
from pathlib import Path

from reference_catalog import ReferenceCatalog
from reference_data import normalize_lemma, normalize_persian, normalize_pos

DEFAULT_ENFORCE_FROM_SORT_ORDER = 21


def _reference_gap_fallback(metadata: dict) -> tuple[bool, str]:
    allowed = (
        metadata.get("source") == "nova_authored_curriculum_word"
        and metadata.get("referenceGap") is True
        and bool(str(metadata.get("referenceGapReason") or "").strip())
        and not metadata.get("referenceKey")
    )
    return allowed, str(metadata.get("referenceGapReason") or "").strip()


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
        metadata = lexical.get("metadata") if isinstance(lexical.get("metadata"), dict) else {}
        selected_reference_key = metadata.get("referenceKey")
        fallback_allowed, fallback_reason = _reference_gap_fallback(metadata)
        row = {
            "lexicalKey": lexical_key,
            "role": role,
            "itemType": item_type,
            "lemma": lemma or None,
            "partOfSpeech": pos,
            "selectedReferenceKey": selected_reference_key,
            "status": "not_required",
            "referenceKeys": [],
        }

        # Canonical schema should already guarantee that lexicalItems contains
        # only true word/lexeme units. Reference validation is about sense/source
        # evidence, not about allowing arbitrary formulas into the word layer.
        if item_type not in {"word", "expression", "phrasal_verb"}:
            row["status"] = "invalid_nonword_unit"
            if enforced:
                errors.append(f"{lesson_key}: non-word unit {lexical_key} cannot live in lexicalItems")
            items.append(row)
            continue

        exact_production = catalog.query_lexical(
            levels=[level],
            lemma=lemma,
            part_of_speech=pos,
            production_only=True,
            curriculum_only=True,
            limit=25,
        ) if level and lemma else []

        if exact_production:
            candidate_by_key = {
                x.get("referenceKey"): x for x in exact_production if x.get("referenceKey")
            }
            row["referenceKeys"] = list(candidate_by_key)
            row["referenceTranslationsFa"] = sorted({
                x.get("translationFa") for x in exact_production if x.get("translationFa")
            })

            if role == "target" and enforced:
                if fallback_allowed:
                    row["status"] = "unnecessary_reference_gap_fallback"
                    errors.append(
                        f"{lesson_key}: target word {lexical_key} declares a reference gap even though an exact production reference exists"
                    )
                elif not selected_reference_key:
                    row["status"] = "missing_reference_link"
                    errors.append(
                        f"{lesson_key}: target word {lexical_key} ({lemma}/{pos or 'unknown POS'}) "
                        "must set metadata.referenceKey to the intended production reference sense"
                    )
                elif selected_reference_key not in candidate_by_key:
                    row["status"] = "invalid_reference_link"
                    errors.append(
                        f"{lesson_key}: target word {lexical_key} referenceKey {selected_reference_key} "
                        f"does not resolve to an exact production-eligible {level} {lemma}/{pos or 'unknown POS'} sense"
                    )
                else:
                    selected = candidate_by_key[selected_reference_key]
                    row["status"] = "linked_exact_production_match"
                    row["selectedReference"] = {
                        "referenceKey": selected_reference_key,
                        "translationFa": selected.get("translationFa"),
                        "definitionEn": selected.get("definitionEn"),
                        "senseId": selected.get("senseId"),
                        "qualityScore": selected.get("qualityScore"),
                    }
                    authored_translation = normalize_persian(lexical.get("translationFa"))
                    reference_translation = normalize_persian(selected.get("translationFa"))
                    if authored_translation and reference_translation and authored_translation != reference_translation:
                        warnings.append(
                            f"{lesson_key}: target word {lexical_key} authored Persian meaning differs from "
                            f"selected reference meaning; confirm context-specific translation"
                        )
                        row["translationReview"] = "authored_differs_from_reference"
            else:
                row["status"] = "exact_production_match"
                if selected_reference_key and selected_reference_key in candidate_by_key:
                    row["selectedReference"] = {
                        "referenceKey": selected_reference_key,
                        "translationFa": candidate_by_key[selected_reference_key].get("translationFa"),
                    }
        else:
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
                if fallback_allowed:
                    row["status"] = "nova_authored_reference_gap_word"
                    row["referenceGapReason"] = fallback_reason
                    warnings.append(
                        f"{lesson_key}: target word {lexical_key} uses explicit Nova reference-gap fallback: {fallback_reason}"
                    )
                else:
                    errors.append(
                        f"{lesson_key}: target word {lexical_key} ({lemma}/{pos or 'unknown POS'}) "
                        f"has no exact production-eligible {level} reference record; use a real word row with explicit "
                        "nova_authored_curriculum_word/referenceGap metadata only when the reference snapshot truly has a gap"
                    )
            elif role == "target":
                warnings.append(
                    f"{lesson_key}: legacy target word {lexical_key} has no exact production reference match"
                )

        items.append(row)

    return {
        "schemaVersion": 3,
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

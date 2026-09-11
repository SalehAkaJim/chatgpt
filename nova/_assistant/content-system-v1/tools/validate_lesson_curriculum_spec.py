#!/usr/bin/env python3
"""Validate a future Lesson against the committed data-driven curriculum spec."""
from __future__ import annotations

import argparse
import json
from pathlib import Path

from reference_data import normalize_lemma


def load(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def validate_against_spec(lesson: dict, spec: dict, *, enforce_from: int = 25) -> dict:
    order = int(lesson.get("sortOrder") or 0)
    if order < enforce_from:
        return {"status": "PASS", "enforced": False, "errors": [], "warnings": []}

    errors: list[str] = []
    warnings: list[str] = []
    if order != int(spec.get("sortOrder") or 0):
        errors.append(f"Lesson sortOrder {order} does not match committed next spec {spec.get('sortOrder')}")

    language_ref = (lesson.get("curriculum") or {}).get("languageReference") or {}
    if language_ref.get("specHash") != spec.get("specHash"):
        errors.append("curriculum.languageReference.specHash must equal the committed curriculum specHash")

    allowed_refs = {
        x.get("referenceKey")
        for x in spec.get("lexicalCandidates", [])
        if x.get("referenceKey")
    }
    max_new = int((spec.get("policy") or {}).get("maxNewLexicalTargets", 3))
    new_targets = [x for x in lesson.get("lexicalItems", []) if x.get("role") == "target"]
    if len(new_targets) > max_new:
        errors.append(f"Lesson has {len(new_targets)} target lexical items; spec allows at most {max_new}")

    for item in new_targets:
        meta = item.get("metadata") or {}
        ref_key = meta.get("referenceKey")
        source = meta.get("source")
        if ref_key and ref_key in allowed_refs:
            continue
        if source == "nova_authored_curriculum_word" and meta.get("referenceGap") is True and meta.get("referenceGapReason"):
            warnings.append(f"{item.get('lexicalKey')}: explicit reference-gap fallback used outside spec lexical candidates")
            continue
        errors.append(
            f"{item.get('lexicalKey')}: target lexical sense is not one of the committed spec candidates and has no explicit reference-gap fallback"
        )

    allowed_grammar = {
        x.get("grammarKey")
        for x in spec.get("grammarCandidates", [])
        if x.get("grammarKey")
    }
    reconciled_review_grammar = {
        x.get("grammarKey")
        for x in (spec.get("reviewDue") or {}).get("grammar", []) or []
        if x.get("grammarKey")
        and x.get("integrationStatus") == "provisional_target_already_introduced"
    }
    chosen_grammar = language_ref.get("grammarTargetKeys", []) or []
    if len(chosen_grammar) > 1:
        errors.append("At most one new grammarTargetKey may be introduced in a normal Lesson")
    for key in chosen_grammar:
        if key in allowed_grammar:
            continue
        if key in reconciled_review_grammar:
            warnings.append(
                f"grammarTargetKey {key} was provisionally reserved in this wave and is already introduced in the live sequential prefix"
            )
            continue
        errors.append(f"grammarTargetKey {key} is not in the committed grammar candidate set")

    # If no new grammar is selected, the Lesson is explicitly consolidation or
    # lexical/construction focused. Make that decision visible rather than implicit.
    if not chosen_grammar and not language_ref.get("noNewGrammarReason"):
        errors.append("No grammarTargetKeys selected; set languageReference.noNewGrammarReason explicitly")

    # Review selection is advisory but must refer to known due records when declared.
    due_lemmas = {normalize_lemma(x.get("lemma")) for x in (spec.get("reviewDue") or {}).get("lexical", [])}
    for lemma in language_ref.get("reviewLexicalLemmas", []) or []:
        if normalize_lemma(lemma) not in due_lemmas:
            warnings.append(f"review lexical lemma '{lemma}' was not marked due by the curriculum engine")

    return {
        "schemaVersion": 1,
        "lessonKey": lesson.get("lessonKey"),
        "sortOrder": order,
        "specKey": spec.get("specKey"),
        "specHash": spec.get("specHash"),
        "enforced": True,
        "status": "PASS" if not errors else "FAIL",
        "errors": errors,
        "warnings": warnings,
    }


def main() -> int:
    p = argparse.ArgumentParser()
    p.add_argument("lesson", type=Path)
    p.add_argument("spec", type=Path)
    p.add_argument("--enforce-from", type=int, default=25)
    p.add_argument("--output", type=Path)
    args = p.parse_args()
    report = validate_against_spec(load(args.lesson), load(args.spec), enforce_from=args.enforce_from)
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(report, ensure_ascii=False, indent=2))
    return 0 if report["status"] == "PASS" else 2


if __name__ == "__main__":
    raise SystemExit(main())

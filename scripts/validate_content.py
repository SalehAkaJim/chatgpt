#!/usr/bin/env python3

import argparse
import json
from collections import Counter
from pathlib import Path

from jsonschema import Draft202012Validator

ALLOWED_STATUS = {"generated", "validated", "approved", "rejected", "archived"}
ALLOWED_EXERCISES = {
    "dialogue_comprehension",
    "listening",
    "speaking",
    "writing",
    "sentence_building",
    "translation",
    "fill_blank",
    "multiple_choice",
}
CONTENT_KINDS_REQUIRING_LESSON = {
    "concept",
    "lexeme",
    "word_form",
    "utterance",
    "grammar_point",
    "dialogue",
    "exercise",
}


def fail(errors: list[str], message: str) -> None:
    errors.append(message)


def validate_schema(batch: dict, schema_path: Path, errors: list[str]) -> None:
    schema = json.loads(schema_path.read_text(encoding="utf-8"))
    validator = Draft202012Validator(schema)
    for error in sorted(validator.iter_errors(batch), key=lambda e: list(e.path)):
        location = ".".join(str(part) for part in error.path) or "<root>"
        fail(errors, f"schema:{location}: {error.message}")


def validate_semantics(batch: dict, errors: list[str], warnings: list[str]) -> None:
    items = batch.get("items", [])
    ids = [item.get("external_id") for item in items if item.get("external_id")]
    duplicate_ids = [key for key, count in Counter(ids).items() if count > 1]
    for key in duplicate_ids:
        fail(errors, f"duplicate external_id: {key}")

    concepts = {
        item["data"].get("slug")
        for item in items
        if item.get("kind") == "concept" and item.get("data", {}).get("slug")
    }
    lexeme_ids = {
        item.get("external_id")
        for item in items
        if item.get("kind") == "lexeme" and item.get("external_id")
    }

    dialogue_pairs: set[tuple[str, str, str]] = set()
    target_language = batch.get("target_language")
    target_variant = batch.get("target_variant")

    if target_variant and not target_variant.lower().startswith(f"{target_language.lower()}-"):
        fail(errors, f"target_variant {target_variant} does not belong to target_language {target_language}")

    learner_language = batch.get("learner_language")
    learner_variant = batch.get("learner_variant")
    if learner_variant and not learner_variant.lower().startswith(f"{learner_language.lower()}-"):
        fail(errors, f"learner_variant {learner_variant} does not belong to learner_language {learner_language}")

    for index, item in enumerate(items):
        kind = item.get("kind")
        data = item.get("data", {})
        item_id = item.get("external_id", f"item[{index}]")

        if data.get("cefr") and data["cefr"] != batch.get("cefr"):
            fail(errors, f"{item_id}: CEFR {data['cefr']} does not match batch {batch.get('cefr')}")

        item_variant = data.get("language_variant")
        if item_variant and item_variant != target_variant:
            fail(errors, f"{item_id}: language_variant {item_variant} does not match batch {target_variant}")

        status = data.get("status")
        if status and status not in ALLOWED_STATUS:
            fail(errors, f"{item_id}: invalid status {status}")

        lesson_key = data.get("lesson_key")
        if kind in CONTENT_KINDS_REQUIRING_LESSON and not lesson_key:
            fail(errors, f"{item_id}: missing lesson_key")

        if kind == "concept":
            forms = data.get("forms", {})
            translations = data.get("translations", {})
            if forms and not forms.get(target_language):
                fail(errors, f"{item_id}: missing target-language form")
            if data.get("concept_type") == "lexical" and not forms:
                warnings.append(f"{item_id}: lexical concept has no compatibility forms; expected lexeme item")
            if not translations:
                warnings.append(f"{item_id}: no learner-language translation")

        elif kind == "lexeme":
            if not data.get("lemma"):
                fail(errors, f"{item_id}: lexeme requires lemma")
            language = data.get("language", target_language)
            if language != target_language:
                fail(errors, f"{item_id}: lexeme language {language} does not match batch target {target_language}")
            variant = data.get("language_variant", target_variant)
            if variant != target_variant:
                fail(errors, f"{item_id}: lexeme variant {variant} does not match batch target {target_variant}")
            concept_refs = data.get("concept_refs", [])
            for ref in concept_refs:
                if ref not in concepts:
                    fail(errors, f"{item_id}: unknown concept_ref {ref}")

        elif kind == "word_form":
            lexeme_ref = data.get("lexeme_ref")
            if not lexeme_ref:
                fail(errors, f"{item_id}: word_form requires lexeme_ref")
            elif lexeme_ref not in lexeme_ids:
                fail(errors, f"{item_id}: unknown lexeme_ref {lexeme_ref}")
            if not data.get("surface_form"):
                fail(errors, f"{item_id}: word_form requires surface_form")
            features = data.get("grammatical_features", {})
            if not isinstance(features, dict):
                fail(errors, f"{item_id}: grammatical_features must be an object")

        elif kind == "utterance":
            text = data.get("text", {})
            if not text.get(target_language):
                fail(errors, f"{item_id}: missing target-language text")
            for ref in data.get("concept_refs", []):
                if ref not in concepts:
                    fail(errors, f"{item_id}: unknown concept_ref {ref}")

        elif kind == "grammar_point":
            examples = data.get("examples", [])
            if not data.get("title") or not data.get("rule_summary"):
                fail(errors, f"{item_id}: grammar point needs title and rule_summary")
            if not examples:
                warnings.append(f"{item_id}: grammar point has no examples")

        elif kind == "dialogue":
            characters = data.get("characters", [])
            turns = data.get("turns", [])
            if len(characters) < 2:
                fail(errors, f"{item_id}: dialogue needs at least two characters")
            pair = tuple(sorted(characters[:2]))
            pair_key = (lesson_key or "", *pair)
            if pair_key in dialogue_pairs:
                fail(errors, f"{item_id}: repeated character pair in lesson {lesson_key}: {pair}")
            dialogue_pairs.add(pair_key)

            expected_order = list(range(1, len(turns) + 1))
            actual_order = [turn.get("order") for turn in turns]
            if actual_order != expected_order:
                fail(errors, f"{item_id}: dialogue turn order must be sequential from 1")
            allowed_speakers = set(characters)
            for turn in turns:
                if turn.get("speaker") not in allowed_speakers:
                    fail(errors, f"{item_id}: unknown dialogue speaker {turn.get('speaker')}")
                if not turn.get("text"):
                    fail(errors, f"{item_id}: dialogue turn missing text")

        elif kind == "exercise":
            exercise_type = data.get("exercise_type")
            if exercise_type not in ALLOWED_EXERCISES:
                fail(errors, f"{item_id}: invalid exercise_type {exercise_type}")

            if "prompt" not in data or "answer" not in data:
                fail(errors, f"{item_id}: exercise requires prompt and answer")
                continue

            options = data.get("options")
            if options is not None:
                if len(options) != len(set(options)):
                    fail(errors, f"{item_id}: duplicate options")
                answer_value = data.get("answer", {}).get("value")
                if answer_value is not None and answer_value not in options:
                    fail(errors, f"{item_id}: correct answer is not present in options")

            if exercise_type == "sentence_building":
                prompt_tokens = data.get("prompt", {}).get("tokens", [])
                answer_tokens = data.get("answer", {}).get("tokens", [])
                if Counter(prompt_tokens) != Counter(answer_tokens):
                    fail(errors, f"{item_id}: sentence-building tokens do not match")

            if exercise_type == "speaking" and data.get("answer", {}).get("evaluation_mode") != "rubric" and not data.get("answer", {}).get("expected_text"):
                fail(errors, f"{item_id}: speaking exercise missing expected_text")

            if exercise_type == "writing" or data.get("answer", {}).get("evaluation_mode") == "rubric":
                answer = data.get("answer", {})
                assessment = data.get("assessment", {})
                if answer.get("evaluation_mode") != "rubric" or not answer.get("model_text") or not answer.get("required_points_fa"):
                    fail(errors, f"{item_id}: open response requires a model and task-specific rubric points")
                criteria = assessment.get("criteria", [])
                if not criteria or sum(c.get("weight", 0) for c in criteria) != 100:
                    fail(errors, f"{item_id}: rubric weights must sum to 100")
                if assessment.get("exact_match_allowed") is not False or answer.get("expected_text"):
                    fail(errors, f"{item_id}: rubric response must not use exact-text grading")
                if options is not None:
                    fail(errors, f"{item_id}: open response cannot have answer options")
                for criterion in criteria:
                    if set(criterion.get("descriptors_fa", {})) != {"0", "1", "2", "3"}:
                        fail(errors, f"{item_id}: rubric needs observable descriptors for scores 0-3")
                for ref in data.get("prompt", {}).get("source_dialogue_refs", []):
                    if not any(x.get("external_id") == ref and x.get("kind") == "dialogue" for x in items):
                        fail(errors, f"{item_id}: unknown source dialogue {ref}")
                sources = data.get("prompt", {}).get("sources", [])
                if len({s.get("id") for s in sources}) != len(sources):
                    fail(errors, f"{item_id}: duplicate source ID")
                for source in sources:
                    if not source.get("text_en") or not source.get("text_fa") or not source.get("provenance"):
                        fail(errors, f"{item_id}: source requires bilingual text and provenance")

            if exercise_type == "listening" and not data.get("prompt", {}).get("audio_text"):
                fail(errors, f"{item_id}: listening exercise missing audio_text")

    lexical_concepts = sum(
        1
        for item in items
        if item.get("kind") == "concept" and item.get("data", {}).get("concept_type") == "lexical"
    )
    if lexical_concepts and not lexeme_ids:
        warnings.append(
            "batch contains lexical concepts but no lexeme items; compatibility mode is valid, "
            "but new multilingual production should use lexeme + word_form items"
        )


def main() -> None:
    parser = argparse.ArgumentParser(description="Validate a production content batch.")
    parser.add_argument("batch", type=Path)
    parser.add_argument(
        "--schema",
        type=Path,
        default=Path(__file__).resolve().parents[1] / "content" / "batch.schema.json",
    )
    parser.add_argument("--write-status", action="store_true", help="After successful checks, mark generated content validated; never create educational approval")
    parser.add_argument("--require-approved", action="store_true")
    args = parser.parse_args()

    batch = json.loads(args.batch.read_text(encoding="utf-8"))
    errors: list[str] = []
    warnings: list[str] = []

    validate_schema(batch, args.schema, errors)
    if not errors:
        validate_semantics(batch, errors, warnings)

    from content_quality import mark_validated, quality_errors
    if not errors:
        if args.write_status:
            mark_validated(batch)
        errors.extend(quality_errors(batch, args.require_approved))
    if not errors and args.write_status:
        args.batch.write_text(json.dumps(batch, ensure_ascii=False, indent=2) + "\n")

    report = {
        "batch_id": batch.get("batch_id"),
        "course": batch.get("course"),
        "target_variant": batch.get("target_variant"),
        "items": len(batch.get("items", [])),
        "counts": dict(Counter(item.get("kind") for item in batch.get("items", []))),
        "errors": errors,
        "warnings": warnings,
        "valid": not errors,
    }
    print(json.dumps(report, ensure_ascii=False, indent=2))

    if errors:
        raise SystemExit(1)


if __name__ == "__main__":
    main()

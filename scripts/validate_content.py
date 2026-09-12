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
    "sentence_building",
    "translation",
    "fill_blank",
    "multiple_choice",
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

    dialogue_pairs: set[tuple[str, str, str]] = set()

    for index, item in enumerate(items):
        kind = item.get("kind")
        data = item.get("data", {})
        item_id = item.get("external_id", f"item[{index}]")

        if data.get("cefr") and data["cefr"] != batch.get("cefr"):
            fail(errors, f"{item_id}: CEFR {data['cefr']} does not match batch {batch.get('cefr')}")

        status = data.get("status")
        if status and status not in ALLOWED_STATUS:
            fail(errors, f"{item_id}: invalid status {status}")

        lesson_key = data.get("lesson_key")
        if kind in {"concept", "utterance", "grammar_point", "dialogue", "exercise"} and not lesson_key:
            fail(errors, f"{item_id}: missing lesson_key")

        if kind == "concept":
            forms = data.get("forms", {})
            translations = data.get("translations", {})
            if not forms.get(batch.get("target_language")):
                fail(errors, f"{item_id}: missing target-language form")
            if not translations:
                warnings.append(f"{item_id}: no learner-language translation")

        elif kind == "utterance":
            text = data.get("text", {})
            if not text.get(batch.get("target_language")):
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

            if exercise_type == "speaking" and not data.get("answer", {}).get("expected_text"):
                fail(errors, f"{item_id}: speaking exercise missing expected_text")

            if exercise_type == "listening" and not data.get("prompt", {}).get("audio_text"):
                fail(errors, f"{item_id}: listening exercise missing audio_text")


def main() -> None:
    parser = argparse.ArgumentParser(description="Validate a production content batch.")
    parser.add_argument("batch", type=Path)
    parser.add_argument(
        "--schema",
        type=Path,
        default=Path(__file__).resolve().parents[1] / "content" / "batch.schema.json",
    )
    args = parser.parse_args()

    batch = json.loads(args.batch.read_text(encoding="utf-8"))
    errors: list[str] = []
    warnings: list[str] = []

    validate_schema(batch, args.schema, errors)
    if not errors:
        validate_semantics(batch, errors, warnings)

    report = {
        "batch_id": batch.get("batch_id"),
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

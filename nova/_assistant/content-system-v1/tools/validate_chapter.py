#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
import re
import sys
from collections import defaultdict
from pathlib import Path

try:
    from jsonschema import Draft202012Validator
except ImportError:  # pragma: no cover
    Draft202012Validator = None

PUNCT_NORMALIZE_RE = re.compile(r"[^a-z0-9']+", re.IGNORECASE)


def load_json(path: Path):
    with path.open("r", encoding="utf-8") as f:
        return json.load(f)


def normalized_answer(value: str) -> str:
    value = value.strip().lower().replace("’", "'")
    return PUNCT_NORMALIZE_RE.sub(" ", value).strip()


def add(errors: list[str], message: str):
    errors.append(message)


def validate_schema(chapter: dict, schema: dict, errors: list[str]):
    if Draft202012Validator is None:
        add(errors, "jsonschema is not installed; run: pip install -r tools/requirements.txt")
        return
    validator = Draft202012Validator(schema)
    for err in sorted(validator.iter_errors(chapter), key=lambda e: list(e.absolute_path)):
        where = ".".join(str(x) for x in err.absolute_path) or "<root>"
        add(errors, f"schema:{where}: {err.message}")


def validate_semantics(chapter: dict, errors: list[str], warnings: list[str]):
    units = chapter.get("learningUnits", [])
    lessons = chapter.get("lessons", [])

    unit_by_key: dict[str, dict] = {}
    for unit in units:
        key = unit.get("unitKey")
        if not key:
            continue
        if key in unit_by_key:
            add(errors, f"duplicate learning unit key: {key}")
        unit_by_key[key] = unit

        if unit.get("unitType") == "lexical_item":
            form = str(unit.get("displayForm", "")).strip()
            kind = unit.get("lexicalKind")
            if not form:
                add(errors, f"lexical_item has empty displayForm: {key}")
            if "\n" in form or "\r" in form:
                add(errors, f"lexical_item contains line break: {key}")
            if kind not in {"word", "multiword_expression"}:
                add(errors, f"lexical_item has invalid lexicalKind: {key}")
            if kind == "word" and re.search(r"\s", form):
                warnings.append(f"{key}: whitespace exists but lexicalKind=word; review classification")
            if kind == "multiword_expression" and not re.search(r"\s", form):
                warnings.append(f"{key}: multiword_expression has no whitespace; valid in some languages only when intentional")
            if unit.get("audioEligible") is not True:
                warnings.append(f"{key}: lexical item is not audioEligible; verify this is intentional")

    seen_lesson_keys: set[str] = set()
    chapter_target_units: set[str] = set()
    strong_evidence: dict[str, list[str]] = defaultdict(list)
    transfer_or_mastery = 0

    for lesson in lessons:
        lesson_key = lesson.get("lessonKey", "?")
        if lesson_key in seen_lesson_keys:
            add(errors, f"duplicate lesson key: {lesson_key}")
        seen_lesson_keys.add(lesson_key)

        turn_by_key: dict[str, dict] = {}
        for turn in lesson.get("turns", []):
            turn_key = turn.get("turnKey")
            if turn_key in turn_by_key:
                add(errors, f"{lesson_key}: duplicate turn key: {turn_key}")
            turn_by_key[turn_key] = turn

            role = turn.get("role")
            has_character = bool(turn.get("characterKey"))
            if role == "character" and not has_character:
                add(errors, f"{lesson_key}/{turn_key}: character Turn requires characterKey")
            if role in {"learner", "system"} and has_character:
                add(errors, f"{lesson_key}/{turn_key}: {role} Turn must not carry characterKey")

            accepted = turn.get("acceptedSpeechEn", [])
            normalized = [normalized_answer(x) for x in accepted]
            if len(normalized) != len(set(normalized)):
                add(errors, f"{lesson_key}/{turn_key}: acceptedSpeechEn has punctuation/case-only duplicates")

        role_keys: set[str] = set()
        for assignment in lesson.get("unitRoles", []):
            unit_key = assignment.get("unitKey")
            if unit_key not in unit_by_key:
                add(errors, f"{lesson_key}: unitRole references unknown unit: {unit_key}")
            if unit_key in role_keys:
                add(errors, f"{lesson_key}: duplicate unitRole assignment: {unit_key}")
            role_keys.add(unit_key)
            if assignment.get("role") == "target":
                chapter_target_units.add(unit_key)

        seen_activity_keys: set[str] = set()
        for activity in lesson.get("activities", []):
            activity_key = activity.get("activityKey", "?")
            label = f"{lesson_key}/{activity_key}"
            if activity_key in seen_activity_keys:
                add(errors, f"{lesson_key}: duplicate activity key: {activity_key}")
            seen_activity_keys.add(activity_key)

            source_turn = activity.get("sourceTurnKey")
            if source_turn and source_turn not in turn_by_key:
                add(errors, f"{label}: sourceTurnKey references unknown Turn: {source_turn}")

            target_keys = activity.get("targetUnitKeys", [])
            for unit_key in target_keys:
                if unit_key not in unit_by_key:
                    add(errors, f"{label}: targetUnitKeys references unknown unit: {unit_key}")

            purpose = activity.get("purpose")
            if purpose in {"retrieval", "transfer", "mastery"}:
                for unit_key in target_keys:
                    strong_evidence[unit_key].append(label)
            if purpose in {"transfer", "mastery"}:
                transfer_or_mastery += 1
                if not target_keys:
                    add(errors, f"{label}: {purpose} Activity requires targetUnitKeys")

            accepted = activity.get("acceptedAnswersEn", [])
            normalized = [normalized_answer(x) for x in accepted]
            if len(normalized) != len(set(normalized)):
                add(errors, f"{label}: acceptedAnswersEn has punctuation/case-only duplicates")

    for target_key in sorted(chapter_target_units):
        if not strong_evidence.get(target_key):
            add(errors, f"target unit has no retrieval/transfer/mastery evidence: {target_key}")

    if transfer_or_mastery == 0:
        add(errors, "Chapter has no transfer/mastery Activity")
    if not chapter_target_units:
        warnings.append("Chapter has no learning unit explicitly marked target")
    if lessons and all(len(l.get("activities", [])) == 0 for l in lessons):
        add(errors, "Chapter has no Activities")


def main() -> int:
    parser = argparse.ArgumentParser(description="Validate a Nova Content System v1 canonical Chapter")
    parser.add_argument("chapter", type=Path)
    parser.add_argument("--schema", type=Path, default=Path(__file__).resolve().parents[1] / "chapter.source.schema.json")
    args = parser.parse_args()

    chapter = load_json(args.chapter)
    schema = load_json(args.schema)
    errors: list[str] = []
    warnings: list[str] = []
    validate_schema(chapter, schema, errors)
    validate_semantics(chapter, errors, warnings)

    report = {"status": "PASS" if not errors else "FAIL", "chapter": chapter.get("chapterKey"), "errors": errors, "warnings": warnings}
    print(json.dumps(report, ensure_ascii=False, indent=2))
    return 0 if not errors else 2


if __name__ == "__main__":
    sys.exit(main())

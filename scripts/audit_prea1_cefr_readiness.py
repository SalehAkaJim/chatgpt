#!/usr/bin/env python3
"""Cross-language educational QA for Persian->target Pre-A1 courses.

The audit is capability-driven rather than curriculum-size-driven. It intentionally
does not encode expected unit counts, lesson counts, batch sizes, or round-number
targets. A course passes by demonstrating the real-world Pre-A1 capabilities that
matter for an absolute beginner.
"""
from __future__ import annotations

import json
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]

COURSES = {
    "en": {"variant": "en-US", "course": "fa-en-us"},
    "de": {"variant": "de-DE", "course": "fa-de-de"},
    "tr": {"variant": "tr-TR", "course": "fa-tr-tr"},
    "ko": {"variant": "ko-KR", "course": "fa-ko-kr"},
    "it": {"variant": "it-IT", "course": "fa-it-it"},
}

REQUIRED_INTENTS = {
    "state_origin",
    "state_age",
    "give_phone_number",
    "state_price",
    "state_date",
    "read_form_field",
    "ask_exit",
}

errors: list[str] = []
report: dict[str, dict] = {}

for lang, spec in COURSES.items():
    directory = ROOT / "content" / "production" / lang / "Pre-A1"
    paths = sorted(directory.glob("*.json"))
    if not paths:
        errors.append(f"{lang}: no Pre-A1 production files found")
        report[lang] = {"files": 0}
        continue

    batches = [json.loads(p.read_text(encoding="utf-8")) for p in paths]
    lesson_keys: set[str] = set()
    curriculum_units: set[str] = set()
    exercise_types = Counter()
    writing_rubrics = 0
    personalized_speaking_rubrics = 0
    visual_tasks = 0
    repair_tasks = 0
    resolved_repair = 0
    outcomes = Counter()
    intents: set[str] = set()

    for p, batch in zip(paths, batches):
        unit = batch.get("curriculum_unit")
        if not unit:
            errors.append(f"{p}: missing curriculum_unit")
        elif unit in curriculum_units:
            errors.append(f"{lang}: duplicate curriculum_unit {unit}")
        else:
            curriculum_units.add(unit)

        if batch.get("course") != spec["course"]:
            errors.append(f"{p}: wrong course {batch.get('course')}")
        if batch.get("target_language") != lang or batch.get("target_variant") != spec["variant"]:
            errors.append(f"{p}: wrong target language/variant")
        if batch.get("learner_language") != "fa" or batch.get("learner_variant") != "fa-IR":
            errors.append(f"{p}: wrong learner language/variant")
        if batch.get("cefr") != "Pre-A1":
            errors.append(f"{p}: wrong CEFR {batch.get('cefr')}")

        for obj in batch.get("items", []):
            data = obj.get("data", {})
            lesson_key = data.get("lesson_key")
            if lesson_key:
                lesson_keys.add(lesson_key)

            if obj.get("kind") == "utterance":
                intent = data.get("intent")
                if intent:
                    intents.add(intent)

            if obj.get("kind") == "dialogue":
                outcome = data.get("communication_outcome")
                if outcome:
                    outcomes[outcome] += 1
                if outcome == "meaning_resolved":
                    resolved_repair += 1
                    repair_tasks += 1

            if obj.get("kind") != "exercise":
                continue

            typ = data.get("exercise_type")
            exercise_types[typ] += 1
            prompt = data.get("prompt", {})
            answer = data.get("answer", {})
            external_id = str(obj.get("external_id", "")).lower()

            if prompt.get("requires_visual_support") or prompt.get("visual_asset"):
                visual_tasks += 1
            if typ == "writing" and answer.get("evaluation_mode") == "rubric":
                writing_rubrics += 1
            if typ == "speaking" and prompt.get("personalized") is True and answer.get("evaluation_mode") == "rubric":
                personalized_speaking_rubrics += 1
            if "repair" in external_id:
                repair_tasks += 1

    # Density scales with the curriculum that actually exists; there is no target size.
    if exercise_types["listening"] < len(paths):
        errors.append(f"{lang}: listening coverage is too sparse for {len(paths)} current units: {exercise_types['listening']}")
    if exercise_types["speaking"] < len(paths):
        errors.append(f"{lang}: speaking coverage is too sparse for {len(paths)} current units: {exercise_types['speaking']}")

    missing_intents = sorted(REQUIRED_INTENTS - intents)
    if missing_intents:
        errors.append(f"{lang}: missing real-world Pre-A1 intents {missing_intents}")

    if writing_rubrics < 3:
        errors.append(f"{lang}: open writing is too weak: {writing_rubrics} rubric tasks")
    if personalized_speaking_rubrics < 1:
        errors.append(f"{lang}: final readiness lacks personalized rubric-based speaking")
    if visual_tasks < 3:
        errors.append(f"{lang}: functional visual/sign reading is too weak: {visual_tasks} tasks")
    if repair_tasks < 1:
        errors.append(f"{lang}: no demonstrable communication-repair task")

    for required_outcome in (
        "personal_information_exchanged",
        "form_information_supplied",
        "service_task_completed",
    ):
        if outcomes[required_outcome] < 1:
            errors.append(f"{lang}: missing action-oriented outcome {required_outcome}")

    # German/Turkish/Korean had known historical repair loops; retain the stronger
    # regression check without making it a universal structural requirement.
    if lang in {"de", "tr", "ko"} and resolved_repair < 2:
        errors.append(f"{lang}: known meaning-repair scenarios are not demonstrably resolved")

    report[lang] = {
        "files": len(paths),
        "lessons_discovered": len(lesson_keys),
        "exercise_types": dict(exercise_types),
        "open_writing": writing_rubrics,
        "personalized_speaking": personalized_speaking_rubrics,
        "visual_tasks": visual_tasks,
        "repair_tasks": repair_tasks,
        "resolved_repair_dialogues": resolved_repair,
        "real_world_intents": sorted(intents & REQUIRED_INTENTS),
        "action_outcomes": dict(outcomes),
    }

print(json.dumps({"courses": report, "errors": errors, "valid": not errors}, ensure_ascii=False, indent=2))
if errors:
    raise SystemExit(1)

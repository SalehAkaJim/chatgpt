#!/usr/bin/env python3
"""Cross-language educational QA for completed Persian->target Pre-A1 courses.

This complements structural validators with can-do coverage checks. It intentionally
checks for the domains that were missing in the first zero-learner build: personal
information, real-life numbers, functional visual reading, open writing, personalized
speaking and communication repair.
"""
from __future__ import annotations

import json
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]

COURSES = {
    "en": {"variant": "en-US", "course": "fa-en-us", "units": 17, "lessons": 32},
    "de": {"variant": "de-DE", "course": "fa-de-de", "units": 17, "lessons": 33},
    "tr": {"variant": "tr-TR", "course": "fa-tr-tr", "units": 18, "lessons": 35},
    "ko": {"variant": "ko-KR", "course": "fa-ko-kr", "units": 18, "lessons": 35},
}

NEW_SUFFIXES = ("about-me", "real-life-numbers", "forms-signs", "real-world-gate")
errors: list[str] = []
report: dict[str, dict] = {}

for lang, spec in COURSES.items():
    directory = ROOT / "content" / "production" / lang / "Pre-A1"
    paths = sorted(directory.glob("*.json"))
    batches = [json.loads(p.read_text(encoding="utf-8")) for p in paths]
    by_unit = {b.get("curriculum_unit"): b for b in batches}

    if len(paths) != spec["units"]:
        errors.append(f"{lang}: expected {spec['units']} Pre-A1 files, found {len(paths)}")

    required_units = {f"prea1-{lang}-{suffix}" for suffix in NEW_SUFFIXES}
    missing = sorted(required_units - set(by_unit))
    if missing:
        errors.append(f"{lang}: missing CEFR bridge units {missing}")

    lesson_keys: set[str] = set()
    exercise_types = Counter()
    writing_rubrics = 0
    personalized_speaking_rubrics = 0
    visual_tasks = 0
    resolved_repair = 0
    outcomes = Counter()

    for p, batch in zip(paths, batches):
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
            if data.get("lesson_key"):
                lesson_keys.add(data["lesson_key"])
            if obj.get("kind") == "dialogue":
                outcome = data.get("communication_outcome")
                if outcome:
                    outcomes[outcome] += 1
                if outcome == "meaning_resolved":
                    resolved_repair += 1
            if obj.get("kind") != "exercise":
                continue
            typ = data.get("exercise_type")
            exercise_types[typ] += 1
            prompt = data.get("prompt", {})
            answer = data.get("answer", {})
            if prompt.get("requires_visual_support") or prompt.get("visual_asset"):
                visual_tasks += 1
            if typ == "writing" and answer.get("evaluation_mode") == "rubric":
                writing_rubrics += 1
            if typ == "speaking" and prompt.get("personalized") is True and answer.get("evaluation_mode") == "rubric":
                personalized_speaking_rubrics += 1

    if len(lesson_keys) != spec["lessons"]:
        errors.append(f"{lang}: expected {spec['lessons']} unique lesson keys, found {len(lesson_keys)}")
    if exercise_types["listening"] < spec["units"] - 2:
        errors.append(f"{lang}: listening coverage is too sparse: {exercise_types['listening']}")
    if exercise_types["speaking"] < spec["units"] - 2:
        errors.append(f"{lang}: speaking coverage is too sparse: {exercise_types['speaking']}")
    if writing_rubrics < 3:
        errors.append(f"{lang}: expected at least 3 open writing tasks, found {writing_rubrics}")
    if personalized_speaking_rubrics < 1:
        errors.append(f"{lang}: final gate lacks personalized rubric-based speaking")
    if visual_tasks < 3:
        errors.append(f"{lang}: expected at least 3 visual/sign tasks, found {visual_tasks}")
    if outcomes["personal_information_exchanged"] < 1 or outcomes["service_task_completed"] < 1:
        errors.append(f"{lang}: final action-oriented outcomes are missing")
    if lang in {"de", "tr", "ko"} and resolved_repair < 2:
        errors.append(f"{lang}: meaning-repair scenarios are not demonstrably resolved")

    gate = by_unit.get(f"prea1-{lang}-real-world-gate", {})
    gate_lessons = {x.get("data", {}).get("lesson_key") for x in gate.get("items", []) if x.get("data", {}).get("lesson_key")}
    if len(gate_lessons) != 2:
        errors.append(f"{lang}: real-world gate must span exactly 2 lessons")

    report[lang] = {
        "files": len(paths),
        "lessons": len(lesson_keys),
        "exercise_types": dict(exercise_types),
        "open_writing": writing_rubrics,
        "personalized_speaking": personalized_speaking_rubrics,
        "visual_tasks": visual_tasks,
        "resolved_repair_dialogues": resolved_repair,
        "action_outcomes": dict(outcomes),
    }

print(json.dumps({"courses": report, "errors": errors, "valid": not errors}, ensure_ascii=False, indent=2))
if errors:
    raise SystemExit(1)

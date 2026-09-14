#!/usr/bin/env python3
"""Cross-batch QA for Turkish Pre-A1 production content."""
from __future__ import annotations

import json
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
CONTENT_DIR = ROOT / "content" / "production" / "tr" / "Pre-A1"
EXPECTED = {
    "prea1-tr-first-greetings": 2,
    "prea1-tr-my-name": 2,
    "prea1-tr-numbers-0-10": 2,
    "prea1-tr-alphabet": 2,
    "prea1-tr-letter-names": 2,
    "prea1-tr-script-sound-bridge": 2,
    "prea1-tr-first-sounds": 2,
    "prea1-tr-how-are-you": 2,
    "prea1-tr-first-objects": 2,
    "prea1-tr-polite-words": 2,
    "prea1-tr-meaning-help": 1,
    "prea1-tr-survival-words": 2,
    "prea1-tr-first-conversation": 2,
    "prea1-tr-ready-for-a1": 2,
}

# Literacy bridge units are intentionally phonics/spelling focused rather than dialogue driven.
DIALOGUE_OPTIONAL_UNITS = {
    "prea1-tr-letter-names",
    "prea1-tr-script-sound-bridge",
}

errors: list[str] = []
paths = sorted(CONTENT_DIR.glob("*.json"))
batches = [(p, json.loads(p.read_text(encoding="utf-8"))) for p in paths]
by_unit = {b.get("curriculum_unit"): (p, b) for p, b in batches}

missing = sorted(set(EXPECTED) - set(by_unit))
extra = sorted(set(by_unit) - set(EXPECTED))
if missing:
    errors.append(f"missing units: {missing}")
if extra:
    errors.append(f"unexpected units: {extra}")

batch_ids = [b.get("batch_id") for _, b in batches]
dup_batches = [k for k, v in Counter(batch_ids).items() if v > 1]
if dup_batches:
    errors.append(f"duplicate batch IDs: {dup_batches}")

sequence = []
for unit, expected_lessons in EXPECTED.items():
    if unit not in by_unit:
        continue
    p, b = by_unit[unit]
    if b.get("course") != "fa-tr-tr":
        errors.append(f"{p}: wrong course {b.get('course')}")
    if b.get("target_language") != "tr" or b.get("target_variant") != "tr-TR":
        errors.append(f"{p}: wrong Turkish target metadata")
    if b.get("learner_language") != "fa" or b.get("learner_variant") != "fa-IR":
        errors.append(f"{p}: wrong Persian learner metadata")
    if b.get("cefr") != "Pre-A1":
        errors.append(f"{p}: wrong CEFR {b.get('cefr')}")

    ids = [x.get("external_id") for x in b.get("items", []) if x.get("external_id")]
    dup_ids = [k for k, v in Counter(ids).items() if v > 1]
    if dup_ids:
        errors.append(f"{p}: duplicate external IDs {dup_ids[:5]}")

    lessons: list[str] = []
    dialogues = 0
    exercises = Counter()
    for item in b.get("items", []):
        d = item.get("data", {})
        lk = d.get("lesson_key")
        if lk and lk not in lessons:
            lessons.append(lk)
        status = d.get("status", "generated")
        if status not in {"validated", "approved"}:
            errors.append(f"{p}: non-final status {status} in {item.get('external_id')}")

        if item.get("kind") == "utterance":
            if not (d.get("text") or {}).get("tr"):
                errors.append(f"{p}: utterance missing Turkish text")
            if not (d.get("translations") or {}).get("fa"):
                errors.append(f"{p}: utterance missing Persian translation")

        if item.get("kind") == "dialogue":
            dialogues += 1
            chars = d.get("characters", [])
            if len(chars) >= 2:
                sequence.append((d.get("lesson_key"), tuple(sorted(chars[:2]))))
            for turn in d.get("turns", []):
                if not turn.get("text"):
                    errors.append(f"{p}: dialogue turn missing Turkish text")
                if not turn.get("translation_fa"):
                    errors.append(f"{p}: dialogue turn missing Persian translation")

        if item.get("kind") == "exercise":
            exercises[d.get("exercise_type")] += 1

    if len(lessons) != expected_lessons:
        errors.append(f"{p}: expected {expected_lessons} lessons, found {len(lessons)}: {lessons}")
    if unit not in DIALOGUE_OPTIONAL_UNITS and dialogues < expected_lessons:
        errors.append(f"{p}: needs >=1 dialogue per lesson; found {dialogues}")
    if exercises["listening"] < 1:
        errors.append(f"{p}: needs listening coverage")
    if exercises["speaking"] < 1:
        errors.append(f"{p}: needs speaking coverage")

for prev, cur in zip(sequence, sequence[1:]):
    if prev[1] == cur[1]:
        errors.append(f"consecutive dialogues reuse pair {prev[1]}: {prev[0]} -> {cur[0]}")

summary = {
    "files": len(paths),
    "units": len(by_unit),
    "items": sum(len(b.get("items", [])) for _, b in batches),
    "expected_lessons": sum(EXPECTED.values()),
    "errors": errors,
    "valid": not errors,
}
print(json.dumps(summary, ensure_ascii=False, indent=2))
if errors:
    raise SystemExit(1)

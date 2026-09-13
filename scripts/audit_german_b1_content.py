#!/usr/bin/env python3
"""Audit incremental German B1 production content.

The audit is batch-aware: each authored batch must contain exactly ten units,
while the production directory may grow by ten units at a time.
"""
from __future__ import annotations

import argparse
import json
from collections import Counter, defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
EXPECTED_BATCH_1 = [
    "b1-de-telling-stories",
    "b1-de-opinions-reasons",
    "b1-de-agree-disagree",
    "b1-de-work-experience",
    "b1-de-study-goals",
    "b1-de-problems-solutions",
    "b1-de-health-habits",
    "b1-de-travel-experiences",
    "b1-de-media-technology",
    "b1-de-neighborhood-community",
]


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--batch", type=int, default=1)
    args = ap.parse_args()
    if args.batch != 1:
        raise SystemExit("This audit currently knows batch 1 only; extend EXPECTED units before validating a later batch.")

    root = ROOT / "content" / "production" / "de" / "B1"
    files = sorted(root.glob("*.json"))
    errors: list[str] = []
    units: dict[str, dict] = {}
    global_ids: list[str] = []
    utterance_texts: list[str] = []
    ordered_pairs: list[tuple[str, str]] = []
    total_items = 0

    for path in files:
        batch = json.loads(path.read_text(encoding="utf-8"))
        unit = batch.get("curriculum_unit")
        if unit in units:
            errors.append(f"duplicate curriculum unit: {unit}")
        units[unit] = batch
        if batch.get("course") != "fa-de-de": errors.append(f"{path.name}: wrong course")
        if batch.get("target_language") != "de" or batch.get("target_variant") != "de-DE": errors.append(f"{path.name}: wrong target locale")
        if batch.get("learner_language") != "fa" or batch.get("learner_variant") != "fa-IR": errors.append(f"{path.name}: wrong learner locale")
        if batch.get("cefr") != "B1": errors.append(f"{path.name}: wrong CEFR")

        items = batch.get("items", [])
        total_items += len(items)
        lesson_kinds: dict[str, Counter] = defaultdict(Counter)
        lesson_pairs: dict[str, set[tuple[str, str]]] = defaultdict(set)
        lesson_keys: set[str] = set()
        for item in items:
            ext = item.get("external_id")
            if ext: global_ids.append(f"{batch.get('batch_id')}:{ext}")
            data = item.get("data", {})
            if data.get("status") not in {"validated", "approved"}:
                errors.append(f"{path.name}:{ext}: status is not validated/approved")
            lk = data.get("lesson_key")
            if lk:
                lesson_keys.add(lk)
                lesson_kinds[lk][item.get("kind")] += 1
                if item.get("kind") == "exercise":
                    lesson_kinds[lk]["exercise:" + str(data.get("exercise_type"))] += 1
            if item.get("kind") == "utterance":
                text = (data.get("text") or {}).get("de")
                if not text: errors.append(f"{path.name}:{ext}: missing German utterance")
                else: utterance_texts.append(text)
                if not (data.get("translations") or {}).get("fa"):
                    errors.append(f"{path.name}:{ext}: missing Persian utterance translation")
            if item.get("kind") == "dialogue":
                chars = data.get("characters", [])
                pair = tuple(sorted(chars[:2])) if len(chars) >= 2 else tuple(chars)
                if len(pair) == 2:
                    if pair in lesson_pairs[lk]: errors.append(f"{path.name}:{lk}: repeated character pair {pair}")
                    lesson_pairs[lk].add(pair)
                    ordered_pairs.append(pair)
                for turn in data.get("turns", []):
                    if not turn.get("translation_fa"):
                        errors.append(f"{path.name}:{ext}: dialogue turn missing Persian translation")

        if len(lesson_keys) != 3:
            errors.append(f"{path.name}: expected 3 lessons, found {len(lesson_keys)}")
        for lk in sorted(lesson_keys):
            counts = lesson_kinds[lk]
            if counts["dialogue"] < 1: errors.append(f"{path.name}:{lk}: missing dialogue")
            for ex_type in ("listening", "speaking", "translation", "sentence_building", "multiple_choice"):
                if counts["exercise:" + ex_type] < 1:
                    errors.append(f"{path.name}:{lk}: missing {ex_type} exercise")

    expected = EXPECTED_BATCH_1
    missing = [u for u in expected if u not in units]
    unexpected = [u for u in units if u not in expected]
    if missing: errors.append("missing units: " + ", ".join(missing))
    if unexpected: errors.append("unexpected units: " + ", ".join(unexpected))
    if len(files) != 10: errors.append(f"expected 10 B1 production files, found {len(files)}")

    dup_ids = [x for x, n in Counter(global_ids).items() if n > 1]
    if dup_ids: errors.append("duplicate batch-scoped external IDs: " + ", ".join(dup_ids[:10]))
    dup_utterances = [x for x, n in Counter(utterance_texts).items() if n > 1]
    if dup_utterances: errors.append("duplicate German utterances: " + " | ".join(dup_utterances[:10]))
    for previous, current in zip(ordered_pairs, ordered_pairs[1:]):
        if previous == current:
            errors.append(f"consecutive dialogue character pair repeated: {current}")

    report = {
        "level": "B1",
        "batch": args.batch,
        "files": len(files),
        "units": len(units),
        "lessons": sum(len({i.get('data', {}).get('lesson_key') for i in b.get('items', []) if i.get('data', {}).get('lesson_key')}) for b in units.values()),
        "items": total_items,
        "german_utterances": len(utterance_texts),
        "dialogues": len(ordered_pairs),
        "errors": errors,
        "valid": not errors,
    }
    print(json.dumps(report, ensure_ascii=False, indent=2))
    if errors:
        raise SystemExit(1)


if __name__ == "__main__":
    main()

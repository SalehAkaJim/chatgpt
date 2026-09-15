#!/usr/bin/env python3
"""Validate the English reference delivery graph without requiring MySQL.

This is a source-level contract test for the frontend delivery model. It checks
that every learner-facing canonical item is reachable from a lesson step, every
step reference resolves inside the same lesson, exercise delivery is complete,
and semantic stages never regress.
"""
from __future__ import annotations

import json
from collections import Counter
from pathlib import Path

from scripts.lesson_flow import STAGE_ORDER, build_batch_lesson_flows

ROOT = Path(__file__).resolve().parents[1]
CONTENT_ROOT = ROOT / "content" / "production" / "en"
LEVELS = ["Pre-A1", "A1", "A2", "B1", "B2", "C1", "C2"]


def item_id(item: dict) -> str:
    data = item.get("data") or {}
    return str(item.get("external_id") or data.get("slug") or "item")


def support_only_concepts(items: list[dict]) -> set[str]:
    represented: set[str] = set()
    concepts: dict[str, str] = {}
    for item in items:
        data = item.get("data") or {}
        if item.get("kind") == "concept":
            concepts[str(data.get("slug") or "")] = item_id(item)
        elif item.get("kind") == "lexeme":
            represented.update(str(ref) for ref in data.get("concept_refs", []))

    result: set[str] = set()
    for slug, external_id in concepts.items():
        if slug in represented or external_id in represented:
            result.add(external_id)
    return result


def validate_batch(path: Path) -> tuple[list[str], Counter]:
    batch = json.loads(path.read_text(encoding="utf-8"))
    flows = build_batch_lesson_flows(batch)
    errors: list[str] = []
    stats: Counter = Counter()

    grouped: dict[str, list[dict]] = {}
    for item in batch.get("items", []):
        lesson_key = (item.get("data") or {}).get("lesson_key")
        if lesson_key:
            grouped.setdefault(str(lesson_key), []).append(item)

    if set(grouped) != set(flows):
        errors.append(f"{path}: lesson grouping mismatch")

    for lesson_key, items in grouped.items():
        steps = flows.get(lesson_key, [])
        stats["lessons"] += 1
        stats["steps"] += len(steps)
        if not steps:
            errors.append(f"{path}:{lesson_key}: no delivery steps")
            continue
        if steps[0]["step_type"] != "intro":
            errors.append(f"{path}:{lesson_key}: first step is not intro")
        if steps[-1]["step_type"] != "review":
            errors.append(f"{path}:{lesson_key}: last step is not review")

        stage_indexes = [STAGE_ORDER.get(str(step.get("stage")), -1) for step in steps]
        if -1 in stage_indexes:
            errors.append(f"{path}:{lesson_key}: unknown stage")
        elif stage_indexes != sorted(stage_indexes):
            errors.append(f"{path}:{lesson_key}: stage regression {stage_indexes}")

        step_keys = [str(step.get("step_key")) for step in steps]
        if len(step_keys) != len(set(step_keys)):
            errors.append(f"{path}:{lesson_key}: duplicate step_key")

        source_items = {(str(item.get("kind")), item_id(item)): item for item in items}
        delivered_items: Counter = Counter()
        delivered_exercises: Counter = Counter()
        for step in steps:
            for member in step.get("items", []):
                key = (str(member.get("kind")), str(member.get("external_id")))
                if key not in source_items:
                    errors.append(f"{path}:{lesson_key}: unresolved step item {key}")
                delivered_items[key] += 1
            for member in step.get("exercises", []):
                ext = str(member.get("external_id"))
                key = ("exercise", ext)
                if key not in source_items:
                    errors.append(f"{path}:{lesson_key}: unresolved exercise {ext}")
                delivered_exercises[ext] += 1

        support_only = support_only_concepts(items)
        for (kind, ext), item in source_items.items():
            if kind == "exercise":
                if delivered_exercises[ext] != 1:
                    errors.append(
                        f"{path}:{lesson_key}: exercise {ext} delivered {delivered_exercises[ext]} times"
                    )
                continue
            if kind == "concept" and ext in support_only:
                stats["support_only_concepts"] += 1
                continue
            if kind in {"concept", "lexeme", "word_form", "utterance", "grammar_point", "dialogue"}:
                if delivered_items[(kind, ext)] == 0:
                    errors.append(f"{path}:{lesson_key}: orphan learner-facing item {kind}:{ext}")

        stats.update(Counter(item.get("kind", "unknown") for item in items))
        stats["delivered_item_links"] += sum(delivered_items.values())
        stats["delivered_exercise_links"] += sum(delivered_exercises.values())

    return errors, stats


def main() -> None:
    errors: list[str] = []
    totals: Counter = Counter()
    files = 0
    for level in LEVELS:
        level_dir = CONTENT_ROOT / level
        if not level_dir.is_dir():
            errors.append(f"Missing English level directory: {level_dir}")
            continue
        level_files = sorted(level_dir.glob("*.json"))
        if not level_files:
            errors.append(f"No English production batches: {level_dir}")
            continue
        for path in level_files:
            files += 1
            batch_errors, stats = validate_batch(path)
            errors.extend(batch_errors)
            totals.update(stats)

    report = {
        "valid": not errors,
        "levels": len(LEVELS),
        "files": files,
        "stats": dict(sorted(totals.items())),
        "errors": errors[:100],
        "error_count": len(errors),
    }
    print(json.dumps(report, ensure_ascii=False, indent=2))
    if errors:
        raise SystemExit(1)


if __name__ == "__main__":
    main()

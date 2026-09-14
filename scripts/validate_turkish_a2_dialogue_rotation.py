#!/usr/bin/env python3
"""Validate Turkish A2 dialogue-pair rotation across the whole authored level.

The existing generator protects consecutive lessons inside one unit. This validator
extends that contract across unit and batch boundaries using authored spec order,
so a pair used in one lesson cannot be repeated in the immediately following
lesson even when that lesson belongs to another unit.
"""
from __future__ import annotations

import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SPEC_DIR = ROOT / "content/specs/tr/A2"
PROD_DIR = ROOT / "content/production/tr/A2"


def dialogue_pair(data: dict) -> tuple[str, ...]:
    speakers: list[str] = []
    for turn in data.get("turns", []):
        speaker = turn.get("speaker")
        if speaker and speaker not in speakers:
            speakers.append(speaker)
    return tuple(sorted(speakers))


def main() -> None:
    authored_order: list[str] = []
    for path in sorted(SPEC_DIR.glob("batch-*.json")):
        payload = json.loads(path.read_text(encoding="utf-8"))
        for unit in payload.get("units", []):
            slug = unit.get("slug")
            if not slug:
                raise SystemExit(f"{path}: unit without slug")
            authored_order.append(f"a2-tr-{slug}")

    if not authored_order:
        raise SystemExit("No Turkish A2 authored units found")
    if len(authored_order) != len(set(authored_order)):
        raise SystemExit("Duplicate Turkish A2 unit in authored sequence")

    production: dict[str, dict] = {}
    for path in PROD_DIR.glob("*.json"):
        payload = json.loads(path.read_text(encoding="utf-8"))
        unit = payload.get("curriculum_unit")
        if unit:
            production[unit] = payload

    missing = [unit for unit in authored_order if unit not in production]
    if missing:
        raise SystemExit(f"Missing Turkish A2 production units: {missing}")

    previous: tuple[str, ...] | None = None
    previous_label: str | None = None
    checked = 0
    for unit in authored_order:
        by_lesson: dict[str, tuple[str, ...]] = {}
        for item in production[unit].get("items", []):
            if item.get("kind") != "dialogue":
                continue
            data = item.get("data", {})
            lesson_key = data.get("lesson_key")
            pair = dialogue_pair(data)
            if not lesson_key or len(pair) < 2:
                raise SystemExit(f"{unit}: malformed dialogue pair or lesson key")
            if lesson_key in by_lesson:
                raise SystemExit(f"{unit}: multiple dialogues for lesson {lesson_key}")
            by_lesson[lesson_key] = pair

        if len(by_lesson) != 3:
            raise SystemExit(f"{unit}: expected exactly three lesson dialogues, got {len(by_lesson)}")

        for lesson_key in sorted(by_lesson):
            pair = by_lesson[lesson_key]
            if previous is not None and pair == previous:
                raise SystemExit(
                    f"Repeated normalized dialogue pair across consecutive lessons: "
                    f"{previous_label} -> {lesson_key}: {pair}"
                )
            previous = pair
            previous_label = lesson_key
            checked += 1

    print(json.dumps({"units": len(authored_order), "lessons_checked": checked, "status": "passed"}, ensure_ascii=False))


if __name__ == "__main__":
    main()

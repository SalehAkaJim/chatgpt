#!/usr/bin/env python3
"""Shared helpers for resolving Nova production factory configuration."""
from __future__ import annotations

import json
from pathlib import Path


def load_config(path: Path) -> dict:
    return json.loads(Path(path).read_text(encoding="utf-8"))


def discover_lesson_numbers(root: Path, course_code: str) -> list[int]:
    lessons_root = Path(root) / "nova/courses" / course_code / "lessons"
    numbers: list[int] = []
    if not lessons_root.exists():
        return numbers
    for child in lessons_root.iterdir():
        if not child.is_dir() or not child.name.isdigit():
            continue
        source = child / "lesson.source.json"
        if source.exists():
            numbers.append(int(child.name))
    return sorted(numbers)


def resolve_generated_lessons(root: Path, config: dict, course_code: str) -> list[int]:
    """Resolve the canonical Lesson prefix.

    Production uses `generatedLessons: "auto"` so newly authored canonical Lessons
    automatically enter every gate. Tests may still provide an explicit numeric list.
    """
    configured = config.get("generatedLessons", "auto")
    if configured in (None, "auto"):
        return discover_lesson_numbers(root, course_code)
    if not isinstance(configured, list):
        raise ValueError("generatedLessons must be 'auto' or a list of Lesson numbers")
    numbers = sorted({int(x) for x in configured})
    discovered = set(discover_lesson_numbers(root, course_code))
    missing = [x for x in numbers if x not in discovered]
    if missing:
        raise ValueError(f"Configured Lessons are missing canonical lesson.source.json files: {missing}")
    return numbers


__all__ = ["discover_lesson_numbers", "load_config", "resolve_generated_lessons"]

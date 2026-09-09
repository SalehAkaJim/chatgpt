#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
from pathlib import Path

from language_units import is_word_unit, word_unit_errors


def load(path: Path):
    return json.loads(path.read_text(encoding="utf-8"))


def save(path: Path, value: dict):
    path.write_text(json.dumps(value, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def migrate_lesson(path: Path) -> dict:
    lesson = load(path)
    before = lesson.get("lexicalItems") or []
    kept = []
    removed = []
    for item in before:
        errs = word_unit_errors(item)
        if errs and item.get("itemType") != "formula":
            raise ValueError(f"{lesson.get('lessonKey')} {item.get('lexicalKey')}: {'; '.join(errs)}")
        if is_word_unit(item):
            kept.append(item)
        else:
            removed.append(item.get("lexicalKey"))

    kept_keys = {x.get("lexicalKey") for x in kept}
    new_activities = []
    dropped_activities = []
    for activity in lesson.get("activities") or []:
        if activity.get("type") != "lexical_teach":
            new_activities.append(activity)
            continue
        cfg = dict(activity.get("config") or {})
        keys = [k for k in (cfg.get("lexicalKeys") or []) if k in kept_keys]
        if not keys:
            dropped_activities.append(activity.get("activityKey"))
            continue
        cfg["lexicalKeys"] = keys
        activity = dict(activity)
        activity["config"] = cfg
        new_activities.append(activity)

    changed = kept != before or new_activities != (lesson.get("activities") or [])
    if changed:
        lesson["lexicalItems"] = kept
        lesson["activities"] = new_activities
        save(path, lesson)
    return {
        "lessonKey": lesson.get("lessonKey"),
        "changed": changed,
        "removedNonWords": removed,
        "droppedLexicalTeachActivities": dropped_activities,
        "wordCount": len(kept),
    }


def main() -> int:
    p = argparse.ArgumentParser()
    p.add_argument("--repo-root", default=".")
    p.add_argument("--config", type=Path, required=True)
    p.add_argument("--report", type=Path)
    args = p.parse_args()
    root = Path(args.repo_root).resolve()
    cfg = load(args.config)
    course = cfg.get("courseCode", "en-fa")
    results = []
    for number in cfg.get("generatedLessons", []):
        path = root / "nova/courses" / course / "lessons" / f"{int(number):04d}" / "lesson.source.json"
        results.append(migrate_lesson(path))
    payload = {
        "status": "PASS",
        "courseCode": course,
        "lessons": results,
        "removedNonWordCount": sum(len(x["removedNonWords"]) for x in results),
    }
    if args.report:
        args.report.parent.mkdir(parents=True, exist_ok=True)
        save(args.report, payload)
    print(json.dumps(payload, ensure_ascii=False))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
from pathlib import Path

from factory_config import resolve_generated_lessons
from reference_catalog import ReferenceCatalog
from validate_content_quality import evaluate
from validate_factory_design import validate_factory_design
from validate_lesson import validate
from validate_lesson_reference import validate_lesson_reference
from validate_story import validate_story


def load(path: Path):
    return json.loads(path.read_text(encoding="utf-8"))


def main() -> int:
    p = argparse.ArgumentParser()
    p.add_argument("--repo-root", default=".")
    p.add_argument("--config", type=Path, required=True)
    p.add_argument("--output", type=Path, required=True)
    args = p.parse_args()

    root = Path(args.repo_root).resolve()
    config = load(args.config)
    course_code = config.get("courseCode", "en-fa")
    generated_lessons = resolve_generated_lessons(root, config, course_code)
    course_path = root / "nova/courses" / course_code / "course.source.json"
    course = load(course_path)
    policy = load(root / "nova/_assistant/content-system-v1/content_quality.policy.json")
    catalog = ReferenceCatalog(root, course_code)
    enforce_from = int(config.get("enforceFromSortOrder", 1))
    max_dechunk_delay = int(config.get("generativityMaxDelayLessons", 4))

    reports = []
    story_records = []
    lesson_objects = []
    previous_order = 0
    errors = []
    for number in generated_lessons:
        lesson_path = root / "nova/courses" / course_code / "lessons" / f"{int(number):04d}" / "lesson.source.json"
        lesson = load(lesson_path)
        lesson_objects.append(lesson)
        canonical = validate(lesson, course)
        reference = validate_lesson_reference(lesson, catalog, enforce_from_sort_order=enforce_from)
        quality = evaluate(lesson, policy)
        order = int(lesson.get("sortOrder") or 0)
        if order <= previous_order:
            errors.append(f"{lesson.get('lessonKey')}: generated prefix is not strictly ordered")
        previous_order = order
        local_errors = list(canonical.get("errors", [])) + list(reference.get("errors", [])) + list(quality.get("errors", []))
        if quality.get("automatedScore", 0) < quality.get("minimumAutomatedScore", 90):
            local_errors.append(
                f"automated quality score {quality.get('automatedScore')} is below "
                f"{quality.get('minimumAutomatedScore', 90)}"
            )
        reports.append({
            "lessonKey": lesson.get("lessonKey"),
            "sortOrder": order,
            "status": "PASS" if not local_errors else "FAIL",
            "automatedScore": quality.get("automatedScore"),
            "canonicalStatus": canonical.get("status"),
            "referenceStatus": reference.get("status"),
            "referenceWarnings": reference.get("warnings", []),
            "errors": local_errors,
        })
        story_records.append({"course": course, "lesson": lesson, "source": lesson_path})

    story_errors = validate_story(story_records) if story_records else []
    design = validate_factory_design(lesson_objects, max_delay=max_dechunk_delay)
    design_errors = design.get("errors", [])
    errors.extend(story_errors)
    errors.extend(design_errors)
    errors.extend(e for r in reports for e in r["errors"])
    status = "PASS" if not errors else "FAIL"
    payload = {
        "schemaVersion": 3,
        "courseCode": course_code,
        "enforceFromSortOrder": enforce_from,
        "generativityMaxDelayLessons": max_dechunk_delay,
        "generatedLessonsMode": config.get("generatedLessons", "auto"),
        "generatedLessons": generated_lessons,
        "passedPrefixLength": sum(1 for r in reports if r["status"] == "PASS"),
        "status": status,
        "lessonReports": reports,
        "storyErrors": story_errors,
        "factoryDesignStatus": design.get("status"),
        "factoryDesignErrors": design_errors,
        "errors": errors,
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({"status": status, "generated": len(reports), "errors": len(errors)}, ensure_ascii=False))
    return 0 if status == "PASS" else 2


if __name__ == "__main__":
    raise SystemExit(main())

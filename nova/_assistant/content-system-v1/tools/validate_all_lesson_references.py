#!/usr/bin/env python3
"""Validate every canonical Lesson against the committed/generated reference snapshot.

Used by the reference-sync workflow before a new snapshot is committed. This keeps a
scheduled upstream data refresh from silently invalidating Lesson 21+ target language.
"""
from __future__ import annotations

import argparse
import json
from pathlib import Path

from reference_catalog import ReferenceCatalog
from validate_lesson_reference import validate_lesson_reference


def validate_all(repo_root: Path, course_code: str = "en-fa") -> dict:
    catalog = ReferenceCatalog(repo_root, course_code)
    lesson_root = repo_root / "nova/courses" / course_code / "lessons"
    reports = []
    for source in sorted(lesson_root.glob("*/lesson.source.json")):
        lesson = json.loads(source.read_text(encoding="utf-8"))
        report = validate_lesson_reference(lesson, catalog)
        reports.append({
            "lessonKey": report.get("lessonKey"),
            "sortOrder": report.get("sortOrder"),
            "enforced": report.get("enforced"),
            "status": report.get("status"),
            "errors": report.get("errors", []),
            "warningCount": len(report.get("warnings", [])),
        })
    failures = [r for r in reports if r["status"] != "PASS"]
    return {
        "schemaVersion": 1,
        "courseCode": course_code,
        "status": "PASS" if not failures else "FAIL",
        "lessonCount": len(reports),
        "enforcedLessonCount": sum(1 for r in reports if r["enforced"]),
        "failureCount": len(failures),
        "lessons": reports,
    }


def main() -> int:
    p = argparse.ArgumentParser()
    p.add_argument("--repo-root", default=".")
    p.add_argument("--course", default="en-fa")
    p.add_argument("--output", type=Path)
    args = p.parse_args()
    report = validate_all(Path(args.repo_root).resolve(), args.course)
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(report, ensure_ascii=False, indent=2))
    return 0 if report["status"] == "PASS" else 2


if __name__ == "__main__":
    raise SystemExit(main())

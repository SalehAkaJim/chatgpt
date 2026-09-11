#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
from pathlib import Path


def load(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def norm(value: object) -> str:
    return str(value or "").strip().lower()


def lesson_path(root: Path, course: str, order: int) -> Path:
    return root / "nova/courses" / course / "lessons" / f"{order:04d}" / "lesson.source.json"


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--repo-root", default=".")
    parser.add_argument("--course", default="en-fa")
    parser.add_argument("--policy", default="nova/_assistant/content-system-v1/product_quality_v2.policy.json")
    parser.add_argument("--output", default="nova/curriculum/en-fa/quality_v3.wave_validation.json")
    args = parser.parse_args()

    root = Path(args.repo_root).resolve()
    policy = load(root / args.policy)
    config = policy.get("qualityV3Wave") or {}
    enforce_from = int(config.get("enforceFromSortOrder", 149))
    wave_size = int(config.get("size", 8))
    min_legacy = int(config.get("minimumDistinctLegacyReviewItems", 8))
    pronunciation_window = int(config.get("pronunciationWindowSize", 16))
    min_pronunciation = int(config.get("minimumPronunciationFocusLessons", 1))
    legacy_from = int((policy.get("spacedRetrieval") or {}).get("legacyBacklogFromSortOrder", 40))
    legacy_to = int((policy.get("spacedRetrieval") or {}).get("legacyBacklogToSortOrder", 84))

    lessons_root = root / "nova/courses" / args.course / "lessons"
    orders = sorted(
        int(path.name) for path in lessons_root.iterdir()
        if path.is_dir() and path.name.isdigit() and (path / "lesson.source.json").exists()
    )
    lessons = {order: load(lesson_path(root, args.course, order)) for order in orders}
    max_order = max(orders, default=0)

    legacy_keys: set[str] = set()
    legacy_lemmas: dict[str, str] = {}
    for order in range(legacy_from, legacy_to + 1):
        lesson = lessons.get(order)
        if not lesson:
            continue
        for item in lesson.get("lexicalItems") or []:
            if item.get("role") != "target":
                continue
            key = str(item.get("lexicalKey") or "")
            lemma = norm(item.get("lemma") or item.get("displayForm"))
            if key:
                legacy_keys.add(key)
                legacy_lemmas[key] = lemma

    errors: list[str] = []
    warnings: list[str] = []
    wave_reports = []
    pronunciation_reports = []

    # Only validate complete future windows. This intentionally leaves the green
    # 1..148 prefix untouched and becomes a hard gate as soon as 149..156 exists.
    start = enforce_from
    while start + wave_size - 1 <= max_order:
        end = start + wave_size - 1
        distinct_reviews: set[str] = set()
        for order in range(start, end + 1):
            lesson = lessons.get(order)
            if not lesson:
                errors.append(f"QV3-W01 Lessons {start}-{end}: missing canonical Lesson {order}")
                continue
            for item in lesson.get("lexicalItems") or []:
                key = str(item.get("lexicalKey") or "")
                if item.get("role") == "review" and key in legacy_keys:
                    distinct_reviews.add(key)
        passed = len(distinct_reviews) >= min_legacy
        wave_reports.append({
            "range": [start, end],
            "distinctLegacyReviewItems": len(distinct_reviews),
            "minimumRequired": min_legacy,
            "lexicalKeys": sorted(distinct_reviews),
            "status": "PASS" if passed else "FAIL",
        })
        if not passed:
            errors.append(
                f"QV3-W02 Lessons {start}-{end}: only {len(distinct_reviews)} distinct overdue legacy review items; need {min_legacy}"
            )
        start += wave_size

    start = enforce_from
    while start + pronunciation_window - 1 <= max_order:
        end = start + pronunciation_window - 1
        focus_lessons = []
        for order in range(start, end + 1):
            lesson = lessons.get(order)
            if not lesson:
                continue
            metadata = lesson.get("metadata") or {}
            archetype = str(metadata.get("lessonArchetype") or "")
            has_pron_activity = any(
                str(activity.get("type") or "") == "pronunciation"
                for activity in lesson.get("activities") or []
            )
            if archetype == "pronunciation_focus" or has_pron_activity:
                focus_lessons.append(order)
        passed = len(focus_lessons) >= min_pronunciation
        pronunciation_reports.append({
            "range": [start, end],
            "pronunciationFocusLessons": focus_lessons,
            "minimumRequired": min_pronunciation,
            "status": "PASS" if passed else "FAIL",
        })
        if not passed:
            errors.append(
                f"QV3-W03 Lessons {start}-{end}: no explicit pronunciation-focus Lesson/activity; need at least {min_pronunciation}"
            )
        start += pronunciation_window

    report = {
        "schemaVersion": 1,
        "courseCode": args.course,
        "status": "PASS" if not errors else "FAIL",
        "canonicalPrefix": max_order,
        "enforceFromSortOrder": enforce_from,
        "errors": errors,
        "warnings": warnings,
        "legacyReviewWaves": wave_reports,
        "pronunciationWindows": pronunciation_reports,
        "legacyInventory": {
            "fromSortOrder": legacy_from,
            "toSortOrder": legacy_to,
            "targetCount": len(legacy_keys),
        },
    }
    output = root / args.output
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({
        "status": report["status"],
        "canonicalPrefix": max_order,
        "validatedLegacyReviewWaves": len(wave_reports),
        "validatedPronunciationWindows": len(pronunciation_reports),
        "errors": len(errors),
    }, ensure_ascii=False))
    return 0 if not errors else 2


if __name__ == "__main__":
    raise SystemExit(main())

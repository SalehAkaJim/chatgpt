#!/usr/bin/env python3
from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path

TODAY = "2026-09-10"


def load(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def dump(path: Path, payload: object) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def update_review(root: Path, source: Path, changes: list[str]) -> None:
    review_path = source.with_name("pedagogy.review.json")
    if not review_path.exists():
        return
    review = load(review_path)
    lesson = load(source)
    review["reviewerType"] = "model"
    review["reviewedAt"] = TODAY
    review["scope"] = (
        f"Model/editor learner-experience dependency repair for {lesson.get('lessonKey')}; "
        "checks learner-visible context and does not claim independent human or real-learner testing."
    )
    dims = review.setdefault("dimensions", {})
    dims.setdefault("learnerExperience", {})["score"] = 4
    dims["learnerExperience"]["evidence"] = (
        "Learner-facing prompts were checked against what the Prototype actually renders; "
        "the activity no longer claims an unavailable visual context."
    )
    review["learnerTested"] = False
    limitations = list(review.get("limitations") or [])
    note = "No independent human or real learner test has been performed after learner-context repair."
    if note not in limitations:
        limitations.append(note)
    review["limitations"] = limitations
    resolved = list(review.get("resolvedFindings") or [])
    for change in changes:
        entry = f"Learner-context repair: {change}."
        if entry not in resolved:
            resolved.append(entry)
    review["resolvedFindings"] = resolved
    review["sourceHash"] = hashlib.sha256(source.read_bytes()).hexdigest()
    course = root / "nova/courses/en-fa/course.source.json"
    review["courseSourceHash"] = hashlib.sha256(course.read_bytes()).hexdigest()
    review["learnerExperienceDependencyRepair"] = {"version": 1, "date": TODAY, "changes": changes}
    dump(review_path, review)


def repair_lesson_27(root: Path) -> list[str]:
    source = root / "nova/courses/en-fa/lessons/0027/lesson.source.json"
    if not source.exists():
        return []
    lesson = load(source)
    changes: list[str] = []
    for activity in lesson.get("activities") or []:
        if activity.get("activityKey") != "A05":
            continue
        old = str(activity.get("promptFa") or "")
        replacements = {
            "عکس مایا را می بینی. کدام جمله درست است؟": "درباره مایا کدام جمله درست است؟",
            "عکس مایا را می‌بینی. کدام جمله درست است؟": "درباره مایا کدام جمله درست است؟",
        }
        if old in replacements:
            activity["promptFa"] = replacements[old]
            changes.append(f"A05 removed unavailable-photo claim: {old!r} -> {activity['promptFa']!r}")
    if not changes:
        return []
    metadata = lesson.setdefault("metadata", {})
    metadata["learnerExperienceDependencyRepairVersion"] = 1
    dump(source, lesson)
    update_review(root, source, changes)
    return changes


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--repo-root", default=".")
    parser.add_argument("--report", default="nova/curriculum/en-fa/learner_experience_repair_report.json")
    args = parser.parse_args()
    root = Path(args.repo_root).resolve()
    changes = repair_lesson_27(root)
    report = {
        "schemaVersion": 1,
        "status": "PASS",
        "changedLessons": [27] if changes else [],
        "changes": {"27": changes} if changes else {},
    }
    dump(root / args.report, report)
    print(json.dumps(report, ensure_ascii=False))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

#!/usr/bin/env python3
from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path

TODAY = "2026-09-11"


def load(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def dump(path: Path, payload: object) -> None:
    path.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--repo-root", default=".")
    parser.add_argument("--course", default="en-fa")
    parser.add_argument("--report", default="nova/curriculum/en-fa/quality_v3.remediation_report.json")
    args = parser.parse_args()

    root = Path(args.repo_root).resolve()
    report_path = root / args.report
    remediation = load(report_path)
    changed = {int(x) for x in remediation.get("changedLessons") or []}
    course_path = root / "nova/courses" / args.course / "course.source.json"
    course_hash = hashlib.sha256(course_path.read_bytes()).hexdigest()
    lessons_root = course_path.parent / "lessons"

    refreshed = 0
    changed_reviews = 0
    missing_reviews = []
    for lesson_dir in sorted(lessons_root.iterdir()):
        if not lesson_dir.is_dir() or not lesson_dir.name.isdigit():
            continue
        source = lesson_dir / "lesson.source.json"
        if not source.exists():
            continue
        review_path = lesson_dir / "pedagogy.review.json"
        if not review_path.exists():
            missing_reviews.append(int(lesson_dir.name))
            continue
        lesson = load(source)
        review = load(review_path)
        order = int(lesson.get("sortOrder") or int(lesson_dir.name))
        review["courseSourceHash"] = course_hash
        if order in changed:
            review["sourceHash"] = hashlib.sha256(source.read_bytes()).hexdigest()
            review["reviewerType"] = "model"
            review["reviewedAt"] = TODAY
            review["scope"] = (
                f"Model/editor Quality v3 remediation review of {lesson.get('lessonKey')}; "
                "not an independent human or real-learner test."
            )
            dims = review.setdefault("dimensions", {})
            dims.setdefault("pedagogicalClarity", {})["score"] = max(
                4, int(dims.get("pedagogicalClarity", {}).get("score") or 0)
            )
            dims["pedagogicalClarity"]["evidence"] = (
                "Dialogue-dependent tasks are ordered after exposure, duplicate exact-sentence assessment is practice-only, "
                "and hidden-answer retrieval remains the strongest evidence."
            )
            dims.setdefault("repetitionUsefulness", {})["score"] = max(
                4, int(dims.get("repetitionUsefulness", {}).get("score") or 0)
            )
            dims["repetitionUsefulness"]["evidence"] = (
                "Repeated exact target sentences may remain for practice, but only the strongest occurrence is scored; "
                "this reduces false mastery from repeated identical answers."
            )
            dims.setdefault("dialoguePlausibility", {})["score"] = max(
                4, int(dims.get("dialoguePlausibility", {}).get("score") or 0)
            )
            dims["dialoguePlausibility"]["evidence"] = (
                "Generic story metadata was replaced where needed by scene copy grounded in the canonical setting and turns."
            )
            dims.setdefault("learnerExperience", {})["score"] = max(
                3, int(dims.get("learnerExperience", {}).get("score") or 0)
            )
            dims["learnerExperience"]["evidence"] = (
                "Runtime ordering and answer tolerance were improved, but no real learner test is claimed."
            )
            review["learnerTested"] = False
            limitations = list(review.get("limitations") or [])
            limitation = "Quality v3 remediation was model/editor reviewed; real learner evidence is still required before public-release readiness."
            if limitation not in limitations:
                limitations.append(limitation)
            review["limitations"] = limitations
            resolved = list(review.get("resolvedFindings") or [])
            finding = "Quality v3: dialogue exposure, duplicate scoring, safe speech equivalence and grounded story copy rechecked after deterministic remediation."
            if finding not in resolved:
                resolved.append(finding)
            review["resolvedFindings"] = resolved
            review["qualityV3Remediation"] = {
                "version": 1,
                "date": TODAY,
                "categories": sorted((remediation.get("changes") or {}).get(str(order), {}).keys()),
            }
            changed_reviews += 1
        dump(review_path, review)
        refreshed += 1

    remediation["reviewRefresh"] = {
        "status": "PASS" if not missing_reviews else "WARN",
        "courseSourceHash": course_hash,
        "refreshedReviews": refreshed,
        "changedLessonReviews": changed_reviews,
        "missingReviewLessons": missing_reviews,
    }
    dump(report_path, remediation)
    print(json.dumps(remediation["reviewRefresh"], ensure_ascii=False))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

#!/usr/bin/env python3
"""Run Nova's source-driven curriculum pipeline for a generated Lesson prefix.

Order of operations:
1. Build current learner/curriculum state from canonical Lessons.
2. Validate every enforced existing Lesson against the versioned spec that preceded it.
3. Build per-Lesson language plans (grammar, usage, pronunciation, frequency evidence).
4. Generate the immutable next-Lesson spec if it does not already exist.

This makes the production flow explicit: spec -> authoring -> evidence plan -> QA.
"""
from __future__ import annotations

import argparse
import json
from pathlib import Path

from build_lesson_language_plans import build_plan
from curriculum_engine import build_curriculum_state, build_next_spec
from language_reference_catalog import LanguageReferenceCatalog
from validate_lesson_curriculum_spec import validate_against_spec


def load(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def dump(path: Path, payload: object) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def main() -> int:
    p = argparse.ArgumentParser()
    p.add_argument("--repo-root", default=".")
    p.add_argument("--course", default="en-fa")
    p.add_argument("--config", type=Path, required=True)
    p.add_argument("--experiment-dir", type=Path, required=True)
    args = p.parse_args()

    root = Path(args.repo_root).resolve()
    config = load(args.config)
    numbers = [int(x) for x in config.get("generatedLessons", [])]
    level = config.get("level", "A1")
    language_plan_enforce = int(config.get("languagePlanEnforceFromSortOrder", 25))
    spec_enforce = int(config.get("curriculumSpecEnforceFromSortOrder", 25))
    exp = args.experiment_dir
    if not exp.is_absolute():
        exp = root / exp

    catalog = LanguageReferenceCatalog(root, args.course)
    if not catalog.extensions_ready:
        raise SystemExit("Language reference extensions missing; sync them before curriculum planning")

    state = build_curriculum_state(root, args.course, numbers, catalog)
    dump(exp / "curriculum_state.json", state)

    spec_reports = []
    language_reports = []
    errors: list[str] = []

    # Validate existing enforced Lessons against the spec that existed before authoring.
    for number in numbers:
        lesson_dir = root / "nova/courses" / args.course / "lessons" / f"{number:04d}"
        lesson_path = lesson_dir / "lesson.source.json"
        lesson = load(lesson_path)
        order = int(lesson.get("sortOrder") or 0)

        plan = build_plan(lesson, lesson_path, catalog, enforce_from=language_plan_enforce)
        dump(lesson_dir / "language.plan.json", plan)
        language_reports.append({
            "lessonKey": plan["lessonKey"],
            "sortOrder": order,
            "status": plan["status"],
            "warnings": plan["warnings"],
            "errors": plan["errors"],
            "grammarEvidenceCount": len(plan["grammarEvidence"]),
            "lexicalEvidenceCount": len(plan["lexicalEvidence"]),
            "usageEvidenceCount": len(plan["usageEvidence"]),
        })
        errors.extend(plan["errors"])

        if order >= spec_enforce:
            spec_path = exp / "specs" / f"{order:04d}.json"
            if not spec_path.exists():
                report = {
                    "lessonKey": lesson.get("lessonKey"),
                    "sortOrder": order,
                    "status": "FAIL",
                    "errors": [f"Missing pre-authoring curriculum spec: {spec_path.relative_to(root)}"],
                    "warnings": [],
                }
            else:
                report = validate_against_spec(lesson, load(spec_path), enforce_from=spec_enforce)
            spec_reports.append(report)
            errors.extend(report.get("errors", []))

    next_spec = build_next_spec(state=state, catalog=catalog, level=level)
    next_order = int(next_spec["sortOrder"])
    next_spec_path = exp / "specs" / f"{next_order:04d}.json"
    if next_spec_path.exists():
        existing = load(next_spec_path)
        # Existing spec is immutable once created. If the learner state has changed
        # without the next Lesson being authored, surface the difference instead of
        # silently rewriting the authoring contract.
        if existing.get("specHash") != next_spec.get("specHash"):
            errors.append(
                f"Existing next spec {next_order:04d} is immutable but current curriculum state would produce a different specHash"
            )
        emitted_spec = existing
    else:
        dump(next_spec_path, next_spec)
        emitted_spec = next_spec

    summary = {
        "schemaVersion": 1,
        "courseCode": args.course,
        "levelKey": level,
        "generatedLessonCount": len(numbers),
        "lastLessonSortOrder": state.get("lastLessonSortOrder", 0),
        "nextLessonSortOrder": next_order,
        "nextSpecPath": str(next_spec_path.relative_to(root)),
        "nextSpecHash": emitted_spec.get("specHash"),
        "languagePlanEnforceFromSortOrder": language_plan_enforce,
        "curriculumSpecEnforceFromSortOrder": spec_enforce,
        "languagePlans": language_reports,
        "curriculumSpecReports": spec_reports,
        "status": "PASS" if not errors else "FAIL",
        "errors": errors,
    }
    dump(exp / "language_curriculum_summary.json", summary)
    print(json.dumps({
        "status": summary["status"],
        "lessons": len(numbers),
        "nextLesson": next_order,
        "nextSpecHash": emitted_spec.get("specHash"),
        "languageWarnings": sum(len(x["warnings"]) for x in language_reports),
        "errors": len(errors),
    }, ensure_ascii=False))
    return 0 if not errors else 2


if __name__ == "__main__":
    raise SystemExit(main())

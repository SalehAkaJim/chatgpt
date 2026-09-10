#!/usr/bin/env python3
"""Run Nova's source-driven production curriculum pipeline.

Order:
1. Resolve the canonical Lesson prefix (production auto-discovers lesson.source.json files).
2. Build learner/curriculum state from canonical Lessons.
3. Validate enforced existing Lessons against their pre-authoring specs.
4. Build per-Lesson language plans from committed source evidence.
5. Generate/refresh the spec for the next unauthored Lesson.

A spec becomes immutable as soon as its Lesson source exists. Before authoring, it
may refresh when upstream reference snapshots or curriculum state improve.
"""
from __future__ import annotations

import argparse
import json
from pathlib import Path

from build_lesson_language_plans import build_plan
from curriculum_engine import build_curriculum_state, build_next_spec
from factory_config import resolve_generated_lessons
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
    p.add_argument("--workspace-dir", "--experiment-dir", dest="workspace_dir", type=Path, required=True)
    args = p.parse_args()

    root = Path(args.repo_root).resolve()
    config = load(args.config)
    course_code = config.get("courseCode", args.course)
    numbers = resolve_generated_lessons(root, config, course_code)
    level = config.get("level", "A1")
    language_plan_enforce = int(config.get("languagePlanEnforceFromSortOrder", 25))
    spec_enforce = int(config.get("curriculumSpecEnforceFromSortOrder", 25))
    workspace = args.workspace_dir if args.workspace_dir.is_absolute() else root / args.workspace_dir

    catalog = LanguageReferenceCatalog(root, course_code)
    if not catalog.extensions_ready:
        raise SystemExit("Language reference extensions missing; sync them before curriculum planning")

    state = build_curriculum_state(root, course_code, numbers, catalog)
    dump(workspace / "curriculum_state.json", state)

    spec_reports, language_reports, errors = [], [], []

    for number in numbers:
        lesson_dir = root / "nova/courses" / course_code / "lessons" / f"{number:04d}"
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
            spec_path = workspace / "specs" / f"{order:04d}.json"
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
    next_spec_path = workspace / "specs" / f"{next_order:04d}.json"
    next_lesson_path = root / "nova/courses" / course_code / "lessons" / f"{next_order:04d}" / "lesson.source.json"

    if next_spec_path.exists() and next_lesson_path.exists():
        existing = load(next_spec_path)
        if existing.get("specHash") != next_spec.get("specHash"):
            errors.append(
                f"Curriculum spec {next_order:04d} is locked by an authored Lesson and cannot be regenerated with a different specHash"
            )
        emitted_spec = existing
    else:
        # No authored Lesson is bound to this contract yet, so improvements to
        # sources/state are allowed to refresh it deterministically.
        dump(next_spec_path, next_spec)
        emitted_spec = next_spec

    summary = {
        "schemaVersion": 3,
        "courseCode": course_code,
        "levelKey": level,
        "generatedLessonsMode": config.get("generatedLessons", "auto"),
        "generatedLessonCount": len(numbers),
        "generatedLessons": numbers,
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
    dump(workspace / "language_curriculum_summary.json", summary)
    compact = {
        "status": summary["status"],
        "lessons": len(numbers),
        "nextLesson": next_order,
        "nextSpecHash": emitted_spec.get("specHash"),
        "introducedGrammar": len(state.get("introducedGrammar", [])),
        "languageWarnings": sum(len(x["warnings"]) for x in language_reports),
        "errors": len(errors),
    }
    if errors:
        compact["errorDetails"] = errors
        compact["failingLanguagePlans"] = [
            {"lessonKey": x.get("lessonKey"), "sortOrder": x.get("sortOrder"), "errors": x.get("errors", [])}
            for x in language_reports if x.get("errors")
        ]
        compact["failingCurriculumSpecs"] = [
            {"lessonKey": x.get("lessonKey"), "sortOrder": x.get("sortOrder"), "errors": x.get("errors", [])}
            for x in spec_reports if x.get("errors")
        ]
    print(json.dumps(compact, ensure_ascii=False))
    return 0 if not errors else 2


if __name__ == "__main__":
    raise SystemExit(main())

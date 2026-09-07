#!/usr/bin/env python3
"""Migration gate for Nova contract v3.

This gate deliberately separates historical v2 structural validity from v3
pedagogical validity. While audit debt exists, production must stay locked.
Once a chapter is marked passed in the audit ledger, its v3 audit artifacts
become mandatory and must contain no blocking issue.
"""
from __future__ import annotations

import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
COURSES = {"de-fa": 15, "en-fa": 9}


def load(path: Path):
    return json.loads(path.read_text(encoding="utf-8"))


def fail(errors: list[str], message: str) -> None:
    errors.append(message)


def validate_contract(errors: list[str]) -> None:
    path = ROOT / "nova/contracts/independent_course_v3.json"
    if not path.exists():
        fail(errors, "missing independent_course_v3.json")
        return
    contract = load(path)
    if contract.get("version") != "3.0.0":
        fail(errors, "v3 contract version must be 3.0.0")
    policy = contract.get("chapter_count_policy", {})
    if policy.get("mode") != "dynamic":
        fail(errors, "chapter_count_policy must be dynamic")
    if policy.get("fixed_course_total") is not False:
        fail(errors, "fixed course chapter total is forbidden")
    if policy.get("fixed_level_ranges") is not False:
        fail(errors, "fixed level chapter ranges are forbidden")
    raw = path.read_text(encoding="utf-8")
    if '"chapters_per_course"' in raw:
        fail(errors, "v3 contract must not define chapters_per_course")


def validate_curriculum(course: str, errors: list[str]) -> None:
    path = ROOT / f"nova/courses/{course}/curriculum.json"
    curriculum = load(path)
    if curriculum.get("version") != "3.0.0":
        fail(errors, f"{course}: curriculum must be v3.0.0")
    policy = curriculum.get("chapter_policy", {})
    if policy.get("mode") != "dynamic":
        fail(errors, f"{course}: curriculum chapter policy must be dynamic")
    if policy.get("fixed_total") is not False or policy.get("fixed_level_ranges") is not False:
        fail(errors, f"{course}: fixed chapter totals/ranges are forbidden")
    if "total_chapters" in curriculum or "modules" in curriculum:
        fail(errors, f"{course}: legacy fixed-range curriculum keys remain")
    levels = curriculum.get("levels", [])
    if [item.get("level") for item in levels] != ["A1", "A2", "B1", "B2"]:
        fail(errors, f"{course}: expected dynamic A1/A2/B1/B2 level definitions")
    for level in levels:
        name = level.get("level", "?")
        for key in ("can_do", "grammar_functions", "lexical_domains", "pronunciation", "listening", "reading", "writing", "completion"):
            if key not in level or not level[key]:
                fail(errors, f"{course} {name}: missing curriculum inventory {key}")
        completion = level.get("completion", {})
        if completion.get("review_debt") != 0:
            fail(errors, f"{course} {name}: completion must require zero review debt")
        if not 0.5 <= float(completion.get("checkpoint_mastery_min", 0)) <= 1:
            fail(errors, f"{course} {name}: invalid checkpoint mastery threshold")


def chapter_dirs(course: str) -> dict[int, Path]:
    found: dict[int, Path] = {}
    for sql in ROOT.glob(f"nova/courses/{course}/staging/batch_*/chapter_*/chapter.sql"):
        m = re.search(r"chapter_(\d+)", str(sql.parent))
        if m:
            found[int(m.group(1))] = sql.parent
    return found


def validate_audit(course: str, historical_end: int, errors: list[str]) -> None:
    base = ROOT / f"nova/courses/{course}"
    audit_path = base / "state/pedagogical_audit_v3.json"
    if not audit_path.exists():
        fail(errors, f"{course}: missing pedagogical audit ledger")
        return
    audit = load(audit_path)
    pending = set(audit.get("pending", []))
    passed = set(audit.get("passed", []))
    expected = set(range(1, historical_end + 1))
    if pending & passed:
        fail(errors, f"{course}: audit pending/passed overlap")
    if pending | passed != expected:
        fail(errors, f"{course}: audit ledger must cover Series 1..{historical_end}")

    prod = load(base / "production_state.json")
    run = load(base / "run_control.json")
    pipe = load(base / "pipeline_config.json")
    if pending:
        if prod.get("production_allowed") is not False or prod.get("next_series_locked") is not True:
            fail(errors, f"{course}: production must remain locked while audit debt exists")
        if run.get("paused") is not True or run.get("allow_new_chapters") is not False:
            fail(errors, f"{course}: run_control must be paused for new generation during audit")
        if pipe.get("new_chapter_generation_enabled") is not False:
            fail(errors, f"{course}: pipeline may not generate new chapters during audit")

    dirs = chapter_dirs(course)
    if set(dirs) - expected:
        fail(errors, f"{course}: new Series appeared while v3 audit lock is active: {sorted(set(dirs)-expected)}")
    if set(dirs) != expected:
        fail(errors, f"{course}: historical chapter set is incomplete: {sorted(expected-set(dirs))}")

    for series in sorted(passed):
        folder = dirs.get(series)
        if not folder:
            continue
        linguistic = folder / "linguistic_audit_v3.json"
        units = folder / "learning_units_v3.json"
        review = folder / "review_evidence_v3.json"
        for required in (linguistic, units, review):
            if not required.exists():
                fail(errors, f"{course} Series {series:03d}: missing {required.name}")
        if linguistic.exists():
            result = load(linguistic)
            if result.get("status") != "PASS":
                fail(errors, f"{course} Series {series:03d}: linguistic audit is not PASS")
            if result.get("blocking_issues") not in ([], None):
                fail(errors, f"{course} Series {series:03d}: blocking linguistic issues remain")
            checks = result.get("checks", {})
            required_checks = [
                "target_language_naturalness", "persian_translation", "part_of_speech_in_context",
                "sense_example_alignment", "chunk_construction_mapping", "accepted_speech_naturalness",
                "grammar_scored_item_alignment", "cefr_prerequisites", "review_due_vs_evidence",
                "curriculum_outcome_mapping"
            ]
            for key in required_checks:
                if checks.get(key) != "PASS":
                    fail(errors, f"{course} Series {series:03d}: audit check {key} is not PASS")
        if review.exists():
            data = load(review)
            if data.get("unfulfilled_due", []) != []:
                fail(errors, f"{course} Series {series:03d}: unfulfilled due reviews remain")


def main() -> int:
    errors: list[str] = []
    validate_contract(errors)
    for course, end in COURSES.items():
        validate_curriculum(course, errors)
        validate_audit(course, end, errors)
    semantic = ROOT / "nova/database/semantic_layer_v10.sql"
    if not semantic.exists():
        fail(errors, "missing semantic_layer_v10.sql")
    else:
        sql = semantic.read_text(encoding="utf-8")
        for table in ("learning_units", "review_obligations", "curriculum_outcomes"):
            if f"CREATE TABLE IF NOT EXISTS {table}" not in sql:
                fail(errors, f"semantic layer missing {table}")
    if errors:
        print("\n".join(f"FAIL {item}" for item in errors), file=sys.stderr)
        return 1
    print("PASS Nova v3 migration gate: dynamic curricula active; generation lock consistent with audit debt.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

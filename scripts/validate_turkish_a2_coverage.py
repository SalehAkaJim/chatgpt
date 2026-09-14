#!/usr/bin/env python3
"""Validate cumulative Turkish A2 CEFR breadth from authored evidence and production.

Counts are evidence, never completion targets. The authored coverage map identifies
independent units supporting each CEFR communicative dimension; production checks
verify repeated reception and genuine rubric-based output across the level.
"""
from __future__ import annotations

import collections
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SPEC_DIR = ROOT / "content/specs/tr/A2"
PROD_DIR = ROOT / "content/production/tr/A2"
MAP_PATH = SPEC_DIR / "coverage-map.json"

REQUIRED_DIMENSIONS = {
    "reception", "production", "interaction", "mediation", "pragmatic_register",
    "reading", "listening", "speaking", "writing", "recycling_review",
    "action_oriented_capstone",
}


def main() -> None:
    coverage = json.loads(MAP_PATH.read_text(encoding="utf-8"))
    dims = coverage.get("dimensions", {})
    missing_dims = REQUIRED_DIMENSIONS - set(dims)
    if missing_dims:
        raise SystemExit(f"Turkish A2 coverage map missing dimensions: {sorted(missing_dims)}")

    authored: dict[str, dict] = {}
    for path in sorted(SPEC_DIR.glob("batch-*.json")):
        payload = json.loads(path.read_text(encoding="utf-8"))
        for unit in payload.get("units", []):
            slug = unit.get("slug")
            if not slug or slug in authored:
                raise SystemExit(f"duplicate/missing authored unit slug: {slug!r}")
            authored[slug] = unit

    production: dict[str, dict] = {}
    exercise_counts = collections.Counter()
    rubric_units: set[str] = set()
    for path in PROD_DIR.glob("*.json"):
        payload = json.loads(path.read_text(encoding="utf-8"))
        unit = str(payload.get("curriculum_unit", ""))
        if not unit.startswith("a2-tr-"):
            continue
        slug = unit.removeprefix("a2-tr-")
        production[slug] = payload
        for item in payload.get("items", []):
            if item.get("kind") != "exercise":
                continue
            data = item.get("data", {})
            exercise_counts[data.get("exercise_type")] += 1
            if data.get("answer", {}).get("evaluation_mode") == "rubric":
                rubric_units.add(slug)

    if set(authored) != set(production):
        raise SystemExit(
            f"Turkish A2 authored/production mismatch: missing={sorted(set(authored)-set(production))} "
            f"extra={sorted(set(production)-set(authored))}"
        )

    evidence_report: dict[str, list[str]] = {}
    for dim, slugs in dims.items():
        if not isinstance(slugs, list) or not slugs:
            raise SystemExit(f"Turkish A2 coverage dimension {dim!r} has no evidence")
        unknown = [slug for slug in slugs if slug not in authored]
        if unknown:
            raise SystemExit(f"Turkish A2 coverage dimension {dim!r} references unknown units: {unknown}")
        unique = sorted(set(slugs))
        minimum = 2 if dim == "action_oriented_capstone" else 3
        if len(unique) < minimum:
            raise SystemExit(f"Turkish A2 coverage dimension {dim!r} needs repeated evidence from >= {minimum} units")
        evidence_report[dim] = unique

    # Every unit must culminate in independently evaluated learner output.
    if rubric_units != set(authored):
        raise SystemExit(f"Turkish A2 units without rubric-based independent output: {sorted(set(authored)-rubric_units)}")

    unit_count = len(authored)
    if exercise_counts["listening"] < unit_count * 3:
        raise SystemExit("Turkish A2 does not provide repeated listening across all three lessons")
    if exercise_counts["dialogue_comprehension"] < unit_count * 3:
        raise SystemExit("Turkish A2 does not provide repeated contextual reading/comprehension across all three lessons")
    if exercise_counts["writing"] < unit_count:
        raise SystemExit("Turkish A2 does not provide repeated open writing across the level")
    if exercise_counts["speaking"] < unit_count * 4:
        raise SystemExit("Turkish A2 does not provide repeated speaking plus personalized output across the level")

    # Newer expansion specs carry explicit curriculum taxonomy. Legacy batches do not;
    # omit missing metadata rather than treating it as a skill or weakening evidence.
    skills = {
        skill
        for unit in authored.values()
        if (skill := unit.get("curriculum", {}).get("skill_slug")) is not None
    }
    required_skills = {
        "foundations", "social", "daily-life", "family-home", "food-drink",
        "shopping-money", "travel-transport", "work-study", "health-body",
        "time-plans", "describing", "communication",
    }
    if not required_skills.issubset(skills):
        raise SystemExit(f"Turkish A2 concrete-domain breadth gap: {sorted(required_skills-skills)}")

    print(json.dumps({
        "level": "A2",
        "variant": "tr-TR",
        "units": unit_count,
        "skills_covered": sorted(skills),
        "exercise_counts": {str(k): v for k, v in sorted(exercise_counts.items(), key=lambda pair: str(pair[0]))},
        "rubric_output_units": len(rubric_units),
        "dimensions": evidence_report,
        "status": "breadth-complete",
    }, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()

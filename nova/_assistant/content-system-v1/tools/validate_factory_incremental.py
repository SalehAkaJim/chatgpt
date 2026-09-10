#!/usr/bin/env python3
"""Fast, cacheable one-Lesson validation for authoring/integration loops.

This is not the publication gate. It intentionally excludes cross-Lesson Story
and full wave Product Quality checks. A wave is complete only after the uncached
`validate_factory_prefix.py` regression passes.
"""
from __future__ import annotations

import argparse
import json
from pathlib import Path

from factory_config import resolve_generated_lessons
from reference_catalog import ReferenceCatalog
from validate_content_quality import evaluate
from validate_lesson import validate
from validate_lesson_reference import validate_lesson_reference
from validate_product_quality_v2 import load_policy as load_product_policy
from validate_product_quality_v2 import validate_lesson_quality_v2
from validation_cache import (
    ValidationCache,
    shared_validation_fingerprint,
    validation_key,
)


def load(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def dump(path: Path, payload: object) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def resolve_lesson_paths(root: Path, config: dict, course_code: str, explicit: list[Path]) -> list[Path]:
    if explicit:
        return [p if p.is_absolute() else root / p for p in explicit]
    numbers = resolve_generated_lessons(root, config, course_code)
    return [
        root / "nova/courses" / course_code / "lessons" / f"{int(number):04d}" / "lesson.source.json"
        for number in numbers
    ]


def validate_one(
    *,
    root: Path,
    lesson_path: Path,
    course: dict,
    policy: dict,
    product_policy: dict,
    catalog: ReferenceCatalog,
    enforce_from: int,
    cache: ValidationCache,
    shared_fingerprint: str,
    use_cache: bool = True,
) -> dict:
    lesson_bytes = lesson_path.read_bytes()
    key = validation_key(lesson_bytes=lesson_bytes, shared_fingerprint=shared_fingerprint)
    namespace = "lesson-local-v2"

    cached = cache.get(namespace, key) if use_cache else None
    if cached is not None:
        return {**cached, "cacheHit": True, "cacheKey": key}

    lesson = json.loads(lesson_bytes.decode("utf-8"))
    canonical = validate(lesson, course)
    reference = validate_lesson_reference(lesson, catalog, enforce_from_sort_order=enforce_from)
    quality = evaluate(lesson, policy)
    product_quality = validate_lesson_quality_v2(lesson, product_policy)
    errors = (
        list(canonical.get("errors", []))
        + list(reference.get("errors", []))
        + list(quality.get("errors", []))
        + list(product_quality.get("errors", []))
    )
    minimum = int(quality.get("minimumAutomatedScore", 90))
    score = int(quality.get("automatedScore", 0))
    if score < minimum:
        errors.append(f"automated quality score {score} is below {minimum}")

    result = {
        "lessonKey": lesson.get("lessonKey"),
        "sortOrder": int(lesson.get("sortOrder") or 0),
        "status": "PASS" if not errors else "FAIL",
        "automatedScore": score,
        "minimumAutomatedScore": minimum,
        "canonicalStatus": canonical.get("status"),
        "referenceStatus": reference.get("status"),
        "referenceWarnings": reference.get("warnings", []),
        "productQualityV2Status": product_quality.get("status"),
        "productQualityV2Warnings": product_quality.get("warnings", []),
        "errors": errors,
    }
    if use_cache:
        cache.put(namespace, key, result)
    return {**result, "cacheHit": False, "cacheKey": key}


def main() -> int:
    p = argparse.ArgumentParser()
    p.add_argument("--repo-root", default=".")
    p.add_argument("--config", type=Path, required=True)
    p.add_argument("--lesson", action="append", type=Path, default=[])
    p.add_argument("--cache-dir", type=Path)
    p.add_argument("--output", type=Path)
    p.add_argument("--no-cache", action="store_true")
    args = p.parse_args()

    root = Path(args.repo_root).resolve()
    config_path = args.config if args.config.is_absolute() else root / args.config
    config = load(config_path)
    course_code = config.get("courseCode", "en-fa")
    enforce_from = int(config.get("enforceFromSortOrder", 1))
    cache_dir = args.cache_dir or Path(config.get("validationCacheDir", ".cache/nova-validation"))
    cache_dir = cache_dir if cache_dir.is_absolute() else root / cache_dir

    course = load(root / "nova/courses" / course_code / "course.source.json")
    policy = load(root / "nova/_assistant/content-system-v1/content_quality.policy.json")
    product_policy = load_product_policy(root)
    catalog = ReferenceCatalog(root, course_code)
    cache = ValidationCache(cache_dir)
    shared = shared_validation_fingerprint(root, course_code, config)

    reports = []
    for lesson_path in resolve_lesson_paths(root, config, course_code, args.lesson):
        report = validate_one(
            root=root,
            lesson_path=lesson_path,
            course=course,
            policy=policy,
            product_policy=product_policy,
            catalog=catalog,
            enforce_from=enforce_from,
            cache=cache,
            shared_fingerprint=shared,
            use_cache=not args.no_cache,
        )
        report["source"] = str(lesson_path.relative_to(root)) if lesson_path.is_relative_to(root) else str(lesson_path)
        reports.append(report)

    errors = [error for report in reports for error in report.get("errors", [])]
    payload = {
        "schemaVersion": 2,
        "courseCode": course_code,
        "validationMode": "cached-local-v2",
        "fullPrefixRegressionRequired": True,
        "cacheDir": str(cache_dir.relative_to(root)) if cache_dir.is_relative_to(root) else str(cache_dir),
        "cacheHits": sum(1 for r in reports if r.get("cacheHit")),
        "cacheMisses": sum(1 for r in reports if not r.get("cacheHit")),
        "status": "PASS" if not errors else "FAIL",
        "lessonReports": reports,
        "errors": errors,
    }
    if args.output:
        output = args.output if args.output.is_absolute() else root / args.output
        dump(output, payload)

    print(json.dumps({
        "status": payload["status"],
        "lessons": len(reports),
        "cacheHits": payload["cacheHits"],
        "cacheMisses": payload["cacheMisses"],
        "errors": len(errors),
        "fullPrefixRegressionRequired": True,
    }, ensure_ascii=False))
    return 0 if not errors else 2


if __name__ == "__main__":
    raise SystemExit(main())

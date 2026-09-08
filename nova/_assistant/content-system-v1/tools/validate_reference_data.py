#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
from pathlib import Path

from reference_data import LEVELS, sha256_file


def validate(repo_root: Path, strict: bool = False) -> list[str]:
    root = repo_root / "nova/reference/en-fa"
    errors: list[str] = []
    manifest_path = root / "manifest.json"
    if not manifest_path.exists():
        return ["reference manifest is missing"] if strict else []

    manifest = json.loads(manifest_path.read_text(encoding="utf-8"))
    threshold = int(manifest.get("qualityThreshold", 90))
    seen = set()
    actual_counts = {"senses": 0, "records": 0, "profileOnly": 0, "curriculumEligible": 0, "productionEligible": 0, "reviewOnly": 0}

    for entry in manifest.get("files", []):
        path = root / entry["path"]
        if not path.exists():
            errors.append(f"missing generated file: {entry['path']}")
            continue
        if sha256_file(path) != entry.get("sha256"):
            errors.append(f"hash mismatch: {entry['path']}")

    for level in LEVELS:
        path = root / "lexical" / f"{level}.json"
        if not path.exists():
            errors.append(f"missing lexical level file: {level}")
            continue
        payload = json.loads(path.read_text(encoding="utf-8"))
        if payload.get("level") != level:
            errors.append(f"wrong level header in {path}")
        for item in payload.get("items", []):
            actual_counts["records"] += 1
            if item.get("sourceType") == "openjam_sense":
                actual_counts["senses"] += 1
            key = item.get("referenceKey")
            if not key or key in seen:
                errors.append(f"missing/duplicate referenceKey in {level}: {key}")
            seen.add(key)
            if item.get("cefr") != level:
                errors.append(f"item {key} placed in {level} but says {item.get('cefr')}")
            score = item.get("qualityScore")
            eligible = bool(item.get("productionEligible"))
            curriculum_eligible = bool(item.get("curriculumEligible"))
            if not isinstance(score, int) or not 0 <= score <= 100:
                errors.append(f"invalid score for {key}: {score}")
            if eligible and score < threshold:
                errors.append(f"eligible record below threshold: {key}={score}")
            if eligible and (not item.get("translationFa") or not item.get("cefr")):
                errors.append(f"eligible record missing required language data: {key}")
            if eligible and not curriculum_eligible:
                errors.append(f"production record is not curriculum eligible: {key}")
            if curriculum_eligible and item.get("cefrSource") == "openjam_frequency_band":
                errors.append(f"frequency-only CEFR cannot be curriculum eligible: {key}")
            if curriculum_eligible and item.get("cefrConflict"):
                errors.append(f"conflicting CEFR evidence cannot be curriculum eligible: {key}")
            if eligible and item.get("cefrConflict"):
                errors.append(f"conflicting CEFR evidence cannot be production eligible: {key}")
            if item.get("sourceType") == "cefr_profile_only":
                actual_counts["profileOnly"] += 1
            if curriculum_eligible:
                actual_counts["curriculumEligible"] += 1
            actual_counts["productionEligible" if eligible else "reviewOnly"] += 1

    unplaced = root / "lexical" / "UNPLACED.json"
    if unplaced.exists():
        payload = json.loads(unplaced.read_text(encoding="utf-8"))
        for item in payload.get("items", []):
            actual_counts["records"] += 1
            if item.get("sourceType") == "openjam_sense":
                actual_counts["senses"] += 1
            if item.get("sourceType") == "cefr_profile_only":
                actual_counts["profileOnly"] += 1
            if item.get("curriculumEligible"):
                actual_counts["curriculumEligible"] += 1
            actual_counts["productionEligible" if item.get("productionEligible") else "reviewOnly"] += 1

    manifest_counts = manifest.get("counts", {})
    for field in ("senses", "records", "profileOnly", "curriculumEligible", "productionEligible", "reviewOnly"):
        if manifest_counts.get(field) != actual_counts[field]:
            errors.append(f"manifest count mismatch for {field}: {manifest_counts.get(field)} != {actual_counts[field]}")

    for level in LEVELS:
        gpath = root / "grammar" / f"{level}.json"
        if not gpath.exists():
            errors.append(f"missing grammar level file: {level}")
            continue
        payload = json.loads(gpath.read_text(encoding="utf-8"))
        for item in payload.get("items", []):
            if item.get("cefr") != level:
                errors.append(f"grammar item {item.get('grammarKey')} placed in wrong level {level}")

    return errors


def main() -> int:
    p = argparse.ArgumentParser()
    p.add_argument("--repo-root", default=".")
    p.add_argument("--strict", action="store_true")
    args = p.parse_args()
    errors = validate(Path(args.repo_root).resolve(), strict=args.strict)
    if errors:
        print("Reference data validation FAILED")
        for e in errors[:100]:
            print(" -", e)
        return 1
    print("Reference data validation PASSED")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

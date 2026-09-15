#!/usr/bin/env python3
"""Validate generated English lexical span sidecars against production content."""
from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path
from typing import Any

try:
    from scripts.build_english_lexical_annotations import (
        DEFAULT_CONTENT,
        DEFAULT_OUTPUT,
        DEFAULT_REPORT,
        LEVEL_ORDER,
        ROOT,
        load_corpus,
        source_rows,
        token_tuple,
    )
except ModuleNotFoundError:
    from build_english_lexical_annotations import (
        DEFAULT_CONTENT,
        DEFAULT_OUTPUT,
        DEFAULT_REPORT,
        LEVEL_ORDER,
        ROOT,
        load_corpus,
        source_rows,
        token_tuple,
    )


def sha256_text(value: str) -> str:
    return hashlib.sha256(value.encode("utf-8")).hexdigest()


def source_key(source: dict[str, Any], batch_id: str) -> str:
    return json.dumps({"batch_id": batch_id, "source": source}, sort_keys=True, ensure_ascii=False)


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--content-root", type=Path, default=DEFAULT_CONTENT)
    ap.add_argument("--annotation-root", type=Path, default=DEFAULT_OUTPUT)
    ap.add_argument("--report", type=Path, default=DEFAULT_REPORT)
    ap.add_argument("--min-coverage", type=float, default=0.0)
    args = ap.parse_args()

    corpus, _candidates, inventory = load_corpus(args.content_root)
    source_index: dict[str, dict[str, Any]] = {}
    path_hashes: dict[str, str] = {}
    for entry in corpus:
        raw = entry["path"].read_text(encoding="utf-8")
        path_hashes[str(entry["path"].relative_to(ROOT))] = sha256_text(raw)
        for row in source_rows(entry):
            key = source_key(row["source"], row["batch_id"])
            if key in source_index:
                raise SystemExit(f"Duplicate canonical text source: {key}")
            source_index[key] = row

    errors: list[str] = []
    totals = {"tokens": 0, "linked_tokens": 0, "annotations": 0, "sources": 0}
    seen_manifest_sources: set[str] = set()

    for level in LEVEL_ORDER:
        path = args.annotation_root / f"{level}.json"
        if not path.exists():
            errors.append(f"missing manifest: {path.relative_to(ROOT)}")
            continue
        manifest = json.loads(path.read_text(encoding="utf-8"))
        if manifest.get("schema_version") != 1:
            errors.append(f"{level}: unsupported schema_version")
        if manifest.get("language") != "en" or manifest.get("variant") != "en-US" or manifest.get("level") != level:
            errors.append(f"{level}: wrong language/variant/level metadata")
        if manifest.get("offset_unit") != "unicode_code_point":
            errors.append(f"{level}: offsets must be unicode_code_point")

        for source_file in manifest.get("generated_from", []):
            repo_path = source_file.get("path")
            expected_hash = path_hashes.get(repo_path)
            if not expected_hash:
                errors.append(f"{level}: unknown source file {repo_path}")
            elif source_file.get("sha256") != expected_hash:
                errors.append(f"{level}: stale source hash for {repo_path}")

        stats = manifest.get("stats") or {}
        totals["tokens"] += int(stats.get("tokens", 0))
        totals["linked_tokens"] += int(stats.get("linked_tokens", 0))
        totals["annotations"] += int(stats.get("annotations", 0))
        totals["sources"] += int(stats.get("text_sources_annotated", 0))
        if stats.get("tokens", 0):
            actual_coverage = stats.get("linked_tokens", 0) / stats["tokens"]
            if abs(actual_coverage - float(stats.get("token_coverage", 0))) > 0.0000015:
                errors.append(f"{level}: token_coverage does not match counts")

        for record in manifest.get("sources", []):
            batch_id = record.get("batch_id")
            source = record.get("source") or {}
            key = source_key(source, batch_id)
            if key in seen_manifest_sources:
                errors.append(f"{level}: duplicate manifest source {key}")
                continue
            seen_manifest_sources.add(key)
            canonical = source_index.get(key)
            if not canonical:
                errors.append(f"{level}: source no longer exists {key}")
                continue
            text = record.get("text", "")
            if text != canonical["text"]:
                errors.append(f"{level}: text drift for {key}")
                continue
            if record.get("text_sha256") != sha256_text(text):
                errors.append(f"{level}: bad text hash for {key}")

            previous_end = -1
            seen_spans: set[tuple[int, int]] = set()
            for annotation in record.get("annotations", []):
                try:
                    start = int(annotation["start"]); end = int(annotation["end"])
                except (KeyError, TypeError, ValueError):
                    errors.append(f"{level}: invalid offsets in {key}")
                    continue
                if not (0 <= start < end <= len(text)):
                    errors.append(f"{level}: out-of-range span {start}:{end} in {key}")
                    continue
                if (start, end) in seen_spans:
                    errors.append(f"{level}: duplicate span {start}:{end} in {key}")
                seen_spans.add((start, end))
                if start < previous_end:
                    errors.append(f"{level}: overlapping spans near {start}:{end} in {key}")
                previous_end = max(previous_end, end)
                if text[start:end] != annotation.get("surface"):
                    errors.append(f"{level}: surface/offset mismatch at {start}:{end} in {key}")
                if annotation.get("lexeme_key") not in inventory["lexeme_keys"]:
                    errors.append(f"{level}: unknown lexeme_key {annotation.get('lexeme_key')}")
                wf_key = annotation.get("word_form_key")
                if wf_key and wf_key not in inventory["word_form_keys"]:
                    errors.append(f"{level}: unknown word_form_key {wf_key}")
                concept = annotation.get("concept_slug")
                if concept and concept not in inventory["concept_slugs"]:
                    errors.append(f"{level}: unknown concept_slug {concept}")
                confidence = annotation.get("confidence")
                if not isinstance(confidence, (int, float)) or not (0 < confidence <= 1):
                    errors.append(f"{level}: invalid confidence at {start}:{end} in {key}")
                annotation_type = annotation.get("annotation_type")
                if annotation_type not in {"word", "phrase", "expression", "morpheme"}:
                    errors.append(f"{level}: invalid annotation_type {annotation_type}")
                if annotation_type in {"phrase", "expression"} and len(token_tuple(annotation.get("surface", ""))) < 2:
                    # A one-token idiom is valid as a word; keeping expression
                    # for one token makes frontend overlap/selection semantics
                    # unnecessarily inconsistent.
                    errors.append(f"{level}: multiword annotation has <2 tokens at {start}:{end} in {key}")

    report = json.loads(args.report.read_text(encoding="utf-8")) if args.report.exists() else None
    if not report:
        errors.append("missing English lexical linking report")
    else:
        report_totals = report.get("totals") or {}
        if int(report_totals.get("tokens", -1)) != totals["tokens"]:
            errors.append("report token total does not match manifests")
        if int(report_totals.get("linked_tokens", -1)) != totals["linked_tokens"]:
            errors.append("report linked token total does not match manifests")

    coverage = totals["linked_tokens"] / totals["tokens"] if totals["tokens"] else 0.0
    if coverage < args.min_coverage:
        errors.append(f"coverage {coverage:.4f} is below required {args.min_coverage:.4f}")
    if totals["annotations"] == 0:
        errors.append("no lexical annotations were generated")

    result = {
        "valid": not errors,
        "manifest_sources": len(seen_manifest_sources),
        "annotations": totals["annotations"],
        "tokens": totals["tokens"],
        "linked_tokens": totals["linked_tokens"],
        "token_coverage": round(coverage, 6),
        "errors": errors[:100],
    }
    print(json.dumps(result, ensure_ascii=False, indent=2))
    if errors:
        raise SystemExit("English lexical annotation validation failed")


if __name__ == "__main__":
    main()

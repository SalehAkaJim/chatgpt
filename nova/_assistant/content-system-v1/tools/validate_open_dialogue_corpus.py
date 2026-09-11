#!/usr/bin/env python3
"""Validate the committed Nova open-dialogue snapshot and provenance links."""
from __future__ import annotations

import argparse
import gzip
import json
from collections import defaultdict
from pathlib import Path

from sync_open_dialogue_corpus import sha256_file, source_fingerprint


def load_json(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def fail(errors: list[str], message: str) -> None:
    errors.append(message)


def validate(repo_root: Path, course: str = "en-fa") -> dict:
    ref_root = repo_root / "nova/reference" / course
    dialogue_root = ref_root / "dialogue"
    errors: list[str] = []

    lock_path = ref_root / "sources.lock.json"
    manifest_path = dialogue_root / "manifest.json"
    index_path = dialogue_root / "index.jsonl"
    attribution_path = dialogue_root / "ATTRIBUTION.md"
    for path in (lock_path, manifest_path, index_path, attribution_path):
        if not path.exists():
            fail(errors, f"missing required file: {path.relative_to(repo_root)}")
    if errors:
        return {"status": "FAIL", "errors": errors}

    lock = load_json(lock_path)
    manifest = load_json(manifest_path)
    expected_fingerprint = source_fingerprint(lock)
    if manifest.get("sourceFingerprint") != expected_fingerprint:
        fail(errors, "manifest sourceFingerprint does not match current sources.lock.json")
    if manifest.get("authoringMode") != "verbatim-first":
        fail(errors, "manifest authoringMode must be verbatim-first")

    approved = set((lock.get("dialogueLicensePolicy") or {}).get("approvedLicenses") or [])
    if not approved:
        fail(errors, "dialogueLicensePolicy.approvedLicenses is empty")
    for source_name, source_lock in (manifest.get("sourceLocks") or {}).items():
        if source_lock.get("license") not in approved:
            fail(errors, f"source {source_name} has unapproved license {source_lock.get('license')!r}")
        current = (lock.get("sources") or {}).get(source_name) or {}
        if source_lock.get("commit") != current.get("commit"):
            fail(errors, f"source {source_name} commit does not match sources.lock.json")

    index_meta = manifest.get("index") or {}
    if index_meta.get("sha256") != sha256_file(index_path):
        fail(errors, "index.jsonl sha256 does not match manifest")

    index_rows = []
    by_shard: dict[str, list[dict]] = defaultdict(list)
    seen_keys: set[str] = set()
    with index_path.open("r", encoding="utf-8") as handle:
        for line_number, line in enumerate(handle, start=1):
            if not line.strip():
                continue
            try:
                row = json.loads(line)
            except Exception as exc:
                fail(errors, f"invalid index JSON line {line_number}: {exc}")
                continue
            key = row.get("corpusKey")
            if not key:
                fail(errors, f"index line {line_number} missing corpusKey")
            elif key in seen_keys:
                fail(errors, f"duplicate corpusKey in index: {key}")
            else:
                seen_keys.add(key)
            if row.get("license") not in approved:
                fail(errors, f"index record {key} has unapproved license {row.get('license')!r}")
            shard_path = row.get("shardPath")
            if not shard_path:
                fail(errors, f"index record {key} missing shardPath")
            else:
                by_shard[str(shard_path)].append(row)
            index_rows.append(row)

    expected_total = int((manifest.get("counts") or {}).get("total") or 0)
    if len(index_rows) != expected_total:
        fail(errors, f"index record count {len(index_rows)} != manifest total {expected_total}")
    if int(index_meta.get("recordCount") or -1) != len(index_rows):
        fail(errors, "manifest index.recordCount does not match index.jsonl")

    shard_manifest = {str(x.get("path")): x for x in manifest.get("shards", []) if x.get("path")}
    if set(by_shard) != set(shard_manifest):
        missing = sorted(set(by_shard) - set(shard_manifest))
        extra = sorted(set(shard_manifest) - set(by_shard))
        if missing:
            fail(errors, f"index references shards absent from manifest: {missing[:5]}")
        if extra:
            fail(errors, f"manifest contains shards absent from index: {extra[:5]}")

    validated_records = 0
    for rel_path, shard_info in sorted(shard_manifest.items()):
        path = dialogue_root / rel_path
        if not path.exists():
            fail(errors, f"missing shard: {rel_path}")
            continue
        if sha256_file(path) != shard_info.get("sha256"):
            fail(errors, f"shard sha256 mismatch: {rel_path}")
            continue
        rows = []
        try:
            with gzip.open(path, "rt", encoding="utf-8") as handle:
                rows = [json.loads(line) for line in handle if line.strip()]
        except Exception as exc:
            fail(errors, f"cannot decode shard {rel_path}: {exc}")
            continue
        if len(rows) != int(shard_info.get("recordCount") or -1):
            fail(errors, f"shard record count mismatch: {rel_path}")
        indexed = sorted(by_shard.get(rel_path, []), key=lambda x: int(x.get("shardRecordIndex", -1)))
        if len(indexed) != len(rows):
            fail(errors, f"index/shard row count mismatch: {rel_path}")
            continue
        for position, (meta, record) in enumerate(zip(indexed, rows)):
            if int(meta.get("shardRecordIndex", -1)) != position:
                fail(errors, f"non-contiguous shardRecordIndex in {rel_path} at {position}")
                break
            if meta.get("corpusKey") != record.get("corpusKey"):
                fail(errors, f"corpusKey mismatch in {rel_path} at {position}")
            if meta.get("textSha256") != record.get("textSha256"):
                fail(errors, f"textSha256 mismatch for {meta.get('corpusKey')}")
            if record.get("license") not in approved:
                fail(errors, f"record {record.get('corpusKey')} has unapproved license")
            if not record.get("sourceCommit") or not record.get("sourceFile"):
                fail(errors, f"record {record.get('corpusKey')} missing source provenance")
            turns = record.get("turns") or []
            if len(turns) < 2:
                fail(errors, f"record {record.get('corpusKey')} has fewer than two turns")
            for turn in turns:
                if not isinstance(turn.get("text"), str) or not turn.get("text", "").strip():
                    fail(errors, f"record {record.get('corpusKey')} has empty turn text")
                if not turn.get("sourceSpeaker"):
                    fail(errors, f"record {record.get('corpusKey')} has missing sourceSpeaker")
            validated_records += 1

    attribution = attribution_path.read_text(encoding="utf-8")
    for source_name, source in ((lock.get("sources") or {}).items()):
        if source_name not in {"taskmaster", "schemaGuidedDialogue"}:
            continue
        if source.get("license") not in attribution or source.get("commit") not in attribution:
            fail(errors, f"ATTRIBUTION.md missing license/commit for {source_name}")

    return {
        "status": "PASS" if not errors else "FAIL",
        "errors": errors,
        "recordCount": len(index_rows),
        "validatedRecords": validated_records,
        "shardCount": len(shard_manifest),
        "sourceFingerprint": manifest.get("sourceFingerprint"),
    }


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--repo-root", default=".")
    parser.add_argument("--course", default="en-fa")
    args = parser.parse_args()
    result = validate(Path(args.repo_root).resolve(), args.course)
    print(json.dumps(result, ensure_ascii=False, indent=2))
    return 0 if result["status"] == "PASS" else 1


if __name__ == "__main__":
    raise SystemExit(main())

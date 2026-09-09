#!/usr/bin/env python3
"""Register an immutable, reusable Nova language-reference snapshot.

The archive stores pointers/hashes, not duplicate large data files. Git already
stores the exact snapshot bytes at the recorded commit, so a descriptor is enough
to reproduce the full reference tree without repository bloat.

Snapshot identity is based on actual reference data files plus sources.lock.json.
Volatile metadata such as generatedAt never creates a new snapshot by itself.
"""
from __future__ import annotations

import argparse
import hashlib
import json
import subprocess
from datetime import datetime, timezone
from pathlib import Path

LEVELS = ("A1", "A2", "B1", "B2", "C1", "C2")


def load(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def dump(path: Path, payload: object) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def git(root: Path, *args: str) -> str:
    return subprocess.check_output(["git", *args], cwd=root, text=True).strip()


def blob_sha(root: Path, path: Path) -> str:
    return git(root, "hash-object", str(path.relative_to(root)))


def sha256_file(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest()


def data_families(course: str) -> dict[str, list[str]]:
    return {
        "lexical": [f"nova/reference/{course}/lexical/{level}.json" for level in LEVELS],
        "grammar": [f"nova/reference/{course}/grammar/{level}.json" for level in LEVELS],
        "pronunciation": [f"nova/reference/{course}/pronunciation/cmudict.json"],
        "spokenFrequency": [f"nova/reference/{course}/frequency/ngsl_spoken.json"],
        "usage": [f"nova/reference/{course}/usage/tatoeba.json"],
        "coverage": [f"nova/reference/{course}/lesson_coverage.json"],
    }


def data_file_fingerprint(root: Path, families: dict[str, list[str]], sources_lock: Path) -> tuple[str, dict]:
    files: dict[str, dict] = {}
    for paths in families.values():
        for rel in paths:
            path = root / rel
            if not path.exists():
                continue
            files[rel] = {
                "sha256": sha256_file(path),
                "gitBlobSha": blob_sha(root, path),
            }
    source_record = {
        "sha256": sha256_file(sources_lock),
        "gitBlobSha": blob_sha(root, sources_lock),
    }
    payload = {
        "sourcesLock": source_record["sha256"],
        "dataFiles": {path: record["sha256"] for path, record in sorted(files.items())},
    }
    raw = json.dumps(payload, sort_keys=True, separators=(",", ":"))
    return hashlib.sha256(raw.encode("utf-8")).hexdigest(), {
        "files": files,
        "sourcesLock": source_record,
    }


def main() -> int:
    p = argparse.ArgumentParser()
    p.add_argument("--repo-root", default=".")
    p.add_argument("--course", default="en-fa")
    p.add_argument("--archive-root", default="nova/reference-snapshots")
    args = p.parse_args()

    root = Path(args.repo_root).resolve()
    ref_root = root / "nova/reference" / args.course
    archive_root = root / args.archive_root / args.course
    control = {
        "manifest": ref_root / "manifest.json",
        "extensionsManifest": ref_root / "extensions_manifest.json",
        "sourcesLock": ref_root / "sources.lock.json",
    }
    missing = [str(path) for path in control.values() if not path.exists()]
    if missing:
        raise SystemExit(f"Cannot archive reference snapshot; missing control files: {missing}")

    families = data_families(args.course)
    fingerprint, file_records = data_file_fingerprint(root, families, control["sourcesLock"])

    latest_path = archive_root / "latest.json"
    if latest_path.exists():
        latest = load(latest_path)
        if latest.get("fingerprint") == fingerprint:
            print(json.dumps({"status": "UNCHANGED", "snapshotId": latest.get("snapshotId")}, ensure_ascii=False))
            return 0

    manifest = load(control["manifest"])
    extensions = load(control["extensionsManifest"])
    sources_lock = load(control["sourcesLock"])
    commit = git(root, "rev-parse", "HEAD")

    stamp = datetime.now(timezone.utc).strftime("%Y-%m-%d")
    snapshot_id = f"{args.course}-{stamp}-{fingerprint[:12]}"
    snapshot_path = archive_root / snapshot_id / "snapshot.json"

    snapshot = {
        "schemaVersion": 2,
        "snapshotId": snapshot_id,
        "fingerprint": fingerprint,
        "courseCode": args.course,
        "createdAt": datetime.now(timezone.utc).isoformat(),
        "kind": "language-reference-snapshot",
        "status": "validated",
        "qualityThreshold": manifest.get("qualityThreshold") or sources_lock.get("qualityThreshold"),
        "storageModel": "immutable-git-commit-pointer",
        "git": {
            "repository": "SalehAkaJim/chatgpt",
            "branchAtCapture": git(root, "branch", "--show-current"),
            "commit": commit,
        },
        "canonicalRoot": f"nova/reference/{args.course}",
        "controlFiles": {
            key: {
                "path": str(path.relative_to(root)),
                "gitBlobSha": blob_sha(root, path),
                "sha256": sha256_file(path),
            }
            for key, path in control.items()
        },
        "dataFamilies": families,
        "dataFiles": file_records["files"],
        "sourceLockFingerprint": file_records["sourcesLock"],
        "sourceLocks": sources_lock.get("sources", {}),
        "summary": {
            "referenceRecords": (manifest.get("counts") or {}).get("records"),
            "curriculumEligible": (manifest.get("counts") or {}).get("curriculumEligible"),
            "productionEligible": (manifest.get("counts") or {}).get("productionEligible"),
            "pronunciationMatchedLemmas": (extensions.get("pronunciation") or {}).get("matchedLemmaCount"),
            "spokenFrequencyItems": (extensions.get("spokenFrequency") or {}).get("itemCount"),
            "usageQueries": (extensions.get("usage") or {}).get("queryCount"),
            "usageQueriesWithEvidence": (extensions.get("usage") or {}).get("evidenceQueryCount"),
            "usageUnavailableQueries": (extensions.get("usage") or {}).get("unavailableQueryCount"),
        },
        "reuse": {
            "recommended": "Resolve every data file from git.commit for exact reproducibility; never substitute mutable branch HEAD.",
            "example": f"git show {commit}:nova/reference/{args.course}/lexical/A1.json",
        },
    }

    if snapshot_path.exists():
        raise SystemExit(f"Snapshot path already exists unexpectedly: {snapshot_path}")
    dump(snapshot_path, snapshot)
    dump(latest_path, {
        "schemaVersion": 2,
        "courseCode": args.course,
        "snapshotId": snapshot_id,
        "snapshotPath": str(snapshot_path.relative_to(root)),
        "gitCommit": commit,
        "fingerprint": fingerprint,
    })
    print(json.dumps({"status": "CREATED", "snapshotId": snapshot_id, "gitCommit": commit}, ensure_ascii=False))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

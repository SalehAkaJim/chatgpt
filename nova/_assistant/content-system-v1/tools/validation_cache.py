#!/usr/bin/env python3
"""Content-addressed cache for Nova's reusable validation gates.

The cache is intentionally limited to validators whose result depends only on one
Lesson plus explicitly fingerprinted shared inputs. Cross-Lesson Story/Design
validation is never cached; `validate_factory_prefix.py` remains the authoritative
full-prefix regression gate.
"""
from __future__ import annotations

import hashlib
import json
import os
import tempfile
from pathlib import Path
from typing import Any

CACHE_SCHEMA_VERSION = 1
LOCAL_VALIDATOR_VERSION = "nova-local-validation-v1"

COMMON_INPUT_PATHS = (
    "nova/_assistant/content-system-v1/content_quality.policy.json",
    "nova/_assistant/content-system-v1/tools/validate_lesson.py",
    "nova/_assistant/content-system-v1/tools/validate_lesson_reference.py",
    "nova/_assistant/content-system-v1/tools/validate_content_quality.py",
    "nova/_assistant/content-system-v1/tools/reference_catalog.py",
    "nova/_assistant/content-system-v1/tools/reference_data.py",
)


def _sha256_bytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def file_hash(path: Path) -> str:
    return _sha256_bytes(path.read_bytes())


def _update_path_hash(digest: "hashlib._Hash", root: Path, relative: str) -> None:
    path = root / relative
    digest.update(relative.encode("utf-8"))
    digest.update(b"\0")
    if not path.exists():
        digest.update(b"<missing>")
        return
    digest.update(path.read_bytes())


def shared_validation_fingerprint(root: Path, course_code: str, config: dict) -> str:
    """Fingerprint shared inputs that can change one-Lesson validation results.

    Reference payloads are represented by their committed lock/manifest pointers,
    so the cache does not need to hash large linguistic corpora on every run.
    """
    root = Path(root)
    digest = hashlib.sha256()
    digest.update(LOCAL_VALIDATOR_VERSION.encode("utf-8"))
    digest.update(b"\0")
    digest.update(str(int(config.get("enforceFromSortOrder", 1))).encode("ascii"))
    digest.update(b"\0")

    paths = list(COMMON_INPUT_PATHS)
    paths.extend(
        [
            f"nova/courses/{course_code}/course.source.json",
            f"nova/reference/{course_code}/sources.lock.json",
            f"nova/reference/{course_code}/extensions_manifest.json",
            f"nova/reference-snapshots/{course_code}/latest.json",
        ]
    )
    for relative in paths:
        _update_path_hash(digest, root, relative)
        digest.update(b"\0")
    return digest.hexdigest()


def validation_key(*, lesson_bytes: bytes, shared_fingerprint: str) -> str:
    digest = hashlib.sha256()
    digest.update(LOCAL_VALIDATOR_VERSION.encode("utf-8"))
    digest.update(b"\0")
    digest.update(shared_fingerprint.encode("ascii"))
    digest.update(b"\0")
    digest.update(lesson_bytes)
    return digest.hexdigest()


class ValidationCache:
    def __init__(self, root: Path):
        self.root = Path(root)

    def _path(self, namespace: str, key: str) -> Path:
        return self.root / namespace / key[:2] / f"{key}.json"

    def get(self, namespace: str, key: str) -> dict[str, Any] | None:
        path = self._path(namespace, key)
        try:
            payload = json.loads(path.read_text(encoding="utf-8"))
        except (FileNotFoundError, json.JSONDecodeError, OSError):
            return None
        if payload.get("cacheSchemaVersion") != CACHE_SCHEMA_VERSION:
            return None
        if payload.get("key") != key or payload.get("namespace") != namespace:
            return None
        result = payload.get("result")
        return result if isinstance(result, dict) else None

    def put(self, namespace: str, key: str, result: dict[str, Any]) -> None:
        path = self._path(namespace, key)
        path.parent.mkdir(parents=True, exist_ok=True)
        payload = {
            "cacheSchemaVersion": CACHE_SCHEMA_VERSION,
            "namespace": namespace,
            "key": key,
            "result": result,
        }
        encoded = json.dumps(payload, ensure_ascii=False, sort_keys=True, indent=2) + "\n"
        fd, tmp_name = tempfile.mkstemp(prefix=f".{path.name}.", dir=path.parent)
        try:
            with os.fdopen(fd, "w", encoding="utf-8") as handle:
                handle.write(encoded)
                handle.flush()
                os.fsync(handle.fileno())
            os.replace(tmp_name, path)
        finally:
            try:
                os.unlink(tmp_name)
            except FileNotFoundError:
                pass


__all__ = [
    "CACHE_SCHEMA_VERSION",
    "LOCAL_VALIDATOR_VERSION",
    "ValidationCache",
    "file_hash",
    "shared_validation_fingerprint",
    "validation_key",
]

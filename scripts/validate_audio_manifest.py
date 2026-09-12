#!/usr/bin/env python3
"""Validate audio manifests and generated MP3 sidecars before database linking."""
from __future__ import annotations

import argparse
import hashlib
import json
import uuid
from pathlib import Path

from mutagen.mp3 import MP3

ROOT = Path(__file__).resolve().parents[1]
VALID_CATEGORIES = {"lexical", "utterances", "dialogues"}


def sha_text(value: str) -> str:
    return hashlib.sha256(value.encode("utf-8")).hexdigest()


def sha_file(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as handle:
        for chunk in iter(lambda: handle.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest()


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("manifest", type=Path)
    ap.add_argument("--root", type=Path, default=ROOT)
    ap.add_argument("--require-generated", action="store_true")
    ap.add_argument("--lock-file", type=Path)
    args = ap.parse_args()

    manifest = json.loads(args.manifest.read_text(encoding="utf-8"))
    errors: list[str] = []
    warnings: list[str] = []
    seen_keys: set[str] = set()
    seen_paths: set[str] = set()
    generated_count = 0

    if manifest.get("manifest_version") not in {1, 2}:
        errors.append("Unsupported manifest_version")
    if manifest.get("missing_character_profiles"):
        errors.append("Missing character profiles: " + ", ".join(manifest["missing_character_profiles"]))

    dialogue_voice_keys: set[str] = set()
    for index, item in enumerate(manifest.get("items", []), start=1):
        prefix = f"item[{index}]"
        key = item.get("audio_key")
        rel = item.get("relative_path")
        text = item.get("text", "")
        category = item.get("category")

        if not key or key in seen_keys:
            errors.append(f"{prefix}: duplicate or missing audio_key {key!r}")
        else:
            seen_keys.add(key)
        if not rel or rel in seen_paths:
            errors.append(f"{prefix}: duplicate or missing relative_path {rel!r}")
        else:
            seen_paths.add(rel)
        if category not in VALID_CATEGORIES:
            errors.append(f"{prefix}: invalid category {category!r}")
        if not text.strip():
            errors.append(f"{prefix}: empty text")
        if item.get("source_text_hash") != sha_text(text):
            errors.append(f"{prefix}: source_text_hash mismatch")
        if item.get("voice_spec", {}).get("blocked"):
            errors.append(f"{prefix}: voice is blocked")
        refs = item.get("entity_refs") or []
        if not refs:
            errors.append(f"{prefix}: no entity_refs")
        for ref in refs:
            try:
                uuid.UUID(ref["entity_uuid"])
            except Exception:
                errors.append(f"{prefix}: invalid entity UUID in {ref!r}")

        if category == "dialogues":
            voice_key = item.get("voice_key", "")
            dialogue_voice_keys.add(voice_key)
            if not voice_key.startswith("character:"):
                errors.append(f"{prefix}: dialogue voice_key is not character-scoped")
            if not item.get("metadata", {}).get("character"):
                errors.append(f"{prefix}: dialogue character metadata missing")
            if not item.get("metadata", {}).get("voice_profile"):
                errors.append(f"{prefix}: dialogue voice_profile metadata missing")

        if not rel:
            continue
        rel_path = Path(rel)
        if rel_path.is_absolute() or ".." in rel_path.parts:
            errors.append(f"{prefix}: unsafe relative_path {rel}")
            continue
        audio_path = args.root / rel_path
        meta_path = audio_path.with_suffix(audio_path.suffix + ".json")
        if not audio_path.exists():
            message = f"{prefix}: audio not generated: {rel}"
            (errors if args.require_generated else warnings).append(message)
            continue
        generated_count += 1
        if not meta_path.exists():
            errors.append(f"{prefix}: missing sidecar {meta_path}")
            continue

        try:
            sidecar = json.loads(meta_path.read_text(encoding="utf-8"))
        except Exception as exc:
            errors.append(f"{prefix}: invalid sidecar JSON: {exc}")
            continue
        if sidecar.get("audio_key") != key:
            errors.append(f"{prefix}: sidecar audio_key mismatch")
        if sidecar.get("source_text_hash") != item.get("source_text_hash"):
            errors.append(f"{prefix}: stale audio source hash")
        if sidecar.get("voice_key") != item.get("voice_key"):
            errors.append(f"{prefix}: stale audio voice key")
        if sidecar.get("settings") != item.get("voice_spec", {}).get("settings", {}):
            errors.append(f"{prefix}: stale audio voice settings")
        actual_sha = sha_file(audio_path)
        if sidecar.get("file_sha256") != actual_sha:
            errors.append(f"{prefix}: MP3 checksum mismatch")
        try:
            duration_ms = int(float(MP3(audio_path).info.length or 0) * 1000)
            if duration_ms < 120:
                errors.append(f"{prefix}: implausibly short MP3 duration")
            recorded = sidecar.get("duration_ms")
            if recorded is None or abs(int(recorded) - duration_ms) > 300:
                errors.append(f"{prefix}: sidecar duration mismatch")
        except Exception as exc:
            errors.append(f"{prefix}: MP3 decode failed: {exc}")

    lock_file = args.lock_file
    if lock_file is None and manifest.get("locale"):
        lock_file = args.root / "audio" / "voices" / f"{manifest['locale']}.lock.json"
    if dialogue_voice_keys and lock_file and lock_file.exists():
        locks = json.loads(lock_file.read_text(encoding="utf-8"))
        used: dict[str, str] = {}
        for voice_key in sorted(dialogue_voice_keys):
            lock = locks.get(voice_key)
            if not lock:
                if args.require_generated:
                    errors.append(f"Missing voice lock for {voice_key}")
                continue
            voice_id = lock.get("voice_id")
            if not voice_id:
                errors.append(f"Voice lock has no voice_id for {voice_key}")
                continue
            other = used.get(voice_id)
            if other and other != voice_key:
                errors.append(f"Character voice collision: {voice_key} and {other} use {voice_id}")
            used[voice_id] = voice_key
    elif dialogue_voice_keys and args.require_generated:
        errors.append(f"Missing voice lock file: {lock_file}")

    report = {
        "manifest": str(args.manifest),
        "items": len(manifest.get("items", [])),
        "generated_items": generated_count,
        "errors": errors,
        "warnings": warnings,
        "valid": not errors
    }
    print(json.dumps(report, ensure_ascii=False, indent=2))
    if errors:
        raise SystemExit(1)


if __name__ == "__main__":
    main()

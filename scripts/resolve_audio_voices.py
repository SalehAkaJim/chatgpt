#!/usr/bin/env python3
"""Resolve and lock all voices required by an audio manifest without generating audio.

This performs only voice-list/search API calls. It is intended to fail before any
paid TTS generation if Lori, locale-compatible voices, label requirements, or
per-character distinctness cannot be satisfied.
"""
from __future__ import annotations

import argparse
import json
import os
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
if str(ROOT) not in sys.path:
    sys.path.insert(0, str(ROOT))

from scripts.generate_audio import resolve_voice  # noqa: E402


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("manifest", type=Path)
    ap.add_argument("--lock-file", type=Path)
    ap.add_argument("--write-lock", action="store_true")
    args = ap.parse_args()

    api_key = os.getenv("ELEVENLABS_API_KEY")
    if not api_key:
        raise SystemExit("ELEVENLABS_API_KEY is required")

    manifest = json.loads(args.manifest.read_text(encoding="utf-8"))
    locale = manifest["locale"]
    lock_file = args.lock_file or ROOT / "audio" / "voices" / f"{locale}.lock.json"
    locks = json.loads(lock_file.read_text(encoding="utf-8")) if lock_file.exists() else {}

    if manifest.get("missing_character_profiles"):
        raise SystemExit("Manifest has unresolved character profiles")

    required: dict[str, dict] = {}
    for item in manifest.get("items", []):
        spec = item.get("voice_spec") or {}
        if spec.get("blocked"):
            raise SystemExit(f"Blocked voice in manifest: {item.get('voice_key')}")
        key = item["voice_key"]
        existing = required.get(key)
        if existing is not None and existing != spec:
            raise SystemExit(f"Conflicting voice specs for {key}")
        required[key] = spec

    resolved = []
    for voice_key in sorted(required):
        voice = resolve_voice(api_key, voice_key, required[voice_key], locks)
        resolved.append({
            "voice_key": voice_key,
            "voice_id": voice.get("voice_id"),
            "voice_name": voice.get("voice_name"),
            "labels": voice.get("labels") or {},
        })

    character_rows = [row for row in resolved if row["voice_key"].startswith("character:")]
    character_voice_ids = [row["voice_id"] for row in character_rows]
    if len(character_voice_ids) != len(set(character_voice_ids)):
        raise SystemExit("Character voice collision detected during preflight")

    if args.write_lock:
        lock_file.parent.mkdir(parents=True, exist_ok=True)
        lock_file.write_text(json.dumps(locks, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

    print(json.dumps({
        "manifest": str(args.manifest),
        "locale": locale,
        "logical_voices": len(resolved),
        "character_voices": len(character_rows),
        "distinct_character_voice_ids": len(set(character_voice_ids)),
        "lock_file": str(lock_file),
        "lock_written": args.write_lock,
        "valid": True,
        "voices": resolved,
    }, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()

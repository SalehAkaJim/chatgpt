#!/usr/bin/env python3
"""Resolve and lock all voices required by an audio manifest without generating audio.

The resolver prefers voices already available to the ElevenLabs workspace. When
a distinct dialogue character cannot be satisfied from that collection, it falls
back to the official ElevenLabs Voice Library and selects a verified en-US voice
that matches the character gender/accent profile. No TTS is generated here.
"""
from __future__ import annotations

import argparse
import hashlib
import json
import os
import sys
from datetime import datetime, timezone
from pathlib import Path

import requests

ROOT = Path(__file__).resolve().parents[1]
if str(ROOT) not in sys.path:
    sys.path.insert(0, str(ROOT))

from scripts.generate_audio import resolve_voice  # noqa: E402

API = "https://api.elevenlabs.io"
_SHARED_CACHE: dict[tuple, list[dict]] = {}


def _shared_candidates(api_key: str, spec: dict, locale: str) -> list[dict]:
    labels = spec.get("required_labels") or {}
    gender = (labels.get("gender") or "").lower() or None
    language = spec.get("required_language") or locale.split("-")[0]
    accent = spec.get("preferred_accent") or None
    cache_key = (gender, language, accent, locale)
    if cache_key in _SHARED_CACHE:
        return _SHARED_CACHE[cache_key]

    collected: dict[str, dict] = {}
    category_priority = {"high_quality": 0, "professional": 1, None: 2}
    for category in ("high_quality", "professional", None):
        for page in range(3):
            params = {
                "page_size": 100,
                "page": page,
                "language": language,
                "locale": locale,
                "include_custom_rates": "false",
                "include_live_moderated": "false",
                "sort": "usage_character_count_1y",
            }
            if gender:
                params["gender"] = gender
            if accent:
                params["accent"] = accent
            if category:
                params["category"] = category
            response = requests.get(
                f"{API}/v1/shared-voices",
                headers={"xi-api-key": api_key},
                params=params,
                timeout=30,
            )
            response.raise_for_status()
            payload = response.json()
            voices = payload.get("voices", [])
            for raw in voices:
                voice_id = raw.get("voice_id")
                if not voice_id:
                    continue
                verified = raw.get("verified_languages") or []
                verified_locale = any(
                    (v.get("locale") or "").casefold() == locale.casefold()
                    and (v.get("language") or language).casefold() == language.casefold()
                    and (not v.get("model_id") or v.get("model_id") == "eleven_multilingual_v2")
                    for v in verified
                )
                if verified and not verified_locale:
                    continue
                row = {
                    "voice_id": voice_id,
                    "name": raw.get("name"),
                    "description": raw.get("description") or raw.get("descriptive") or "",
                    "labels": {
                        "gender": (raw.get("gender") or "").lower(),
                        "accent": (raw.get("accent") or "").lower(),
                        "age": (raw.get("age") or "").lower(),
                        "category": (raw.get("category") or category or "").lower(),
                        "language": (raw.get("language") or language).lower(),
                    },
                    "public_owner_id": raw.get("public_owner_id"),
                    "usage_character_count_1y": int(raw.get("usage_character_count_1y") or 0),
                    "cloned_by_count": int(raw.get("cloned_by_count") or 0),
                    "category_priority": category_priority[category],
                }
                previous = collected.get(voice_id)
                if previous is None or row["category_priority"] < previous["category_priority"]:
                    collected[voice_id] = row
            if not payload.get("has_more"):
                break

    ranked = sorted(
        collected.values(),
        key=lambda v: (
            v["category_priority"],
            -v["usage_character_count_1y"],
            -v["cloned_by_count"],
            v.get("name") or "",
            v["voice_id"],
        ),
    )
    _SHARED_CACHE[cache_key] = ranked
    return ranked


def _resolve_from_library(api_key: str, voice_key: str, spec: dict, locale: str, locks: dict) -> dict:
    if spec.get("voice_name"):
        raise RuntimeError(f"Named voice {spec['voice_name']} must resolve from the connected workspace")

    reserved = {
        value.get("voice_id")
        for key, value in locks.items()
        if key.startswith("character:") and value.get("voice_id")
    }
    available = [v for v in _shared_candidates(api_key, spec, locale) if v["voice_id"] not in reserved]
    if not available:
        raise RuntimeError(f"No unused compatible ElevenLabs Voice Library voice remains for {voice_key}")

    top = available[: min(24, len(available))]
    index = int(hashlib.sha256(voice_key.encode("utf-8")).hexdigest()[:8], 16) % len(top)
    chosen = top[index]
    locked = {
        "voice_id": chosen["voice_id"],
        "voice_name": chosen.get("name"),
        "labels": chosen.get("labels") or {},
        "source": "voice_library",
        "public_owner_id": chosen.get("public_owner_id"),
        "resolved_at": datetime.now(timezone.utc).isoformat(),
    }
    locks[voice_key] = locked
    return locked


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
    library_fallbacks = 0
    for voice_key in sorted(required):
        spec = required[voice_key]
        try:
            voice = resolve_voice(api_key, voice_key, spec, locks)
        except RuntimeError as exc:
            if not voice_key.startswith("character:") or spec.get("voice_name"):
                raise
            voice = _resolve_from_library(api_key, voice_key, spec, locale, locks)
            library_fallbacks += 1
            print(f"Voice Library fallback: {voice_key} -> {voice.get('voice_name')} ({voice.get('voice_id')})", file=sys.stderr)
        resolved.append({
            "voice_key": voice_key,
            "voice_id": voice.get("voice_id"),
            "voice_name": voice.get("voice_name"),
            "labels": voice.get("labels") or {},
            "source": voice.get("source", "workspace"),
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
        "voice_library_fallbacks": library_fallbacks,
        "lock_file": str(lock_file),
        "lock_written": args.write_lock,
        "valid": True,
        "voices": resolved,
    }, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()

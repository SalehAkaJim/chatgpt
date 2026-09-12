#!/usr/bin/env python3
"""Generate production audio from a level manifest with ElevenLabs.

Paid generation is deliberately guarded. Voice IDs are resolved against the
current ElevenLabs workspace and locked by logical voice_key for consistency.
Dialogue character voices are explicit, label-compatible, and distinct.
"""
from __future__ import annotations

import argparse
import concurrent.futures
import hashlib
import json
import os
import tempfile
import threading
from datetime import datetime, timezone
from pathlib import Path

import requests
from mutagen.mp3 import MP3

ROOT = Path(__file__).resolve().parents[1]
API = "https://api.elevenlabs.io"
LOCK = threading.Lock()


def sha_bytes(data):
    return hashlib.sha256(data).hexdigest()


def words(value):
    return {w.lower() for w in "".join(c if c.isalnum() else " " for c in value).split() if len(w) > 2}


def labels_match(voice, required):
    labels = {str(k).casefold(): str(v).casefold() for k, v in (voice.get("labels") or {}).items()}
    return all(labels.get(str(k).casefold()) == str(v).casefold() for k, v in (required or {}).items())


def list_voices(api_key, spec):
    params = {"page_size": 100, "include_total_count": "false"}
    if spec.get("voice_name"):
        params["search"] = spec["voice_name"]
    if spec.get("required_language"):
        params["language"] = spec["required_language"]
    if spec.get("preferred_accent"):
        params["accent"] = spec["preferred_accent"]
    if spec.get("prefer_high_quality"):
        params["high_quality"] = "true"
    r = requests.get(f"{API}/v2/voices", headers={"xi-api-key": api_key}, params=params, timeout=30)
    r.raise_for_status()
    voices = r.json().get("voices", [])
    required_labels = spec.get("required_labels") or {}
    if required_labels:
        voices = [voice for voice in voices if labels_match(voice, required_labels)]
    return voices


def resolve_voice(api_key, voice_key, spec, locks):
    with LOCK:
        if voice_key in locks:
            return locks[voice_key]

    candidates = list_voices(api_key, spec)
    if spec.get("voice_name") and spec.get("require_exact_name"):
        candidates = [v for v in candidates if (v.get("name") or "").casefold() == spec["voice_name"].casefold()]
    if not candidates:
        labels = spec.get("required_labels") or {}
        raise RuntimeError(f"No compatible ElevenLabs voice for {voice_key}; required_labels={labels}")

    wanted = words(spec.get("description", ""))

    def score(voice):
        text = " ".join([
            voice.get("name") or "",
            voice.get("description") or "",
            json.dumps(voice.get("labels") or {}, ensure_ascii=False)
        ])
        return len(wanted & words(text))

    ranked = sorted(candidates, key=lambda v: (-score(v), v.get("name") or "", v.get("voice_id") or ""))

    with LOCK:
        if voice_key in locks:
            return locks[voice_key]
        if spec.get("distinct_character"):
            reserved = {
                value.get("voice_id") for key, value in locks.items()
                if key.startswith("character:") and value.get("voice_id")
            }
            ranked = [voice for voice in ranked if voice.get("voice_id") not in reserved]
            if not ranked:
                raise RuntimeError(f"No unused compatible ElevenLabs character voice remains for {voice_key}")

        if spec.get("voice_name"):
            chosen = ranked[0]
        else:
            pool = ranked[:min(12, len(ranked))]
            idx = int(hashlib.sha256(voice_key.encode()).hexdigest()[:8], 16) % len(pool)
            chosen = pool[idx]

        locked = {
            "voice_id": chosen["voice_id"],
            "voice_name": chosen.get("name"),
            "labels": chosen.get("labels") or {},
            "resolved_at": datetime.now(timezone.utc).isoformat()
        }
        locks[voice_key] = locked
        return locked


def tts(api_key, voice_id, text, model, settings, preferred, fallback):
    body = {"text": text, "model_id": model, "voice_settings": settings}
    headers = {"xi-api-key": api_key, "Content-Type": "application/json", "Accept": "audio/mpeg"}
    last = None
    formats = [preferred, fallback] if fallback != preferred else [preferred]
    for fmt in formats:
        r = requests.post(
            f"{API}/v1/text-to-speech/{voice_id}",
            params={"output_format": fmt}, headers=headers, json=body, timeout=120
        )
        if r.ok:
            return r.content, fmt
        last = RuntimeError(f"ElevenLabs {r.status_code}: {r.text[:400]}")
        if r.status_code not in {400, 402, 403, 422}:
            break
    raise last


def validate_mp3(path, text):
    audio = MP3(path)
    duration = float(audio.info.length or 0)
    if path.stat().st_size < 1000:
        raise RuntimeError(f"Audio file too small: {path}")
    if text.strip() and duration < 0.12:
        raise RuntimeError(f"Implausible duration: {path}")
    return int(duration * 1000)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("manifest", type=Path)
    ap.add_argument("--confirm-paid-generation", action="store_true")
    ap.add_argument("--lock-file", type=Path)
    ap.add_argument("--root", type=Path, default=ROOT)
    ap.add_argument("--concurrency", type=int)
    args = ap.parse_args()

    if not args.confirm_paid_generation:
        raise SystemExit("Paid generation was not confirmed. Re-run with --confirm-paid-generation.")
    api_key = os.getenv("ELEVENLABS_API_KEY")
    if not api_key:
        raise SystemExit("ELEVENLABS_API_KEY is required")

    manifest = json.loads(args.manifest.read_text(encoding="utf-8"))
    generation = manifest["generation"]
    locale = manifest["locale"]
    lock_file = args.lock_file or ROOT / "audio" / "voices" / f"{locale}.lock.json"
    locks = json.loads(lock_file.read_text(encoding="utf-8")) if lock_file.exists() else {}

    blocked = [item for item in manifest["items"] if item.get("voice_spec", {}).get("blocked")]
    if blocked:
        raise SystemExit(
            "Dialogue generation blocked: explicit character profiles missing for " +
            ", ".join(sorted({item["metadata"].get("character", "?") for item in blocked}))
        )

    default_model = os.getenv("ELEVENLABS_MODEL_ID", generation.get("model_id", "eleven_multilingual_v2"))
    dialogue_model = os.getenv("ELEVENLABS_DIALOGUE_MODEL_ID", default_model)
    preferred = os.getenv("ELEVENLABS_OUTPUT_FORMAT", generation.get("preferred_output_format", "mp3_44100_192"))
    fallback = generation.get("fallback_output_format", "mp3_44100_128")
    concurrency = args.concurrency or int(os.getenv("CONTENT_TTS_CONCURRENCY", str(generation.get("concurrency", 2))))

    def work(item):
        out = args.root / item["relative_path"]
        meta = out.with_suffix(out.suffix + ".json")
        model = dialogue_model if item["category"] == "dialogues" else default_model
        voice = resolve_voice(api_key, item["voice_key"], item["voice_spec"], locks)
        identity = {
            "source_text_hash": item["source_text_hash"],
            "voice_id": voice["voice_id"],
            "model": model,
            "settings": item["voice_spec"].get("settings", {})
        }
        if out.exists() and meta.exists():
            old = json.loads(meta.read_text(encoding="utf-8"))
            if all(old.get(key) == value for key, value in identity.items()):
                return {"audio_key": item["audio_key"], "status": "reused", "path": item["relative_path"]}

        data, fmt = tts(
            api_key, voice["voice_id"], item["text"], model,
            item["voice_spec"].get("settings", {}), preferred, fallback
        )
        out.parent.mkdir(parents=True, exist_ok=True)
        fd, tmp_name = tempfile.mkstemp(dir=out.parent, suffix=".mp3")
        os.close(fd)
        tmp = Path(tmp_name)
        try:
            tmp.write_bytes(data)
            duration = validate_mp3(tmp, item["text"])
            tmp.replace(out)
        finally:
            if tmp.exists():
                tmp.unlink()

        payload = {
            **identity,
            "provider": manifest.get("provider", "elevenlabs"),
            "audio_key": item["audio_key"],
            "voice_key": item["voice_key"],
            "voice_name": voice.get("voice_name"),
            "voice_labels": voice.get("labels") or {},
            "output_format": fmt,
            "file_sha256": sha_bytes(data),
            "duration_ms": duration,
            "generated_at": datetime.now(timezone.utc).isoformat(),
            "entity_refs": item["entity_refs"]
        }
        meta.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
        return {"audio_key": item["audio_key"], "status": "generated", "path": item["relative_path"],
                "duration_ms": duration}

    with concurrent.futures.ThreadPoolExecutor(max_workers=max(1, concurrency)) as executor:
        results = list(executor.map(work, manifest["items"]))

    lock_file.parent.mkdir(parents=True, exist_ok=True)
    lock_file.write_text(json.dumps(locks, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({
        "generated": sum(result["status"] == "generated" for result in results),
        "reused": sum(result["status"] == "reused" for result in results),
        "items": len(results),
        "lock_file": str(lock_file)
    }, ensure_ascii=False))


if __name__ == "__main__":
    main()

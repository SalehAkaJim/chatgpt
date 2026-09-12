#!/usr/bin/env python3
"""Verify generated dialogue audio uses the current locked voice consistently."""
from __future__ import annotations

import argparse
import json
from collections import defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("manifest", nargs="+", type=Path)
    ap.add_argument("--root", type=Path, default=ROOT)
    ap.add_argument("--lock-file", type=Path, default=ROOT / "audio/voices/en-US.lock.json")
    args = ap.parse_args()

    locks = json.loads(args.lock_file.read_text(encoding="utf-8"))
    errors: list[str] = []
    rows = 0
    per_dialogue_character: dict[tuple[str, str], set[str]] = defaultdict(set)
    per_character: dict[str, set[str]] = defaultdict(set)

    for manifest_path in args.manifest:
        manifest = json.loads(manifest_path.read_text(encoding="utf-8"))
        for item in manifest.get("items", []):
            if item.get("category") != "dialogues":
                continue
            rows += 1
            voice_key = item.get("voice_key") or ""
            metadata = item.get("metadata") or {}
            character = metadata.get("character") or "?"
            dialogue = metadata.get("dialogue") or "?"
            lock = locks.get(voice_key)
            if not lock or not lock.get("voice_id"):
                errors.append(f"{manifest_path.name}:{dialogue}:{character}: missing lock for {voice_key}")
                continue
            expected_voice_id = lock["voice_id"]

            audio_path = args.root / item["relative_path"]
            sidecar_path = audio_path.with_suffix(audio_path.suffix + ".json")
            if not audio_path.exists():
                errors.append(f"{manifest_path.name}:{dialogue}:{character}: missing MP3 {item['relative_path']}")
                continue
            if not sidecar_path.exists():
                errors.append(f"{manifest_path.name}:{dialogue}:{character}: missing sidecar {sidecar_path}")
                continue
            try:
                sidecar = json.loads(sidecar_path.read_text(encoding="utf-8"))
            except Exception as exc:
                errors.append(f"{manifest_path.name}:{dialogue}:{character}: invalid sidecar: {exc}")
                continue

            actual_voice_id = sidecar.get("voice_id")
            if sidecar.get("voice_key") != voice_key:
                errors.append(
                    f"{manifest_path.name}:{dialogue}:{character}: sidecar voice_key={sidecar.get('voice_key')} expected={voice_key}"
                )
            if actual_voice_id != expected_voice_id:
                errors.append(
                    f"{manifest_path.name}:{dialogue}:{character}: voice_id={actual_voice_id} expected={expected_voice_id}"
                )
            if sidecar.get("source_text_hash") != item.get("source_text_hash"):
                errors.append(f"{manifest_path.name}:{dialogue}:{character}: stale source_text_hash")

            if actual_voice_id:
                per_dialogue_character[(dialogue, character)].add(actual_voice_id)
                per_character[character].add(actual_voice_id)

    for (dialogue, character), voice_ids in sorted(per_dialogue_character.items()):
        if len(voice_ids) != 1:
            errors.append(
                f"{dialogue}:{character}: mixed voices inside one dialogue: {sorted(voice_ids)}"
            )
    for character, voice_ids in sorted(per_character.items()):
        if len(voice_ids) != 1:
            errors.append(
                f"{character}: multiple effective voices across English manifests: {sorted(voice_ids)}"
            )

    report = {
        "manifests": [str(path) for path in args.manifest],
        "dialogue_items": rows,
        "characters": len(per_character),
        "errors": errors,
        "valid": not errors,
    }
    print(json.dumps(report, ensure_ascii=False, indent=2))
    if errors:
        raise SystemExit(1)


if __name__ == "__main__":
    main()

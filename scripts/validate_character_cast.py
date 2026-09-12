#!/usr/bin/env python3
"""Validate explicit character cast metadata used by dialogue TTS."""
from __future__ import annotations

import argparse
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]

STYLE_TO_SUFFIX = {
    "warm_conversational": "warm",
    "calm_clear": "calm",
    "bright_social": "bright",
    "professional_neutral": "professional",
}


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--cast", type=Path, default=ROOT / "audio/cast/en-US.json")
    args = ap.parse_args()

    cast = json.loads(args.cast.read_text(encoding="utf-8"))
    errors: list[str] = []
    characters = cast.get("characters") or {}

    for slug, character in sorted(characters.items()):
        persona = character.get("persona") or {}
        presentation = str(persona.get("voice_presentation") or "").casefold()
        style = str(persona.get("style") or "")
        profile = str(character.get("voice_profile") or "")

        if presentation not in {"female", "male"}:
            errors.append(f"{slug}: voice_presentation must be female or male")
            continue
        expected_prefix = presentation + "_"
        if not profile.startswith(expected_prefix):
            errors.append(
                f"{slug}: voice_profile={profile!r} conflicts with voice_presentation={presentation!r}"
            )
        suffix = STYLE_TO_SUFFIX.get(style)
        if suffix and profile != f"{presentation}_{suffix}":
            errors.append(
                f"{slug}: style={style!r} expects voice_profile={presentation}_{suffix!s}, got {profile!r}"
            )
        if not persona.get("target_accent"):
            errors.append(f"{slug}: target_accent is missing")
        if not character.get("display_name"):
            errors.append(f"{slug}: display_name is missing")

    report = {
        "cast": str(args.cast),
        "characters": len(characters),
        "errors": errors,
        "valid": not errors,
    }
    print(json.dumps(report, ensure_ascii=False, indent=2))
    if errors:
        raise SystemExit(1)


if __name__ == "__main__":
    main()

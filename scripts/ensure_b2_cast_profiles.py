#!/usr/bin/env python3
"""Ensure every B2 dialogue speaker has an explicit en-US cast profile.

This script is deterministic and intentionally refuses to infer traits from names.
The profiles below are authored product decisions for the B2 cast additions.
"""
from __future__ import annotations

import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
CAST_PATH = ROOT / "audio" / "cast" / "en-US.json"

REQUIRED = {
    "aisha": {
        "display_name": "Aisha",
        "persona": {
            "voice_presentation": "female",
            "style": "bright_social",
            "target_accent": "general_american",
        },
        "voice_profile": "female_bright",
    },
    "elena": {
        "display_name": "Elena",
        "persona": {
            "voice_presentation": "female",
            "style": "professional_neutral",
            "target_accent": "general_american",
        },
        "voice_profile": "female_professional",
    },
    "leila": {
        "display_name": "Leila",
        "persona": {
            "voice_presentation": "female",
            "style": "calm_clear",
            "target_accent": "general_american",
        },
        "voice_profile": "female_calm",
    },
    "luis": {
        "display_name": "Luis",
        "persona": {
            "voice_presentation": "male",
            "style": "bright_social",
            "target_accent": "general_american",
        },
        "voice_profile": "male_bright",
    },
    "marcus": {
        "display_name": "Marcus",
        "persona": {
            "voice_presentation": "male",
            "style": "professional_neutral",
            "target_accent": "general_american",
        },
        "voice_profile": "male_professional",
    },
    "samir": {
        "display_name": "Samir",
        "persona": {
            "voice_presentation": "male",
            "style": "warm_conversational",
            "target_accent": "general_american",
        },
        "voice_profile": "male_warm",
    },
    "staff": {
        "display_name": "Staff",
        "persona": {
            "voice_presentation": "female",
            "style": "professional_neutral",
            "target_accent": "general_american",
        },
        "voice_profile": "female_professional",
    },
}


def main() -> None:
    data = json.loads(CAST_PATH.read_text(encoding="utf-8"))
    chars = data.setdefault("characters", {})
    added = []
    for key, profile in REQUIRED.items():
        if key not in chars:
            chars[key] = profile
            added.append(key)
    data["characters"] = dict(sorted(chars.items()))
    CAST_PATH.write_text(
        json.dumps(data, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
    )
    print(json.dumps({"added": added, "total": len(chars)}, ensure_ascii=False))


if __name__ == "__main__":
    main()

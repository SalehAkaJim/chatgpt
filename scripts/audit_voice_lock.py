#!/usr/bin/env python3
"""Audit or remove legacy English character voice locks that do not fit personas."""
from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
if str(ROOT) not in sys.path:
    sys.path.insert(0, str(ROOT))

from scripts.voice_quality import voice_allowed

LEGACY_REVIEW_KEYS = {
    "character:arman:male_warm",
    "character:ben:male_bright",
    "character:adam:male_professional",
    "character:alex:male_warm",
    "character:claire:female_professional",
    "character:david:male_warm",
    "character:diego:male_professional",
    "character:dina:female_calm",
    "character:eli:male_bright",
    "character:emre:male_professional",
    "character:fatima:female_professional",
    "character:iris:female_calm",
    "character:jack:male_warm",
    "character:jae:male_warm",
    "character:jonas:male_professional",
    "character:liam:male_bright",
    "character:marco:male_bright",
    "character:mark:male_calm",
    "character:mei:female_professional",
    "character:mina:female_bright",
    "character:noor:female_calm",
    "character:noura:female_warm",
    "character:owen:male_bright",
    "character:priya:female_professional",
    "character:ravi:male_bright",
    "character:rita:female_professional",
    "character:sora:female_bright",
    "character:tom:male_calm",
    "character:yuki:female_professional",
    "character:elena:female_professional",
    "character:leila:female_calm",
    "character:luis:male_bright",
    "character:marcus:male_professional",
}


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--lock", type=Path, default=ROOT / "audio/voices/en-US.lock.json")
    ap.add_argument("--registry", type=Path, default=ROOT / "audio/voices/en-US.json")
    ap.add_argument("--repair-legacy", action="store_true")
    ap.add_argument("--strict", action="store_true")
    args = ap.parse_args()

    locks = json.loads(args.lock.read_text(encoding="utf-8"))
    registry = json.loads(args.registry.read_text(encoding="utf-8"))
    profiles = registry["dialogue"]["profiles"]

    removed = []
    if args.repair_legacy:
        for key in sorted(LEGACY_REVIEW_KEYS):
            if key in locks:
                removed.append({"voice_key": key, "voice_name": locks[key].get("voice_name")})
                del locks[key]
        args.lock.write_text(json.dumps(locks, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

    problems = []
    for key, voice in sorted(locks.items()):
        if not key.startswith("character:"):
            continue
        parts = key.split(":")
        if len(parts) < 3:
            problems.append({"voice_key": key, "voice_name": voice.get("voice_name"), "reasons": ["missing_profile_key"]})
            continue
        profile_key = parts[-1]
        spec = dict(profiles.get(profile_key) or {})
        spec["profile_key"] = profile_key
        ok, reasons = voice_allowed(voice, spec)
        if not ok:
            problems.append({"voice_key": key, "voice_name": voice.get("voice_name"), "reasons": reasons})

    print(json.dumps({
        "removed_legacy": removed,
        "removed_count": len(removed),
        "remaining_problems": problems,
        "remaining_problem_count": len(problems),
        "character_lock_count": sum(k.startswith("character:") for k in locks),
    }, ensure_ascii=False, indent=2))

    if args.strict and problems:
        raise SystemExit("Voice quality audit failed")


if __name__ == "__main__":
    main()

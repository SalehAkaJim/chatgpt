#!/usr/bin/env python3
"""Build the complete English reference implementation in canonical MySQL.

Order matters:
1. source-level delivery contract validation
2. shared app dictionary
3. canonical course content for Pre-A1..C2
4. explicit lesson-delivery graph for every imported level
5. lexical tap annotations after every source row exists

Audio metadata SQL remains a separate deployment step because the generated audio
files already exist independently of this canonical-content transaction chain.
"""
from __future__ import annotations

import argparse
import json
from pathlib import Path
import subprocess
import sys

ROOT = Path(__file__).resolve().parents[3]
LEVELS = [
    ("Pre-A1", "pre_a1.py"),
    ("A1", "a1.py"),
    ("A2", "a2.py"),
    ("B1", "b1.py"),
    ("B2", "b2.py"),
    ("C1", "c1.py"),
    ("C2", "c2.py"),
]


def run(label: str, command: list[str]) -> None:
    print(json.dumps({"step": label, "command": command}, ensure_ascii=False))
    subprocess.run(command, cwd=ROOT, check=True)


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--dry-run", action="store_true")
    ap.add_argument("--allow-unreviewed", action="store_true")
    ap.add_argument("--require-approved", action="store_true")
    ap.add_argument("--skip-dictionary", action="store_true")
    ap.add_argument("--skip-lexical-annotations", action="store_true")
    args = ap.parse_args()

    run(
        "delivery_contract",
        [sys.executable, "scripts/validate_english_reference_flow.py"],
    )

    common: list[str] = []
    if args.dry_run:
        common.append("--dry-run")
    if args.allow_unreviewed:
        common.append("--allow-unreviewed")
    if args.require_approved:
        common.append("--require-approved")

    if not args.skip_dictionary:
        dictionary_args = [sys.executable, "database/import/en/dictionary.py"]
        if args.dry_run:
            dictionary_args.append("--dry-run")
        run("english_dictionary", dictionary_args)

    for level, _entrypoint in LEVELS:
        level_args = [
            sys.executable,
            "database/import/en/reference_level.py",
            "--level", level,
            *common,
        ]
        run(f"canonical_{level}", level_args)

        delivery_args = [
            sys.executable,
            "scripts/materialize_lesson_delivery.py",
            str(ROOT / "content" / "production" / "en" / level),
            "--course", "fa-en-us",
            "--level", level,
        ]
        if args.dry_run:
            delivery_args.append("--dry-run")
        run(f"delivery_{level}", delivery_args)

    if not args.skip_lexical_annotations:
        lexical_args = [sys.executable, "database/import/en/lexical_annotations.py"]
        if args.dry_run:
            lexical_args.append("--dry-run")
        run("lexical_annotations", lexical_args)

    print(json.dumps({
        "ok": True,
        "reference": "fa-en-us",
        "levels": [level for level, _ in LEVELS],
        "dry_run": args.dry_run,
        "audio_metadata": "import existing database/import/en/*_audio.sql after content import",
    }, ensure_ascii=False))


if __name__ == "__main__":
    main()

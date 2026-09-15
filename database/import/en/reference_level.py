#!/usr/bin/env python3
"""Canonical English level importer used by the reference implementation."""
from __future__ import annotations

import argparse
import json
from pathlib import Path
import sys

ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT))

from scripts import materialize_level as materializer  # noqa: E402
from scripts import sync_character_cast as cast_sync  # noqa: E402
from scripts.english_lexical_identity_patch import install as install_lexical_identity  # noqa: E402

LEVELS = {"Pre-A1", "A1", "A2", "B1", "B2", "C1", "C2"}
CAST = ROOT / "audio" / "cast" / "en-US.json"
VOICE_REGISTRY = ROOT / "audio" / "voices" / "en-US.json"


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--level", required=True, choices=sorted(LEVELS))
    ap.add_argument("--dry-run", action="store_true")
    ap.add_argument("--allow-unreviewed", action="store_true")
    ap.add_argument("--require-approved", action="store_true")
    args = ap.parse_args()

    content_dir = ROOT / "content" / "production" / "en" / args.level
    paths = sorted(content_dir.glob("*.json"))
    if not paths:
        raise SystemExit(f"No English production batches in {content_dir}")

    preflight = materializer.validate_batches(paths)
    if args.require_approved or (not args.dry_run and not args.allow_unreviewed):
        errors = [
            batch["batch_id"] + ": " + error
            for batch in preflight
            for error in materializer.quality_errors(batch, require_approved=True)
        ]
        if errors:
            raise SystemExit("Educational review gate: " + "; ".join(errors))

    original_argv = list(sys.argv)
    try:
        cast_args = [
            sys.argv[0],
            "--cast", str(CAST),
            "--voice-registry", str(VOICE_REGISTRY),
            "--target-language", "en",
            "--target-variant", "en-US",
            "--content-dir", str(content_dir),
            "--level", args.level,
        ]
        if args.dry_run:
            cast_args.append("--dry-run")
        sys.argv = cast_args
        cast_sync.main()
    finally:
        sys.argv = original_argv

    identity_stats = install_lexical_identity(materializer, content_dir, "en-US")

    base_ensure_concept = materializer.ensure_concept

    def ensure_concept_with_slug(*call_args, **call_kwargs):
        data = call_args[1]
        ids = call_args[-1]
        concept_id = base_ensure_concept(*call_args, **call_kwargs)
        ids[data["slug"]] = concept_id
        return concept_id

    materializer.ensure_concept = ensure_concept_with_slug
    materializer_args = [
        sys.argv[0],
        str(content_dir),
        "--course", "fa-en-us",
        "--level", args.level,
        "--target-language", "en",
        "--target-variant", "en-US",
        "--learner-language", "fa",
        "--learner-variant", "fa-IR",
    ]
    if args.dry_run:
        materializer_args.append("--dry-run")
    if args.allow_unreviewed:
        materializer_args.append("--allow-unreviewed")
    if args.require_approved:
        materializer_args.append("--require-approved")

    original_argv = list(sys.argv)
    try:
        sys.argv = materializer_args
        materializer.main()
    finally:
        sys.argv = original_argv

    print(json.dumps({
        "reference_level": args.level,
        "canonical_lexical_identity": identity_stats,
        "dry_run": args.dry_run,
    }, ensure_ascii=False))


if __name__ == "__main__":
    main()

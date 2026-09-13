#!/usr/bin/env python3
"""Single entrypoint for importing the German C2 level."""
from pathlib import Path
import sys

ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT))

from scripts import materialize_level as materializer
from scripts import sync_character_cast as cast_sync

CONTENT_DIR = ROOT / "content" / "production" / "de" / "C2"
CAST = ROOT / "audio" / "cast" / "de-DE.json"
VOICE_REGISTRY = ROOT / "audio" / "voices" / "de-DE.json"
EXTRA_ARGS = sys.argv[1:]

if "--require-approved" in EXTRA_ARGS or ("--dry-run" not in EXTRA_ARGS and "--allow-unreviewed" not in EXTRA_ARGS):
    preflight = materializer.validate_batches(sorted(CONTENT_DIR.glob("*.json")))
    errors = [b["batch_id"] + ": " + e for b in preflight for e in materializer.quality_errors(b, require_approved=True)]
    if errors:
        raise SystemExit("Educational review gate: " + "; ".join(errors))

cast_argv = [
    sys.argv[0], "--cast", str(CAST), "--voice-registry", str(VOICE_REGISTRY),
    "--target-language", "de", "--target-variant", "de-DE",
    "--content-dir", str(CONTENT_DIR), "--level", "C2",
]
if "--dry-run" in EXTRA_ARGS:
    cast_argv.append("--dry-run")
sys.argv = cast_argv
cast_sync.main()

_base_ensure_concept = materializer.ensure_concept

def _ensure_concept(*args, **kwargs):
    data = args[1]
    ids = args[-1]
    cid = _base_ensure_concept(*args, **kwargs)
    ids[data["slug"]] = cid
    return cid

materializer.ensure_concept = _ensure_concept
sys.argv = [
    sys.argv[0], str(CONTENT_DIR), "--course", "fa-de-de", "--level", "C2",
    "--target-language", "de", "--target-variant", "de-DE",
    "--learner-language", "fa", "--learner-variant", "fa-IR",
] + EXTRA_ARGS
materializer.main()

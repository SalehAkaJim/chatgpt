#!/usr/bin/env python3
"""Single entrypoint for importing the complete English A2 level.

Validates/syncs the explicit en-US dialogue cast and materializes every approved
A2 production batch in one transaction. It does not import audio assets; run the
matching a2_audio.sql after the content import.
"""
from pathlib import Path
import sys

ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT))

from scripts import materialize_level as materializer  # noqa: E402
from scripts import sync_character_cast as cast_sync  # noqa: E402

CONTENT_DIR = ROOT / "content" / "production" / "en" / "A2"
CAST = ROOT / "audio" / "cast" / "en-US.json"
VOICE_REGISTRY = ROOT / "audio" / "voices" / "en-US.json"
EXTRA_ARGS = sys.argv[1:]

cast_argv = [
    sys.argv[0],
    "--cast", str(CAST),
    "--voice-registry", str(VOICE_REGISTRY),
    "--target-language", "en",
    "--target-variant", "en-US",
    "--content-dir", str(CONTENT_DIR),
    "--level", "A2",
]
if "--dry-run" in EXTRA_ARGS:
    cast_argv.append("--dry-run")
sys.argv = cast_argv
cast_sync.main()

# Production concept_refs are canonical concept slugs; keep external_id as an
# alias for compatibility with older batches.
_base_ensure_concept = materializer.ensure_concept

def _ensure_concept(*args, **kwargs):
    data = args[1]
    ids = args[-1]
    cid = _base_ensure_concept(*args, **kwargs)
    ids[data["slug"]] = cid
    return cid

materializer.ensure_concept = _ensure_concept
sys.argv = [
    sys.argv[0],
    str(CONTENT_DIR),
    "--course", "fa-en-us",
    "--level", "A2",
    "--target-language", "en",
    "--target-variant", "en-US",
    "--learner-language", "fa",
    "--learner-variant", "fa-IR",
] + EXTRA_ARGS
materializer.main()

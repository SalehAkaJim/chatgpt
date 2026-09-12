#!/usr/bin/env python3
"""Single entrypoint for importing the complete English C2 level.

Validates/syncs the explicit en-US dialogue cast and materializes every approved
C2 production batch in one transaction. Audio is imported separately from
c2_audio.sql after paid production audio has been explicitly generated.
"""
from pathlib import Path
import sys

ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT))

from scripts import materialize_level as materializer  # noqa: E402
from scripts import sync_character_cast as cast_sync  # noqa: E402

CONTENT_DIR = ROOT / "content" / "production" / "en" / "C2"
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
    "--level", "C2",
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
    sys.argv[0],
    str(CONTENT_DIR),
    "--course", "fa-en-us",
    "--level", "C2",
    "--target-language", "en",
    "--target-variant", "en-US",
    "--learner-language", "fa",
    "--learner-variant", "fa-IR",
] + EXTRA_ARGS
materializer.main()

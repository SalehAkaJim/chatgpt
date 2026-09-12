#!/usr/bin/env python3
"""Single entrypoint for importing the complete English A1 level.

The file remains the stable A1 import entrypoint. As A1 production batches are
completed, this imports the whole directory in one transaction after validating
and syncing the explicit dialogue character cast.
"""
from pathlib import Path
import sys

ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT))

from scripts import materialize_level as materializer  # noqa: E402
from scripts import sync_character_cast as cast_sync  # noqa: E402

CONTENT_DIR = ROOT / "content" / "production" / "en" / "A1"
CAST = ROOT / "audio" / "cast" / "en-US.json"
VOICE_REGISTRY = ROOT / "audio" / "voices" / "en-US.json"
EXTRA_ARGS = sys.argv[1:]

# Fail release preflight before synchronizing any canonical database rows.
if "--require-approved" in EXTRA_ARGS or ("--dry-run" not in EXTRA_ARGS and "--allow-unreviewed" not in EXTRA_ARGS):
    preflight = materializer.validate_batches(sorted(CONTENT_DIR.glob("*.json")))
    errors = [b["batch_id"] + ": " + e for b in preflight
              for e in materializer.quality_errors(b, require_approved=True)]
    if errors:
        raise SystemExit("Educational review gate: " + "; ".join(errors))


# Validate every dialogue speaker against the explicit cast and persist persona
# + logical voice profile before dialogue rows are materialized.
cast_argv = [
    sys.argv[0],
    "--cast", str(CAST),
    "--voice-registry", str(VOICE_REGISTRY),
    "--target-language", "en",
    "--target-variant", "en-US",
    "--content-dir", str(CONTENT_DIR),
    "--level", "A1",
]
if "--dry-run" in EXTRA_ARGS:
    cast_argv.append("--dry-run")
sys.argv = cast_argv
cast_sync.main()

# Production concept_refs use canonical concept slugs, while some legacy A1
# batches still expose a separate external_id. Register both aliases.
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
    "--level", "A1",
    "--target-language", "en",
    "--target-variant", "en-US",
    "--learner-language", "fa",
    "--learner-variant", "fa-IR",
] + EXTRA_ARGS
materializer.main()

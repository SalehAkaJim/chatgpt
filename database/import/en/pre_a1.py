#!/usr/bin/env python3
"""Single entrypoint for importing the complete English Pre-A1 level."""
from pathlib import Path
import sys

ROOT = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(ROOT))
from scripts import materialize_level as materializer  # noqa: E402

# Production concept_refs are canonical slugs; keep external IDs as aliases too.
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
    str(ROOT / "content" / "production" / "en" / "Pre-A1"),
    "--course", "fa-en-us",
    "--level", "Pre-A1",
    "--target-language", "en",
    "--target-variant", "en-US",
    "--learner-language", "fa",
    "--learner-variant", "fa-IR",
] + sys.argv[1:]
materializer.main()

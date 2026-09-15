#!/usr/bin/env python3
"""Build German Pre-A1 from imported publisher-authored source content.

This script does not create, translate, rewrite, or supplement educational text.
It only maps existing source-authored units, lessons, and items into the Nova
course structure and records the curriculum classification separately.
"""
from __future__ import annotations

import json
from copy import deepcopy
from pathlib import Path

from jsonschema import validate

ROOT = Path(__file__).resolve().parents[1]
SOURCE_DIR = ROOT / "content" / "production" / "de" / "coerll-deutsch-im-blick"
OUT_DIR = ROOT / "content" / "production" / "de" / "pre-a1"
SCHEMA_PATH = ROOT / "content" / "batch.schema.json"

# Pre-A1 starts with the publisher's first chapter. No source lesson or item is
# synthesized here; this is only a Nova curriculum placement decision.
SOURCE_CHAPTERS = [1]


def build(source: dict, chapter: int) -> dict:
    batch = deepcopy(source)
    batch["batch_id"] = f"de-pre-a1-coerll-dib-k{chapter:02d}-v1"
    batch["course"] = "de-pre-a1"
    batch["cefr"] = "Pre-A1"
    batch["generator"] = "source-map:nova-de-pre-a1-v1"
    batch["curriculum_unit"] = f"de-pre-a1-u{chapter:02d}"

    # Preserve publisher-authored educational content verbatim. Keep the source
    # unit identifier alongside Nova's structural identifier for provenance.
    source_unit = deepcopy(batch.get("unit", {}))
    batch["unit"] = {
        **source_unit,
        "external_id": f"de-pre-a1-u{chapter:02d}",
        "source_external_id": source_unit.get("external_id"),
        "sort_order": chapter,
    }
    return batch


def main() -> None:
    schema = json.loads(SCHEMA_PATH.read_text(encoding="utf-8"))
    OUT_DIR.mkdir(parents=True, exist_ok=True)

    for chapter in SOURCE_CHAPTERS:
        source_path = SOURCE_DIR / f"chapter-{chapter:02d}.json"
        if not source_path.exists():
            raise FileNotFoundError(
                f"Missing source snapshot: {source_path}. Run the source importer first."
            )
        source = json.loads(source_path.read_text(encoding="utf-8"))
        batch = build(source, chapter)
        validate(instance=batch, schema=schema)
        out_path = OUT_DIR / f"unit-{chapter:02d}.json"
        out_path.write_text(
            json.dumps(batch, ensure_ascii=False, indent=2) + "\n",
            encoding="utf-8",
        )
        print(
            f"Pre-A1 unit {chapter}: {len(batch.get('lessons', []))} source lessons, "
            f"{len(batch.get('items', []))} source items -> {out_path}"
        )


if __name__ == "__main__":
    main()

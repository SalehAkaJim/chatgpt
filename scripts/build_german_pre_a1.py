#!/usr/bin/env python3
"""Build German Pre-A1 and A1 from imported publisher-authored source content.

No educational text is created, translated, rewritten, supplemented, or inferred here.
The script only copies publisher-authored source batches into Nova curriculum levels
and adds structural/provenance metadata.
"""
from __future__ import annotations

import json
from copy import deepcopy
from pathlib import Path

from jsonschema import validate

ROOT = Path(__file__).resolve().parents[1]
SOURCE_DIR = ROOT / "content" / "production" / "de" / "coerll-deutsch-im-blick"
SCHEMA_PATH = ROOT / "content" / "batch.schema.json"

# Nova curriculum placement only. Educational content remains verbatim from source.
LEVELS = {
    "Pre-A1": {"slug": "pre-a1", "chapters": [1]},
    "A1": {"slug": "a1", "chapters": [2, 3, 4, 5]},
}


def build(source: dict, cefr: str, slug: str, unit_number: int, chapter: int) -> dict:
    batch = deepcopy(source)
    batch["batch_id"] = f"de-{slug}-coerll-dib-k{chapter:02d}-v1"
    batch["course"] = f"de-{slug}"
    batch["cefr"] = cefr
    batch["generator"] = f"source-map:nova-de-{slug}-v1"
    batch["curriculum_unit"] = f"de-{slug}-u{unit_number:02d}"

    source_unit = deepcopy(batch.get("unit", {}))
    batch["unit"] = {
        **source_unit,
        "external_id": f"de-{slug}-u{unit_number:02d}",
        "source_external_id": source_unit.get("external_id"),
        "source_chapter": chapter,
        "sort_order": unit_number,
    }
    return batch


def main() -> None:
    schema = json.loads(SCHEMA_PATH.read_text(encoding="utf-8"))
    totals = {}

    for cefr, config in LEVELS.items():
        slug = config["slug"]
        out_dir = ROOT / "content" / "production" / "de" / slug
        out_dir.mkdir(parents=True, exist_ok=True)
        lesson_total = 0
        item_total = 0

        for unit_number, chapter in enumerate(config["chapters"], 1):
            source_path = SOURCE_DIR / f"chapter-{chapter:02d}.json"
            if not source_path.exists():
                raise FileNotFoundError(
                    f"Missing source snapshot: {source_path}. Run the source importer first."
                )
            source = json.loads(source_path.read_text(encoding="utf-8"))
            batch = build(source, cefr, slug, unit_number, chapter)
            validate(instance=batch, schema=schema)
            out_path = out_dir / f"unit-{unit_number:02d}.json"
            out_path.write_text(
                json.dumps(batch, ensure_ascii=False, indent=2) + "\n",
                encoding="utf-8",
            )
            lessons = len(batch.get("lessons", []))
            items = len(batch.get("items", []))
            lesson_total += lessons
            item_total += items
            print(
                f"{cefr} unit {unit_number} <- source chapter {chapter}: "
                f"{lessons} source lessons, {items} source items -> {out_path}"
            )

        totals[cefr] = {"units": len(config["chapters"]), "lessons": lesson_total, "items": item_total}

    print("SUMMARY " + json.dumps(totals, ensure_ascii=False, sort_keys=True))


if __name__ == "__main__":
    main()

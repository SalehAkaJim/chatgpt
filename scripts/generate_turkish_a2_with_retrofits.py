#!/usr/bin/env python3
"""Generate cumulative Turkish A2 content with explicit legacy-unit retrofits.

Normal batch specs remain immutable historical authored inputs. Retrofit files only
append missing lesson material to an existing unit and may add its production
rubric. This keeps legacy batch IDs stable while letting old two-lesson A2 units
meet the current three-lesson production/mediation contract.
"""
from __future__ import annotations

import copy
import json
from pathlib import Path

import generate_turkish_a2_curriculum as base

ROOT = Path(__file__).resolve().parents[1]
SPEC_DIR = ROOT / "content/specs/tr/A2"


def pair_for(dialogue: list) -> tuple[str, ...]:
    turns = dialogue[2]
    speakers: list[str] = []
    for turn in turns:
        speaker = turn[0]
        if speaker not in speakers:
            speakers.append(speaker)
    return tuple(sorted(speakers))


def load_retrofits() -> dict[str, dict]:
    by_slug: dict[str, dict] = {}
    for path in sorted(SPEC_DIR.glob("retrofit-*.json")):
        payload = json.loads(path.read_text(encoding="utf-8"))
        if payload.get("level") != base.LEVEL or payload.get("variant") != base.VARIANT:
            raise SystemExit(f"{path}: unexpected retrofit metadata")
        for row in payload.get("retrofits", []):
            slug = row.get("slug")
            if not slug or slug in by_slug:
                raise SystemExit(f"{path}: missing or duplicate retrofit slug {slug!r}")
            if not row.get("utterances") or not row.get("dialogues") or not row.get("production"):
                raise SystemExit(f"{path}:{slug}: third-lesson utterances, dialogue and production are required")
            by_slug[slug] = row
    return by_slug


def merge_unit(unit: dict, retrofit: dict | None) -> dict:
    merged = copy.deepcopy(unit)
    if retrofit:
        merged["utterances"] = list(merged.get("utterances", [])) + copy.deepcopy(retrofit["utterances"])
        merged["dialogues"] = list(merged.get("dialogues", [])) + copy.deepcopy(retrofit["dialogues"])
        merged["production"] = copy.deepcopy(retrofit["production"])

    lesson_ids = sorted({int(row[-1]) for row in merged.get("utterances", [])})
    if lesson_ids != [1, 2, 3]:
        raise SystemExit(f"{merged.get('slug')}: Turkish A2 unit must materialize three lessons; got {lesson_ids}")
    if int(merged.get("production", {}).get("lesson", 0)) != 3:
        raise SystemExit(f"{merged.get('slug')}: lesson 3 must carry authored rubric-based production")

    dialogues = sorted(merged.get("dialogues", []), key=lambda row: int(row[-1]))
    by_lesson = {int(row[-1]): pair_for(row) for row in dialogues}
    for lesson in (2, 3):
        if by_lesson.get(lesson) == by_lesson.get(lesson - 1):
            raise SystemExit(
                f"{merged.get('slug')}: repeated normalized dialogue pair in lessons {lesson-1} and {lesson}: {by_lesson.get(lesson)}"
            )
    return merged


def main() -> None:
    paths = base.discover_specs(None)
    retrofits = load_retrofits()
    seen_retrofits: set[str] = set()
    payloads: list[tuple[Path, dict]] = []
    seen_slugs: dict[str, Path] = {}
    seen_batches: set[int] = set()

    for path in paths:
        payload = json.loads(path.read_text(encoding="utf-8"))
        batch_number = int(payload.get("batch", 0))
        if batch_number < 1 or batch_number in seen_batches:
            raise SystemExit(f"{path}: invalid or duplicate batch number {batch_number}")
        seen_batches.add(batch_number)
        if payload.get("level") != base.LEVEL or payload.get("variant") != base.VARIANT:
            raise SystemExit(f"{path}: unexpected Turkish A2 metadata")

        merged_payload = copy.deepcopy(payload)
        merged_units = []
        for unit in payload.get("units", []):
            slug = unit.get("slug")
            if not slug or slug in seen_slugs:
                raise SystemExit(f"Duplicate or missing Turkish A2 unit slug {slug!r}")
            seen_slugs[slug] = path
            retrofit = retrofits.get(slug)
            if retrofit:
                if batch_number != 1:
                    raise SystemExit(f"{slug}: retrofits are reserved for legacy batch 1 units")
                seen_retrofits.add(slug)
            merged = merge_unit(unit, retrofit)
            base.validate_unit_spec(merged, path)
            merged_units.append(merged)
        if not merged_units:
            raise SystemExit(f"{path}: empty batch")
        merged_payload["units"] = merged_units
        payloads.append((path, merged_payload))

    unused = set(retrofits) - seen_retrofits
    if unused:
        raise SystemExit(f"Retrofits reference unknown/non-legacy Turkish A2 units: {sorted(unused)}")

    legacy_units = {u["slug"] for p, payload in payloads if int(payload["batch"]) == 1 for u in payload["units"]}
    if legacy_units != seen_retrofits:
        raise SystemExit(f"Every legacy Turkish A2 unit must be retrofitted; missing={sorted(legacy_units-seen_retrofits)}")

    out = ROOT / "content/production/tr/A2"
    out.mkdir(parents=True, exist_ok=True)
    written = []
    for path, payload in sorted(payloads, key=lambda row: int(row[1]["batch"])):
        batch_number = int(payload["batch"])
        for spec in payload["units"]:
            target = out / f"a2-tr-{spec['slug']}-v1.json"
            expected_id = f"tr-tr-a2-{spec['slug']}-v1" if batch_number == 1 else f"tr-tr-a2-b{batch_number:02d}-{spec['slug']}-v1"
            if target.exists() and batch_number != 1:
                existing = json.loads(target.read_text(encoding="utf-8"))
                if existing.get("batch_id") != expected_id:
                    raise SystemExit(f"Refusing cross-batch overwrite of {target.name}")
            batch = base.build_unit(spec, batch_number)
            target.write_text(json.dumps(batch, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
            written.append({"batch": batch_number, "file": target.name, "unit": batch["curriculum_unit"]})

    print(json.dumps({
        "level": base.LEVEL,
        "batch_specs": len(payloads),
        "legacy_units_retrofitted": len(seen_retrofits),
        "units_generated": len(written),
        "production_files_total": len(list(out.glob("*.json"))),
        "written": written,
    }, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()

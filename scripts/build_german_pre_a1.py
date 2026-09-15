#!/usr/bin/env python3
"""Build German Pre-A1/A1 with Persian as the learner/base language.

German educational content is copied from the licensed publisher source. Existing
publisher English equivalents are retained only as provenance/source material.
Every learner-facing unit, lesson and concept receives a Persian equivalent.
"""
from __future__ import annotations

import json
import time
from copy import deepcopy
from pathlib import Path

from deep_translator import GoogleTranslator
from jsonschema import validate

ROOT = Path(__file__).resolve().parents[1]
SOURCE_DIR = ROOT / "content" / "production" / "de" / "coerll-deutsch-im-blick"
SCHEMA_PATH = ROOT / "content" / "batch.schema.json"
CACHE_PATH = ROOT / "sources" / "de" / "coerll-deutsch-im-blick" / "fa-translation-cache.json"

LEVELS = {
    "Pre-A1": {"slug": "pre-a1", "chapters": [1]},
    "A1": {"slug": "a1", "chapters": [2, 3, 4, 5]},
}


def load_cache() -> dict[str, str]:
    if CACHE_PATH.exists():
        return json.loads(CACHE_PATH.read_text(encoding="utf-8"))
    return {}


def save_cache(cache: dict[str, str]) -> None:
    CACHE_PATH.parent.mkdir(parents=True, exist_ok=True)
    CACHE_PATH.write_text(json.dumps(cache, ensure_ascii=False, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def translate(text: str, source: str, cache: dict[str, str]) -> str:
    text = (text or "").strip()
    if not text:
        return ""
    key = f"{source}:fa:{text}"
    if key in cache and cache[key].strip():
        return cache[key]
    translator = GoogleTranslator(source=source, target="fa")
    last_error = None
    for attempt in range(5):
        try:
            result = (translator.translate(text) or "").strip()
            if not result:
                raise RuntimeError("empty translation")
            cache[key] = result
            save_cache(cache)
            time.sleep(0.08)
            return result
        except Exception as exc:  # network/rate-limit retry
            last_error = exc
            time.sleep(1.5 * (attempt + 1))
    raise RuntimeError(f"Persian translation failed for {text!r}: {last_error}")


def add_persian(batch: dict, cache: dict[str, str]) -> dict:
    batch["learner_language"] = "fa"
    batch["learner_variant"] = "fa-IR"

    unit = batch.get("unit", {})
    if unit.get("title"):
        unit["translation"] = {"fa": translate(unit["title"], "de", cache)}

    for lesson in batch.get("lessons", []):
        source_en = (lesson.get("source_translation") or "").strip()
        if source_en:
            fa = translate(source_en, "en", cache)
        else:
            fa = translate(lesson.get("title", ""), "de", cache)
        lesson["translation"] = {"fa": fa}

    for item in batch.get("items", []):
        data = item.get("data", {})
        translations = data.get("translations") or {}
        source_en = (translations.get("en") or "").strip()
        de = ((data.get("forms") or {}).get("de") or "").strip()
        if not source_en and not de:
            raise RuntimeError(f"Item {item.get('external_id')} has no translatable source text")
        fa = translate(source_en, "en", cache) if source_en else translate(de, "de", cache)
        if source_en:
            data["source_translations"] = {"en": source_en}
        data["translations"] = {"fa": fa}

    batch["translation"] = {
        "language": "fa",
        "variant": "fa-IR",
        "method": "machine-translation",
        "provider": "Google Translate via deep-translator",
        "source_languages": ["en", "de"],
        "review_status": "unreviewed",
    }
    return batch


def assert_persian_complete(batch: dict) -> None:
    if batch.get("learner_language") != "fa":
        raise RuntimeError("learner_language must be fa")
    if not ((batch.get("unit") or {}).get("translation") or {}).get("fa"):
        raise RuntimeError("Unit is missing Persian equivalent")
    for lesson in batch.get("lessons", []):
        if not (lesson.get("translation") or {}).get("fa"):
            raise RuntimeError(f"Lesson {lesson.get('key')} is missing Persian equivalent")
    for item in batch.get("items", []):
        if not ((item.get("data") or {}).get("translations") or {}).get("fa"):
            raise RuntimeError(f"Item {item.get('external_id')} is missing Persian equivalent")


def build(source: dict, cefr: str, slug: str, unit_number: int, chapter: int, cache: dict[str, str]) -> dict:
    batch = deepcopy(source)
    batch["batch_id"] = f"de-{slug}-coerll-dib-k{chapter:02d}-fa-v2"
    batch["course"] = f"fa-de-{slug}"
    batch["cefr"] = cefr
    batch["generator"] = f"source-map:nova-fa-de-{slug}-v2"
    batch["curriculum_unit"] = f"fa-de-{slug}-u{unit_number:02d}"

    source_unit = deepcopy(batch.get("unit", {}))
    batch["unit"] = {
        **source_unit,
        "external_id": f"fa-de-{slug}-u{unit_number:02d}",
        "source_external_id": source_unit.get("external_id"),
        "source_chapter": chapter,
        "sort_order": unit_number,
    }
    add_persian(batch, cache)
    assert_persian_complete(batch)
    return batch


def main() -> None:
    schema = json.loads(SCHEMA_PATH.read_text(encoding="utf-8"))
    cache = load_cache()
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
                raise FileNotFoundError(f"Missing source snapshot: {source_path}. Run the source importer first.")
            source = json.loads(source_path.read_text(encoding="utf-8"))
            batch = build(source, cefr, slug, unit_number, chapter, cache)
            validate(instance=batch, schema=schema)
            out_path = out_dir / f"unit-{unit_number:02d}.json"
            out_path.write_text(json.dumps(batch, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
            lessons = len(batch.get("lessons", []))
            items = len(batch.get("items", []))
            lesson_total += lessons
            item_total += items
            print(f"{cefr} unit {unit_number} <- source chapter {chapter}: {lessons} lessons, {items} items, Persian complete -> {out_path}")

        totals[cefr] = {"units": len(config["chapters"]), "lessons": lesson_total, "items": item_total}

    save_cache(cache)
    print("SUMMARY " + json.dumps(totals, ensure_ascii=False, sort_keys=True))


if __name__ == "__main__":
    main()

#!/usr/bin/env python3
"""Generate cumulative Turkish B2 production from legacy and expansion specs.

The original B2 batch remains a preserved two-lesson legacy block so existing
validated content is not rewritten merely for symmetry. New B2 batches are
discovered dynamically and must be authored with substantive multi-lesson
coverage, including independent production when the spec provides it.
"""
from __future__ import annotations

import copy
import json
import re
from pathlib import Path

import generate_turkish_a1_batch as legacy_engine
import generate_turkish_a2_curriculum as expansion_engine

ROOT = Path(__file__).resolve().parents[1]
SPEC_DIR = ROOT / "content/specs/tr/B2"
OUT_DIR = ROOT / "content/production/tr/B2"
LEVEL = "B2"
VARIANT = "tr-TR"
LEGACY_EXPECTED = [
    "nuanced-stance",
    "causes-and-consequences",
    "hypothetical-alternatives",
    "formal-negotiation",
    "summarizing-viewpoints",
    "relative-detail",
    "passive-processes",
    "inference-and-evidence",
    "concession-and-disagreement",
    "b2-community-forum-capstone",
]


def rename_b2(value):
    if isinstance(value, str):
        if value in {"a1", "a2"}:
            return "b2"
        return (
            value.replace("a1-tr-", "b2-tr-")
            .replace("a2-tr-", "b2-tr-")
            .replace("tr_a1_", "tr_b2_")
            .replace("tr_a2_", "tr_b2_")
            .replace("tr-tr-a1-", "tr-tr-b2-")
            .replace("tr-tr-a2-", "tr-tr-b2-")
            .replace("turkish-a1-", "turkish-b2-")
            .replace("turkish-a2-", "turkish-b2-")
        )
    if isinstance(value, list):
        return [rename_b2(v) for v in value]
    if isinstance(value, dict):
        return {k: rename_b2(v) for k, v in value.items()}
    return value


def normalize_legacy_lessons(spec: dict) -> dict:
    """Preserve the validated two-lesson shape of the original ten B2 units."""
    normalized = copy.deepcopy(spec)
    vocab = normalized.get("vocab", [])
    utterances = normalized.get("utterances", [])
    dialogues = normalized.get("dialogues", [])
    if len(vocab) != 6:
        raise ValueError(f"{spec.get('slug')}: expected six legacy vocab rows, got {len(vocab)}")
    if len(utterances) != 4:
        raise ValueError(f"{spec.get('slug')}: expected four legacy utterances, got {len(utterances)}")
    for i, row in enumerate(vocab):
        row[-1] = 1 if i < 3 else 2
    for i, row in enumerate(utterances):
        row[-1] = 1 if i < 2 else 2
    if len(dialogues) != 2 or [int(row[-1]) for row in dialogues] != [1, 2]:
        raise ValueError(f"{spec.get('slug')}: legacy dialogues must map to lessons 1 and 2")
    return normalized


def b2_rubric() -> dict:
    return {
        "exact_match_allowed": False,
        "criteria": [
            {
                "id": "task",
                "label_fa": "انجام کامل کار",
                "weight": 40,
                "descriptors_fa": {
                    "0": "کار اصلی انجام نشده است.",
                    "1": "فقط بخشی از هدف ارتباطی انجام شده است.",
                    "2": "بیشتر هدف‌ها انجام شده‌اند اما بعضی نکات مهم ناقص‌اند.",
                    "3": "همهٔ هدف‌های اصلی با جزئیات مرتبط و نتیجهٔ روشن انجام شده‌اند.",
                },
            },
            {
                "id": "discourse",
                "label_fa": "پیوستگی و مدیریت دیدگاه‌ها",
                "weight": 35,
                "descriptors_fa": {
                    "0": "پاسخ پراکنده یا نامفهوم است.",
                    "1": "ارتباط میان نکات محدود است.",
                    "2": "دیدگاه‌ها و دلایل عمدتاً منظم و قابل‌پیگیری‌اند.",
                    "3": "پاسخ منسجم است و دیدگاه، دلیل، گزینه و نتیجه را به‌خوبی به هم وصل می‌کند.",
                },
            },
            {
                "id": "language",
                "label_fa": "کنترل زبان B2",
                "weight": 25,
                "descriptors_fa": {
                    "0": "پیام قابل‌فهم نیست.",
                    "1": "خطاها یا انتخاب واژه فهم را مرتب مختل می‌کنند.",
                    "2": "با وجود چند خطا، دامنه و کنترل زبان برای انجام کار کافی است.",
                    "3": "واژگان، پیوندها و ساخت‌های B2 با کنترل خوب و متناسب با موقعیت استفاده شده‌اند.",
                },
            },
        ],
    }


def load_legacy_units() -> list[dict]:
    path = SPEC_DIR / "batch-01.json"
    payload = json.loads(path.read_text(encoding="utf-8"))
    if payload.get("level") != LEVEL or payload.get("variant") != VARIANT:
        raise SystemExit(f"{path.name}: unexpected Turkish B2 metadata")
    units = payload.get("units", [])
    actual = [u.get("slug") for u in units]
    if actual != LEGACY_EXPECTED:
        raise SystemExit(f"Unexpected Turkish B2 legacy sequence: {actual}")
    return units


def load_expansion_units() -> list[tuple[dict, Path, int]]:
    rows: list[tuple[dict, Path, int]] = []
    seen = set(LEGACY_EXPECTED)
    seen_batches: set[int] = {1}
    for path in sorted(SPEC_DIR.glob("batch-*.json")):
        if path.name == "batch-01.json":
            continue
        match = re.fullmatch(r"batch-(\d+)\.json", path.name)
        if not match:
            continue
        payload = json.loads(path.read_text(encoding="utf-8"))
        batch_number = int(payload.get("batch", int(match.group(1))))
        if batch_number < 2 or batch_number in seen_batches:
            raise SystemExit(f"{path.name}: invalid or duplicate batch number {batch_number}")
        seen_batches.add(batch_number)
        if payload.get("level") != LEVEL or payload.get("variant") != VARIANT:
            raise SystemExit(f"{path.name}: unexpected Turkish B2 metadata")
        units = payload.get("units", [])
        if not units:
            raise SystemExit(f"{path.name}: empty Turkish B2 expansion batch")
        for unit in units:
            slug = unit.get("slug")
            if not slug or slug in seen:
                raise SystemExit(f"{path.name}: duplicate/invalid Turkish B2 slug: {slug}")
            expansion_engine.validate_unit_spec(unit, path)
            lesson_ids = sorted({int(row[-1]) for row in unit.get("utterances", [])})
            if len(lesson_ids) < 3:
                raise SystemExit(f"{path.name}:{slug}: new B2 units require at least three substantive lessons")
            production = unit.get("production")
            if not production or int(production.get("lesson", 0)) != lesson_ids[-1]:
                raise SystemExit(f"{path.name}:{slug}: new B2 units require final-lesson independent production")
            seen.add(slug)
            rows.append((unit, path, batch_number))
    return rows


def materialize_legacy(spec: dict) -> str:
    legacy_engine.LEVEL = LEVEL
    normalized = normalize_legacy_lessons(spec)
    batch = rename_b2(legacy_engine.build_unit(normalized))
    slug = normalized["slug"]
    batch["batch_id"] = f"tr-tr-b2-{slug}-v1"
    batch["cefr"] = LEVEL
    batch["curriculum_unit"] = f"b2-tr-{slug}"
    batch["generator"] = "gpt-5.6-sol:turkish-b2-legacy-v1"
    for item in batch["items"]:
        data = item.get("data", {})
        data["cefr"] = LEVEL
        if item.get("kind") == "exercise":
            data["difficulty"] = max(4, int(data.get("difficulty", 4)))
    target = OUT_DIR / f"b2-tr-{slug}-v1.json"
    target.write_text(json.dumps(batch, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    return target.name


def materialize_expansion(spec: dict, batch_number: int) -> str:
    expansion_engine.LEVEL = LEVEL
    expansion_engine.rubric_assessment = b2_rubric
    batch = rename_b2(expansion_engine.build_unit(spec, batch_number))
    slug = spec["slug"]
    batch["batch_id"] = f"tr-tr-b2-b{batch_number:02d}-{slug}-v1"
    batch["cefr"] = LEVEL
    batch["curriculum_unit"] = f"b2-tr-{slug}"
    batch["generator"] = f"gpt-5.6-sol:turkish-b2-batch-{batch_number:02d}-v2"
    for item in batch["items"]:
        data = item.get("data", {})
        data["cefr"] = LEVEL
        if item.get("kind") == "exercise":
            data["difficulty"] = max(4, int(data.get("difficulty", 4)))
    target = OUT_DIR / f"b2-tr-{slug}-v1.json"
    target.write_text(json.dumps(batch, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    return target.name


def main() -> None:
    legacy = load_legacy_units()
    expansions = load_expansion_units()
    OUT_DIR.mkdir(parents=True, exist_ok=True)

    expected_files: set[str] = set()
    for unit in legacy:
        expected_files.add(materialize_legacy(unit))
    for unit, _source, batch_number in expansions:
        expected_files.add(materialize_expansion(unit, batch_number))

    for path in OUT_DIR.glob("*.json"):
        if path.name not in expected_files:
            path.unlink()

    expansion_lessons = sum(
        len({int(row[-1]) for row in unit.get("utterances", [])})
        for unit, _source, _batch_number in expansions
    )
    print(json.dumps({
        "level": LEVEL,
        "legacy_units": len(legacy),
        "legacy_lessons": len(legacy) * 2,
        "expansion_units": len(expansions),
        "expansion_lessons": expansion_lessons,
        "total_units": len(expected_files),
        "production_files": sorted(expected_files),
    }, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()

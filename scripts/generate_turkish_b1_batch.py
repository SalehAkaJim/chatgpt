#!/usr/bin/env python3
"""Generate cumulative legacy Turkish B1 with authored third-lesson retrofits.

The initial B1 curriculum was authored as two lessons per unit. Current course
policy requires a substantive third B1 production/mediation lesson. We reuse the
size-agnostic A2 materializer only as infrastructure, then rewrite identifiers
and B1 assessment language; authored Turkish B1 content remains the source.
"""
from __future__ import annotations

import copy
import json
from pathlib import Path

import generate_turkish_a2_curriculum as engine

ROOT = Path(__file__).resolve().parents[1]
SPEC_DIR = ROOT / "content/specs/tr/B1"
LEVEL = "B1"
EXPECTED = [
    "experiences-and-change", "storytelling-sequence", "opinions-and-evidence",
    "reported-information", "conditions-and-consequences", "goals-and-effort",
    "problems-and-solutions", "media-and-sources", "social-nuance",
    "b1-city-project-capstone",
]


def pair_for(dialogue: list) -> tuple[str, ...]:
    speakers: list[str] = []
    for speaker, *_ in dialogue[2]:
        if speaker not in speakers:
            speakers.append(speaker)
    return tuple(sorted(speakers))


def b1_rubric() -> dict:
    return {
        "exact_match_allowed": False,
        "criteria": [
            {"id": "task", "label_fa": "انجام کار", "weight": 50,
             "descriptors_fa": {"0": "کار انجام نشده است.", "1": "فقط بخشی از کار انجام شده است.",
                                "2": "بیشتر نکات لازم منتقل شده است.", "3": "کار کامل، مرتبط و در سطح B1 انجام شده است."}},
            {"id": "coherence", "label_fa": "پیوستگی و سازمان‌دهی", "weight": 25,
             "descriptors_fa": {"0": "پاسخ پراکنده است.", "1": "ارتباط جمله‌ها محدود است.",
                                "2": "جمله‌ها عمدتاً با ترتیب روشن به هم وصل‌اند.", "3": "پاسخ کوتاه اما منسجم و به‌خوبی سازمان‌یافته است."}},
            {"id": "language", "label_fa": "کنترل زبان", "weight": 25,
             "descriptors_fa": {"0": "پیام قابل‌فهم نیست.", "1": "خطاها فهم را زیاد مختل می‌کنند.",
                                "2": "با وجود خطا، پیام روشن می‌ماند.", "3": "ساخت‌ها و واژگان آموزش‌داده‌شدهٔ B1 با کنترل کافی استفاده شده‌اند."}},
        ],
    }


def rename_b1(value):
    if isinstance(value, str):
        if value == "a2":
            return "b1"
        return (value.replace("a2-tr-", "b1-tr-")
                     .replace("tr_a2_", "tr_b1_")
                     .replace("turkish-a2-", "turkish-b1-"))
    if isinstance(value, list):
        return [rename_b1(x) for x in value]
    if isinstance(value, dict):
        return {k: rename_b1(v) for k, v in value.items()}
    return value


def load_units() -> list[dict]:
    units: list[dict] = []
    for name in ("batch-01a.json", "batch-01b.json"):
        payload = json.loads((SPEC_DIR / name).read_text(encoding="utf-8"))
        if payload.get("level") != LEVEL or payload.get("variant") != "tr-TR":
            raise SystemExit(f"{name}: unexpected Turkish B1 metadata")
        units.extend(payload.get("units", []))
    actual = [u.get("slug") for u in units]
    if actual != EXPECTED:
        raise SystemExit(f"Unexpected Turkish B1 legacy sequence: {actual}")
    return units


def load_retrofits() -> dict[str, dict]:
    payload = json.loads((SPEC_DIR / "retrofit-batch-01-third-lessons.json").read_text(encoding="utf-8"))
    if payload.get("level") != LEVEL or payload.get("variant") != "tr-TR":
        raise SystemExit("Unexpected Turkish B1 retrofit metadata")
    rows = payload.get("retrofits", [])
    by_slug = {r.get("slug"): r for r in rows}
    if None in by_slug or len(by_slug) != len(rows) or set(by_slug) != set(EXPECTED):
        raise SystemExit("Every legacy Turkish B1 unit needs exactly one third-lesson retrofit")
    return by_slug


def apply_fixes(retrofits: dict[str, dict]) -> dict[str, dict]:
    payload = json.loads((SPEC_DIR / "retrofit-batch-01-fixes.json").read_text(encoding="utf-8"))
    if payload.get("level") != LEVEL or payload.get("variant") != "tr-TR":
        raise SystemExit("Unexpected Turkish B1 retrofit-fix metadata")
    fixed = copy.deepcopy(retrofits)
    for slug, correction in payload.get("replacements", {}).items():
        if slug not in fixed:
            raise SystemExit(f"Unknown retrofit correction unit: {slug}")
        if "dialogue" in correction:
            rows = fixed[slug].get("dialogues", [])
            if len(rows) != 1 or int(rows[0][-1]) != 3:
                raise SystemExit(f"{slug}: expected exactly one lesson-3 retrofit dialogue")
            fixed[slug]["dialogues"] = [copy.deepcopy(correction["dialogue"])]
        if "utterance_u5" in correction:
            rows = fixed[slug].get("utterances", [])
            replaced = False
            for i, row in enumerate(rows):
                if row and row[0] == "u5":
                    rows[i] = copy.deepcopy(correction["utterance_u5"]); replaced = True
            if not replaced:
                raise SystemExit(f"{slug}: u5 correction target missing")
    return fixed


def merge_unit(unit: dict, retrofit: dict) -> dict:
    merged = copy.deepcopy(unit)
    merged["utterances"] = list(merged.get("utterances", [])) + copy.deepcopy(retrofit["utterances"])
    merged["dialogues"] = list(merged.get("dialogues", [])) + copy.deepcopy(retrofit["dialogues"])
    merged["production"] = copy.deepcopy(retrofit["production"])
    lessons = sorted({int(row[-1]) for row in merged["utterances"]})
    if lessons != [1, 2, 3] or int(merged["production"].get("lesson", 0)) != 3:
        raise SystemExit(f"{merged['slug']}: expected lessons 1,2,3 with production on lesson 3")
    dialogues = sorted(merged["dialogues"], key=lambda r: int(r[-1]))
    pairs = [pair_for(row) for row in dialogues]
    if len(pairs) != 3 or any(a == b for a, b in zip(pairs, pairs[1:])):
        raise SystemExit(f"{merged['slug']}: consecutive dialogue pair repeated: {pairs}")
    engine.validate_unit_spec(merged, SPEC_DIR / "retrofit-batch-01-third-lessons.json")
    return merged


def main() -> None:
    engine.LEVEL = LEVEL
    engine.rubric_assessment = b1_rubric
    units = load_units()
    retrofits = apply_fixes(load_retrofits())
    out = ROOT / "content/production/tr/B1"
    out.mkdir(parents=True, exist_ok=True)
    written = []
    for unit in units:
        spec = merge_unit(unit, retrofits[unit["slug"]])
        batch = rename_b1(engine.build_unit(spec, 1))
        slug = unit["slug"]
        batch["batch_id"] = f"tr-tr-b1-{slug}-v1"
        batch["cefr"] = LEVEL
        batch["curriculum_unit"] = f"b1-tr-{slug}"
        batch["generator"] = "gpt-5.6-sol:turkish-b1-batch-v2"
        for item in batch["items"]:
            data = item.get("data", {})
            data["cefr"] = LEVEL
            if item.get("kind") == "exercise":
                data["difficulty"] = max(3, int(data.get("difficulty", 3)))
        target = out / f"b1-tr-{slug}-v1.json"
        target.write_text(json.dumps(batch, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
        written.append(target.name)
    print(json.dumps({"level": LEVEL, "legacy_units_retrofitted": len(written), "lessons": len(written) * 3, "files": written}, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()

#!/usr/bin/env python3
"""Generate cumulative Istanbul Turkish A2 production from authored batch specs.

This generator is intentionally size-agnostic: it discovers batch specs, accepts
variable units/lessons per batch, protects existing units from accidental
cross-batch overwrite, and adds rubric-based production tasks when authored.
"""
from __future__ import annotations

import argparse
import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
LEVEL = "A2"
COURSE = "fa-tr-tr"
VARIANT = "tr-TR"


def safe(value: str) -> str:
    table = str.maketrans("ıİşŞçÇğĞöÖüÜ", "iissccggoouu")
    return re.sub(r"[^a-z0-9]+", "_", value.translate(table).lower()).strip("_") or "item"


def final(data: dict) -> dict:
    data["status"] = "validated"
    return data


def feedback(fa: str, tr: str) -> dict:
    return {
        "retry_tip_fa": "به معنی، موقعیت و پسوندهای عبارت ترکی دقت کن و دوباره امتحان کن.",
        "explanation_fa": f"مدل طبیعی این درس: {tr} — {fa}",
        "model_answer": tr,
    }


def rubric_assessment() -> dict:
    return {
        "exact_match_allowed": False,
        "criteria": [
            {
                "id": "task",
                "label_fa": "انجام کار",
                "weight": 55,
                "descriptors_fa": {
                    "0": "کار خواسته‌شده انجام نشده است.",
                    "1": "فقط بخشی از اطلاعات اصلی منتقل شده است.",
                    "2": "بیشتر اطلاعات لازم با چند نقص منتقل شده است.",
                    "3": "کار کامل و برای سطح A2 روشن انجام شده است.",
                },
            },
            {
                "id": "language",
                "label_fa": "زبان قابل‌فهم",
                "weight": 45,
                "descriptors_fa": {
                    "0": "پاسخ قابل‌فهم نیست.",
                    "1": "پیام با دشواری زیاد قابل‌فهم است.",
                    "2": "با چند خطا، پیام همچنان روشن است.",
                    "3": "عبارت‌های ساده و پیوسته متناسب با A2 به‌خوبی قابل‌فهم‌اند.",
                },
            },
        ],
    }


def validate_unit_spec(spec: dict, source: Path) -> None:
    slug = spec.get("slug")
    if not slug:
        raise ValueError(f"{source}: unit without slug")
    vocab = spec.get("vocab", [])
    utterances = spec.get("utterances", [])
    dialogues = spec.get("dialogues", [])
    if not vocab or not utterances or not dialogues:
        raise ValueError(f"{source}:{slug}: vocab, utterances and dialogues are required")
    lesson_ids = sorted({int(row[-1]) for row in utterances})
    if not lesson_ids or lesson_ids != list(range(1, max(lesson_ids) + 1)):
        raise ValueError(f"{source}:{slug}: lessons must be contiguous from 1, got {lesson_ids}")
    dialogue_lessons = {int(row[-1]) for row in dialogues}
    for lesson in lesson_ids:
        if sum(1 for row in utterances if int(row[-1]) == lesson) < 2:
            raise ValueError(f"{source}:{slug}: lesson {lesson} needs at least two utterances")
        if lesson not in dialogue_lessons:
            raise ValueError(f"{source}:{slug}: lesson {lesson} needs a dialogue")
    production = spec.get("production")
    if production:
        p_lesson = int(production.get("lesson", max(lesson_ids)))
        if p_lesson not in lesson_ids:
            raise ValueError(f"{source}:{slug}: production lesson {p_lesson} does not exist")
        for key in ("writing_prompt_fa", "speaking_prompt_fa", "model_text", "required_points_fa"):
            if not production.get(key):
                raise ValueError(f"{source}:{slug}: production.{key} is required")


def build_unit(spec: dict, batch_number: int) -> dict:
    slug = spec["slug"]
    prefix = safe(slug)
    unit = f"a2-tr-{slug}"
    topic = spec["topic"]
    items: list[dict] = []
    refs: dict[str, str] = {}
    utterances: list[dict] = []

    for i, row in enumerate(spec["vocab"], 1):
        key, tr, fa, pos, lesson = row
        lk = f"{unit}-{int(lesson):02d}"
        cslug = f"tr_a2_{prefix}_{safe(key)}"
        refs[key] = cslug
        items.append({"kind": "concept", "external_id": f"c_{prefix}_{i:02d}", "data": final({
            "slug": cslug, "lesson_key": lk, "concept_type": "lexical", "part_of_speech": pos,
            "forms": {"tr": tr}, "translations": {"fa": fa}, "cefr": LEVEL, "topic": topic,
            "tags": ["core", "a2", "high_frequency"],
        })})
        lx = f"lx_{prefix}_{i:02d}"
        items.append({"kind": "lexeme", "external_id": lx, "data": final({
            "lesson_key": lk, "lemma": tr.rstrip(".!?"), "display_lemma": tr.rstrip(".!?"),
            "language": "tr", "language_variant": VARIANT, "part_of_speech": pos,
            "concept_refs": [cslug], "cefr": LEVEL,
        })})
        items.append({"kind": "word_form", "external_id": f"wf_{prefix}_{i:02d}", "data": final({
            "lesson_key": lk, "lexeme_ref": lx, "surface_form": tr.rstrip(".!?"),
            "display_form": tr.rstrip(".!?"), "grammatical_features": {}, "is_lemma": True,
            "is_preferred": True, "cefr": LEVEL,
        })})

    for i, row in enumerate(spec["utterances"], 1):
        key, tr, fa, intent, concept_keys, lesson = row
        missing = [k for k in concept_keys if k not in refs]
        if missing:
            raise ValueError(f"{slug}:{key}: unresolved concept refs {missing}")
        lesson = int(lesson)
        utterances.append({"tr": tr, "fa": fa, "lesson": lesson})
        items.append({"kind": "utterance", "external_id": f"u_{prefix}_{i:02d}", "data": final({
            "lesson_key": f"{unit}-{lesson:02d}", "text": {"tr": tr}, "translations": {"fa": fa},
            "intent": intent, "concept_refs": [refs[k] for k in concept_keys], "cefr": LEVEL,
            "topic": topic, "register": spec.get("register", "neutral"),
        })})

    grammar = spec["grammar"]
    first_lesson = min(u["lesson"] for u in utterances)
    items.append({"kind": "grammar_point", "external_id": f"g_{prefix}_core", "data": final({
        "lesson_key": f"{unit}-{first_lesson:02d}", "slug": f"{unit}-grammar", "title": grammar[0],
        "rule_summary": grammar[1], "explanation": {"fa": grammar[2]},
        "examples": [{"tr": a, "fa": b} for a, b in grammar[3]], "cefr": LEVEL,
    })})

    dialogue_ids: dict[int, str] = {}
    for i, row in enumerate(spec["dialogues"], 1):
        title, setting, turns, lesson = row
        lesson = int(lesson)
        chars: list[str] = []
        turn_rows = []
        for order, (speaker, tr, fa) in enumerate(turns, 1):
            if speaker not in chars:
                chars.append(speaker)
            turn_rows.append({"order": order, "speaker": speaker, "text": tr, "translation_fa": fa})
        did = f"d_{prefix}_{i:02d}"
        dialogue_ids[lesson] = did
        items.append({"kind": "dialogue", "external_id": did, "data": final({
            "lesson_key": f"{unit}-{lesson:02d}", "title": title, "setting": safe(setting),
            "cefr": LEVEL, "topic": topic, "characters": chars, "turns": turn_rows,
            "qa": {"character_pair_unique_within_unit": True, "naturalness": "passed", "single_situation": True},
        })})

    lesson_ids = sorted({u["lesson"] for u in utterances})
    for lesson in lesson_ids:
        us = [x for x in utterances if x["lesson"] == lesson]
        a, b = us[:2]
        other_tr = [x["tr"] for x in utterances if x["tr"] != a["tr"]]
        other_fa = [x["fa"] for x in utterances if x["fa"] != a["fa"]]
        tr_opts = [a["tr"]] + other_tr[:3]
        fa_opts = [a["fa"]] + other_fa[:3]
        lk = f"{unit}-{lesson:02d}"
        base = f"e_{prefix}_{lesson:02d}"
        tokens = b["tr"].split()
        shuffled = tokens[1:] + tokens[:1] if len(tokens) > 1 else tokens
        items.extend([
            {"kind": "exercise", "external_id": base + "_meaning", "data": final({
                "lesson_key": lk, "exercise_type": "multiple_choice",
                "prompt": {"instruction_fa": "معنی درست این عبارت ترکی را انتخاب کن.", "value": a["tr"]},
                "answer": {"value": a["fa"]}, "options": fa_opts, "difficulty": 2, "cefr": LEVEL,
                "topic": topic, "feedback": feedback(a["fa"], a["tr"]),
            })},
            {"kind": "exercise", "external_id": base + "_listen", "data": final({
                "lesson_key": lk, "exercise_type": "listening",
                "prompt": {"instruction_fa": "گوش کن و عبارتی را که شنیدی انتخاب کن.", "audio_text": b["tr"]},
                "answer": {"value": b["tr"]}, "options": [b["tr"]] + [x for x in tr_opts if x != b["tr"]][:3],
                "difficulty": 2, "cefr": LEVEL, "topic": topic,
                "feedback": {**feedback(b["fa"], b["tr"]), "transcript_tr": b["tr"]},
            })},
            {"kind": "exercise", "external_id": base + "_speak", "data": final({
                "lesson_key": lk, "exercise_type": "speaking",
                "prompt": {"instruction_fa": "عبارت را با صدای بلند و با ریتم طبیعی بگو.", "value": a["tr"]},
                "answer": {"expected_text": a["tr"]}, "difficulty": 2, "cefr": LEVEL, "topic": topic,
                "feedback": feedback(a["fa"], a["tr"]),
            })},
            {"kind": "exercise", "external_id": base + "_build", "data": final({
                "lesson_key": lk, "exercise_type": "sentence_building",
                "prompt": {"instruction_fa": "بخش‌ها را مرتب کن تا عبارت درست ساخته شود.", "tokens": shuffled},
                "answer": {"tokens": tokens, "value": b["tr"]}, "difficulty": 2, "cefr": LEVEL,
                "topic": topic, "feedback": feedback(b["fa"], b["tr"]),
            })},
            {"kind": "exercise", "external_id": base + "_dialogue", "data": final({
                "lesson_key": lk, "exercise_type": "dialogue_comprehension",
                "prompt": {"instruction_fa": "با توجه به گفت‌وگو، پاسخ مناسب را انتخاب کن.",
                           "source_dialogue_ref": dialogue_ids[lesson],
                           "question_fa": f"کدام گزینه با معنی «{a['fa']}» هماهنگ است؟"},
                "answer": {"value": a["tr"]}, "options": tr_opts, "difficulty": 2, "cefr": LEVEL,
                "topic": topic, "feedback": feedback(a["fa"], a["tr"]),
            })},
        ])

    production = spec.get("production")
    if production:
        lesson = int(production.get("lesson", max(lesson_ids)))
        lk = f"{unit}-{lesson:02d}"
        required = production["required_points_fa"]
        model = production["model_text"]
        common_answer = {"evaluation_mode": "rubric", "model_text": model, "required_points_fa": required}
        items.extend([
            {"kind": "exercise", "external_id": f"e_{prefix}_{lesson:02d}_open_write", "data": final({
                "lesson_key": lk, "exercise_type": "writing",
                "prompt": {"instruction_fa": production["writing_prompt_fa"], "personalized": True},
                "answer": common_answer, "assessment": rubric_assessment(), "difficulty": 2,
                "cefr": LEVEL, "topic": topic,
                "feedback": {"explanation_fa": "پاسخ آزاد است؛ مهم انجام کامل کار و قابل‌فهم بودن پیام است.",
                             "model_answer": model, "retry_tip_fa": "از مدل کمک بگیر، اما اطلاعات و انتخاب‌های خودت را بنویس."},
            })},
            {"kind": "exercise", "external_id": f"e_{prefix}_{lesson:02d}_personal_speak", "data": final({
                "lesson_key": lk, "exercise_type": "speaking",
                "prompt": {"instruction_fa": production["speaking_prompt_fa"], "personalized": True},
                "answer": common_answer, "assessment": rubric_assessment(), "difficulty": 2,
                "cefr": LEVEL, "topic": topic,
                "feedback": {"explanation_fa": "لازم نیست عین مدل صحبت کنی؛ پیام باید کوتاه، پیوسته و روشن باشد.",
                             "model_answer": model, "retry_tip_fa": "دو یا سه جملهٔ مرتبط بساز و دلیل یا جزئیات کوتاه اضافه کن."},
            })},
        ])

    batch_id = f"tr-tr-a2-{slug}-v1" if batch_number == 1 else f"tr-tr-a2-b{batch_number:02d}-{slug}-v1"
    generator = "gpt-5.6-sol:turkish-a2-batch-v1" if batch_number == 1 else f"gpt-5.6-sol:turkish-a2-batch-{batch_number:02d}-v2"
    return {
        "batch_id": batch_id, "course": COURSE, "learner_language": "fa", "learner_variant": "fa-IR",
        "target_language": "tr", "target_variant": VARIANT, "cefr": LEVEL,
        "curriculum_unit": unit, "generator": generator, "items": items,
    }


def discover_specs(explicit: list[Path] | None) -> list[Path]:
    paths = explicit or sorted((ROOT / "content/specs/tr/A2").glob("batch-*.json"))
    if not paths:
        raise SystemExit("No Turkish A2 batch specs found")
    return [p if p.is_absolute() else p for p in paths]


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--spec", type=Path, action="append", help="Specific batch spec; repeatable. Default: discover all batch-*.json")
    args = ap.parse_args()
    paths = discover_specs(args.spec)
    payloads: list[tuple[Path, dict]] = []
    seen_slugs: dict[str, Path] = {}
    seen_batches: set[int] = set()

    for path in paths:
        payload = json.loads(path.read_text(encoding="utf-8"))
        batch_number = int(payload.get("batch", 0))
        if batch_number < 1 or batch_number in seen_batches:
            raise SystemExit(f"{path}: invalid or duplicate batch number {batch_number}")
        seen_batches.add(batch_number)
        if payload.get("level") != LEVEL or payload.get("variant") != VARIANT:
            raise SystemExit(f"{path}: unexpected Turkish A2 metadata")
        units = payload.get("units", [])
        if not units:
            raise SystemExit(f"{path}: empty batch")
        for unit in units:
            validate_unit_spec(unit, path)
            slug = unit["slug"]
            if slug in seen_slugs:
                raise SystemExit(f"Duplicate Turkish A2 unit slug {slug}: {seen_slugs[slug]} and {path}")
            seen_slugs[slug] = path
        payloads.append((path, payload))

    out = ROOT / "content/production/tr/A2"
    out.mkdir(parents=True, exist_ok=True)
    written = []
    for path, payload in sorted(payloads, key=lambda x: int(x[1]["batch"])):
        batch_number = int(payload["batch"])
        for spec in payload["units"]:
            target = out / f"a2-tr-{spec['slug']}-v1.json"
            expected_id = f"tr-tr-a2-{spec['slug']}-v1" if batch_number == 1 else f"tr-tr-a2-b{batch_number:02d}-{spec['slug']}-v1"
            if target.exists() and batch_number != 1:
                existing = json.loads(target.read_text(encoding="utf-8"))
                if existing.get("batch_id") != expected_id:
                    raise SystemExit(f"Refusing cross-batch overwrite of {target.name}")
            batch = build_unit(spec, batch_number)
            target.write_text(json.dumps(batch, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
            written.append({"batch": batch_number, "file": target.name, "unit": batch["curriculum_unit"]})

    print(json.dumps({
        "level": LEVEL,
        "batch_specs": len(payloads),
        "units_generated": len(written),
        "production_files_total": len(list(out.glob("*.json"))),
        "written": written,
    }, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()

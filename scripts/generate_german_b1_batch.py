#!/usr/bin/env python3
"""Generate one incremental German B1 batch from compact hand-authored specs.

Each spec becomes one production curriculum unit with three lessons. The script
only expands authored material into the canonical batch schema; it does not use
an external model or network service.
"""
from __future__ import annotations

import argparse
import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]


def safe(value: str) -> str:
    return re.sub(r"[^a-z0-9]+", "_", value.lower()).strip("_")


def noun_lemma(term: str) -> str:
    for article in ("der ", "die ", "das "):
        if term.startswith(article):
            return term[len(article):]
    return term


def status(data: dict) -> dict:
    data["status"] = "validated"
    return data


def feedback(fa: str, de: str) -> dict:
    return {
        "retry_tip_fa": "به معنی و ساختار جمله دقت کن و دوباره امتحان کن.",
        "explanation_fa": f"مدل طبیعی این درس: {de} — {fa}",
        "model_answer": de,
    }


def build_unit(spec: dict) -> dict:
    slug = spec["slug"]
    unit_slug = f"b1-de-{slug}"
    prefix = safe(slug)
    items: list[dict] = []
    concept_slugs: dict[str, str] = {}

    for idx, row in enumerate(spec["vocab"], 1):
        key, de, fa, pos, lesson, *rest = row
        gender = rest[0] if rest else None
        concept_slug = f"de_b1_{prefix}_{safe(key)}"
        concept_slugs[key] = concept_slug
        lesson_key = f"{unit_slug}-{lesson:02d}"
        concept = {
            "slug": concept_slug,
            "lesson_key": lesson_key,
            "concept_type": "lexical",
            "part_of_speech": pos,
            "forms": {"de": de},
            "translations": {"fa": fa},
            "cefr": "B1",
            "topic": spec["topic"],
            "tags": ["core", "b1", "high_frequency"],
        }
        items.append({"kind": "concept", "external_id": f"c_{prefix}_{idx:02d}", "data": status(concept)})

        lemma = noun_lemma(de) if pos == "noun" else de
        lexeme = {
            "lesson_key": lesson_key,
            "lemma": lemma,
            "display_lemma": lemma,
            "language": "de",
            "language_variant": "de-DE",
            "part_of_speech": pos,
            "concept_refs": [concept_slug],
            "cefr": "B1",
        }
        if gender:
            lexeme["grammatical_gender"] = gender
        lexeme_id = f"lx_{prefix}_{idx:02d}"
        items.append({"kind": "lexeme", "external_id": lexeme_id, "data": status(lexeme)})

        features = {"gender": gender} if gender else {}
        word_form = {
            "lesson_key": lesson_key,
            "lexeme_ref": lexeme_id,
            "surface_form": lemma,
            "display_form": lemma,
            "grammatical_features": features,
            "is_lemma": True,
            "is_preferred": True,
            "cefr": "B1",
        }
        items.append({"kind": "word_form", "external_id": f"wf_{prefix}_{idx:02d}", "data": status(word_form)})

    utterances = []
    for idx, row in enumerate(spec["utterances"], 1):
        key, de, fa, intent, refs, lesson = row
        utterances.append({"key": key, "de": de, "fa": fa, "lesson": lesson})
        data = {
            "lesson_key": f"{unit_slug}-{lesson:02d}",
            "text": {"de": de},
            "translations": {"fa": fa},
            "intent": intent,
            "concept_refs": [concept_slugs[r] for r in refs],
            "cefr": "B1",
            "topic": spec["topic"],
            "register": "neutral",
        }
        items.append({"kind": "utterance", "external_id": f"u_{prefix}_{idx:02d}", "data": status(data)})

    for idx, row in enumerate(spec["grammar"], 1):
        key, title, rule, fa, examples, lesson = row
        data = {
            "lesson_key": f"{unit_slug}-{lesson:02d}",
            "slug": f"{unit_slug}-{safe(key)}",
            "title": title,
            "rule_summary": rule,
            "explanation": {"fa": fa},
            "examples": [{"de": de, "fa": pfa} for de, pfa in examples],
            "cefr": "B1",
        }
        items.append({"kind": "grammar_point", "external_id": f"g_{prefix}_{idx:02d}", "data": status(data)})

    for idx, row in enumerate(spec["dialogues"], 1):
        title, setting, turns, lesson = row
        chars = []
        turn_rows = []
        for order, (speaker, de, fa) in enumerate(turns, 1):
            if speaker not in chars:
                chars.append(speaker)
            turn_rows.append({"order": order, "speaker": speaker, "text": de, "translation_fa": fa})
        data = {
            "lesson_key": f"{unit_slug}-{lesson:02d}",
            "title": title,
            "setting": setting,
            "cefr": "B1",
            "topic": spec["topic"],
            "characters": chars,
            "turns": turn_rows,
        }
        items.append({"kind": "dialogue", "external_id": f"d_{prefix}_{idx:02d}", "data": status(data)})

    # Five varied practice activities per lesson: recognition, listening,
    # speaking, translation and sentence construction.
    for lesson in (1, 2, 3):
        lesson_utts = [u for u in utterances if u["lesson"] == lesson]
        a, b = lesson_utts[:2]
        others = [u for u in utterances if u["key"] != a["key"]]
        de_options = [a["de"]] + [u["de"] for u in others[:3]]
        fa_options = [a["fa"]] + [u["fa"] for u in others[:3]]
        lesson_key = f"{unit_slug}-{lesson:02d}"
        base = f"ex_{prefix}_{lesson:02d}"

        items.append({"kind": "exercise", "external_id": base + "_mc", "data": status({
            "lesson_key": lesson_key,
            "exercise_type": "multiple_choice",
            "prompt": {"fa": f"کدام جملهٔ آلمانی یعنی «{a['fa']}»؟"},
            "options": de_options,
            "answer": {"value": a["de"]},
            "difficulty": 3,
            "cefr": "B1",
            "feedback": feedback(a["fa"], a["de"]),
        })})
        items.append({"kind": "exercise", "external_id": base + "_listen", "data": status({
            "lesson_key": lesson_key,
            "exercise_type": "listening",
            "prompt": {"instruction_fa": "گوش کن و نزدیک‌ترین معنی را انتخاب کن.", "audio_text": a["de"]},
            "options": fa_options,
            "answer": {"value": a["fa"]},
            "difficulty": 3,
            "cefr": "B1",
            "feedback": {**feedback(a["fa"], a["de"]), "transcript_de": a["de"]},
        })})
        items.append({"kind": "exercise", "external_id": base + "_speak", "data": status({
            "lesson_key": lesson_key,
            "exercise_type": "speaking",
            "prompt": {"instruction_fa": "جمله را با صدای بلند و طبیعی بگو.", "value": b["de"]},
            "answer": {"expected_text": b["de"]},
            "difficulty": 3,
            "cefr": "B1",
            "feedback": feedback(b["fa"], b["de"]),
        })})
        items.append({"kind": "exercise", "external_id": base + "_trans", "data": status({
            "lesson_key": lesson_key,
            "exercise_type": "translation",
            "prompt": {"fa": b["fa"], "instruction_fa": "این جمله را به آلمانی ترجمه کن."},
            "answer": {"value": b["de"]},
            "difficulty": 3,
            "cefr": "B1",
            "feedback": feedback(b["fa"], b["de"]),
        })})
        tokens = a["de"].split()
        shuffled = tokens[1:] + tokens[:1] if len(tokens) > 1 else tokens
        items.append({"kind": "exercise", "external_id": base + "_build", "data": status({
            "lesson_key": lesson_key,
            "exercise_type": "sentence_building",
            "prompt": {"instruction_fa": "کلمات را مرتب کن تا جملهٔ درست ساخته شود.", "tokens": shuffled},
            "answer": {"tokens": tokens, "value": a["de"]},
            "difficulty": 3,
            "cefr": "B1",
            "feedback": feedback(a["fa"], a["de"]),
        })})

    return {
        "batch_id": f"de-de-b1-{slug}-v1",
        "course": "fa-de-de",
        "learner_language": "fa",
        "learner_variant": "fa-IR",
        "target_language": "de",
        "target_variant": "de-DE",
        "cefr": "B1",
        "curriculum_unit": unit_slug,
        "generator": "gpt-5.6-sol:german-b1-batch-v1",
        "items": items,
    }


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--batch", type=int, default=1)
    args = parser.parse_args()
    spec_dir = ROOT / "content" / "specs" / "de" / "B1" / f"batch-{args.batch:02d}"
    out_dir = ROOT / "content" / "production" / "de" / "B1"
    paths = sorted(spec_dir.glob("*.json"))
    if len(paths) != 10:
        raise SystemExit(f"Expected exactly 10 specs in {spec_dir}, found {len(paths)}")
    out_dir.mkdir(parents=True, exist_ok=True)
    written = []
    for path in paths:
        spec = json.loads(path.read_text(encoding="utf-8"))
        batch = build_unit(spec)
        out = out_dir / f"b1-de-{spec['slug']}-v1.json"
        out.write_text(json.dumps(batch, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
        written.append({"file": out.name, "items": len(batch["items"])})
    print(json.dumps({"level": "B1", "batch": args.batch, "units": len(written), "written": written}, ensure_ascii=False))


if __name__ == "__main__":
    main()

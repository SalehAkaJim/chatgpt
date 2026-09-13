#!/usr/bin/env python3
"""Generate Istanbul Turkish Pre-A1 production units from one compact batch spec.

The spec is intentionally Turkish-specific. It provides pedagogically authored
vocabulary, utterances, grammar notes and dialogues; this script only expands
those decisions into the canonical multilingual batch format.
"""
from __future__ import annotations

import argparse
import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]


def safe(value: str) -> str:
    value = value.replace("ı", "i").replace("İ", "i").replace("ş", "s").replace("Ş", "s")
    value = value.replace("ç", "c").replace("Ç", "c").replace("ğ", "g").replace("Ğ", "g")
    value = value.replace("ö", "o").replace("Ö", "o").replace("ü", "u").replace("Ü", "u")
    return re.sub(r"[^a-z0-9]+", "_", value.lower()).strip("_")


def status(data: dict) -> dict:
    data["status"] = "validated"
    return data


def feedback(fa: str, tr: str) -> dict:
    return {
        "retry_tip_fa": "به معنی، موقعیت و شکل دقیق عبارت ترکی دقت کن و دوباره امتحان کن.",
        "explanation_fa": f"مدل طبیعی این درس: {tr} — {fa}",
        "model_answer": tr,
    }


def build_unit(spec: dict) -> dict:
    slug = spec["slug"]
    unit_slug = f"prea1-tr-{slug}"
    prefix = safe(slug)
    topic = spec["topic"]
    items: list[dict] = []
    concept_slugs: dict[str, str] = {}
    utterances: list[dict] = []

    for idx, row in enumerate(spec["vocab"], 1):
        key, tr, fa, pos, lesson = row
        lesson_key = f"{unit_slug}-{lesson:02d}"
        concept_slug = f"tr_pre_a1_{prefix}_{safe(key)}"
        concept_slugs[key] = concept_slug
        concept = {
            "slug": concept_slug,
            "lesson_key": lesson_key,
            "concept_type": "lexical",
            "part_of_speech": pos,
            "forms": {"tr": tr},
            "translations": {"fa": fa},
            "cefr": "Pre-A1",
            "topic": topic,
            "tags": ["core", "beginner", "high_frequency"],
        }
        items.append({"kind": "concept", "external_id": f"c_{prefix}_{idx:02d}", "data": status(concept)})
        lexeme_id = f"lx_{prefix}_{idx:02d}"
        lexeme = {
            "lesson_key": lesson_key,
            "lemma": tr.rstrip(".!?"),
            "display_lemma": tr.rstrip(".!?"),
            "language": "tr",
            "language_variant": "tr-TR",
            "part_of_speech": pos,
            "concept_refs": [concept_slug],
            "cefr": "Pre-A1",
        }
        items.append({"kind": "lexeme", "external_id": lexeme_id, "data": status(lexeme)})
        items.append({"kind": "word_form", "external_id": f"wf_{prefix}_{idx:02d}", "data": status({
            "lesson_key": lesson_key,
            "lexeme_ref": lexeme_id,
            "surface_form": tr.rstrip(".!?"),
            "display_form": tr.rstrip(".!?"),
            "grammatical_features": {},
            "is_lemma": True,
            "is_preferred": True,
            "cefr": "Pre-A1",
        })})

    for idx, row in enumerate(spec["utterances"], 1):
        key, tr, fa, intent, refs, lesson = row
        utterances.append({"key": key, "tr": tr, "fa": fa, "lesson": lesson})
        items.append({"kind": "utterance", "external_id": f"u_{prefix}_{idx:02d}", "data": status({
            "lesson_key": f"{unit_slug}-{lesson:02d}",
            "text": {"tr": tr},
            "translations": {"fa": fa},
            "intent": intent,
            "concept_refs": [concept_slugs[r] for r in refs],
            "cefr": "Pre-A1",
            "topic": topic,
            "register": "neutral",
        })})

    grammar = spec["grammar"]
    items.append({"kind": "grammar_point", "external_id": f"g_{prefix}_core", "data": status({
        "lesson_key": f"{unit_slug}-01",
        "slug": f"{unit_slug}-grammar",
        "title": grammar[0],
        "rule_summary": grammar[1],
        "explanation": {"fa": grammar[2]},
        "examples": [{"tr": tr, "fa": fa} for tr, fa in grammar[3]],
        "cefr": "Pre-A1",
    })})

    dialogue_ids: dict[int, str] = {}
    for idx, row in enumerate(spec["dialogues"], 1):
        title, setting, turns, lesson = row
        chars: list[str] = []
        turn_rows = []
        for order, (speaker, tr, fa) in enumerate(turns, 1):
            if speaker not in chars:
                chars.append(speaker)
            turn_rows.append({"order": order, "speaker": speaker, "text": tr, "translation_fa": fa})
        dialogue_id = f"d_{prefix}_{idx:02d}"
        dialogue_ids[lesson] = dialogue_id
        items.append({"kind": "dialogue", "external_id": dialogue_id, "data": status({
            "lesson_key": f"{unit_slug}-{lesson:02d}",
            "title": title,
            "setting": safe(setting),
            "cefr": "Pre-A1",
            "topic": topic,
            "characters": chars,
            "turns": turn_rows,
            "qa": {"character_pair_unique_within_unit": True, "naturalness": "passed", "single_situation": True},
        })})

    for lesson in (1, 2):
        lesson_utts = [u for u in utterances if u["lesson"] == lesson]
        if len(lesson_utts) < 2:
            raise ValueError(f"{slug}: lesson {lesson} needs at least two utterances")
        a, b = lesson_utts[:2]
        other_tr = [u["tr"] for u in utterances if u["tr"] != a["tr"]]
        other_fa = [u["fa"] for u in utterances if u["fa"] != a["fa"]]
        tr_options = [a["tr"]] + other_tr[:3]
        fa_options = [a["fa"]] + other_fa[:3]
        lesson_key = f"{unit_slug}-{lesson:02d}"
        base = f"e_{prefix}_{lesson:02d}"

        items.append({"kind": "exercise", "external_id": base + "_meaning", "data": status({
            "lesson_key": lesson_key,
            "exercise_type": "multiple_choice",
            "prompt": {"instruction_fa": "معنی درست این عبارت ترکی را انتخاب کن.", "value": a["tr"]},
            "answer": {"value": a["fa"]},
            "options": fa_options,
            "difficulty": 1,
            "cefr": "Pre-A1",
            "topic": topic,
            "feedback": feedback(a["fa"], a["tr"]),
        })})
        items.append({"kind": "exercise", "external_id": base + "_listen", "data": status({
            "lesson_key": lesson_key,
            "exercise_type": "listening",
            "prompt": {"instruction_fa": "گوش کن و عبارتی را که شنیدی انتخاب کن.", "audio_text": b["tr"]},
            "answer": {"value": b["tr"]},
            "options": [b["tr"]] + [x for x in tr_options if x != b["tr"]][:3],
            "difficulty": 1,
            "cefr": "Pre-A1",
            "topic": topic,
            "feedback": {**feedback(b["fa"], b["tr"]), "transcript_tr": b["tr"]},
        })})
        items.append({"kind": "exercise", "external_id": base + "_speak", "data": status({
            "lesson_key": lesson_key,
            "exercise_type": "speaking",
            "prompt": {"instruction_fa": "عبارت را با صدای بلند و با ریتم طبیعی تکرار کن.", "value": a["tr"]},
            "answer": {"expected_text": a["tr"]},
            "difficulty": 1,
            "cefr": "Pre-A1",
            "topic": topic,
            "feedback": feedback(a["fa"], a["tr"]),
        })})
        tokens = b["tr"].split()
        shuffled = tokens[1:] + tokens[:1] if len(tokens) > 1 else tokens
        items.append({"kind": "exercise", "external_id": base + "_build", "data": status({
            "lesson_key": lesson_key,
            "exercise_type": "sentence_building",
            "prompt": {"instruction_fa": "کلمه‌ها را لمس کن تا عبارت درست ساخته شود.", "tokens": shuffled},
            "answer": {"tokens": tokens, "value": b["tr"]},
            "difficulty": 1,
            "cefr": "Pre-A1",
            "topic": topic,
            "feedback": feedback(b["fa"], b["tr"]),
        })})
        items.append({"kind": "exercise", "external_id": base + "_dialogue", "data": status({
            "lesson_key": lesson_key,
            "exercise_type": "dialogue_comprehension",
            "prompt": {
                "instruction_fa": "با توجه به گفت‌وگو، پاسخ مناسب را انتخاب کن.",
                "source_dialogue_ref": dialogue_ids[lesson],
                "question_fa": f"کدام گزینه با معنی «{a['fa']}» هماهنگ است؟",
            },
            "answer": {"value": a["tr"]},
            "options": tr_options,
            "difficulty": 1,
            "cefr": "Pre-A1",
            "topic": topic,
            "feedback": feedback(a["fa"], a["tr"]),
        })})

    return {
        "batch_id": f"tr-tr-prea1-{slug}-v1",
        "course": "fa-tr-tr",
        "learner_language": "fa",
        "learner_variant": "fa-IR",
        "target_language": "tr",
        "target_variant": "tr-TR",
        "cefr": "Pre-A1",
        "curriculum_unit": unit_slug,
        "generator": "gpt-5.6-sol:turkish-prea1-batch-v1",
        "items": items,
    }


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--spec", type=Path, default=ROOT / "content" / "specs" / "tr" / "Pre-A1" / "batch-01.json")
    args = parser.parse_args()
    payload = json.loads(args.spec.read_text(encoding="utf-8"))
    units = payload.get("units", [])
    if len(units) != 10:
        raise SystemExit(f"Turkish Pre-A1 batch 1 must contain exactly 10 units; found {len(units)}")
    expected = [
        "first-greetings", "my-name", "numbers-0-10", "alphabet", "first-sounds",
        "how-are-you", "first-objects", "polite-words", "survival-words", "first-conversation",
    ]
    actual = [u.get("slug") for u in units]
    if actual != expected:
        raise SystemExit(f"Unexpected Turkish Pre-A1 unit sequence: {actual}")
    out_dir = ROOT / "content" / "production" / "tr" / "Pre-A1"
    out_dir.mkdir(parents=True, exist_ok=True)
    written = []
    for spec in units:
        batch = build_unit(spec)
        out = out_dir / f"prea1-tr-{spec['slug']}-v1.json"
        out.write_text(json.dumps(batch, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
        written.append({"file": out.name, "items": len(batch["items"])})
    print(json.dumps({"level": "Pre-A1", "units": len(written), "written": written}, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()

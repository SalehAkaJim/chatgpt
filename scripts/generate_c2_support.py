#!/usr/bin/env python3
from __future__ import annotations

import json
from pathlib import Path

from scripts import generate_c1_support as c1

# Reuse the mature C1 batch builder, grammar bank, exercise templates and
# dialogue/cast rotation, while lifting the generated level to C2.
# C2-specific difficulty comes from the lexical, pragmatic, rhetorical and
# discourse demands authored in the unit specifications below.
V = c1.V
U = c1.U


ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "content" / "production" / "en" / "C2"
CEFR = "C2"


PROMPTS = [
    ("What do you make of the way this is being framed?", "از نحوه مطرح شدن این موضوع چه برداشتی داری؟", "Is there another interpretation we should keep in view?", "تفسیر دیگه‌ای هست که باید در نظر داشته باشیم؟"),
    ("Which assumption is doing most of the work here?", "کدوم فرض بیشترین نقش رو در این استدلال داره؟", "How would the conclusion change if that assumption failed?", "اگر اون فرض برقرار نباشه نتیجه چطور عوض می‌شه؟"),
    ("Where do you think the strongest part of the case is?", "فکر می‌کنی قوی‌ترین بخش استدلال کجاست؟", "And where would you qualify it?", "و کجاش رو با احتیاط یا قید بیشتری بیان می‌کردی؟"),
    ("How would you put that more precisely?", "چطور اون نکته رو دقیق‌تر بیان می‌کردی؟", "What distinction matters most here?", "مهم‌ترین تمایز اینجا چیه؟"),
    ("What is the practical implication of that point?", "پیامد عملی اون نکته چیه؟", "Does the evidence justify going that far?", "آیا شواهد واقعاً چنین نتیجه‌ای رو توجیه می‌کنه؟"),
    ("How would you respond without making the disagreement personal?", "چطور جواب می‌دادی بدون اینکه مخالفت شخصی بشه؟", "What could you concede while still holding your position?", "چی رو می‌تونی بپذیری و در عین حال موضعت رو حفظ کنی؟"),
]

SETTINGS = [
    "strategy meeting", "seminar break", "podcast planning call",
    "project review", "quiet cafe", "professional workshop",
]


def dialogues_for(unit_index: int, title: str, utterances: list[dict]):
    dialogues = []
    for lesson in range(1, 4):
        pair = c1.PAIR_ROTATION[(unit_index * 3 + lesson - 3) % len(c1.PAIR_ROTATION)]
        p = PROMPTS[(unit_index + lesson - 2) % len(PROMPTS)]
        first = utterances[(lesson - 1) * 2]
        second = utterances[(lesson - 1) * 2 + 1]
        dialogues.append(c1.D(
            f"scene_{lesson}",
            f"{title}: part {lesson}",
            SETTINGS[(unit_index + lesson - 2) % len(SETTINGS)],
            [pair[0], pair[1]],
            [
                c1.T(pair[0], p[0], p[1]),
                c1.T(pair[1], first["en"], first["fa"]),
                c1.T(pair[0], p[2], p[3]),
                c1.T(pair[1], second["en"], second["fa"]),
            ],
            lesson,
        ))
    return dialogues


def make_spec(**kwargs):
    # Reviewed units use connected exchanges at the source, not stitched prompts.
    # Units outside the current authored scope retain their existing content.
    path = ROOT / 'content/enrichment/en/c2-dialogue-overrides.json'
    patches = json.loads(path.read_text()) if path.exists() else {}
    prefix = 'd_' + kwargs['slug'].replace('-', '_') + '_scene_'
    selected = {key: value for key, value in patches.items() if key.startswith(prefix)}
    if selected:
        if set(selected) != {prefix + str(i) for i in range(1, 4)}:
            raise ValueError(kwargs['slug'] + ': all three authored dialogues are required')
        dialogues = []
        for lesson in range(1, 4):
            data = selected[prefix + str(lesson)]
            turns = data['turns']
            dialogues.append(c1.D(f'scene_{lesson}', data['title'], data['setting'],
                list(dict.fromkeys(t['speaker'] for t in turns)),
                [c1.T(t['speaker'], t['text'], t['translation_fa']) for t in turns], lesson))
    else:
        dialogues = dialogues_for(kwargs['index'], kwargs['title'], kwargs['utterances'])
    return c1.make_spec(**kwargs, dialogues=dialogues)


def build_c2(spec: dict) -> dict:
    previous = c1.CEFR
    try:
        c1.CEFR = CEFR
        batch = c1.build_c1(spec)
    finally:
        c1.CEFR = previous

    # Keep the exact canonical batch schema used by C1/B2. The C2 design
    # intent lives in the curriculum seed rather than a new top-level field.
    batch["generator"] = "gpt-5.6-sol:golden-dataset-c2-v1"
    for item in batch.get("items", []):
        if item.get("kind") == "exercise":
            item.get("data", {})["difficulty"] = 5
    return batch


def write_units(units: list[dict]):
    OUT.mkdir(parents=True, exist_ok=True)
    written = []
    for spec in units:
        path = OUT / spec["file"]
        path.write_text(json.dumps(build_c2(spec), ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
        written.append(path)
        print(path)
    return written

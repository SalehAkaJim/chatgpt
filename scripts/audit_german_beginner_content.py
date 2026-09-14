#!/usr/bin/env python3
"""Cross-batch QA for German Pre-A1 + A1 production content."""
from __future__ import annotations
import json
from pathlib import Path
from collections import Counter

ROOT = Path(__file__).resolve().parents[1]
EXPECTED = {
    "Pre-A1": {
        "prea1-de-first-greetings": 2,
        "prea1-de-my-name": 2,
        "prea1-de-about-me": 2,
        "prea1-de-numbers-0-10": 2,
        "prea1-de-real-life-numbers": 2,
        "prea1-de-alphabet": 2,
        "prea1-de-letter-names": 2,
        "prea1-de-script-sound-bridge": 2,
        "prea1-de-first-sounds": 2,
        "prea1-de-first-objects": 2,
        "prea1-de-forms-signs": 2,
        "prea1-de-classroom": 2,
        "prea1-de-meaning-help": 1,
        "prea1-de-survival-words": 2,
        "prea1-de-first-conversation": 2,
        "prea1-de-ready-for-a1": 2,
        "prea1-de-real-world-gate": 2,
    },
    "A1": {"a1-de-greetings": 2, "a1-de-introductions": 2, "a1-de-spelling": 2, "a1-de-numbers": 2, "a1-de-countries": 2, "a1-de-polite": 2, "a1-de-family": 2, "a1-de-articles": 2, "a1-de-possessions": 2, "a1-de-routine": 3, "a1-de-time": 2, "a1-de-separable-verbs": 2, "a1-de-food": 3, "a1-de-cafe": 3, "a1-de-accusative": 2, "a1-de-home": 3, "a1-de-locations": 2, "a1-de-shopping": 2, "a1-de-prices": 2, "a1-de-town": 2, "a1-de-directions": 3, "a1-de-transport": 2, "a1-de-likes": 2, "a1-de-hobbies": 2, "a1-de-modal-verbs": 3, "a1-de-work-study": 2, "a1-de-describing": 2, "a1-de-weather": 2, "a1-de-health": 2, "a1-de-plans": 3},
}

DIALOGUE_OPTIONAL_UNITS = {"prea1-de-script-sound-bridge"}

errors = []
summary = {}
all_batches = []
for level, units in EXPECTED.items():
    directory = ROOT / "content" / "production" / "de" / level
    paths = sorted(directory.glob("*.json"))
    batches = [json.loads(p.read_text(encoding="utf-8")) for p in paths]
    by_unit = {b.get("curriculum_unit"): (p,b) for p,b in zip(paths,batches)}
    missing = sorted(set(units) - set(by_unit))
    extra = sorted(set(by_unit) - set(units))
    if missing: errors.append(f"{level} missing units: {missing}")
    if extra: errors.append(f"{level} unexpected units: {extra}")
    for unit, expected_lessons in units.items():
        if unit not in by_unit: continue
        p,b = by_unit[unit]
        if b.get("course") != "fa-de-de" or b.get("target_variant") != "de-DE":
            errors.append(f"{p} wrong course/variant")
        if b.get("cefr") != level:
            errors.append(f"{p} wrong CEFR {b.get('cefr')}")
        ids=[x.get("external_id") for x in b.get("items",[]) if x.get("external_id")]
        dup=[k for k,v in Counter(ids).items() if v>1]
        if dup: errors.append(f"{p} duplicate external IDs: {dup[:5]}")
        lessons=[]
        dialogues=0
        exercises=Counter()
        open_writing=0
        personalized_speaking=0
        visual_tasks=0
        for item in b.get("items",[]):
            d=item.get("data",{})
            lk=d.get("lesson_key")
            if lk and lk not in lessons: lessons.append(lk)
            status=d.get("status","generated")
            if status not in {"validated","approved"}:
                errors.append(f"{p} non-final status {status} in {item.get('external_id')}")
            if item.get("kind")=="utterance":
                if not (d.get("text") or {}).get("de"):
                    errors.append(f"{p} utterance missing German text")
                if not (d.get("translations") or {}).get("fa"):
                    errors.append(f"{p} utterance missing Persian translation")
            if item.get("kind")=="dialogue":
                dialogues += 1
                for turn in d.get("turns",[]):
                    if not turn.get("translation_fa"):
                        errors.append(f"{p} dialogue turn missing Persian translation")
            if item.get("kind")=="exercise":
                typ=d.get("exercise_type")
                exercises[typ] += 1
                if typ=="writing" and (d.get("answer") or {}).get("evaluation_mode")=="rubric": open_writing += 1
                if typ=="speaking" and (d.get("prompt") or {}).get("personalized") is True: personalized_speaking += 1
                if (d.get("prompt") or {}).get("visual_asset"): visual_tasks += 1
        if len(lessons) != expected_lessons:
            errors.append(f"{p} expected {expected_lessons} lessons, found {len(lessons)}: {lessons}")
        if unit not in DIALOGUE_OPTIONAL_UNITS and dialogues < expected_lessons:
            errors.append(f"{p} needs >=1 dialogue per lesson; found {dialogues}")
        if exercises["listening"] < 1:
            errors.append(f"{p} needs listening coverage")
        if exercises["speaking"] < 1:
            errors.append(f"{p} needs speaking coverage")
        if unit=="prea1-de-real-world-gate" and (open_writing < 1 or personalized_speaking < 1 or visual_tasks < 1):
            errors.append(f"{p} final gate must include open writing, personalized speaking and visual reading")
        all_batches.append((level,p,b))
    summary[level]={"files":len(paths),"units":len(by_unit),"items":sum(len(b.get("items",[])) for b in batches)}

batch_ids=[b.get("batch_id") for _,_,b in all_batches]
dups=[k for k,v in Counter(batch_ids).items() if v>1]
if dups: errors.append("duplicate batch IDs: "+repr(dups))

sequence=[]
for level,p,b in all_batches:
    dialogs=[x for x in b.get("items",[]) if x.get("kind")=="dialogue"]
    dialogs.sort(key=lambda x:x.get("data",{}).get("lesson_key",""))
    for d in dialogs:
        chars=d["data"].get("characters",[])
        if len(chars)>=2:
            sequence.append((level,d["data"].get("lesson_key"),tuple(sorted(chars[:2]))))
for prev,cur in zip(sequence,sequence[1:]):
    if prev[2]==cur[2]:
        errors.append(f"consecutive lessons reuse pair {prev[2]}: {prev[1]} -> {cur[1]}")

print(json.dumps({"summary":summary,"batches":len(all_batches),"errors":errors,"valid":not errors}, ensure_ascii=False, indent=2))
if errors:
    raise SystemExit(1)

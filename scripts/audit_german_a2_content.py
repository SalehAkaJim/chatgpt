#!/usr/bin/env python3
"""Cross-batch QA for complete German A2 production content."""
from __future__ import annotations
import json
from collections import Counter
from pathlib import Path
ROOT = Path(__file__).resolve().parents[1]

directory = ROOT / "content" / "production" / "de" / "A2"
paths = sorted(directory.glob("*.json"))
batches = [json.loads(p.read_text(encoding="utf-8")) for p in paths]
expected = {'a2-de-catching-up': 2, 'a2-de-personal-background': 2, 'a2-de-family-relationships': 2, 'a2-de-home-neighborhood': 3, 'a2-de-routines-frequency': 2, 'a2-de-last-weekend': 3, 'a2-de-past-events': 3, 'a2-de-sequencing-time': 2, 'a2-de-future-arrangements': 2, 'a2-de-plans-intentions': 3, 'a2-de-invitations': 3, 'a2-de-seasons-weather-plans': 2, 'a2-de-food-quantities': 3, 'a2-de-cooking-recipes': 3, 'a2-de-restaurant-service': 3, 'a2-de-clothes-sizes': 2, 'a2-de-compare-products': 3, 'a2-de-best-choice': 2, 'a2-de-trip-planning': 3, 'a2-de-tickets-timetables': 3, 'a2-de-accommodation': 3, 'a2-de-travel-problems': 3, 'a2-de-detailed-directions': 3, 'a2-de-work-duties': 3, 'a2-de-study-habits': 3, 'a2-de-abilities-skills': 2, 'a2-de-symptoms-pharmacy': 3, 'a2-de-appointments-advice': 2, 'a2-de-personality-appearance': 3, 'a2-de-describe-places': 3, 'a2-de-experiences': 3, 'a2-de-phone-messages': 3, 'a2-de-online-communication': 2, 'a2-de-opinions-reasons': 3, 'a2-de-everyday-problems': 3, 'a2-de-integrated-capstone': 4}
by_unit = {b.get("curriculum_unit"): (p,b) for p,b in zip(paths,batches)}
errors=[]
missing=sorted(set(expected)-set(by_unit))
extra=sorted(set(by_unit)-set(expected))
if missing: errors.append(f"missing units: {missing}")
if extra: errors.append(f"unexpected units: {extra}")
if len(paths) != 36: errors.append(f"expected 36 files, found {len(paths)}")

sequence=[]
all_ids=[]
lesson_total=0
item_total=0
for unit, lessons_expected in expected.items():
    if unit not in by_unit: continue
    p,b=by_unit[unit]
    item_total += len(b.get("items",[]))
    if b.get("course")!="fa-de-de" or b.get("target_variant")!="de-DE" or b.get("cefr")!="A2":
        errors.append(f"{p}: wrong course/variant/level")
    ids=[x.get("external_id") for x in b.get("items",[]) if x.get("external_id")]
    dup=[k for k,v in Counter(ids).items() if v>1]
    if dup: errors.append(f"{p}: duplicate external IDs {dup[:5]}")
    all_ids.extend(f"{b.get('batch_id')}:{x}" for x in ids)
    lesson_keys=[]
    coverage={}
    for item in b.get("items",[]):
        d=item.get("data",{})
        lk=d.get("lesson_key")
        if lk and lk not in lesson_keys:
            lesson_keys.append(lk)
        if lk:
            coverage.setdefault(lk,Counter())
        if d.get("status","generated") not in {"validated","approved"}:
            errors.append(f"{p}: non-final status in {item.get('external_id')}")
        if item.get("kind")=="utterance":
            if not (d.get("text") or {}).get("de") or not (d.get("translations") or {}).get("fa"):
                errors.append(f"{p}: broken bilingual utterance {item.get('external_id')}")
        elif item.get("kind")=="dialogue":
            chars=d.get("characters",[])
            if len(chars)>=2 and lk:
                sequence.append((lk,tuple(sorted(chars[:2]))))
            if lk: coverage[lk]["dialogue"] += 1
            for turn in d.get("turns",[]):
                if not turn.get("text") or not turn.get("translation_fa"):
                    errors.append(f"{p}: incomplete dialogue turn {item.get('external_id')}")
        elif item.get("kind")=="exercise":
            et=d.get("exercise_type")
            if lk: coverage[lk][et]+=1
    if len(lesson_keys)!=lessons_expected:
        errors.append(f"{p}: expected {lessons_expected} lessons, found {len(lesson_keys)}")
    lesson_total += len(lesson_keys)
    for lk in lesson_keys:
        c=coverage.get(lk,Counter())
        for req in ("dialogue","listening","speaking","multiple_choice","translation"):
            if c[req] < 1:
                errors.append(f"{p}: {lk} missing {req}")

batch_ids=[b.get("batch_id") for b in batches]
dupb=[k for k,v in Counter(batch_ids).items() if v>1]
if dupb: errors.append(f"duplicate batch IDs {dupb}")
for prev,cur in zip(sequence,sequence[1:]):
    if prev[1]==cur[1]:
        errors.append(f"consecutive lessons reuse pair {prev[1]}: {prev[0]} -> {cur[0]}")
if lesson_total != 97: errors.append(f"expected 97 lessons, found {lesson_total}")

print(json.dumps({
    "level":"A2","files":len(paths),"units":len(by_unit),"lessons":lesson_total,
    "items":item_total,"errors":errors,"valid":not errors
},ensure_ascii=False,indent=2))
if errors: raise SystemExit(1)

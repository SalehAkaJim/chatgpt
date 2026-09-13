#!/usr/bin/env python3
"""Generate Istanbul Turkish A2 batch 1 from the authored Turkish-specific spec."""
from __future__ import annotations
import argparse, copy, json
from pathlib import Path
import generate_turkish_a1_batch as base

ROOT = Path(__file__).resolve().parents[1]
LEVEL = "A2"
EXPECTED = [
    "past-weekend","habits-and-frequency","comparisons","polite-requests",
    "appointments-and-plans","health-and-advice","travel-and-hotel",
    "reasons-and-results","choices-and-preferences","a2-city-day-capstone",
]

# Reuse the stable Turkish item builder, then normalize every level-specific identifier.
base.LEVEL = LEVEL


def rename_level_ids(value):
    if isinstance(value, str):
        if value == "a1":
            return "a2"
        return value.replace("a1-tr-", "a2-tr-").replace("tr_a1_", "tr_a2_")
    if isinstance(value, list):
        return [rename_level_ids(x) for x in value]
    if isinstance(value, dict):
        return {k: rename_level_ids(v) for k, v in value.items()}
    return value


def rotate_health_dialogue(spec):
    """Avoid repeating the Elif/Mert pair across the appointments→health lesson boundary."""
    spec = copy.deepcopy(spec)
    if spec.get("slug") != "health-and-advice":
        return spec
    turns = spec["dialogues"][0][2]
    mapping = {"Mert": "Deniz", "Elif": "Zeynep"}
    for turn in turns:
        turn[0] = mapping.get(turn[0], turn[0])
    return spec


def main():
    ap=argparse.ArgumentParser()
    ap.add_argument("--spec",type=Path,default=ROOT/"content/specs/tr/A2/batch-01.json")
    args=ap.parse_args()
    payload=json.loads(args.spec.read_text(encoding="utf-8"))
    units=payload.get("units",[])
    actual=[u.get("slug") for u in units]
    if payload.get("level") != LEVEL or payload.get("variant") != "tr-TR":
        raise SystemExit("Unexpected Turkish A2 spec metadata")
    if len(units)!=10 or actual!=EXPECTED:
        raise SystemExit(f"Unexpected Turkish A2 batch 1 sequence: {actual}")
    out=ROOT/"content/production/tr/A2"
    out.mkdir(parents=True,exist_ok=True)
    written=[]
    for raw_spec in units:
        spec=rotate_health_dialogue(raw_spec)
        batch=rename_level_ids(base.build_unit(spec))
        batch["batch_id"]=f"tr-tr-a2-{spec['slug']}-v1"
        batch["cefr"]=LEVEL
        batch["curriculum_unit"]=f"a2-tr-{spec['slug']}"
        batch["generator"]="gpt-5.6-sol:turkish-a2-batch-v1"
        for item in batch["items"]:
            data=item.get("data",{})
            if item.get("kind") == "exercise":
                data["difficulty"] = max(2, int(data.get("difficulty", 2)))
        p=out/f"a2-tr-{spec['slug']}-v1.json"
        p.write_text(json.dumps(batch,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
        written.append(p.name)
    print(json.dumps({"level":LEVEL,"units":len(written),"files":written},ensure_ascii=False,indent=2))

if __name__=="__main__": main()

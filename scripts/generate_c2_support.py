#!/usr/bin/env python3
from __future__ import annotations

import json
from pathlib import Path

from scripts import generate_c1_support as c1

# Reuse the mature C1 batch builder, grammar bank, exercise templates and
# dialogue/cast rotation, while lifting the generated level metadata to C2.
# C2-specific difficulty comes from the lexical, pragmatic, rhetorical and
# discourse demands authored in the unit specifications below.
V = c1.V
U = c1.U
make_spec = c1.make_spec

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "content" / "production" / "en" / "C2"
CEFR = "C2"


def build_c2(spec: dict) -> dict:
    previous = c1.CEFR
    try:
        c1.CEFR = CEFR
        batch = c1.build_c1(spec)
    finally:
        c1.CEFR = previous

    batch["generator"] = "gpt-5.6-sol:golden-dataset-c2-v1"
    batch.setdefault("metadata", {})["level_design"] = (
        "C2 mastery: effortless precision, pragmatic inference, idiomatic range, "
        "rhetorical control, synthesis, mediation and register-sensitive discourse"
    )
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

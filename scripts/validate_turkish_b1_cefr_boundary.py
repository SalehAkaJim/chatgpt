#!/usr/bin/env python3
"""Cumulative Turkish B1/B2 boundary review.

B1 may require connected narration, realistic -sa/-se conditions, reported
information and supported opinions. It must not require B2-only counterfactuals,
sustained concession/qualification or abstract multi-source synthesis.
High-confidence morphology fails CI; ambiguous lexical signals are review notes.
"""
from __future__ import annotations
import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
B1 = ROOT / "content/production/tr/B1"
B2_SPEC = ROOT / "content/specs/tr/B2/batch-01.json"

HIGH = [
    ("counterfactual -saydı/-seydi", re.compile(r"\b[\wçğıöşüÇĞİÖŞÜ]+(?:saydı|seydi|saydık|seydik|saydınız|seydiniz|salardı|selerdi)\b", re.I)),
    ("counterfactual olsaydı family", re.compile(r"\bolsa(?:ydı|ydık|ydınız|lardı)\b", re.I)),
    ("B2 concession -mak/-mekle birlikte", re.compile(r"\b\w+(?:makla|mekle)\s+birlikte\b", re.I)),
]
REVIEW = [
    ("formal conditional bargain", re.compile(r"\bşartıyla\b", re.I)),
    ("formal exchange negotiation", re.compile(r"\bkarşılığında\b", re.I)),
    ("highly qualified stance", re.compile(r"\bbütünüyle\b.*\bkatıl", re.I)),
]
TASK_HIGH = [
    re.compile(r"خلاف.?واقع"),
    re.compile(r"چند\s*منبع.*(?:ترکیب|سنتز)"),
    re.compile(r"استدلال\s*انتزاعی"),
]


def target_strings(obj):
    if isinstance(obj, dict):
        for k, v in obj.items():
            if k in {"tr", "text", "audio_text", "expected_text", "model_text"} and isinstance(v, str):
                yield v
            else:
                yield from target_strings(v)
    elif isinstance(obj, list):
        for v in obj:
            yield from target_strings(v)


def persian_prompts(obj):
    if isinstance(obj, dict):
        for k, v in obj.items():
            if (k.endswith("_fa") or k == "instruction_fa") and isinstance(v, str):
                yield v
            else:
                yield from persian_prompts(v)
    elif isinstance(obj, list):
        for v in obj:
            yield from persian_prompts(v)


def main():
    next_level = json.loads(B2_SPEC.read_text(encoding="utf-8"))
    b2_focus = [u.get("grammar_focus", "") for u in next_level.get("units", [])]
    if not b2_focus:
        raise SystemExit("B2 comparison curriculum is empty; boundary review cannot run")

    files = sorted(B1.glob("*.json"))
    if not files:
        raise SystemExit("No Turkish B1 production files")
    failures=[]; notes=[]
    for path in files:
        payload=json.loads(path.read_text(encoding="utf-8"))
        if payload.get("cefr") != "B1":
            failures.append(f"{path.name}: wrong CEFR metadata")
            continue
        for text in target_strings(payload):
            for label, pattern in HIGH:
                if pattern.search(text): failures.append(f"{path.name}: {label}: {text}")
            for label, pattern in REVIEW:
                if pattern.search(text): notes.append(f"{path.name}: REVIEW {label}: {text}")
        for text in persian_prompts(payload):
            if any(p.search(text) for p in TASK_HIGH):
                failures.append(f"{path.name}: B2-level task demand: {text}")

    print(json.dumps({"b1_files":len(files),"b2_units_compared":len(b2_focus),"b2_grammar_focus":b2_focus,"review_notes":notes}, ensure_ascii=False, indent=2))
    if failures:
        raise SystemExit("Turkish B1/B2 CEFR boundary failed:\n- " + "\n- ".join(failures))
    print("Turkish B1/B2 CEFR boundary: PASS")

if __name__ == "__main__": main()

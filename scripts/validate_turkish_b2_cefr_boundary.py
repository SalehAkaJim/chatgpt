#!/usr/bin/env python3
"""Cumulative Turkish B2/C1 educational boundary gate.

B2 may require sustained connected discourse on concrete and moderately abstract
professional/social topics: nuanced stance, reasons/consequences, realistic and
hypothetical alternatives, negotiation, mediation, evidence-based inference,
concession, register adaptation and independent production.

C1 remains the next-level home for systematic epistemic calibration, layered
argument architecture, fine-grained reporting/implicature control, dense
nominalisation, institutional rhetoric, multi-source policy synthesis and
expert-level sustained abstraction.  This validator uses the authored C1 specs
as the comparison curriculum and fails on high-confidence C1 task demands in
B2 rather than relying on CEFR metadata alone.
"""
from __future__ import annotations

import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
B2_DIR = ROOT / "content/production/tr/B2"
B2_SPEC_DIR = ROOT / "content/specs/tr/B2"
C1_SPEC_DIR = ROOT / "content/specs/tr/C1"

# These are explicit next-level capability families already authored in the
# Turkish C1 curriculum.  Keeping them here makes accidental removal/renaming of
# the comparison curriculum visible in CI instead of silently weakening the gate.
EXPECTED_C1_CAPABILITIES = {
    "evidential-calibration",
    "argument-architecture",
    "reported-stance",
    "register-shifting",
    "nominalization-density",
    "concession-reframing",
    "institutional-mediation",
    "idiomatic-precision",
    "policy-synthesis",
    "c1-expert-roundtable-capstone",
}

# High-confidence task demands that should remain productive C1 requirements.
# Ordinary B2 inference, evidence, mediation and register change are deliberately
# not banned: only the denser/sustained next-level combinations fail the gate.
C1_TASK_PATTERNS = [
    ("multi-source synthesis", re.compile(r"(?:چند\s*منبع|چندین\s*منبع).*(?:ترکیب|سنتز|یکپارچه)", re.I)),
    ("layered argument architecture", re.compile(r"(?:معماری|ساختار)\s*استدلال|استدلال\s*لایه", re.I)),
    ("systematic epistemic calibration", re.compile(r"(?:درجه|سطح)\s*(?:قطعیت|اطمینان).*(?:مشاهده|استنباط|شاهد|مدرک)", re.I)),
    ("quote-paraphrase-implicature control", re.compile(r"(?:نقل.?قول|بازگویی).*(?:تلویح|استنباط).*(?:تمایز|تفکیک|فرق)", re.I)),
    ("dense nominalisation", re.compile(r"اسم.?سازی\s*(?:فشرده|متراکم)|تراکم\s*اسم.?سازی", re.I)),
    ("expert policy synthesis", re.compile(r"(?:سیاست|خط.?مشی).*(?:چند\s*منبع|سنتز).*(?:استدلال|ارزیابی)", re.I)),
    ("expert roundtable performance", re.compile(r"میزگرد\s*(?:تخصصی|کارشناسی).*(?:استدلال|جمع.?بندی|دفاع)", re.I)),
]

# Highly characteristic C1 formulations from the authored next-level spec.
# Exact phrases are used rather than broad morphology so normal B2 Turkish does
# not become a false positive.
C1_TARGET_PHRASES = [
    "kesin demek için erken",
    "eldeki verilere göre",
    "doğrudan kanıttan çok",
    "iddianın güçlü olması",
    "kapsamını genellememek gerekir",
    "açıkça söylemese de",
    "anlamı çarpıtabilir",
]


def walk_strings(obj):
    if isinstance(obj, dict):
        for value in obj.values():
            yield from walk_strings(value)
    elif isinstance(obj, list):
        for value in obj:
            yield from walk_strings(value)
    elif isinstance(obj, str):
        yield obj


def persian_task_strings(obj):
    if isinstance(obj, dict):
        for key, value in obj.items():
            if isinstance(value, str) and (
                key.endswith("_fa")
                or key in {"instruction_fa", "writing_prompt_fa", "speaking_prompt_fa"}
            ):
                yield value
            else:
                yield from persian_task_strings(value)
    elif isinstance(obj, list):
        for value in obj:
            yield from persian_task_strings(value)


def load_specs(directory: Path, level: str) -> list[tuple[Path, dict]]:
    rows: list[tuple[Path, dict]] = []
    for path in sorted(directory.glob("batch-*.json")):
        payload = json.loads(path.read_text(encoding="utf-8"))
        if payload.get("level") != level or payload.get("variant") != "tr-TR":
            raise SystemExit(f"{path}: unexpected Turkish {level} metadata")
        if not payload.get("units"):
            raise SystemExit(f"{path}: empty Turkish {level} batch")
        rows.append((path, payload))
    if not rows:
        raise SystemExit(f"No Turkish {level} comparison specs found in {directory}")
    return rows


def main() -> None:
    b2_specs = load_specs(B2_SPEC_DIR, "B2")
    c1_specs = load_specs(C1_SPEC_DIR, "C1")

    c1_units = {
        unit.get("slug")
        for _path, payload in c1_specs
        for unit in payload.get("units", [])
        if unit.get("slug")
    }
    missing_reference = sorted(EXPECTED_C1_CAPABILITIES - c1_units)
    if missing_reference:
        raise SystemExit(
            "Turkish C1 comparison curriculum lost expected boundary capabilities: "
            + ", ".join(missing_reference)
        )

    c1_focus = [
        {
            "slug": unit.get("slug"),
            "objective": unit.get("objective", ""),
            "grammar_focus": unit.get("grammar_focus", ""),
        }
        for _path, payload in c1_specs
        for unit in payload.get("units", [])
    ]
    if not any(row["objective"] and row["grammar_focus"] for row in c1_focus):
        raise SystemExit("C1 comparison curriculum lacks objective/grammar evidence")

    files = sorted(B2_DIR.glob("*.json"))
    if not files:
        raise SystemExit("No Turkish B2 production files")

    expected_b2_units = {
        f"b2-tr-{unit['slug']}"
        for _path, payload in b2_specs
        for unit in payload.get("units", [])
    }
    failures: list[str] = []
    produced_units: set[str] = set()
    independent_output_files = 0

    for path in files:
        payload = json.loads(path.read_text(encoding="utf-8"))
        if payload.get("cefr") != "B2":
            failures.append(f"{path.name}: wrong CEFR metadata {payload.get('cefr')!r}")
            continue
        unit = payload.get("curriculum_unit")
        if not isinstance(unit, str) or not unit.startswith("b2-tr-"):
            failures.append(f"{path.name}: invalid B2 curriculum_unit {unit!r}")
        else:
            produced_units.add(unit)

        has_independent_output = False
        for item in payload.get("items", []):
            data = item.get("data", {}) if isinstance(item, dict) else {}
            if item.get("kind") == "exercise" and data.get("exercise_type") in {"writing", "speaking"}:
                prompt = data.get("prompt", {})
                answer = data.get("answer", {})
                if prompt.get("personalized") and answer.get("evaluation_mode") == "rubric":
                    has_independent_output = True
        if has_independent_output:
            independent_output_files += 1

        lowered_strings = [s.casefold() for s in walk_strings(payload)]
        for phrase in C1_TARGET_PHRASES:
            p = phrase.casefold()
            if any(p in text for text in lowered_strings):
                failures.append(f"{path.name}: reserved C1 formulation appears productively: {phrase}")

        for text in persian_task_strings(payload):
            for label, pattern in C1_TASK_PATTERNS:
                if pattern.search(text):
                    failures.append(f"{path.name}: C1-level task demand ({label}): {text}")

    missing_prod = sorted(expected_b2_units - produced_units)
    extra_prod = sorted(produced_units - expected_b2_units)
    if missing_prod:
        failures.append("B2 spec units missing from production: " + ", ".join(missing_prod))
    if extra_prod:
        failures.append("B2 production units missing from specs: " + ", ".join(extra_prod))

    # New expansion batches are intentionally expected to contribute genuine
    # independent output. Legacy two-lesson units are preserved and do not need
    # retrofitting merely to satisfy a round count.
    expansion_units = sum(
        len(payload.get("units", []))
        for path, payload in b2_specs
        if path.name != "batch-01.json"
    )
    if expansion_units and independent_output_files < expansion_units:
        failures.append(
            "Not every Turkish B2 expansion unit materialized rubric-based independent output: "
            f"expansion_units={expansion_units} files_with_independent_output={independent_output_files}"
        )

    report = {
        "b2_spec_batches": len(b2_specs),
        "b2_expected_units": len(expected_b2_units),
        "b2_production_files": len(files),
        "b2_files_with_independent_output": independent_output_files,
        "c1_units_compared": len(c1_units),
        "c1_reserved_capabilities": sorted(EXPECTED_C1_CAPABILITIES),
    }
    print(json.dumps(report, ensure_ascii=False, indent=2))
    if failures:
        raise SystemExit("Turkish B2/C1 CEFR boundary failed:\n- " + "\n- ".join(failures))
    print("Turkish B2/C1 CEFR boundary: PASS")


if __name__ == "__main__":
    main()

#!/usr/bin/env python3
"""Run the Italian A1 generator after deterministic repair of known cross-unit concept links.

The compact batch generator resolves concept_refs only inside the current unit. The authored
utterances remain unchanged; only metadata links to concepts introduced in earlier units are
removed from the temporary generation spec.
"""
from __future__ import annotations
import json
import subprocess
import sys
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SOURCE = ROOT / "content/specs/it/A1/batch-01.json"
KNOWN_CROSS_UNIT_REFS = {
    ("articles-and-objects", "u4"): {"non"},
    ("a1-day-capstone", "u3"): {"centro"},
}

payload = json.loads(SOURCE.read_text(encoding="utf-8"))
repairs = []
for unit in payload.get("units", []):
    slug = unit.get("slug")
    for row in unit.get("utterances", []):
        key = row[0]
        allowed = KNOWN_CROSS_UNIT_REFS.get((slug, key), set())
        if not allowed:
            continue
        before = list(row[4])
        row[4] = [ref for ref in row[4] if ref not in allowed]
        if row[4] != before:
            repairs.append({"unit": slug, "utterance": key, "removed_cross_unit_refs": sorted(set(before) - set(row[4]))})

expected = sorted((u, k, sorted(v)) for (u, k), v in KNOWN_CROSS_UNIT_REFS.items())
actual = sorted((r["unit"], r["utterance"], r["removed_cross_unit_refs"]) for r in repairs)
if actual != expected:
    raise SystemExit(f"Italian A1 deterministic repair mismatch: expected={expected}, actual={actual}")

with tempfile.NamedTemporaryFile("w", suffix=".json", encoding="utf-8", delete=False) as fh:
    json.dump(payload, fh, ensure_ascii=False, indent=2)
    fh.write("\n")
    temp = Path(fh.name)
try:
    print(json.dumps({"deterministic_repairs": repairs}, ensure_ascii=False))
    subprocess.run([sys.executable, str(ROOT / "scripts/generate_italian_a1_batch.py"), "--spec", str(temp)], check=True)
finally:
    temp.unlink(missing_ok=True)

#!/usr/bin/env python3
"""Apply final linguistic refinements to the deterministic Pre-A1 upgrade source.

The generator remains the source of truth; after refining it, regenerate the four
completed Pre-A1 courses so future runs preserve the same high-quality wording.
"""
from __future__ import annotations

import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
GEN = ROOT / "scripts" / "upgrade_prea1_cefr.py"

text = GEN.read_text(encoding="utf-8")
replacements = {
    '"origin_a": "Ich komme aus Iran."': '"origin_a": "Ich komme aus dem Iran."',
    '"self_model": "Ich heiße Sara. Ich komme aus Iran. Mir geht\'s gut."': '"self_model": "Ich heiße Sara. Ich komme aus dem Iran. Mir geht\'s gut."',
    '"name_a": "Ben Sara."': '"name_a": "Benim adım Sara."',
    '"self_model": "Ben Sara. İranlıyım. İyiyim."': '"self_model": "Benim adım Sara. İranlıyım. İyiyim."',
    '"form_model": "이름: 사라\\n나라: 이란\\n전화번호: 0912 345 6789"': '"form_model": "이름: 사라\\n나라: 이란\\n전화번호: 010 1234 5678"',
}
for old, new in replacements.items():
    if old not in text and new not in text:
        raise SystemExit(f"Expected generator text not found: {old}")
    text = text.replace(old, new)
GEN.write_text(text, encoding="utf-8")

subprocess.run(["python", str(GEN)], cwd=ROOT, check=True)
print("Applied German article, Turkish self-introduction, and Korean phone-format refinements.")

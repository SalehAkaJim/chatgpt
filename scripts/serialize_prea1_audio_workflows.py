#!/usr/bin/env python3
"""Reduce English/German Pre-A1 audio workflows to one ElevenLabs request at a time."""
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
for rel in [
    ".github/workflows/generate-english-audio.yml",
    ".github/workflows/generate-german-audio.yml",
]:
    path = ROOT / rel
    text = path.read_text(encoding="utf-8")
    text2 = text.replace("CONTENT_TTS_CONCURRENCY: '2'", "CONTENT_TTS_CONCURRENCY: '1'")
    text2 = text2.replace("--confirm-paid-generation --concurrency 2", "--confirm-paid-generation --concurrency 1")
    if text2 == text and "CONTENT_TTS_CONCURRENCY: '1'" not in text:
        raise SystemExit(f"Expected concurrency settings not found in {rel}")
    path.write_text(text2, encoding="utf-8")
    print(f"serialized {rel}")

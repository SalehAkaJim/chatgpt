#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path

# Nova Persian text must use Persian orthography only. Arabic-only hamza forms,
# Arabic kaf/yeh variants, Arabic diacritics and presentation forms are blocked.
EXPLICIT_FORBIDDEN = {
    "\u0621": "standalone hamza",
    "\u0623": "alef with hamza above",
    "\u0624": "waw with hamza",
    "\u0625": "alef with hamza below",
    "\u0626": "yeh with hamza",
    "\u0629": "ta marbuta",
    "\u0643": "Arabic kaf; use Persian kaf U+06A9",
    "\u0649": "alef maksura",
    "\u064a": "Arabic yeh; use Persian yeh U+06CC",
    "\u0671": "alef wasla",
    "\u06c0": "heh with yeh above",
    "\u0640": "tatweel",
}


def forbidden_reason(ch: str) -> str | None:
    if ch in EXPLICIT_FORBIDDEN:
        return EXPLICIT_FORBIDDEN[ch]
    cp = ord(ch)
    if 0x064B <= cp <= 0x065F:
        return "Arabic diacritic / tanwin / tashkeel"
    if cp == 0x0670:
        return "superscript alef"
    if 0x06D6 <= cp <= 0x06ED:
        return "Quranic/Arabic annotation mark"
    if 0xFE70 <= cp <= 0xFEFF:
        return "Arabic presentation-form character"
    return None


def scan_text(text: str, source: str) -> list[dict]:
    errors: list[dict] = []
    line = 1
    col = 0
    for ch in text:
        if ch == "\n":
            line += 1
            col = 0
            continue
        col += 1
        reason = forbidden_reason(ch)
        if reason:
            errors.append({
                "source": source,
                "line": line,
                "column": col,
                "character": ch,
                "codepoint": f"U+{ord(ch):04X}",
                "reason": reason,
            })
    return errors


def main() -> int:
    p = argparse.ArgumentParser(description="Fail when Nova Persian-facing files contain forbidden Arabic orthographic characters.")
    p.add_argument("paths", nargs="+", type=Path)
    args = p.parse_args()

    errors: list[dict] = []
    for path in args.paths:
        if not path.is_file():
            errors.append({"source": str(path), "reason": "file not found"})
            continue
        errors.extend(scan_text(path.read_text(encoding="utf-8"), str(path)))

    report = {
        "status": "PASS" if not errors else "FAIL",
        "checked": [str(p) for p in args.paths],
        "errors": errors,
    }
    print(json.dumps(report, ensure_ascii=False, indent=2))
    return 0 if not errors else 2


if __name__ == "__main__":
    sys.exit(main())

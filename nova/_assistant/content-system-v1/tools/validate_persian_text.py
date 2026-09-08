#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
import sys
import unicodedata
from pathlib import Path

# Nova Persian text uses Persian orthography by default. Arabic-only hamza forms,
# Arabic kaf/yeh variants, Arabic diacritics and presentation forms are blocked
# unless an exact complete word is explicitly allowlisted with a reason.
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


def is_word_char(ch: str) -> bool:
    return unicodedata.category(ch)[0] in {"L", "M"}


def containing_word(text: str, index: int) -> str:
    start = index
    end = index + 1
    while start > 0 and is_word_char(text[start - 1]):
        start -= 1
    while end < len(text) and is_word_char(text[end]):
        end += 1
    return text[start:end]


def load_exceptions(path: Path | None) -> tuple[dict[str, dict], list[dict]]:
    if path is None:
        return {}, []
    if not path.is_file():
        return {}, [{"source": str(path), "reason": "exceptions file not found"}]

    try:
        raw = json.loads(path.read_text(encoding="utf-8"))
    except Exception as exc:
        return {}, [{"source": str(path), "reason": f"invalid exceptions JSON: {exc}"}]

    rows = raw.get("exceptions")
    if not isinstance(rows, list):
        return {}, [{"source": str(path), "reason": "exceptions must be an array"}]

    result: dict[str, dict] = {}
    errors: list[dict] = []
    for idx, row in enumerate(rows):
        label = f"{path}:exceptions[{idx}]"
        if not isinstance(row, dict):
            errors.append({"source": label, "reason": "exception entry must be an object"})
            continue
        term = row.get("term")
        reason = row.get("reason")
        allowed = row.get("allowedCharacters")
        if not isinstance(term, str) or not term.strip():
            errors.append({"source": label, "reason": "term is required"})
            continue
        if term in result:
            errors.append({"source": label, "reason": f"duplicate exception term: {term}"})
            continue
        if not isinstance(reason, str) or not reason.strip():
            errors.append({"source": label, "reason": "reason is required"})
        if not isinstance(allowed, list) or not allowed:
            errors.append({"source": label, "reason": "allowedCharacters must be a non-empty array"})
            continue
        if any(not isinstance(ch, str) or len(ch) != 1 for ch in allowed):
            errors.append({"source": label, "reason": "each allowedCharacters entry must be one character"})
            continue
        forbidden_in_term = {ch for ch in term if forbidden_reason(ch)}
        if not forbidden_in_term:
            errors.append({"source": label, "reason": "exception term contains no otherwise-forbidden character"})
            continue
        if not forbidden_in_term.issubset(set(allowed)):
            missing = "".join(sorted(forbidden_in_term - set(allowed)))
            errors.append({"source": label, "reason": f"allowedCharacters does not cover all forbidden characters in term: {missing}"})
            continue
        result[term] = {"reason": reason.strip(), "allowedCharacters": set(allowed)}
    return result, errors


def scan_text(text: str, source: str, exceptions: dict[str, dict]) -> tuple[list[dict], list[dict]]:
    errors: list[dict] = []
    allowed_occurrences: list[dict] = []
    line = 1
    col = 0
    for index, ch in enumerate(text):
        if ch == "\n":
            line += 1
            col = 0
            continue
        col += 1
        reason = forbidden_reason(ch)
        if not reason:
            continue

        word = containing_word(text, index)
        exception = exceptions.get(word)
        if exception and ch in exception["allowedCharacters"]:
            allowed_occurrences.append({
                "source": source,
                "line": line,
                "column": col,
                "word": word,
                "character": ch,
                "codepoint": f"U+{ord(ch):04X}",
                "exceptionReason": exception["reason"],
            })
            continue

        errors.append({
            "source": source,
            "line": line,
            "column": col,
            "word": word,
            "character": ch,
            "codepoint": f"U+{ord(ch):04X}",
            "reason": reason,
        })
    return errors, allowed_occurrences


def main() -> int:
    p = argparse.ArgumentParser(description="Fail when Nova Persian-facing files contain forbidden Arabic orthographic characters unless an exact word-level exception exists.")
    p.add_argument("paths", nargs="+", type=Path)
    p.add_argument("--exceptions", type=Path)
    args = p.parse_args()

    exceptions, exception_errors = load_exceptions(args.exceptions)
    errors: list[dict] = list(exception_errors)
    allowed_occurrences: list[dict] = []

    for path in args.paths:
        if not path.is_file():
            errors.append({"source": str(path), "reason": "file not found"})
            continue
        found_errors, found_allowed = scan_text(path.read_text(encoding="utf-8"), str(path), exceptions)
        errors.extend(found_errors)
        allowed_occurrences.extend(found_allowed)

    report = {
        "status": "PASS" if not errors else "FAIL",
        "checked": [str(p) for p in args.paths],
        "exceptionsFile": str(args.exceptions) if args.exceptions else None,
        "allowedOccurrences": allowed_occurrences,
        "errors": errors,
    }
    print(json.dumps(report, ensure_ascii=False, indent=2))
    return 0 if not errors else 2


if __name__ == "__main__":
    sys.exit(main())

#!/usr/bin/env python3
from validate_persian_text import scan_text


def main() -> int:
    exceptions = {
        "رئیس": {
            "reason": "standard Persian spelling test fixture",
            "allowedCharacters": {"ئ"},
        }
    }

    errors, allowed = scan_text("رئیس", "fixture", exceptions)
    assert not errors, errors
    assert allowed and allowed[0]["word"] == "رئیس", allowed

    errors, allowed = scan_text("مسئول", "fixture", exceptions)
    assert errors and errors[0]["word"] == "مسئول", errors
    assert not allowed, allowed

    errors, allowed = scan_text("رئیس مسئول", "fixture", exceptions)
    assert len(allowed) == 1 and allowed[0]["word"] == "رئیس", allowed
    assert len(errors) == 1 and errors[0]["word"] == "مسئول", errors

    print("PASS: Persian orthography exceptions are exact-word only")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

#!/usr/bin/env python3
"""Turkish A2 CEFR boundary QA against the repository's authored B1 curriculum."""
from __future__ import annotations

import json
import re
from pathlib import Path
from typing import Any, Iterable

ROOT = Path(__file__).resolve().parents[1]
A2_SPEC_DIR = ROOT / "content/specs/tr/A2"
A2_PROD_DIR = ROOT / "content/production/tr/A2"
B1_SPEC_DIR = ROOT / "content/specs/tr/B1"

# Fixed, high-frequency chunks that may contain conditional-looking morphology without
# requiring productive control of the B1 conditional system.
SAFE_CONDITIONAL_CHUNKS = {
    "mümkünse",
    "istersen",
    "isterseniz",
    "yoksa",
}
SAFE_KEN_WORDS = {"erken"}

PLUPERFECT_EVIDENTIAL = re.compile(
    r"\b[\wçğıöşüÇĞİÖŞÜ]+(?:mıştı|mişti|muştu|müştü)(?:m|n|k|nız|niz|nuz|nüz|lar|ler)?\b",
    re.IGNORECASE,
)
KEN_FORM = re.compile(r"\b[\wçğıöşüÇĞİÖŞÜ]+(?:yken|ken)\b", re.IGNORECASE)
# High-confidence productive conditional shapes. Lexical/fixed chunks above are exempted.
CONDITIONAL_FORM = re.compile(
    r"\b[\wçğıöşüÇĞİÖŞÜ]+(?:maz|mez|ar|er|ır|ir|ur|ür|r|acak|ecek|ıyor|iyor|uyor|üyor|dı|di|du|dü|tı|ti|tu|tü)(?:sa|se)(?:m|n|k|nız|niz|nuz|nüz|lar|ler)?\b",
    re.IGNORECASE,
)

FORBIDDEN_TASK_MARKERS = (
    "coherent short story with background and interruption",
    "reported clauses with -dik",
    "report what someone said, heard or learned",
    "qualify certainty",
    "argument and evidence",
    "argument/evidence",
    "systematic conditional",
    "contingency plan",
    "multi-clause reformulation",
    "dolaylı anlatım",
)
KNOWN_LEAKS = (
    "çocukken",
    "ne sipariş etmiştiniz",
    "tavuk istemiştim",
    "düzelmezse",
    "düzelmezsem",
    "müze kapalı olursa",
)


def all_strings(value: Any) -> Iterable[str]:
    if isinstance(value, str):
        yield value
    elif isinstance(value, dict):
        for key, item in value.items():
            yield str(key)
            yield from all_strings(item)
    elif isinstance(value, list):
        for item in value:
            yield from all_strings(item)


def load_json(path: Path) -> Any:
    return json.loads(path.read_text(encoding="utf-8"))


def source_payloads() -> Iterable[tuple[Path, Any]]:
    for path in sorted(A2_SPEC_DIR.glob("*.json")):
        yield path, load_json(path)
    for path in sorted(A2_PROD_DIR.glob("*.json")):
        yield path, load_json(path)


def verify_b1_boundary_source() -> None:
    text = "\n".join(
        path.read_text(encoding="utf-8").lower()
        for path in sorted(B1_SPEC_DIR.glob("*.json"))
    )
    required = {
        "-ken": "B1 -ken background clauses",
        "conditional -sa/-se": "B1 conditional -sa/-se",
        "reported clauses with -dik": "B1 reported -DIK clauses",
    }
    missing = [label for marker, label in required.items() if marker not in text]
    if missing:
        raise SystemExit("Cannot establish A2/B1 boundary from current B1 specs: " + ", ".join(missing))


def inspect_text(path: Path, text: str, errors: list[str], warnings: list[str]) -> None:
    lowered = text.lower()
    for marker in KNOWN_LEAKS:
        if marker in lowered:
            errors.append(f"{path}: known B1 leakage remains: {marker!r} in {text!r}")

    for match in PLUPERFECT_EVIDENTIAL.finditer(text):
        errors.append(f"{path}: B1+ evidential/pluperfect form {match.group(0)!r} in {text!r}")

    for match in KEN_FORM.finditer(text):
        token = match.group(0).lower()
        if token not in SAFE_KEN_WORDS:
            errors.append(f"{path}: productive -ken form {match.group(0)!r} crosses into authored B1 scope")

    for match in CONDITIONAL_FORM.finditer(text):
        token = match.group(0).lower()
        if token in SAFE_CONDITIONAL_CHUNKS:
            continue
        errors.append(f"{path}: productive -sa/-se conditional candidate {match.group(0)!r} crosses into authored B1 scope")

    for marker in FORBIDDEN_TASK_MARKERS:
        if marker in lowered:
            errors.append(f"{path}: A2 task/grammar demand mirrors B1 marker {marker!r}: {text!r}")

    # Ambiguous morphology is reported for human review rather than blindly rejected.
    for token in re.findall(r"\b[\wçğıöşüÇĞİÖŞÜ]+(?:sa|se)(?:m|n|k|nız|niz|nuz|nüz|lar|ler)?\b", text, re.IGNORECASE):
        low = token.lower()
        if low in SAFE_CONDITIONAL_CHUNKS or CONDITIONAL_FORM.fullmatch(token):
            continue
        if len(low) >= 5:
            warnings.append(f"{path}: review conditional-looking token {token!r}")


def inspect_task_shape(path: Path, payload: Any, errors: list[str]) -> None:
    # Specs should keep A2 independent production short, concrete and rehearsable.
    if not isinstance(payload, dict):
        return
    units = payload.get("units", [])
    retrofits = payload.get("retrofits", [])
    for unit in [*units, *retrofits]:
        if not isinstance(unit, dict):
            continue
        prod = unit.get("production") or {}
        joined = " ".join(str(prod.get(k, "")) for k in ("writing_prompt_fa", "speaking_prompt_fa", "model_text"))
        lowered = joined.lower()
        if any(x in lowered for x in ("استدلال", "شواهد", "عدم قطعیت", "بازنویسی چندبندی", "گزارش غیرمستقیم")):
            errors.append(f"{path}:{unit.get('slug')}: production task exceeds concrete A2 boundary")


def main() -> None:
    verify_b1_boundary_source()
    errors: list[str] = []
    warnings: list[str] = []
    checked = 0
    for path, payload in source_payloads():
        inspect_task_shape(path, payload, errors)
        for text in all_strings(payload):
            checked += 1
            inspect_text(path, text, errors, warnings)

    print(json.dumps({
        "level": "A2",
        "next_level": "B1",
        "strings_checked": checked,
        "errors": errors,
        "warnings": sorted(set(warnings)),
        "safe_fixed_chunks": sorted(SAFE_CONDITIONAL_CHUNKS),
    }, ensure_ascii=False, indent=2))
    if errors:
        raise SystemExit(f"Turkish A2 CEFR boundary validation failed with {len(errors)} high-confidence issue(s)")


if __name__ == "__main__":
    main()

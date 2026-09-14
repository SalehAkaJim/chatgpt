#!/usr/bin/env python3
"""Turkish A2 CEFR boundary QA against the repository's authored B1 curriculum."""
from __future__ import annotations

import json
import re
import unicodedata
from pathlib import Path
from typing import Any, Iterable

ROOT = Path(__file__).resolve().parents[1]
A2_SPEC_DIR = ROOT / "content/specs/tr/A2"
A2_PROD_DIR = ROOT / "content/production/tr/A2"
B1_SPEC_DIR = ROOT / "content/specs/tr/B1"


def norm_token(value: str) -> str:
    """Casefold Turkish text and remove combining marks (notably dotted İ -> i)."""
    folded = unicodedata.normalize("NFKD", value.casefold())
    return "".join(ch for ch in folded if not unicodedata.combining(ch))


SAFE_CONDITIONAL_CHUNKS = {norm_token(x) for x in ("mümkünse", "istersen", "isterseniz", "yoksa")}
SAFE_CONDITIONAL_LOOKALIKES = {norm_token(x) for x in ("kısa",)}
ENGLISH_FALSE_POSITIVES = {
    "course", "discourse", "exercise", "purpose", "tense", "cause", "concise",
    "increase", "propose", "response", "use", "case", "phrase", "else",
}

PLUPERFECT_EVIDENTIAL = re.compile(
    r"\b[\wçğıöşüÇĞİÖŞÜ]+(?:mıştı|mişti|muştu|müştü)(?:m|n|k|nız|niz|nuz|nüz|lar|ler)?\b",
    re.IGNORECASE,
)
# Productive -ken patterns actually used for B1 background/interruption. Avoid false
# positives such as geciken (-An participle) and the lexical adverb erken.
KEN_FORM = re.compile(
    r"\b[\wçğıöşüÇĞİÖŞÜ]+(?:ırken|irken|urken|ürken|arken|erken|yken|acakken|ecekken)\b",
    re.IGNORECASE,
)
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
    "tanışırken",
    "ne sipariş etmiştiniz",
    "tavuk istemiştim",
    "düzelmezse",
    "düzelmezsem",
    "müze kapalı olursa",
    "başka bir oda varsa",
)


def all_strings(value: Any) -> Iterable[str]:
    if isinstance(value, str):
        yield value
    elif isinstance(value, dict):
        for item in value.values():
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
    text = "\n".join(path.read_text(encoding="utf-8").lower() for path in sorted(B1_SPEC_DIR.glob("*.json")))
    required = {
        "-ken": "B1 -ken background clauses",
        "conditional -sa/-se": "B1 conditional -sa/-se",
        "reported clauses with -dik": "B1 reported -DIK clauses",
    }
    missing = [label for marker, label in required.items() if marker not in text]
    if missing:
        raise SystemExit("Cannot establish A2/B1 boundary from current B1 specs: " + ", ".join(missing))


def morphology_candidate(token: str) -> bool:
    low = norm_token(token)
    return "_" not in low and low not in ENGLISH_FALSE_POSITIVES


def inspect_text(path: Path, text: str, errors: list[str], warnings: list[str]) -> None:
    lowered = text.lower()
    for marker in KNOWN_LEAKS:
        if marker in lowered:
            errors.append(f"{path}: known B1 leakage remains: {marker!r} in {text!r}")

    for match in PLUPERFECT_EVIDENTIAL.finditer(text):
        token = match.group(0)
        if morphology_candidate(token):
            errors.append(f"{path}: B1+ evidential/pluperfect form {token!r} in {text!r}")

    for match in KEN_FORM.finditer(text):
        token = match.group(0)
        if morphology_candidate(token) and norm_token(token) != "erken":
            errors.append(f"{path}: productive -ken form {token!r} crosses into authored B1 scope")

    for match in CONDITIONAL_FORM.finditer(text):
        token = match.group(0)
        low = norm_token(token)
        if low in SAFE_CONDITIONAL_CHUNKS or not morphology_candidate(token):
            continue
        errors.append(f"{path}: productive -sa/-se conditional candidate {token!r} crosses into authored B1 scope")

    for marker in FORBIDDEN_TASK_MARKERS:
        if marker in lowered:
            errors.append(f"{path}: A2 task/grammar demand mirrors B1 marker {marker!r}: {text!r}")

    # Only flag ambiguous conditional-looking tokens when Turkish orthography makes the
    # candidate meaningful; curated lexical lookalikes stay out of the review queue.
    for token in re.findall(r"\b[\wçğıöşüÇĞİÖŞÜ]+(?:sa|se)(?:m|n|k|nız|niz|nuz|nüz|lar|ler)?\b", text, re.IGNORECASE):
        low = norm_token(token)
        if (
            low in SAFE_CONDITIONAL_CHUNKS
            or low in SAFE_CONDITIONAL_LOOKALIKES
            or CONDITIONAL_FORM.fullmatch(token)
            or not morphology_candidate(token)
        ):
            continue
        if any(ch in low for ch in "çgıöşü"):
            warnings.append(f"{path}: review conditional-looking token {token!r}")


def inspect_task_shape(path: Path, payload: Any, errors: list[str]) -> None:
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

    errors = sorted(set(errors))
    warnings = sorted(set(warnings))
    print(json.dumps({
        "level": "A2",
        "next_level": "B1",
        "strings_checked": checked,
        "errors": errors,
        "warnings": warnings,
        "safe_fixed_chunks": sorted(SAFE_CONDITIONAL_CHUNKS),
        "safe_lexical_lookalikes": sorted(SAFE_CONDITIONAL_LOOKALIKES),
    }, ensure_ascii=False, indent=2))
    if errors:
        raise SystemExit(f"Turkish A2 CEFR boundary validation failed with {len(errors)} high-confidence issue(s)")


if __name__ == "__main__":
    main()

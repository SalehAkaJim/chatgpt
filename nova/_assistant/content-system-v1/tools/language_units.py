from __future__ import annotations

import re


def _meta(item: dict) -> dict:
    value = item.get("metadata")
    return value if isinstance(value, dict) else {}


def _has_lexicalization_evidence(meta: dict) -> bool:
    return bool(meta.get("referenceKey") or meta.get("lexicalized") is True)


def is_word_unit(item: dict) -> bool:
    """True only for units that belong in the reusable words/lexeme layer.

    Whitespace is not decisive. A real lexicalized unit can contain spaces, but
    compositional lesson phrases, social formulas and sentence frames are not words.
    Type labels such as expression/phrasal_verb are not evidence on their own.
    """
    kind = item.get("itemType")
    meta = _meta(item)
    if kind == "formula":
        return False
    if kind in {"expression", "phrasal_verb"}:
        return _has_lexicalization_evidence(meta)
    if kind != "word":
        return False

    form = str(item.get("displayForm") or "").strip()
    if not re.search(r"\s", form):
        return True
    # Multi-token words/lexemes are allowed only with positive lexicalization
    # evidence. Whitespace alone never turns a phrase into one vocabulary unit.
    return _has_lexicalization_evidence(meta)


def word_unit_errors(item: dict) -> list[str]:
    errors: list[str] = []
    kind = item.get("itemType")
    form = str(item.get("displayForm") or "").strip()
    meta = _meta(item)

    if kind == "formula" and meta.get("referenceKey"):
        errors.append("formula cannot use referenceKey to masquerade as a word")

    if kind == "word" and re.search(r"\s", form) and not is_word_unit(item):
        errors.append(
            "multi-token word requires lexicalization evidence (referenceKey or metadata.lexicalized=true)"
        )

    if kind in {"expression", "phrasal_verb"} and not is_word_unit(item):
        errors.append(
            f"{kind} requires lexicalization evidence (referenceKey or metadata.lexicalized=true)"
        )

    return errors

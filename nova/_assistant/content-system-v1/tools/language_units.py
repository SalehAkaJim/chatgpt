from __future__ import annotations

import re


def _meta(item: dict) -> dict:
    value = item.get("metadata")
    return value if isinstance(value, dict) else {}


def is_word_unit(item: dict) -> bool:
    """True only for units that belong in the reusable words/lexeme layer.

    Whitespace is not decisive. A real lexicalized unit can contain spaces, but
    compositional lesson phrases, social formulas and sentence frames are not words.
    """
    kind = item.get("itemType")
    meta = _meta(item)
    if kind == "formula":
        return False
    if kind == "phrasal_verb":
        return True
    if kind == "expression":
        return meta.get("lexicalized") is True
    if kind != "word":
        return False

    form = str(item.get("displayForm") or "").strip()
    if not re.search(r"\s", form):
        return True
    # Multi-token English words/lexemes are allowed only with positive evidence.
    # A reference sense or an explicit lexicalization assertion is evidence;
    # whitespace alone never is.
    return bool(meta.get("referenceKey") or meta.get("lexicalized") is True)


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

    if kind == "expression" and meta.get("lexicalized") is not True:
        errors.append("expression is not a word unless metadata.lexicalized=true")

    return errors

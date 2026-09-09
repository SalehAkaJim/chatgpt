from __future__ import annotations

import re


def _meta(item: dict) -> dict:
    value = item.get("metadata")
    return value if isinstance(value, dict) else {}


def _has_lexicalization_evidence(meta: dict) -> bool:
    if meta.get("referenceKey"):
        return True
    return meta.get("lexicalized") is True and bool(str(meta.get("lexicalizationEvidence") or "").strip())


def _looks_like_unreferenced_article_phrase(form: str, meta: dict) -> bool:
    # "a bus" / "the room" must never become words merely because an author
    # sets lexicalized=true. A trusted reference can still represent a genuinely
    # lexicalized article-initial unit when one exists.
    if meta.get("referenceKey"):
        return False
    return bool(re.match(r"^(?:a|an|the)\s+\S+", form.strip().lower()))


def is_word_unit(item: dict) -> bool:
    """True only for units that belong in the reusable words/lexeme layer.

    Whitespace is not decisive. A real lexicalized unit can contain spaces, but
    compositional lesson phrases, social formulas and sentence frames are not words.
    Type labels and a bare lexicalized=true flag are not evidence on their own.
    """
    kind = item.get("itemType")
    meta = _meta(item)
    form = str(item.get("displayForm") or "").strip()

    if kind == "formula":
        return False
    if kind in {"expression", "phrasal_verb"}:
        return _has_lexicalization_evidence(meta) and not _looks_like_unreferenced_article_phrase(form, meta)
    if kind != "word":
        return False
    if not re.search(r"\s", form):
        return True
    if _looks_like_unreferenced_article_phrase(form, meta):
        return False
    return _has_lexicalization_evidence(meta)


def word_unit_errors(item: dict) -> list[str]:
    errors: list[str] = []
    kind = item.get("itemType")
    form = str(item.get("displayForm") or "").strip()
    meta = _meta(item)

    if kind == "formula" and meta.get("referenceKey"):
        errors.append("formula cannot use referenceKey to masquerade as a word")

    if _looks_like_unreferenced_article_phrase(form, meta) and kind in {"word", "expression", "phrasal_verb"}:
        errors.append("ordinary article-led phrase requires trusted reference evidence; lexicalized=true alone is not sufficient")

    if kind == "word" and re.search(r"\s", form) and not is_word_unit(item):
        errors.append(
            "multi-token word requires referenceKey or metadata.lexicalized=true plus metadata.lexicalizationEvidence"
        )

    if kind in {"expression", "phrasal_verb"} and not is_word_unit(item):
        errors.append(
            f"{kind} requires referenceKey or metadata.lexicalized=true plus metadata.lexicalizationEvidence"
        )

    return errors

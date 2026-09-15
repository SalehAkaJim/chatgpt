#!/usr/bin/env python3
"""Shared canonical identity helpers for dictionary and lexical-linking data.

These keys are deliberately independent of batch IDs and database row IDs so a
fresh database import resolves the same lexical entity every time.
"""
from __future__ import annotations

import json
import re
import unicodedata
import uuid
from typing import Any

NS = uuid.UUID("78136b2a-8bcc-4dc4-a39a-a06302c04b8d")


def normalize(value: str | None) -> str:
    value = unicodedata.normalize("NFKC", value or "").replace("’", "'")
    return re.sub(r"\s+", " ", value.strip()).casefold()


def canonical_json(value: Any) -> str:
    return json.dumps(value, ensure_ascii=False, sort_keys=True, separators=(",", ":"))


def stable_uuid(kind: str, key: str) -> str:
    return str(uuid.uuid5(NS, f"{kind}:{key}"))


def lexeme_key(variant: str, lemma: str, part_of_speech: str | None) -> str:
    return f"{variant}|{normalize(lemma)}|{normalize(part_of_speech)}"


def word_form_key(
    variant: str,
    lemma: str,
    part_of_speech: str | None,
    surface_form: str,
    grammatical_features: dict[str, Any] | None,
) -> str:
    return (
        f"{lexeme_key(variant, lemma, part_of_speech)}|"
        f"{normalize(surface_form)}|{canonical_json(grammatical_features or {})}"
    )


def lexeme_uuid(variant: str, lemma: str, part_of_speech: str | None) -> str:
    return stable_uuid("lexeme", lexeme_key(variant, lemma, part_of_speech))


def word_form_uuid(
    variant: str,
    lemma: str,
    part_of_speech: str | None,
    surface_form: str,
    grammatical_features: dict[str, Any] | None,
) -> str:
    return stable_uuid(
        "word_form",
        word_form_key(variant, lemma, part_of_speech, surface_form, grammatical_features),
    )

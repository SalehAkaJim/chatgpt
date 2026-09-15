"""Compatibility adapter that gives the legacy level materializer canonical lexical IDs.

The shared materializer predates the app-dictionary identity contract and derives
word-form UUIDs from batch/external IDs. English reference imports install this
adapter before materialization so lexemes and word forms use the same batch-
independent UUID5 identities as scripts.lexical_identity and the dictionary.
"""
from __future__ import annotations

import json
from pathlib import Path
from typing import Any

from scripts.lexical_identity import lexeme_uuid, word_form_uuid


def build_identity_map(content_dir: Path, variant: str) -> dict[tuple[str, str], str]:
    result: dict[tuple[str, str], str] = {}
    for path in sorted(content_dir.glob("*.json")):
        batch = json.loads(path.read_text(encoding="utf-8"))
        batch_id = batch["batch_id"]
        lexemes: dict[str, dict[str, Any]] = {}
        for item in batch.get("items", []):
            if item.get("kind") == "lexeme" and item.get("external_id"):
                lexemes[str(item["external_id"])] = item.get("data") or {}

        for ext, data in lexemes.items():
            legacy_key = f"{variant}:{data['lemma']}:{data.get('part_of_speech', '')}"
            result[("lexeme", legacy_key)] = lexeme_uuid(
                variant, data["lemma"], data.get("part_of_speech")
            )

        for item in batch.get("items", []):
            if item.get("kind") != "word_form" or not item.get("external_id"):
                continue
            data = item.get("data") or {}
            lexeme = lexemes.get(str(data.get("lexeme_ref") or ""))
            if not lexeme:
                raise ValueError(
                    f"{path}: word_form {item.get('external_id')} has unresolved lexeme_ref {data.get('lexeme_ref')}"
                )
            legacy_key = f"{batch_id}:{item['external_id']}"
            result[("word_form", legacy_key)] = word_form_uuid(
                variant,
                lexeme["lemma"],
                lexeme.get("part_of_speech"),
                data["surface_form"],
                data.get("grammatical_features") or {},
            )
    return result


def install(materializer, content_dir: Path, variant: str = "en-US") -> dict[str, int]:
    identity_map = build_identity_map(content_dir, variant)
    base_stable = materializer.stable

    def canonical_stable(kind: str, key: str) -> str:
        return identity_map.get((kind, key)) or base_stable(kind, key)

    materializer.stable = canonical_stable
    return {
        "lexemes": sum(1 for kind, _ in identity_map if kind == "lexeme"),
        "word_forms": sum(1 for kind, _ in identity_map if kind == "word_form"),
    }

"""Frontend contract adapter for the Nova lesson read model.

Canonical lexical annotations are stored as Unicode code-point offsets because
that is stable across the multilingual content pipeline. Browser/React Native
JavaScript indexes strings in UTF-16 code units. The public payload therefore
exposes both coordinate systems so clients never have to guess or recompute the
mapping for astral Unicode characters.
"""
from __future__ import annotations

from typing import Any

from api.lesson_payload import LessonRepository as CanonicalLessonRepository


def utf16_offset(text: str, codepoint_offset: int) -> int:
    """Convert a Python/Unicode code-point offset to a UTF-16 code-unit offset."""
    if codepoint_offset < 0 or codepoint_offset > len(text):
        raise ValueError(f"Invalid code-point offset {codepoint_offset} for text length {len(text)}")
    return len(text[:codepoint_offset].encode("utf-16-le")) // 2


class LessonRepository(CanonicalLessonRepository):
    """Public frontend read model with explicit Unicode + UTF-16 span offsets."""

    def _annotations(
        self,
        lesson: dict[str, Any],
        source_column: str,
        source_id: bytes,
        source_text: str,
        source_path: str = "",
    ) -> list[dict[str, Any]]:
        annotations = super()._annotations(
            lesson,
            source_column,
            source_id,
            source_text,
            source_path,
        )
        for annotation in annotations:
            annotation["utf16_start"] = utf16_offset(source_text, int(annotation["start"]))
            annotation["utf16_end"] = utf16_offset(source_text, int(annotation["end"]))
        return annotations

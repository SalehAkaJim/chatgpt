#!/usr/bin/env python3
"""Deterministic lesson-delivery plan shared by importers and API tooling.

The canonical content model answers *what* belongs to a lesson. This module
answers *how* those items should be sequenced for the learner-facing experience.
It mirrors the proven Nova lesson-viewer flow, but produces stable semantic step
records so the frontend no longer has to infer lesson structure from raw batches.
"""
from __future__ import annotations

from collections import OrderedDict
from typing import Any, Iterable

EARLY_LEVELS = {"Pre-A1", "A1"}
STAGE_ORDER = {
    "context": 0,
    "understand": 1,
    "learn": 2,
    "speak": 3,
    "practice": 4,
    "conversation": 5,
    "review": 6,
}


def _item_id(item: dict[str, Any]) -> str:
    data = item.get("data") or {}
    return str(item.get("external_id") or data.get("slug") or "item")


def _chunks(values: list[dict[str, Any]], size: int) -> Iterable[list[dict[str, Any]]]:
    for index in range(0, len(values), size):
        yield values[index:index + size]


def _step(
    step_type: str,
    stage: str,
    ordinal: int,
    *,
    items: Iterable[dict[str, Any]] = (),
    exercises: Iterable[dict[str, Any]] = (),
    role: str = "primary",
    metadata: dict[str, Any] | None = None,
) -> dict[str, Any]:
    return {
        "step_key": f"{ordinal:02d}-{step_type}",
        "step_type": step_type,
        "stage": stage,
        "label_key": f"lesson.step.{step_type}",
        "items": [{"external_id": _item_id(item), "kind": item.get("kind"), "role": role} for item in items],
        "exercises": [{"external_id": _item_id(item), "role": role} for item in exercises],
        "metadata": metadata or {},
    }


def _vocabulary_items(items: list[dict[str, Any]]) -> list[dict[str, Any]]:
    """Return learner-facing lexical rows without duplicating concept + lexeme.

    A concept is still the semantic anchor, but when a lesson contains an
    explicit lexeme we render that canonical dictionary row instead of the
    compatibility concept form. Explicit word forms are kept as first-class
    teaching items so morphology can reach the frontend without being flattened
    back into a concept string.
    """
    represented_concepts: set[str] = set()
    for item in items:
        if item.get("kind") != "lexeme":
            continue
        for ref in (item.get("data") or {}).get("concept_refs", []):
            represented_concepts.add(str(ref))

    result: list[dict[str, Any]] = []
    for item in items:
        kind = item.get("kind")
        data = item.get("data") or {}
        if kind in {"lexeme", "word_form"}:
            result.append(item)
            continue
        if kind != "concept" or not data.get("forms"):
            continue
        concept_keys = {str(data.get("slug") or ""), _item_id(item)}
        if represented_concepts.isdisjoint(concept_keys):
            result.append(item)
    return result


def build_lesson_steps(items: list[dict[str, Any]], cefr: str) -> list[dict[str, Any]]:
    """Build the stable Nova lesson flow for one lesson's source items.

    Stage order is deliberately monotonic. A frontend may safely drive a stage
    rail from the stored sequence without handling regressions such as
    practice -> learn or conversation -> speak.
    """
    vocabulary = _vocabulary_items(items)
    utterances = [item for item in items if item.get("kind") == "utterance" and (item.get("data") or {}).get("text")]
    grammar = [item for item in items if item.get("kind") == "grammar_point"]
    dialogues = [item for item in items if item.get("kind") == "dialogue" and (item.get("data") or {}).get("turns")]
    exercises = [item for item in items if item.get("kind") == "exercise"]

    speaking = [item for item in exercises if (item.get("data") or {}).get("exercise_type") == "speaking"]
    comprehension_types = {"dialogue_comprehension", "listening", "multiple_choice"}
    comprehension = [
        item for item in exercises
        if (item.get("data") or {}).get("exercise_type") in comprehension_types
    ]
    controlled = [item for item in exercises if item not in speaking and item not in comprehension]

    early = cefr in EARLY_LEVELS
    primary_dialogue = dialogues[0] if dialogues else None
    challenge_dialogue = dialogues[1] if len(dialogues) > 1 else None
    used_exercises: set[str] = set()
    result: list[dict[str, Any]] = []

    def add(step_type: str, stage: str, **kwargs: Any) -> None:
        result.append(_step(step_type, stage, len(result) + 1, **kwargs))

    add("intro", "context", metadata={"source_item_count": len(items)})

    if primary_dialogue:
        add("dialogue_preview", "context", items=[primary_dialogue], role="primary_dialogue")

    initial_comprehension = comprehension[:1] if early else comprehension[:2]
    for item in initial_comprehension:
        used_exercises.add(_item_id(item))
        add("exercise", "understand", exercises=[item], role="comprehension")

    for group_index, group in enumerate(_chunks(vocabulary, 4 if early else 5), start=1):
        add("vocabulary", "learn", items=group, role="key_vocabulary", metadata={"group": group_index})

    for group_index, group in enumerate(_chunks(utterances, 3), start=1):
        add("phrases", "learn", items=group, role="useful_phrase", metadata={"group": group_index})

    for item in grammar:
        add("grammar", "learn", items=[item], role="language_tip")

    for group_index, group in enumerate(_chunks(utterances, 3), start=1):
        add("repeat", "speak", items=group, role="repeat_target", metadata={"group": group_index})

    for item in speaking:
        used_exercises.add(_item_id(item))
        add("exercise", "speak", exercises=[item], role="speaking")

    remaining_comprehension = [item for item in comprehension if _item_id(item) not in used_exercises]
    practice_pool = [*remaining_comprehension, *controlled]
    for item in practice_pool:
        if _item_id(item) in used_exercises:
            continue
        used_exercises.add(_item_id(item))
        add("exercise", "practice", exercises=[item], role="practice")

    if primary_dialogue:
        add("roleplay", "conversation", items=[primary_dialogue], role="roleplay_source")

    if challenge_dialogue:
        add("dialogue_challenge", "conversation", items=[challenge_dialogue], role="transfer_challenge")

    add("review", "review", metadata={"source_item_count": len(items)})

    stage_indexes = [STAGE_ORDER[step["stage"]] for step in result]
    if stage_indexes != sorted(stage_indexes):
        raise ValueError(f"Lesson delivery stage regression: {stage_indexes}")
    return result


def build_batch_lesson_flows(batch: dict[str, Any]) -> OrderedDict[str, list[dict[str, Any]]]:
    """Group a batch by lesson_key, preserving source order, then build steps."""
    grouped: OrderedDict[str, list[dict[str, Any]]] = OrderedDict()
    for item in batch.get("items", []):
        lesson_key = (item.get("data") or {}).get("lesson_key")
        if lesson_key:
            grouped.setdefault(str(lesson_key), []).append(item)
    return OrderedDict((key, build_lesson_steps(items, str(batch.get("cefr") or ""))) for key, items in grouped.items())

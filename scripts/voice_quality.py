#!/usr/bin/env python3
"""Shared voice-quality rules for dialogue voice selection and auditing."""
from __future__ import annotations

import json
import re

GLOBAL_BLOCKED = {
    "tough", "dark", "husky", "raspy", "gravelly", "gravely", "gritty",
    "suspense", "mystery", "dramatic narration", "villain", "monster",
    "seductive", "sensual", "temptress", "intimate", "grandpa", "grandma",
    "elderly", "old man", "old woman", "aggressive", "epic trailer",
}

PROFILE_POSITIVE = {
    "warm": {"warm", "friendly", "conversational", "natural", "kind", "gentle", "relatable", "easygoing", "pleasant", "helpful"},
    "calm": {"calm", "clear", "soothing", "gentle", "natural", "soft", "precise", "relaxing"},
    "bright": {"bright", "lively", "energetic", "upbeat", "youthful", "young", "playful", "friendly", "spirited"},
    "professional": {"professional", "neutral", "clear", "articulate", "confident", "trustworthy", "smart", "educator", "newsreader"},
}

PROFILE_BLOCKED = {
    "warm": {"tough", "dark", "deep n tough", "serious, deep", "dramatic narration", "suspense", "mystery"},
    "calm": {"raspy", "gravelly", "gravely", "energetic", "lively", "persuasive", "sensual", "temptress"},
    "bright": {"grandpa", "grandma", "elderly", "old", "deep", "resonant", "documentary", "wise", "measured", "neutral"},
    "professional": {"girly", "gossipy", "beach girl", "bubbly", "temptress", "intimate", "casual", "relaxed", "innocent"},
}


def _norm(value: object) -> str:
    return re.sub(r"\s+", " ", str(value or "").casefold()).strip()


def voice_text(voice: dict) -> str:
    labels = voice.get("labels") or {}
    return " ".join(
        [
            _norm(voice.get("name") or voice.get("voice_name")),
            _norm(voice.get("description")),
            _norm(json.dumps(labels, ensure_ascii=False)),
        ]
    )


def profile_family(spec: dict) -> str | None:
    key = _norm(spec.get("profile_key"))
    for family in ("warm", "calm", "bright", "professional"):
        if family in key:
            return family
    return None


def expected_gender(spec: dict) -> str | None:
    labels = spec.get("required_labels") or {}
    value = _norm(labels.get("gender"))
    return value or None


def voice_allowed(voice: dict, spec: dict) -> tuple[bool, list[str]]:
    """Return whether a provider voice is suitable for the character profile."""
    reasons: list[str] = []
    labels = {str(k).casefold(): _norm(v) for k, v in (voice.get("labels") or {}).items()}
    text = voice_text(voice)
    family = profile_family(spec)

    required_language = _norm(spec.get("required_language"))
    if required_language and labels.get("language") != required_language:
        reasons.append(f"language={labels.get('language') or 'missing'} expected={required_language}")

    gender = expected_gender(spec)
    if gender and labels.get("gender") and labels.get("gender") != gender:
        reasons.append(f"gender={labels.get('gender')} expected={gender}")

    if any(term in text for term in GLOBAL_BLOCKED):
        reasons.append("blocked_tone")

    age = labels.get("age", "")
    if age == "old":
        reasons.append("old_voice")
    if family == "bright" and age and age not in {"young", "young_adult", "young adult"}:
        reasons.append(f"bright_age={age}")

    if family:
        for term in PROFILE_BLOCKED.get(family, set()):
            if term in text:
                reasons.append(f"{family}_blocked={term}")
                break

    return not reasons, reasons


def voice_score(voice: dict, spec: dict) -> int:
    """Higher is better; score only after voice_allowed passes."""
    text = voice_text(voice)
    labels = {str(k).casefold(): _norm(v) for k, v in (voice.get("labels") or {}).items()}
    family = profile_family(spec)
    score = 0

    for term in PROFILE_POSITIVE.get(family or "", set()):
        if term in text:
            score += 5

    age = labels.get("age", "")
    if family == "bright" and age in {"young", "young_adult", "young adult"}:
        score += 12
    elif age == "young":
        score += 3
    elif age == "middle_aged":
        score += 1

    use_case = labels.get("use_case", "")
    if "conversational" in use_case:
        score += 10
    elif "narrative" in use_case or "story" in use_case:
        score -= 2

    category = labels.get("category", "")
    if category == "high_quality":
        score += 3
    elif category == "professional":
        score += 2

    if "natural" in text:
        score += 3
    if "clear" in text:
        score += 2
    return score

#!/usr/bin/env python3
"""Strict Nova v3.2 character-voice gate.

Wraps v3_tts_runner while enforcing target-language accent/locale and a
metadata-backed clarity proxy. Existing assignments that no longer satisfy the
policy are cleared during bootstrap so the normal ElevenLabs selector must pick
a new compliant voice. A changed voice_id changes the TTS fingerprint, so all
affected turn audio is regenerated at the same deterministic paths.

The active SQL is also the canonical character roster. New native-v3.2
characters are synchronized into the voice map before source validation. This
only creates an unassigned profile entry; strict bootstrap still has to select
a verified target-language voice before synthesis can proceed.
"""
from __future__ import annotations

import json
import re
import sys
from pathlib import Path
from typing import Any

CURRENT_DIR = Path(__file__).resolve().parent
if str(CURRENT_DIR) not in sys.path:
    sys.path.insert(0, str(CURRENT_DIR))

import nova_tts
import v3_tts_runner

POLICY_PATH = CURRENT_DIR.parent / "policies" / "voice_quality_v3.json"
_ORIGINAL_HARD_MATCH = nova_tts.hard_voice_match
_ORIGINAL_SCORE = nova_tts.character_voice_score
_ORIGINAL_VALIDATE = nova_tts.validate_voice_map


def _load_policy() -> dict[str, Any]:
    with POLICY_PATH.open("r", encoding="utf-8") as handle:
        policy = json.load(handle)
    if policy.get("model_id") != nova_tts.MODEL_ID:
        raise nova_tts.NovaTtsError("voice_quality_v3 model_id mismatch")
    return policy


POLICY = _load_policy()


def _norm(value: Any) -> str:
    return re.sub(r"\s+", " ", str(value or "").strip().casefold().replace("_", " "))


def _language_policy() -> dict[str, Any]:
    policy = (POLICY.get("languages") or {}).get(nova_tts.TARGET_LANGUAGE)
    if not isinstance(policy, dict):
        raise nova_tts.NovaTtsError(
            f"No strict voice-quality policy for {nova_tts.TARGET_LANGUAGE}."
        )
    return policy


def _verified_profiles(voice: dict[str, Any]) -> list[dict[str, Any]]:
    result: list[dict[str, Any]] = []
    for item in voice.get("verified_languages") or []:
        if not isinstance(item, dict):
            continue
        if _norm(item.get("language")) != nova_tts.TARGET_LANGUAGE:
            continue
        model = str(item.get("model_id") or "")
        if model not in ("", nova_tts.MODEL_ID):
            continue
        result.append(item)
    return result


def _profile_matches(item: dict[str, Any]) -> bool:
    policy = _language_policy()
    locale = str(item.get("locale") or "").strip()
    accent = _norm(item.get("accent"))
    if not locale or not accent or accent in {"other", "unknown", "generic"}:
        return False

    locales = set(policy.get("allowed_locales") or [])
    locale_prefixes = tuple(policy.get("allowed_locale_prefixes") or [])
    locale_ok = (not locales and not locale_prefixes) or locale in locales or any(
        locale.startswith(prefix) for prefix in locale_prefixes
    )
    if not locale_ok:
        return False

    accents = {_norm(x) for x in policy.get("allowed_accents") or []}
    accent_prefixes = tuple(_norm(x) for x in policy.get("allowed_accent_prefixes") or [])
    accent_ok = (not accents and not accent_prefixes) or accent in accents or any(
        accent.startswith(prefix) for prefix in accent_prefixes
    )
    return accent_ok


def _target_profile(voice: dict[str, Any]) -> dict[str, Any] | None:
    for item in _verified_profiles(voice):
        if _profile_matches(item):
            return item
    return None


def _clarity_ok(voice: dict[str, Any]) -> bool:
    clarity = POLICY.get("clarity") or {}
    categories = {_norm(x) for x in clarity.get("preferred_categories") or []}
    if _norm(voice.get("category")) in categories:
        return True
    haystack = _norm(
        " ".join(
            str(voice.get(key) or "")
            for key in ("name", "descriptive", "description", "use_case", "accent")
        )
    )
    terms = [_norm(x) for x in clarity.get("accepted_metadata_terms") or []]
    matches = sum(1 for term in terms if term and term in haystack)
    return matches >= int(clarity.get("minimum_metadata_matches") or 1)


def strict_hard_voice_match(character: dict[str, Any], voice: dict[str, Any]) -> bool:
    return bool(
        _ORIGINAL_HARD_MATCH(character, voice)
        and _target_profile(voice)
        and _clarity_ok(voice)
    )


def strict_character_voice_score(
    character: dict[str, Any], voice: dict[str, Any]
) -> tuple[int, list[str]]:
    if not strict_hard_voice_match(character, voice):
        return (-10_000, ["strict-target-voice-mismatch"])
    score, reasons = _ORIGINAL_SCORE(character, voice)
    profile = _target_profile(voice) or {}
    accent = _norm(profile.get("accent"))
    locale = str(profile.get("locale") or "")
    score += 35
    reasons = list(reasons) + [f"target-locale:{locale}", f"target-accent:{accent}", "clarity-gate"]
    if "standard" in accent:
        score += 10
        reasons.append("standard-accent-preferred")
    return score, reasons


def _stored_assignment_ok(character: dict[str, Any]) -> bool:
    voice_id = str(character.get("voice_id") or "").strip()
    source_id = str(character.get("source_voice_id") or "").strip()
    metadata = character.get("source_metadata") or {}
    if not voice_id or not source_id or not isinstance(metadata, dict):
        return False
    if _norm(metadata.get("gender")) != _norm(character.get("gender")):
        return False
    return bool(_target_profile(metadata) and _clarity_ok(metadata))


def strict_validate_voice_map(mapping: dict[str, Any], require_complete: bool = True) -> None:
    _ORIGINAL_VALIDATE(mapping, require_complete=require_complete)
    for character in mapping.get("characters") or []:
        if not character.get("voice_id"):
            continue
        if not _stored_assignment_ok(character):
            raise nova_tts.NovaTtsError(
                f"Voice for {character.get('name')} fails strict target accent/clarity policy."
            )


def _default_archetype(mapping: dict[str, Any], gender: str, role: Any) -> str:
    archetypes = mapping.get("voice_archetypes") or {}
    role_norm = _norm(role)
    preferred: list[str] = []
    if gender == "female":
        if "learner" in role_norm or "زبان‌آموز" in role_norm:
            preferred.append("learner_female")
        preferred.extend(["local_friend_female", "professional_female"])
    elif gender == "male":
        preferred.extend(["professional_male", "local_driver_male"])
    elif gender == "nonbinary":
        preferred.extend(["professional_nonbinary", "local_friend_nonbinary"])
    for key in preferred:
        if key in archetypes:
            return key
    raise nova_tts.NovaTtsError(
        f"No voice archetype is configured for new {gender} character role {role!r}."
    )


def _sync_source_roster() -> int:
    """Add canonical SQL characters to the map without assigning a voice."""
    path = nova_tts.VOICE_MAP_PATH
    mapping = nova_tts.read_json(path, {})
    characters = mapping.get("characters")
    if not isinstance(characters, list):
        raise nova_tts.NovaTtsError(f"{path} has no characters list.")
    profiles = nova_tts.load_source_character_profiles()
    by_name = {str(item.get("name") or ""): item for item in characters}
    added = 0
    for name, source in sorted(profiles.items()):
        if name in by_name:
            continue
        gender = str(source.get("gender") or "").casefold()
        entry = {
            "name": name,
            "gender": gender,
            "role": source.get("role"),
            "context": source.get("context"),
            "origin_country": source.get("origin_country"),
            "profile_source": source.get("profile_source"),
            "voice_archetype": _default_archetype(mapping, gender, source.get("role")),
        }
        characters.append(entry)
        by_name[name] = entry
        added += 1
    if added:
        mapping["voice_quality_policy"] = "nova/policies/voice_quality_v3.json"
        mapping["updated_at"] = nova_tts.utc_now()
        nova_tts.write_json_atomic(path, mapping)
        print(f"Added {added} canonical source character(s) to strict voice roster.")
    return added


def _sanitize_existing_assignments() -> int:
    path = nova_tts.VOICE_MAP_PATH
    mapping = nova_tts.read_json(path, {})
    changed = 0
    retired = mapping.setdefault("retired_voice_assignments", [])
    for character in mapping.get("characters") or []:
        if not character.get("voice_id") or _stored_assignment_ok(character):
            continue
        retired.append(
            {
                "name": character.get("name"),
                "voice_id": character.get("voice_id"),
                "voice_name": character.get("voice_name"),
                "source_voice_id": character.get("source_voice_id"),
                "reason": "failed_target_accent_or_clarity_policy",
                "retired_at": nova_tts.utc_now(),
            }
        )
        for key in (
            "voice_id",
            "voice_name",
            "source_voice_id",
            "public_owner_id",
            "source_metadata",
            "selection",
            "assigned_at",
        ):
            character.pop(key, None)
        changed += 1
    if changed:
        mapping["voice_quality_policy"] = "nova/policies/voice_quality_v3.json"
        mapping["updated_at"] = nova_tts.utc_now()
        nova_tts.write_json_atomic(path, mapping)
        print(f"Retired {changed} non-compliant character voice assignment(s).")
    return changed


def _install_strict_policy() -> None:
    nova_tts.hard_voice_match = strict_hard_voice_match
    nova_tts.character_voice_score = strict_character_voice_score
    nova_tts.validate_voice_map = strict_validate_voice_map
    synthesis = POLICY.get("synthesis") or {}
    for key in ("stability", "similarity_boost", "style", "use_speaker_boost"):
        if key in synthesis:
            nova_tts.VOICE_SETTINGS[key] = synthesis[key]


def main() -> int:
    _install_strict_policy()
    if len(sys.argv) >= 3 and sys.argv[1] == "turn":
        _sync_source_roster()
        if sys.argv[2] == "bootstrap-voices":
            _sanitize_existing_assignments()
    return v3_tts_runner.main()


if __name__ == "__main__":
    raise SystemExit(main())

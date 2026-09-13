#!/usr/bin/env python3
"""Build a deterministic TTS manifest from one completed content level."""
from __future__ import annotations

import argparse
import hashlib
import json
import re
import uuid
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
NS = uuid.UUID("78136b2a-8bcc-4dc4-a39a-a06302c04b8d")


def stable(kind, key):
    return str(uuid.uuid5(NS, f"{kind}:{key}"))


def sha(text):
    return hashlib.sha256(text.encode("utf-8")).hexdigest()


def slugify(value):
    # Keep Unicode letters/digits so character identifiers in non-Latin
    # scripts (e.g. Korean Hangul) remain distinct instead of collapsing to
    # the legacy fallback "item". Underscores are normalized to hyphens.
    value = re.sub(r"[^\w]+", "-", value.lower(), flags=re.UNICODE)
    value = value.replace("_", "-").strip("-")[:170]
    return value or "item"


def norm(value):
    return " ".join(value.strip().split())


def load(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("content_dir", type=Path)
    ap.add_argument("--level", required=True)
    ap.add_argument("--locale", default="en-US")
    ap.add_argument("--voice-registry", type=Path)
    ap.add_argument("--cast", type=Path)
    ap.add_argument("--output", type=Path, required=True)
    ap.add_argument("--strict-characters", action="store_true")
    ap.add_argument("--allow-legacy-character-assignments", action="store_true")
    args = ap.parse_args()

    registry_path = args.voice_registry or ROOT / "audio" / "voices" / f"{args.locale}.json"
    cast_path = args.cast or ROOT / "audio" / "cast" / f"{args.locale}.json"
    if not registry_path.exists():
        raise SystemExit(f"Missing voice registry: {registry_path}")
    registry = load(registry_path)
    if registry.get("locale") != args.locale:
        raise SystemExit(f"Voice registry locale {registry.get('locale')} does not match {args.locale}")
    cast = load(cast_path) if cast_path.exists() else {"locale": args.locale, "characters": {}}
    if cast.get("locale") != args.locale:
        raise SystemExit(f"Cast locale {cast.get('locale')} does not match {args.locale}")

    target_lang = args.locale.split("-")[0]
    groups = {}
    missing = set()
    profiles = (registry.get("dialogue") or {}).get("profiles") or {}
    legacy_assignments = (registry.get("dialogue") or {}).get("character_assignments") or {}
    cast_characters = cast.get("characters") or {}
    default_model = (registry.get("generation") or {}).get("model_id", "eleven_multilingual_v2")

    def add(category, text, entity_type, entity_uuid, entity_key, voice_key, voice_spec, meta=None):
        text = norm(text)
        if not text:
            return
        identity = json.dumps({
            "locale": args.locale,
            "text": text,
            "voice_key": voice_key,
            "settings": voice_spec.get("settings", {}),
            "default_model": default_model
        }, sort_keys=True, ensure_ascii=False)
        key = sha(identity)
        row = groups.get(key)
        ref = {"entity_type": entity_type, "entity_uuid": entity_uuid, "entity_key": entity_key}
        if row:
            if ref not in row["entity_refs"]:
                row["entity_refs"].append(ref)
            return
        groups[key] = {
            "audio_key": key,
            "category": category,
            "locale": args.locale,
            "text": text,
            "source_text_hash": sha(text),
            "voice_key": voice_key,
            "voice_spec": voice_spec,
            "entity_refs": [ref],
            "metadata": meta or {},
            "relative_path": f"audio/generated/{args.locale}/{category}/{key}.mp3"
        }

    for path in sorted(args.content_dir.glob("*.json")):
        batch = load(path)
        if batch.get("cefr") != args.level:
            continue
        bid = batch["batch_id"]
        items = batch["items"]
        for item in items:
            kind = item["kind"]
            data = item["data"]
            ext = item.get("external_id", "")
            if kind == "word_form":
                eid = stable("word_form", f"{bid}:{ext}")
                add("lexical", data["surface_form"], "word_form", eid, ext,
                    registry["lexical"]["voice_key"], registry["lexical"])
            elif kind == "lexeme":
                eid = stable("lexeme", f"{args.locale}:{data['lemma']}:{data.get('part_of_speech', '')}")
                add("lexical", data["lemma"], "lexeme", eid, ext,
                    registry["lexical"]["voice_key"], registry["lexical"])
            elif kind == "concept" and data.get("concept_type") == "lexical" and not any(
                x["kind"] == "lexeme" and data["slug"] in x.get("data", {}).get("concept_refs", []) for x in items
            ):
                text = (data.get("forms") or {}).get(target_lang)
                if text:
                    eid = stable("concept", data["slug"])
                    add("lexical", text, "concept", eid, data["slug"],
                        registry["lexical"]["voice_key"], registry["lexical"])
            elif kind == "utterance":
                text = (data.get("text") or {}).get(target_lang)
                if text:
                    eid = stable("utterance", f"{bid}:{ext}")
                    add("utterances", text, "utterance", eid, ext,
                        registry["sentence_narrator"]["voice_key"], registry["sentence_narrator"])
            elif kind == "exercise" and data.get("exercise_type") == "listening":
                text = (data.get("prompt") or {}).get("audio_text")
                if text:
                    eid = stable("exercise", f"{bid}:{ext}")
                    add("utterances", text, "exercise", eid, ext,
                        registry["sentence_narrator"]["voice_key"], registry["sentence_narrator"])
            elif kind == "exercise" and data.get("answer", {}).get("evaluation_mode") == "rubric":
                eid = stable("exercise", f"{bid}:{ext}")
                narrator = registry["sentence_narrator"]
                add("utterances", data["answer"]["model_text"], "exercise", eid,
                    f"{ext}:model", narrator["voice_key"], narrator,
                    {"usage": "model_after_response"})
                for source in data.get("prompt", {}).get("sources", []):
                    if source.get("audio"):
                        add("utterances", source["text_en"], "exercise", eid,
                            f"{ext}:source:{source['id']}", narrator["voice_key"], narrator,
                            {"usage": "source", "provenance": source["provenance"]})
            elif kind == "grammar_point" and data.get("audio_examples"):
                for index, example in enumerate(data.get("examples", []), 1):
                    text = example.get(target_lang)
                    if text:
                        eid = stable("grammar", data["slug"])
                        add("utterances", text, "grammar_point", eid, f"{ext}:example:{index}",
                            registry["sentence_narrator"]["voice_key"], registry["sentence_narrator"])
            elif kind == "dialogue":
                dslug = slugify(f"{bid}-{ext}")
                for turn in data.get("turns", []):
                    cslug = slugify(turn["speaker"])
                    character = cast_characters.get(cslug)
                    profile_key = character.get("voice_profile") if character else None
                    if not profile_key and args.allow_legacy_character_assignments:
                        profile_key = legacy_assignments.get(cslug)
                    if not profile_key:
                        missing.add(cslug)
                        voice_spec = {"blocked": True, "reason": "missing_explicit_character_profile", "character": cslug}
                        voice_key = f"character:{cslug}"
                        persona = None
                    else:
                        profile = profiles.get(profile_key)
                        if not profile:
                            raise SystemExit(f"Unknown voice profile {profile_key} for {cslug}")
                        voice_spec = dict(profile)
                        voice_spec["profile_key"] = profile_key
                        voice_key = f"character:{cslug}:{profile_key}"
                        persona = character.get("persona") if character else None
                    eid = stable("dialogue_turn", f"{dslug}:{turn['order']}")
                    add(
                        "dialogues", turn["text"], "dialogue_turn", eid, f"{ext}:{turn['order']}",
                        voice_key, voice_spec,
                        {"character": cslug, "dialogue": ext, "turn": turn["order"], "persona": persona,
                         "voice_profile": profile_key}
                    )

    manifest = {
        "manifest_version": 2,
        "level": args.level,
        "locale": args.locale,
        "provider": registry["provider"],
        "generation": registry["generation"],
        "voice_registry": str(registry_path.relative_to(ROOT)) if registry_path.is_relative_to(ROOT) else str(registry_path),
        "cast": str(cast_path.relative_to(ROOT)) if cast_path.exists() and cast_path.is_relative_to(ROOT) else str(cast_path),
        "missing_character_profiles": sorted(missing),
        "items": sorted(groups.values(), key=lambda x: (x["category"], x["audio_key"]))
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(manifest, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({"output": str(args.output), "items": len(manifest["items"]),
                      "missing_character_profiles": len(missing)}, ensure_ascii=False))
    if args.strict_characters and missing:
        raise SystemExit("Missing explicit character profiles: " + ", ".join(sorted(missing)))


if __name__ == "__main__":
    main()

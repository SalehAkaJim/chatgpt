#!/usr/bin/env python3
"""Validate an explicit character cast and sync it into canonical MySQL tables."""
from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
if str(ROOT) not in sys.path:
    sys.path.insert(0, str(ROOT))

from scripts.materialize_level import db_config, lang_id, one, stable, variant_id  # noqa: E402


def load_json(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def dialogue_speakers(content_dir: Path | None, level: str | None) -> set[str]:
    speakers: set[str] = set()
    if not content_dir:
        return speakers
    for path in sorted(content_dir.glob("*.json")):
        batch = load_json(path)
        if level and batch.get("cefr") != level:
            continue
        for item in batch.get("items", []):
            if item.get("kind") != "dialogue":
                continue
            for turn in item.get("data", {}).get("turns", []):
                speaker = str(turn.get("speaker", "")).strip()
                if speaker:
                    speakers.add(speaker.lower())
    return speakers


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--cast", type=Path, required=True)
    ap.add_argument("--voice-registry", type=Path)
    ap.add_argument("--target-language", required=True)
    ap.add_argument("--target-variant", required=True)
    ap.add_argument("--content-dir", type=Path)
    ap.add_argument("--level")
    ap.add_argument("--dry-run", action="store_true")
    args = ap.parse_args()

    cast = load_json(args.cast)
    if cast.get("locale") != args.target_variant:
        raise SystemExit(f"Cast locale {cast.get('locale')} does not match {args.target_variant}")
    characters = cast.get("characters") or {}
    if not characters:
        raise SystemExit("Character cast is empty")

    registry_path = args.voice_registry or ROOT / "audio" / "voices" / f"{args.target_variant}.json"
    registry = load_json(registry_path)
    profiles = (registry.get("dialogue") or {}).get("profiles") or {}

    errors: list[str] = []
    for slug, character in characters.items():
        if slug != slug.lower() or not slug.strip():
            errors.append(f"Invalid character slug: {slug!r}")
        profile = character.get("voice_profile")
        if not profile:
            errors.append(f"{slug}: missing voice_profile")
        elif profile not in profiles:
            errors.append(f"{slug}: unknown voice profile {profile}")
        if not character.get("display_name"):
            errors.append(f"{slug}: missing display_name")
        if not isinstance(character.get("persona"), dict) or not character.get("persona"):
            errors.append(f"{slug}: persona must be a non-empty object")

    speakers = dialogue_speakers(args.content_dir, args.level)
    missing = sorted(s for s in speakers if s not in characters)
    if missing:
        errors.append("Dialogue speakers missing from cast: " + ", ".join(missing))
    if errors:
        raise SystemExit("\n".join(errors))

    if args.dry_run:
        print(json.dumps({
            "locale": args.target_variant,
            "cast_characters": len(characters),
            "dialogue_speakers": len(speakers),
            "missing": 0,
            "valid": True
        }, ensure_ascii=False))
        return

    import mysql.connector
    conn = mysql.connector.connect(**db_config())
    try:
        cur = conn.cursor()
        cur.execute("SET time_zone='+00:00'")
        cur.execute("SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci")
        language = lang_id(cur, args.target_language)
        variant_id(cur, args.target_variant)  # Validate the configured course variant exists.
        synced = 0
        for slug, character in sorted(characters.items()):
            persona = character["persona"]
            voice_profile = {
                "status": "assigned",
                "locale": args.target_variant,
                "profile_key": character["voice_profile"],
                "provider": registry.get("provider", "elevenlabs")
            }
            cuid = stable("character", slug)
            existing = one(cur, "SELECT id FROM characters WHERE slug=%s", (slug,))
            if existing:
                cur.execute(
                    "UPDATE characters SET default_name=%s, persona=%s, voice_profile=%s, is_active=TRUE WHERE id=%s",
                    (character["display_name"], json.dumps(persona, ensure_ascii=False),
                     json.dumps(voice_profile, ensure_ascii=False), existing)
                )
                cid = existing
            else:
                cur.execute(
                    "INSERT INTO characters(id,slug,default_name,persona,voice_profile,is_active) "
                    "VALUES(UUID_TO_BIN(%s,1),%s,%s,%s,%s,TRUE)",
                    (cuid, slug, character["display_name"], json.dumps(persona, ensure_ascii=False),
                     json.dumps(voice_profile, ensure_ascii=False))
                )
                cid = one(cur, "SELECT UUID_TO_BIN(%s,1)", (cuid,))
            cur.execute(
                "INSERT INTO character_localizations(character_id,language_id,display_name,bio) VALUES(%s,%s,%s,%s) "
                "ON DUPLICATE KEY UPDATE display_name=VALUES(display_name), bio=VALUES(bio)",
                (cid, language, character["display_name"], character.get("bio"))
            )
            synced += 1
        conn.commit()
    except Exception:
        conn.rollback()
        raise
    finally:
        try:
            cur.close()
        except Exception:
            pass
        conn.close()

    print(json.dumps({"locale": args.target_variant, "synced_characters": synced}, ensure_ascii=False))


if __name__ == "__main__":
    main()

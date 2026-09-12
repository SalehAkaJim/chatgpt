#!/usr/bin/env python3
"""Link QA-passed generated audio files to canonical audio_assets rows."""
from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path

import mysql.connector

ROOT = Path(__file__).resolve().parents[1]
if str(ROOT) not in sys.path:
    sys.path.insert(0, str(ROOT))

from scripts.materialize_level import db_config, lang_id, one, stable, variant_id  # noqa: E402

ENTITY_TABLES = {
    "concept": "concepts",
    "lexeme": "lexemes",
    "word_form": "word_forms",
    "utterance": "utterances",
    "dialogue_turn": "dialogue_turns",
}


def storage_url(base: str | None, relative_path: str) -> str:
    if base:
        return base.rstrip("/") + "/" + relative_path.lstrip("/")
    return "repo://" + relative_path


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("manifest", type=Path)
    ap.add_argument("--root", type=Path, default=ROOT)
    ap.add_argument("--storage-base-url")
    ap.add_argument("--status", choices=["generated", "validated", "approved"], default="validated")
    args = ap.parse_args()

    manifest = json.loads(args.manifest.read_text(encoding="utf-8"))
    locale = manifest["locale"]
    language_code = locale.split("-")[0]

    prepared = []
    for item in manifest.get("items", []):
        if item.get("voice_spec", {}).get("blocked"):
            raise SystemExit(f"Blocked audio item {item.get('audio_key')}")
        audio_path = args.root / item["relative_path"]
        meta_path = audio_path.with_suffix(audio_path.suffix + ".json")
        if not audio_path.exists() or not meta_path.exists():
            raise SystemExit(f"Audio or sidecar missing for {item['relative_path']}")
        meta = json.loads(meta_path.read_text(encoding="utf-8"))
        if meta.get("audio_key") != item.get("audio_key"):
            raise SystemExit(f"Sidecar mismatch for {item['relative_path']}")
        if meta.get("source_text_hash") != item.get("source_text_hash"):
            raise SystemExit(f"Stale audio for {item['relative_path']}")
        if meta.get("voice_key") != item.get("voice_key"):
            raise SystemExit(f"Stale voice for {item['relative_path']}")
        prepared.append((item, meta))

    conn = mysql.connector.connect(**db_config())
    inserted = 0
    updated = 0
    linked_refs = 0
    try:
        cur = conn.cursor()
        cur.execute("SET time_zone='+00:00'")
        cur.execute("SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci")
        language = lang_id(cur, language_code)
        variant = variant_id(cur, locale)

        for item, sidecar in prepared:
            for ref in item.get("entity_refs", []):
                entity_type = ref["entity_type"]
                table = ENTITY_TABLES.get(entity_type)
                if not table:
                    raise ValueError(f"Unsupported audio entity type {entity_type}")
                entity_uuid = ref["entity_uuid"]
                canonical = one(cur, f"SELECT id FROM {table} WHERE id=UUID_TO_BIN(%s,1)", (entity_uuid,))
                if not canonical:
                    raise ValueError(f"Canonical {entity_type} not found: {entity_uuid} ({ref.get('entity_key')})")

                existing = one(
                    cur,
                    "SELECT id FROM audio_assets WHERE language_id=%s AND language_variant_id <=> %s "
                    "AND entity_type=%s AND entity_id=%s AND voice_key=%s AND status<>'archived' "
                    "ORDER BY created_at DESC LIMIT 1",
                    (language, variant, entity_type, canonical, item["voice_key"])
                )
                url = storage_url(args.storage_base_url, item["relative_path"])
                metadata = {
                    "audio_key": item["audio_key"],
                    "entity_key": ref.get("entity_key"),
                    "source_text_hash": item["source_text_hash"],
                    "voice_id": sidecar.get("voice_id"),
                    "voice_name": sidecar.get("voice_name"),
                    "voice_labels": sidecar.get("voice_labels") or {},
                    "model": sidecar.get("model"),
                    "settings": sidecar.get("settings") or {},
                    "output_format": sidecar.get("output_format"),
                    "generated_at": sidecar.get("generated_at"),
                    "relative_path": item["relative_path"]
                }
                if existing:
                    cur.execute(
                        "UPDATE audio_assets SET provider=%s, storage_url=%s, duration_ms=%s, checksum=%s, "
                        "status=%s, metadata=%s WHERE id=%s",
                        (manifest.get("provider", "elevenlabs"), url, sidecar.get("duration_ms"),
                         sidecar.get("file_sha256"), args.status, json.dumps(metadata, ensure_ascii=False), existing)
                    )
                    updated += 1
                else:
                    auid = stable("audio_asset", f"{locale}:{entity_type}:{entity_uuid}:{item['voice_key']}")
                    cur.execute(
                        "INSERT INTO audio_assets(id,language_id,language_variant_id,entity_type,entity_id,voice_key,provider,"
                        "storage_url,duration_ms,checksum,status,metadata) "
                        "VALUES(UUID_TO_BIN(%s,1),%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)",
                        (auid, language, variant, entity_type, canonical, item["voice_key"],
                         manifest.get("provider", "elevenlabs"), url, sidecar.get("duration_ms"),
                         sidecar.get("file_sha256"), args.status, json.dumps(metadata, ensure_ascii=False))
                    )
                    inserted += 1
                linked_refs += 1
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

    print(json.dumps({
        "locale": locale,
        "audio_items": len(prepared),
        "linked_refs": linked_refs,
        "inserted": inserted,
        "updated": updated,
        "status": args.status
    }, ensure_ascii=False))


if __name__ == "__main__":
    main()

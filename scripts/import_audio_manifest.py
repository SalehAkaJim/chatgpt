#!/usr/bin/env python3
"""Link QA-passed generated level audio to canonical MySQL audio_assets rows."""
from __future__ import annotations

import argparse
import hashlib
import json
import os
import sys
import uuid
from datetime import datetime
from pathlib import Path
from urllib.parse import parse_qs, unquote, urlparse

import mysql.connector
from mutagen.mp3 import MP3

ROOT = Path(__file__).resolve().parents[1]
NS = uuid.UUID("78136b2a-8bcc-4dc4-a39a-a06302c04b8d")
TABLES = {
    "concept": "concepts",
    "lexeme": "lexemes",
    "word_form": "word_forms",
    "utterance": "utterances",
    "dialogue_turn": "dialogue_turns",
}


def stable(kind, key):
    return str(uuid.uuid5(NS, f"{kind}:{key}"))


def sha_file(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as handle:
        for chunk in iter(lambda: handle.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest()


def db_config():
    url = os.getenv("DATABASE_URL")
    if url:
        p = urlparse(url)
        if p.scheme not in {"mysql", "mysql+mysqlconnector"}:
            raise SystemExit("DATABASE_URL must use mysql://")
        q = parse_qs(p.query)
        return {
            "host": p.hostname or "127.0.0.1", "port": p.port or 3306,
            "user": unquote(p.username or ""), "password": unquote(p.password or ""),
            "database": p.path.lstrip("/"), "charset": q.get("charset", ["utf8mb4"])[0],
            "collation": q.get("collation", ["utf8mb4_0900_ai_ci"])[0], "autocommit": False,
        }
    if not os.getenv("MYSQL_DATABASE"):
        raise SystemExit("Set DATABASE_URL or MYSQL_DATABASE/MYSQL_* variables")
    return {
        "host": os.getenv("MYSQL_HOST", "127.0.0.1"), "port": int(os.getenv("MYSQL_PORT", "3306")),
        "user": os.getenv("MYSQL_USER", "root"), "password": os.getenv("MYSQL_PASSWORD", ""),
        "database": os.environ["MYSQL_DATABASE"], "charset": "utf8mb4",
        "collation": "utf8mb4_0900_ai_ci", "autocommit": False,
    }


def parse_generated_at(value):
    if not value:
        return None
    try:
        parsed = datetime.fromisoformat(value.replace("Z", "+00:00"))
        if parsed.tzinfo:
            parsed = parsed.astimezone().replace(tzinfo=None)
        return parsed
    except ValueError:
        return None


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("manifest", type=Path)
    ap.add_argument("--root", type=Path, default=ROOT)
    ap.add_argument("--storage-prefix", default=os.getenv("AUDIO_STORAGE_PREFIX", "repo://"))
    ap.add_argument("--status", default="validated", choices=["generated", "validated", "approved"])
    args = ap.parse_args()

    manifest = json.loads(args.manifest.read_text(encoding="utf-8"))
    if manifest.get("missing_character_profiles"):
        raise SystemExit("Manifest has unresolved character profiles")

    prepared = []
    for item in manifest.get("items", []):
        if item.get("voice_spec", {}).get("blocked"):
            raise SystemExit(f"Blocked audio item: {item.get('audio_key')}")
        path = args.root / item["relative_path"]
        meta_path = path.with_suffix(path.suffix + ".json")
        if not path.exists() or not meta_path.exists():
            raise SystemExit(f"Missing generated audio or metadata: {path}")
        meta = json.loads(meta_path.read_text(encoding="utf-8"))
        if meta.get("audio_key") != item.get("audio_key"):
            raise SystemExit(f"Audio key mismatch: {path}")
        if meta.get("source_text_hash") != item.get("source_text_hash"):
            raise SystemExit(f"Stale audio source text: {path}")
        if meta.get("voice_key") != item.get("voice_key"):
            raise SystemExit(f"Stale audio voice: {path}")
        if meta.get("settings") != item.get("voice_spec", {}).get("settings", {}):
            raise SystemExit(f"Stale audio voice settings: {path}")
        actual_sha = sha_file(path)
        if meta.get("file_sha256") != actual_sha:
            raise SystemExit(f"Audio checksum mismatch: {path}")
        try:
            duration_ms = int(float(MP3(path).info.length or 0) * 1000)
        except Exception as exc:
            raise SystemExit(f"Cannot decode MP3 {path}: {exc}") from exc
        if duration_ms < 120:
            raise SystemExit(f"Implausibly short audio: {path}")
        prepared.append((item, meta, duration_ms))

    conn = mysql.connector.connect(**db_config())
    inserted = updated = archived = 0
    try:
        cur = conn.cursor()
        cur.execute("SET time_zone='+00:00'")
        cur.execute("SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci")
        cur.execute("SELECT id FROM languages WHERE code=%s", (manifest["locale"].split("-")[0],))
        row = cur.fetchone()
        if not row:
            raise RuntimeError("Target language missing")
        language_id = row[0]
        cur.execute("SELECT id FROM language_variants WHERE code=%s", (manifest["locale"],))
        row = cur.fetchone()
        if not row:
            raise RuntimeError(f"Target language variant missing: {manifest['locale']}")
        variant_id = row[0]

        for item, meta, duration_ms in prepared:
            for ref in item["entity_refs"]:
                entity_type = ref["entity_type"]
                table = TABLES.get(entity_type)
                if not table:
                    raise RuntimeError(f"Unsupported audio entity type {entity_type}")
                cur.execute(f"SELECT id FROM {table} WHERE id=UUID_TO_BIN(%s,1)", (ref["entity_uuid"],))
                entity = cur.fetchone()
                if not entity:
                    raise RuntimeError(
                        f"Canonical entity missing for {entity_type}:{ref['entity_key']}; import the level first"
                    )
                entity_id = entity[0]

                cur.execute(
                    "UPDATE audio_assets SET status='archived' WHERE entity_type=%s AND entity_id=%s "
                    "AND voice_key=%s AND source_text_hash IS NOT NULL AND source_text_hash<>%s AND status<>'archived'",
                    (entity_type, entity_id, item["voice_key"], item["source_text_hash"]),
                )
                archived += cur.rowcount

                audio_id = stable(
                    "audio",
                    f"{manifest['locale']}:{ref['entity_uuid']}:{item['voice_key']}:{item['source_text_hash']}"
                )
                storage = args.storage_prefix.rstrip("/") + "/" + item["relative_path"].lstrip("/")
                payload = json.dumps({
                    "audio_key": item["audio_key"],
                    "entity_key": ref["entity_key"],
                    "voice_id": meta.get("voice_id"),
                    "voice_name": meta.get("voice_name"),
                    "voice_labels": meta.get("voice_labels") or {},
                    "output_format": meta.get("output_format"),
                    "file_sha256": meta.get("file_sha256"),
                    "settings": meta.get("settings") or {},
                    "relative_path": item["relative_path"],
                }, ensure_ascii=False)
                cur.execute(
                    """INSERT INTO audio_assets(
                        id,language_id,language_variant_id,entity_type,entity_id,source_text_hash,
                        voice_key,provider,provider_model,storage_url,duration_ms,generated_at,checksum,status,metadata
                    ) VALUES(UUID_TO_BIN(%s,1),%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)
                    ON DUPLICATE KEY UPDATE
                        provider=VALUES(provider), provider_model=VALUES(provider_model),
                        storage_url=VALUES(storage_url), duration_ms=VALUES(duration_ms),
                        generated_at=VALUES(generated_at), checksum=VALUES(checksum),
                        status=VALUES(status), metadata=VALUES(metadata)""",
                    (
                        audio_id, language_id, variant_id, entity_type, entity_id, item["source_text_hash"],
                        item["voice_key"], manifest.get("provider", "elevenlabs"), meta.get("model"), storage,
                        duration_ms, parse_generated_at(meta.get("generated_at")), meta.get("file_sha256"),
                        args.status, payload,
                    ),
                )
                if cur.rowcount == 1:
                    inserted += 1
                else:
                    updated += 1
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
        "manifest": str(args.manifest), "items": len(prepared), "inserted": inserted,
        "updated": updated, "archived_stale": archived, "status": args.status,
    }, ensure_ascii=False))


if __name__ == "__main__":
    main()

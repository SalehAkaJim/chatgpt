#!/usr/bin/env python3
"""Export generated audio metadata as a standalone MySQL upsert file.

This script never connects to a database. It validates generated MP3 sidecars and
writes SQL that can be executed after the corresponding level content import.
By default, audio_assets.storage_url stores only the relative audio path so a
server/CDN base URL can be added later without rewriting database rows.
"""
from __future__ import annotations

import argparse
import hashlib
import json
import uuid
from datetime import datetime, timezone
from pathlib import Path

from mutagen.mp3 import MP3

ROOT = Path(__file__).resolve().parents[1]
NS = uuid.UUID("78136b2a-8bcc-4dc4-a39a-a06302c04b8d")


def stable(kind: str, key: str) -> str:
    return str(uuid.uuid5(NS, f"{kind}:{key}"))


def sha_file(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as handle:
        for chunk in iter(lambda: handle.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest()


def q(value) -> str:
    if value is None:
        return "NULL"
    if isinstance(value, (dict, list)):
        value = json.dumps(value, ensure_ascii=False, separators=(",", ":"))
    text = str(value).replace("'", "''")
    return f"'{text}'"


def mysql_dt(value: str | None) -> str:
    if not value:
        return "NULL"
    parsed = datetime.fromisoformat(value.replace("Z", "+00:00"))
    if parsed.tzinfo:
        parsed = parsed.astimezone(timezone.utc).replace(tzinfo=None)
    return q(parsed.strftime("%Y-%m-%d %H:%M:%S.%f"))


def join_url(prefix: str, relative_path: str) -> str:
    return prefix.rstrip("/") + "/" + relative_path.lstrip("/")


def storage_location(relative_path: str, url_prefix: str | None) -> str:
    """Return a portable relative path unless an explicit base URL is requested."""
    relative_path = relative_path.lstrip("/")
    if not url_prefix:
        return relative_path
    return join_url(url_prefix, relative_path)


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("manifest", type=Path)
    ap.add_argument("--output", type=Path, required=True)
    ap.add_argument("--root", type=Path, default=ROOT)
    ap.add_argument(
        "--url-prefix",
        default=None,
        help=(
            "Optional base URL for audio_assets.storage_url. Omit this to store "
            "portable relative paths such as audio/generated/en-US/...mp3."
        ),
    )
    ap.add_argument("--status", default="validated", choices=["generated", "validated", "approved"])
    args = ap.parse_args()

    manifest = json.loads(args.manifest.read_text(encoding="utf-8"))
    if manifest.get("missing_character_profiles"):
        raise SystemExit("Manifest has unresolved character profiles")

    rows: list[tuple[dict, dict, dict, int, str]] = []
    for item in manifest.get("items", []):
        if item.get("voice_spec", {}).get("blocked"):
            raise SystemExit(f"Blocked audio item: {item.get('audio_key')}")
        audio_path = args.root / item["relative_path"]
        meta_path = audio_path.with_suffix(audio_path.suffix + ".json")
        if not audio_path.exists() or not meta_path.exists():
            raise SystemExit(f"Missing generated audio or metadata: {audio_path}")
        meta = json.loads(meta_path.read_text(encoding="utf-8"))
        if meta.get("audio_key") != item.get("audio_key"):
            raise SystemExit(f"Audio key mismatch: {audio_path}")
        if meta.get("source_text_hash") != item.get("source_text_hash"):
            raise SystemExit(f"Stale audio source text: {audio_path}")
        if meta.get("voice_key") != item.get("voice_key"):
            raise SystemExit(f"Stale audio voice: {audio_path}")
        if meta.get("settings") != item.get("voice_spec", {}).get("settings", {}):
            raise SystemExit(f"Stale audio voice settings: {audio_path}")
        actual_sha = sha_file(audio_path)
        if meta.get("file_sha256") != actual_sha:
            raise SystemExit(f"Audio checksum mismatch: {audio_path}")
        duration_ms = int(float(MP3(audio_path).info.length or 0) * 1000)
        if duration_ms < 120:
            raise SystemExit(f"Implausibly short audio: {audio_path}")
        storage_url = storage_location(item["relative_path"], args.url_prefix)
        for ref in item.get("entity_refs", []):
            rows.append((item, meta, ref, duration_ms, storage_url))

    lang_code = manifest["locale"].split("-")[0]
    variant_code = manifest["locale"]
    storage_mode = "absolute_url" if args.url_prefix else "relative_path"
    lines = [
        f"-- Generated audio link import for {variant_code} {manifest.get('level')}",
        f"-- Source manifest: {args.manifest.as_posix()}",
        f"-- Generated rows: {len(rows)}",
        f"-- Storage mode: {storage_mode}",
        "-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.",
        "-- Run AFTER the matching level content import.",
        "SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;",
        "SET time_zone = '+00:00';",
        f"SET @audio_language_id = (SELECT id FROM languages WHERE code = {q(lang_code)} LIMIT 1);",
        f"SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = {q(variant_code)} LIMIT 1);",
        "START TRANSACTION;",
        "",
    ]

    for item, meta, ref, duration_ms, storage_url in rows:
        entity_type = ref["entity_type"]
        entity_uuid = ref["entity_uuid"]
        source_hash = item["source_text_hash"]
        voice_key = item["voice_key"]
        audio_id = stable(
            "audio",
            f"{variant_code}:{entity_uuid}:{voice_key}:{source_hash}",
        )
        metadata = {
            "audio_key": item["audio_key"],
            "entity_key": ref.get("entity_key"),
            "voice_id": meta.get("voice_id"),
            "voice_name": meta.get("voice_name"),
            "voice_labels": meta.get("voice_labels") or {},
            "output_format": meta.get("output_format"),
            "file_sha256": meta.get("file_sha256"),
            "settings": meta.get("settings") or {},
            "relative_path": item["relative_path"],
        }

        lines.extend([
            f"-- {ref.get('entity_key')} -> {item['relative_path']}",
            "UPDATE audio_assets",
            "SET status = 'archived'",
            f"WHERE entity_type = {q(entity_type)}",
            f"  AND entity_id = UUID_TO_BIN({q(entity_uuid)}, 1)",
            f"  AND voice_key = {q(voice_key)}",
            f"  AND (entity_type <> 'grammar_point' OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = {q(ref.get('entity_key'))})",
            "  AND source_text_hash IS NOT NULL",
            f"  AND source_text_hash <> {q(source_hash)}",
            "  AND status <> 'archived';",
            "INSERT INTO audio_assets (",
            "  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,",
            "  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata",
            ") VALUES (",
            f"  UUID_TO_BIN({q(audio_id)}, 1), @audio_language_id, @audio_variant_id, {q(entity_type)}, UUID_TO_BIN({q(entity_uuid)}, 1), {q(source_hash)},",
            f"  {q(voice_key)}, {q(manifest.get('provider', 'elevenlabs'))}, {q(meta.get('model'))}, {q(storage_url)}, {duration_ms}, {mysql_dt(meta.get('generated_at'))}, {q(meta.get('file_sha256'))}, {q(args.status)}, {q(metadata)}",
            ") ON DUPLICATE KEY UPDATE",
            "  provider = VALUES(provider),",
            "  provider_model = VALUES(provider_model),",
            "  storage_url = VALUES(storage_url),",
            "  duration_ms = VALUES(duration_ms),",
            "  generated_at = VALUES(generated_at),",
            "  checksum = VALUES(checksum),",
            "  status = VALUES(status),",
            "  metadata = VALUES(metadata);",
            "",
        ])

    lines.extend(["COMMIT;", ""])
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text("\n".join(lines), encoding="utf-8")
    print(json.dumps({
        "manifest": str(args.manifest),
        "output": str(args.output),
        "audio_assets_rows": len(rows),
        "storage_mode": storage_mode,
        "url_prefix": args.url_prefix,
        "status": args.status,
    }, ensure_ascii=False))


if __name__ == "__main__":
    main()

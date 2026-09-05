#!/usr/bin/env python3
"""Generate and track ElevenLabs audio for Nova v9.0 turns.

The live database is read-only for this tool. Audio is written under
nova/audio/ and linked to turn IDs in manifest.json. A separate export-sql
command creates the database update only after the files have been moved to
their final public host.
"""

from __future__ import annotations

import argparse
import base64
import concurrent.futures
import datetime as dt
import hashlib
import json
import os
from pathlib import Path
import re
import sys
import threading
import time
from typing import Any
from urllib.error import HTTPError, URLError
from urllib.parse import quote, urlencode
from urllib.request import Request, urlopen


API_BASE = "https://api.elevenlabs.io"
MODEL_ID = "eleven_multilingual_v2"
OUTPUT_FORMAT = "mp3_44100_64"
COURSE = ("de", "fa")
SPEED_BY_LEVEL = {"A1": 0.88, "A2": 0.94, "B1": 0.98}
VOICE_SETTINGS = {
    "stability": 0.55,
    "similarity_boost": 0.75,
    "style": 0.0,
    "use_speaker_boost": True,
}

SCRIPT_DIR = Path(__file__).resolve().parent
REPO_ROOT = SCRIPT_DIR.parents[1]
VOICE_MAP_PATH = SCRIPT_DIR / "voice_map.json"
AUDIO_DIR = REPO_ROOT / "nova" / "audio"
TURNS_DIR = AUDIO_DIR / "turns" / "de-fa"
MANIFEST_PATH = AUDIO_DIR / "manifest.json"
SQL_PATH = AUDIO_DIR / "apply_audio_urls.sql"


class NovaTtsError(RuntimeError):
    pass


def utc_now() -> str:
    return dt.datetime.now(dt.timezone.utc).replace(microsecond=0).isoformat()


def read_json(path: Path, default: Any) -> Any:
    if not path.exists():
        return default
    with path.open("r", encoding="utf-8") as handle:
        return json.load(handle)


def write_json_atomic(path: Path, payload: Any) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    temporary = path.with_name(f".{path.name}.tmp")
    with temporary.open("w", encoding="utf-8", newline="\n") as handle:
        json.dump(payload, handle, ensure_ascii=False, indent=2, sort_keys=False)
        handle.write("\n")
    os.replace(temporary, path)


def sha256_text(value: str) -> str:
    return hashlib.sha256(value.encode("utf-8")).hexdigest()


def character_slug(name: str) -> str:
    slug = re.sub(r"[^a-z0-9]+", "-", name.casefold()).strip("-")
    if not slug:
        raise NovaTtsError(f"Cannot create an audio folder for character {name!r}.")
    return slug


def speed_for_level(level: str) -> float:
    return SPEED_BY_LEVEL.get(level.upper(), 1.0)


def request_fingerprint(
    *,
    text: str,
    previous_text: str | None,
    next_text: str | None,
    voice_id: str,
    level: str,
) -> str:
    settings = dict(VOICE_SETTINGS)
    settings["speed"] = speed_for_level(level)
    canonical = json.dumps(
        {
            "model_id": MODEL_ID,
            "output_format": OUTPUT_FORMAT,
            "voice_id": voice_id,
            "text": text,
            "previous_text": previous_text,
            "next_text": next_text,
            "voice_settings": settings,
        },
        ensure_ascii=False,
        sort_keys=True,
        separators=(",", ":"),
    )
    return sha256_text(canonical)


def duration_from_alignment(response: dict[str, Any]) -> int:
    for key in ("normalized_alignment", "alignment"):
        alignment = response.get(key) or {}
        values = alignment.get("character_end_times_seconds") or []
        if values:
            return max(1, round(float(values[-1]) * 1000))
    raise NovaTtsError("ElevenLabs returned audio without usable timing data.")


def required_env(name: str) -> str:
    value = os.environ.get(name, "").strip()
    if not value:
        raise NovaTtsError(f"Missing required environment variable: {name}")
    return value


class ElevenLabsClient:
    def __init__(self, api_key: str) -> None:
        self.api_key = api_key

    def _json_request(
        self,
        method: str,
        path: str,
        *,
        query: dict[str, Any] | None = None,
        payload: dict[str, Any] | None = None,
        attempts: int = 6,
    ) -> dict[str, Any]:
        url = f"{API_BASE}{path}"
        if query:
            url += "?" + urlencode(query, doseq=True)
        body = None
        headers = {"xi-api-key": self.api_key, "Accept": "application/json"}
        if payload is not None:
            body = json.dumps(payload, ensure_ascii=False).encode("utf-8")
            headers["Content-Type"] = "application/json"

        for attempt in range(attempts):
            try:
                request = Request(url, data=body, method=method, headers=headers)
                with urlopen(request, timeout=120) as response:
                    return json.loads(response.read().decode("utf-8"))
            except HTTPError as error:
                detail = error.read().decode("utf-8", errors="replace")[:1000]
                retryable = error.code == 429 or 500 <= error.code <= 599
                if not retryable or attempt == attempts - 1:
                    raise NovaTtsError(
                        f"ElevenLabs HTTP {error.code}: {detail}"
                    ) from error
                retry_after = error.headers.get("Retry-After")
                delay = float(retry_after) if retry_after else min(30, 2**attempt)
                time.sleep(delay)
            except (URLError, TimeoutError) as error:
                if attempt == attempts - 1:
                    raise NovaTtsError(f"ElevenLabs network error: {error}") from error
                time.sleep(min(30, 2**attempt))

        raise NovaTtsError("ElevenLabs request failed unexpectedly.")

    def shared_voices(self, gender: str) -> list[dict[str, Any]]:
        voices: list[dict[str, Any]] = []
        page = 0
        while page < 20:
            response = self._json_request(
                "GET",
                "/v1/shared-voices",
                query={
                    "page_size": 100,
                    "page": page,
                    "language": "de",
                    "gender": gender.lower(),
                    "sort": "usage_character_count_1y",
                    "include_custom_rates": "false",
                    "include_live_moderated": "false",
                },
            )
            voices.extend(response.get("voices") or [])
            if not response.get("has_more"):
                break
            page += 1

        def supports_german(voice: dict[str, Any]) -> bool:
            if str(voice.get("language", "")).lower() == "de":
                return True
            return any(
                str(item.get("language", "")).lower() == "de"
                and item.get("model_id") in (None, MODEL_ID)
                for item in (voice.get("verified_languages") or [])
            )

        result = [
            voice
            for voice in voices
            if supports_german(voice)
            and str(voice.get("gender", "")).lower() == gender.lower()
            and voice.get("public_owner_id")
            and voice.get("voice_id")
        ]
        category_rank = {"professional": 0, "high_quality": 1, "famous": 2}
        result.sort(
            key=lambda voice: (
                category_rank.get(str(voice.get("category", "")), 9),
                -int(voice.get("usage_character_count_1y") or 0),
                str(voice.get("voice_id")),
            )
        )
        return result

    def add_shared_voice(self, voice: dict[str, Any], character_name: str) -> str:
        owner = quote(str(voice["public_owner_id"]), safe="")
        source_voice = quote(str(voice["voice_id"]), safe="")
        response = self._json_request(
            "POST",
            f"/v1/voices/add/{owner}/{source_voice}",
            payload={"new_name": f"Nova - {character_name}", "bookmarked": True},
        )
        voice_id = str(response.get("voice_id") or "").strip()
        if not voice_id:
            raise NovaTtsError(f"ElevenLabs did not return a voice ID for {character_name}.")
        return voice_id

    def synthesize(
        self,
        *,
        voice_id: str,
        text: str,
        previous_text: str | None,
        next_text: str | None,
        level: str,
        seed: int,
    ) -> tuple[bytes, int]:
        settings = dict(VOICE_SETTINGS)
        settings["speed"] = speed_for_level(level)
        payload: dict[str, Any] = {
            "text": text,
            "model_id": MODEL_ID,
            "voice_settings": settings,
            "seed": seed,
        }
        if previous_text:
            payload["previous_text"] = previous_text
        if next_text:
            payload["next_text"] = next_text
        response = self._json_request(
            "POST",
            f"/v1/text-to-speech/{quote(voice_id, safe='')}/with-timestamps",
            query={"output_format": OUTPUT_FORMAT},
            payload=payload,
        )
        encoded = response.get("audio_base64")
        if not encoded:
            raise NovaTtsError("ElevenLabs response did not contain audio_base64.")
        try:
            audio = base64.b64decode(encoded, validate=True)
        except ValueError as error:
            raise NovaTtsError("ElevenLabs returned invalid base64 audio.") from error
        if len(audio) < 100:
            raise NovaTtsError("ElevenLabs returned an unexpectedly small audio file.")
        return audio, duration_from_alignment(response)


def load_voice_map() -> dict[str, Any]:
    mapping = read_json(VOICE_MAP_PATH, {})
    if mapping.get("model_id") != MODEL_ID:
        raise NovaTtsError(f"{VOICE_MAP_PATH} has an unexpected model_id.")
    if not isinstance(mapping.get("characters"), list):
        raise NovaTtsError(f"{VOICE_MAP_PATH} has no characters list.")
    return mapping


def validate_voice_map(mapping: dict[str, Any], require_complete: bool = True) -> None:
    names: set[str] = set()
    voice_ids: set[str] = set()
    missing: list[str] = []
    for character in mapping["characters"]:
        name = str(character.get("name") or "").strip()
        voice_id = str(character.get("voice_id") or "").strip()
        if not name or name in names:
            raise NovaTtsError(f"Duplicate or empty character in {VOICE_MAP_PATH}: {name!r}")
        names.add(name)
        if not voice_id:
            missing.append(name)
            continue
        if voice_id in voice_ids:
            raise NovaTtsError(f"Voice {voice_id} is assigned to more than one character.")
        voice_ids.add(voice_id)
    if require_complete and missing:
        raise NovaTtsError("Characters without a voice: " + ", ".join(missing))


def bootstrap_voices(yes: bool) -> None:
    mapping = load_voice_map()
    validate_voice_map(mapping, require_complete=False)
    missing = [item for item in mapping["characters"] if not item.get("voice_id")]
    if not missing:
        print("All Nova characters already have distinct voices.")
        return
    if not yes:
        raise NovaTtsError(
            f"This will add {len(missing)} German voices to ElevenLabs. Re-run with --yes."
        )

    client = ElevenLabsClient(required_env("ELEVENLABS_API_KEY"))
    pools: dict[str, list[dict[str, Any]]] = {}
    used_sources = {
        str(item.get("source_voice_id") or "")
        for item in mapping["characters"]
        if item.get("source_voice_id")
    }
    used_assigned = {
        str(item.get("voice_id") or "")
        for item in mapping["characters"]
        if item.get("voice_id")
    }

    for gender in sorted({str(item.get("gender")) for item in missing}):
        pools[gender] = [
            voice
            for voice in client.shared_voices(gender)
            if str(voice["voice_id"]) not in used_sources
        ]
        needed = sum(1 for item in missing if item.get("gender") == gender)
        if len(pools[gender]) < needed:
            raise NovaTtsError(
                f"Only {len(pools[gender])} suitable German {gender} voices were found; "
                f"{needed} are required."
            )

    for character in missing:
        gender = str(character["gender"])
        source = pools[gender].pop(0)
        assigned_id = client.add_shared_voice(source, str(character["name"]))
        if assigned_id in used_assigned:
            raise NovaTtsError(f"ElevenLabs returned duplicate voice ID {assigned_id}.")
        character.update(
            {
                "voice_id": assigned_id,
                "voice_name": source.get("name"),
                "source_voice_id": source.get("voice_id"),
                "public_owner_id": source.get("public_owner_id"),
                "verified_language": "de",
                "assigned_at": utc_now(),
            }
        )
        used_sources.add(str(source["voice_id"]))
        used_assigned.add(assigned_id)
        mapping["updated_at"] = utc_now()
        write_json_atomic(VOICE_MAP_PATH, mapping)
        print(f"Assigned a distinct German voice to {character['name']}.")

    validate_voice_map(mapping, require_complete=True)


def mysql_connection():
    try:
        import mysql.connector  # type: ignore
    except ModuleNotFoundError as error:
        raise NovaTtsError(
            "mysql-connector-python is missing. Install nova/tts/requirements.txt."
        ) from error
    return mysql.connector.connect(
        host=required_env("NOVA_DB_HOST"),
        port=int(os.environ.get("NOVA_DB_PORT", "").strip() or "3306"),
        user=required_env("NOVA_DB_USER"),
        password=required_env("NOVA_DB_PASSWORD"),
        database=required_env("NOVA_DB_NAME"),
        charset="utf8mb4",
        use_unicode=True,
        connection_timeout=20,
    )


def fetch_turns() -> list[dict[str, Any]]:
    connection = mysql_connection()
    try:
        cursor = connection.cursor(dictionary=True)
        cursor.execute(
            """
            SELECT
              t.id,
              t.lesson_id,
              t.sort_order,
              t.role,
              t.text,
              c.name AS character_name,
              c.gender AS character_gender,
              lv.cefr_level
            FROM turns AS t
            JOIN characters AS c ON c.id = t.character_id
            JOIN lessons AS l ON l.id = t.lesson_id
            JOIN chapters AS ch ON ch.id = l.chapter_id
            JOIN modules AS m ON m.id = ch.module_id
            JOIN levels AS lv ON lv.id = m.level_id
            JOIN courses AS co ON co.id = lv.course_id
            WHERE co.learning_language = %s
              AND co.base_language = %s
            ORDER BY t.lesson_id, t.sort_order, t.id
            """,
            COURSE,
        )
        rows = list(cursor.fetchall())
    finally:
        connection.close()

    by_lesson: dict[int, list[dict[str, Any]]] = {}
    for row in rows:
        by_lesson.setdefault(int(row["lesson_id"]), []).append(row)
    for lesson_rows in by_lesson.values():
        for index, row in enumerate(lesson_rows):
            row["previous_text"] = lesson_rows[index - 1]["text"] if index else None
            row["next_text"] = (
                lesson_rows[index + 1]["text"] if index + 1 < len(lesson_rows) else None
            )
    return rows


def new_manifest() -> dict[str, Any]:
    return {
        "version": 1,
        "storage": "github-temporary",
        "path_mode": "repository-relative",
        "course": "de-fa",
        "provider": "elevenlabs",
        "model_id": MODEL_ID,
        "output_format": OUTPUT_FORMAT,
        "updated_at": None,
        "entries": {},
    }


def load_manifest() -> dict[str, Any]:
    manifest = read_json(MANIFEST_PATH, new_manifest())
    if manifest.get("version") != 1 or not isinstance(manifest.get("entries"), dict):
        raise NovaTtsError(f"Unsupported manifest at {MANIFEST_PATH}.")
    return manifest


def build_tasks(
    rows: list[dict[str, Any]], mapping: dict[str, Any], manifest: dict[str, Any]
) -> list[dict[str, Any]]:
    validate_voice_map(mapping, require_complete=True)
    voices = {item["name"]: item for item in mapping["characters"]}
    tasks: list[dict[str, Any]] = []
    database_names = {str(row["character_name"]) for row in rows}
    unknown = sorted(database_names - set(voices))
    if unknown:
        raise NovaTtsError(
            "Database characters missing from voice_map.json: " + ", ".join(unknown)
        )

    for row in rows:
        character = voices[str(row["character_name"])]
        voice_id = str(character["voice_id"])
        level = str(row["cefr_level"])
        fingerprint = request_fingerprint(
            text=str(row["text"]),
            previous_text=row.get("previous_text"),
            next_text=row.get("next_text"),
            voice_id=voice_id,
            level=level,
        )
        filename = f"turn_{int(row['id']):06d}_{fingerprint[:12]}.mp3"
        relative = Path("nova") / "audio" / "turns" / "de-fa" / character_slug(
            str(row["character_name"])
        ) / filename
        target = REPO_ROOT / relative
        existing = manifest["entries"].get(str(row["id"])) or {}
        if (
            existing.get("fingerprint") == fingerprint
            and existing.get("path") == relative.as_posix()
            and target.is_file()
            and target.stat().st_size >= 100
        ):
            continue
        tasks.append(
            {
                **row,
                "voice_id": voice_id,
                "voice_name": character.get("voice_name"),
                "level": level,
                "fingerprint": fingerprint,
                "relative_path": relative.as_posix(),
                "target_path": target,
            }
        )
    return tasks


def print_plan(rows: list[dict[str, Any]], tasks: list[dict[str, Any]]) -> None:
    characters = len({str(row["character_name"]) for row in rows})
    total_characters = sum(len(str(task["text"])) for task in tasks)
    estimated_usd = total_characters / 1000 * 0.10
    print(f"Database turns: {len(rows):,}")
    print(f"Characters: {characters:,}")
    print(f"Up-to-date audio files: {len(rows) - len(tasks):,}")
    print(f"Audio files to generate: {len(tasks):,}")
    print(f"Billable text characters: {total_characters:,}")
    print(f"Estimated Multilingual v2 API cost: USD {estimated_usd:.2f}")


def command_plan() -> None:
    mapping = load_voice_map()
    rows = fetch_turns()
    tasks = build_tasks(rows, mapping, load_manifest())
    print_plan(rows, tasks)


def generate_one(client: ElevenLabsClient, task: dict[str, Any]) -> dict[str, Any]:
    seed = int(str(task["fingerprint"])[:8], 16)
    audio, duration_ms = client.synthesize(
        voice_id=str(task["voice_id"]),
        text=str(task["text"]),
        previous_text=task.get("previous_text"),
        next_text=task.get("next_text"),
        level=str(task["level"]),
        seed=seed,
    )
    target: Path = task["target_path"]
    target.parent.mkdir(parents=True, exist_ok=True)
    temporary = target.with_name(
        f".{target.name}.{os.getpid()}.{threading.get_ident()}.tmp"
    )
    with temporary.open("wb") as handle:
        handle.write(audio)
    os.replace(temporary, target)
    return {
        "turn_id": int(task["id"]),
        "lesson_id": int(task["lesson_id"]),
        "turn_order": int(task["sort_order"]),
        "role": str(task["role"]),
        "character": str(task["character_name"]),
        "cefr_level": str(task["level"]),
        "text_sha256": sha256_text(str(task["text"])),
        "fingerprint": str(task["fingerprint"]),
        "voice_id": str(task["voice_id"]),
        "voice_name": task.get("voice_name"),
        "model_id": MODEL_ID,
        "output_format": OUTPUT_FORMAT,
        "speed": speed_for_level(str(task["level"])),
        "duration_ms": duration_ms,
        "path": str(task["relative_path"]),
        "generated_at": utc_now(),
    }


def command_generate(*, yes: bool, limit: int | None, concurrency: int) -> None:
    mapping = load_voice_map()
    manifest = load_manifest()
    rows = fetch_turns()
    tasks = build_tasks(rows, mapping, manifest)
    if limit is not None:
        tasks = tasks[:limit]
    print_plan(rows, tasks)
    if not tasks:
        print("Nothing to generate.")
        return
    if not yes:
        raise NovaTtsError("Generation spends ElevenLabs quota. Re-run with --yes.")
    if concurrency < 1 or concurrency > 10:
        raise NovaTtsError("--concurrency must be between 1 and 10.")

    client = ElevenLabsClient(required_env("ELEVENLABS_API_KEY"))
    completed = 0
    failures: list[dict[str, Any]] = []
    with concurrent.futures.ThreadPoolExecutor(max_workers=concurrency) as executor:
        futures = {executor.submit(generate_one, client, task): task for task in tasks}
        for future in concurrent.futures.as_completed(futures):
            task = futures[future]
            try:
                entry = future.result()
                manifest["entries"][str(entry["turn_id"])] = entry
                completed += 1
                if completed % 10 == 0:
                    manifest["updated_at"] = utc_now()
                    write_json_atomic(MANIFEST_PATH, manifest)
                    print(f"Generated {completed:,}/{len(tasks):,} audio files.")
            except Exception as error:  # continue so the next run can resume
                failures.append(
                    {
                        "turn_id": int(task["id"]),
                        "character": str(task["character_name"]),
                        "error": str(error)[:1000],
                    }
                )
                print(f"Turn {task['id']} failed: {error}", file=sys.stderr)

    manifest["updated_at"] = utc_now()
    manifest["entries"] = dict(
        sorted(manifest["entries"].items(), key=lambda item: int(item[0]))
    )
    write_json_atomic(MANIFEST_PATH, manifest)
    report = {
        "generated_at": utc_now(),
        "requested": len(tasks),
        "completed": completed,
        "failed": len(failures),
        "failures": failures,
    }
    write_json_atomic(AUDIO_DIR / "last_generation_report.json", report)
    print(f"Completed: {completed:,}; failed: {len(failures):,}.")
    if failures:
        raise NovaTtsError("Some turns failed. Successful files were saved; re-run to resume.")


def sql_quote(value: str) -> str:
    return "'" + value.replace("\\", "\\\\").replace("'", "''") + "'"


def command_export_sql(url_prefix: str | None) -> None:
    mapping = load_voice_map()
    validate_voice_map(mapping, require_complete=True)
    manifest = load_manifest()
    entries = list(manifest["entries"].values())
    if not entries:
        raise NovaTtsError("The audio manifest is empty.")
    prefix = (url_prefix or "").rstrip("/")
    lines = [
        "-- Generated by nova/tts/nova_tts.py export-sql",
        "-- Import only after the audio files are available at the chosen URL prefix.",
        "SET NAMES utf8mb4;",
        "START TRANSACTION;",
        "",
    ]
    for character in mapping["characters"]:
        lines.append(
            "UPDATE characters AS c JOIN courses AS co ON co.id=c.course_id "
            f"SET c.voice_key={sql_quote(str(character['voice_id']))} "
            f"WHERE co.learning_language='de' AND co.base_language='fa' "
            f"AND c.name={sql_quote(str(character['name']))};"
        )
    lines.append("")
    for entry in sorted(entries, key=lambda item: int(item["turn_id"])):
        stored_path = str(entry["path"])
        if prefix:
            relative = stored_path.removeprefix("nova/audio/")
            audio_url = f"{prefix}/{relative}"
        else:
            audio_url = stored_path
        if len(audio_url) > 1024:
            raise NovaTtsError(f"Audio URL is too long for turn {entry['turn_id']}.")
        tts_metadata = json.dumps(
            {
                "provider": "elevenlabs",
                "modelId": entry["model_id"],
                "voiceId": entry["voice_id"],
                "fingerprint": entry["fingerprint"],
                "textSha256": entry["text_sha256"],
            },
            ensure_ascii=False,
            separators=(",", ":"),
        )
        lines.append(
            "UPDATE turns SET "
            f"audio_url={sql_quote(audio_url)}, "
            f"audio_duration_ms={int(entry['duration_ms'])}, "
            "metadata=JSON_SET(COALESCE(metadata,JSON_OBJECT()),'$.tts',"
            f"CAST({sql_quote(tts_metadata)} AS JSON)) "
            f"WHERE id={int(entry['turn_id'])} "
            f"AND SHA2(text,256)={sql_quote(str(entry['text_sha256']))};"
        )
    lines.extend(["", "COMMIT;", ""])
    SQL_PATH.parent.mkdir(parents=True, exist_ok=True)
    temporary = SQL_PATH.with_name(f".{SQL_PATH.name}.tmp")
    with temporary.open("w", encoding="utf-8", newline="\n") as handle:
        handle.write("\n".join(lines))
    os.replace(temporary, SQL_PATH)
    print(f"Wrote {len(entries):,} turn updates to {SQL_PATH}.")


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description=__doc__)
    subparsers = parser.add_subparsers(dest="command", required=True)

    voices = subparsers.add_parser(
        "bootstrap-voices", description="Assign one verified German voice per character."
    )
    voices.add_argument("--yes", action="store_true")

    subparsers.add_parser("plan", description="Read the database and estimate generation.")

    generate = subparsers.add_parser(
        "generate", description="Generate missing or stale turn audio."
    )
    generate.add_argument("--yes", action="store_true")
    generate.add_argument("--limit", type=int)
    generate.add_argument(
        "--concurrency", type=int, default=int(os.environ.get("NOVA_TTS_CONCURRENCY", "2"))
    )

    export = subparsers.add_parser(
        "export-sql", description="Create the SQL that links final audio URLs to turns."
    )
    export.add_argument(
        "--url-prefix",
        help="Public base URL after migration. Omit to export repository-relative paths.",
    )
    return parser


def main() -> int:
    args = build_parser().parse_args()
    try:
        if args.command == "bootstrap-voices":
            bootstrap_voices(args.yes)
        elif args.command == "plan":
            command_plan()
        elif args.command == "generate":
            command_generate(yes=args.yes, limit=args.limit, concurrency=args.concurrency)
        elif args.command == "export-sql":
            command_export_sql(args.url_prefix)
        else:  # pragma: no cover
            raise NovaTtsError(f"Unknown command: {args.command}")
        return 0
    except (NovaTtsError, ValueError) as error:
        print(f"ERROR: {error}", file=sys.stderr)
        return 2


if __name__ == "__main__":
    raise SystemExit(main())

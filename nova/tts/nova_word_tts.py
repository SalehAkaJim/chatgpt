#!/usr/bin/env python3
"""Generate ElevenLabs pronunciation audio for Nova's shared words dictionary.

This program never connects to a database. It parses Nova's canonical and
staged Series SQL, generates one reusable MP3 per unique words row with the
fixed Lori voice, keeps a resumable manifest, and writes a standalone SQL file
that updates only words.audio_url and words.audio_duration_ms.
"""

from __future__ import annotations

import argparse
import base64
import concurrent.futures
import hashlib
import json
import os
from pathlib import Path
import re
import sys
import threading
from typing import Any, Iterable
from urllib.parse import quote

CURRENT_DIR = Path(__file__).resolve().parent
if str(CURRENT_DIR) not in sys.path:
    sys.path.insert(0, str(CURRENT_DIR))

from nova_tts import (
    AUDIO_DIR,
    MODEL_ID,
    OUTPUT_FORMAT,
    REPO_ROOT,
    SCRIPT_DIR,
    ElevenLabsClient,
    NovaTtsError,
    discover_source_files,
    duration_from_alignment,
    entry_audio_url,
    parse_insert,
    parse_int,
    parse_source_locator,
    read_json,
    remove_sql_line_comments,
    required_env,
    sha256_text,
    split_sql_statements,
    sql_quote,
    sql_unquote,
    utc_now,
    write_json_atomic,
    write_text_atomic,
)


LORI_SOURCE_VOICE_ID = "TbMNBJ27fH2U0VgpSNko"
LORI_REQUESTED_NAME = "Lori - Happy and Sweet"
WORD_SPEED = 0.90
WORD_VOICE_SETTINGS = {
    "stability": 0.55,
    "similarity_boost": 0.75,
    "style": 0.0,
    "use_speaker_boost": True,
    "speed": WORD_SPEED,
}

VOICE_CONFIG_PATH = SCRIPT_DIR / "word_voice.json"
MANIFEST_PATH = AUDIO_DIR / "word_manifest.json"
SQL_PATH = AUDIO_DIR / "update_word_audio.sql"
REPORT_PATH = AUDIO_DIR / "last_word_generation_report.json"


def word_identity(row: dict[str, Any]) -> str:
    canonical = json.dumps(
        {
            "lemma": str(row["lemma"]),
            "part_of_speech": str(row["part_of_speech"]),
            "translation": str(row["translation"]),
        },
        ensure_ascii=False,
        sort_keys=True,
        separators=(",", ":"),
    )
    return sha256_text(canonical)


def word_slug(value: str) -> str:
    transliterated = (
        value.casefold()
        .replace("ä", "ae")
        .replace("ö", "oe")
        .replace("ü", "ue")
        .replace("ß", "ss")
    )
    slug = re.sub(r"[^a-z0-9]+", "-", transliterated).strip("-")
    return (slug or "word")[:80]


def word_fingerprint(*, text: str, voice_id: str) -> str:
    canonical = json.dumps(
        {
            "asset_type": "word-pronunciation",
            "model_id": MODEL_ID,
            "output_format": OUTPUT_FORMAT,
            "voice_id": voice_id,
            "text": text,
            "voice_settings": WORD_VOICE_SETTINGS,
        },
        ensure_ascii=False,
        sort_keys=True,
        separators=(",", ":"),
    )
    return sha256_text(canonical)


def compact_voice_metadata(voice: dict[str, Any]) -> dict[str, Any]:
    verified_languages: list[dict[str, Any]] = []
    for item in voice.get("verified_languages") or []:
        if isinstance(item, dict):
            verified_languages.append(
                {
                    key: item.get(key)
                    for key in ("language", "model_id", "accent", "locale")
                    if item.get(key) is not None
                }
            )
    return {
        "name": voice.get("name"),
        "gender": str(voice.get("gender") or "").casefold(),
        "language": str(voice.get("language") or "").casefold() or None,
        "accent": voice.get("accent"),
        "age": voice.get("age"),
        "descriptive": voice.get("descriptive"),
        "description": voice.get("description"),
        "use_case": voice.get("use_case"),
        "category": voice.get("category"),
        "verified_languages": verified_languages,
    }


def load_word_voice() -> dict[str, Any]:
    config = read_json(VOICE_CONFIG_PATH, {})
    validate_word_voice(config, require_assigned=False)
    return config


def validate_word_voice(
    config: dict[str, Any], *, require_assigned: bool = True
) -> None:
    if config.get("version") != 1:
        raise NovaTtsError(f"Unsupported word voice config at {VOICE_CONFIG_PATH}.")
    if config.get("provider") != "elevenlabs" or config.get("model_id") != MODEL_ID:
        raise NovaTtsError(f"Unexpected provider/model in {VOICE_CONFIG_PATH}.")
    if config.get("source_voice_id") != LORI_SOURCE_VOICE_ID:
        raise NovaTtsError("The word voice must use the approved Lori source voice ID.")
    if not str(config.get("requested_name") or "").casefold().startswith("lori"):
        raise NovaTtsError("The word voice config is not pinned to Lori.")
    profile = config.get("required_profile") or {}
    if str(profile.get("gender") or "").casefold() != "female":
        raise NovaTtsError("The approved Lori profile must be female.")

    voice_id = str(config.get("voice_id") or "").strip()
    if not voice_id:
        if require_assigned:
            raise NovaTtsError("Lori has not been added to the ElevenLabs account yet.")
        return
    metadata = config.get("source_metadata") or {}
    if not str(metadata.get("name") or "").casefold().startswith("lori"):
        raise NovaTtsError("The assigned word voice is not auditable as Lori.")
    if str(metadata.get("gender") or "").casefold() != "female":
        raise NovaTtsError("The assigned Lori source voice is not female.")


def find_lori_source(client: ElevenLabsClient) -> dict[str, Any]:
    for page in range(20):
        response = client._json_request(
            "GET",
            "/v1/shared-voices",
            query={
                "page_size": 100,
                "page": page,
                "search": "Lori",
                "gender": "female",
                "include_custom_rates": "false",
                "include_live_moderated": "false",
            },
        )
        for voice in response.get("voices") or []:
            if str(voice.get("voice_id") or "") == LORI_SOURCE_VOICE_ID:
                name = str(voice.get("name") or "")
                gender = str(voice.get("gender") or "").casefold()
                if not name.casefold().startswith("lori") or gender != "female":
                    raise NovaTtsError(
                        "The pinned Lori voice ID no longer matches the approved female voice."
                    )
                if not voice.get("public_owner_id"):
                    raise NovaTtsError("The approved Lori voice has no public owner ID.")
                return voice
        if not response.get("has_more"):
            break
    raise NovaTtsError(
        "The approved Lori voice was not found in the ElevenLabs shared voice library."
    )


def account_has_lori(client: ElevenLabsClient) -> bool:
    response = client._json_request(
        "GET",
        "/v2/voices",
        query={
            "page_size": 100,
            "voice_ids": [LORI_SOURCE_VOICE_ID],
            "include_total_count": "false",
        },
    )
    return any(
        str(voice.get("voice_id") or "") == LORI_SOURCE_VOICE_ID
        for voice in response.get("voices") or []
    )


def bootstrap_lori(yes: bool) -> None:
    config = load_word_voice()
    if config.get("voice_id"):
        validate_word_voice(config, require_assigned=True)
        print(
            f"Lori is already assigned for words: {config.get('voice_name')} "
            f"({config.get('voice_id')})."
        )
        return
    if not yes:
        raise NovaTtsError(
            "Adding Lori to ElevenLabs changes the voice collection. Re-run with --yes."
        )

    client = ElevenLabsClient(required_env("ELEVENLABS_API_KEY"))
    source = find_lori_source(client)
    if account_has_lori(client):
        assigned_id = LORI_SOURCE_VOICE_ID
    else:
        assigned_id = client.add_shared_voice(source, "Words - Lori")

    config.update(
        {
            "voice_id": assigned_id,
            "voice_name": source.get("name"),
            "source_metadata": compact_voice_metadata(source),
            "assigned_at": utc_now(),
            "updated_at": utc_now(),
        }
    )
    validate_word_voice(config, require_assigned=True)
    write_json_atomic(VOICE_CONFIG_PATH, config)
    print(f"Assigned Lori for all words: {source.get('name')} ({assigned_id}).")


def parse_source_words(path: Path, repo_root: Path = REPO_ROOT) -> list[dict[str, Any]]:
    sql = path.read_text(encoding="utf-8")
    locator = parse_source_locator(path, sql)
    try:
        source_file = path.resolve().relative_to(repo_root.resolve()).as_posix()
    except ValueError:
        source_file = path.name

    rows: list[dict[str, Any]] = []
    for statement in split_sql_statements(remove_sql_line_comments(sql)):
        values = parse_insert(statement, "words")
        if values is None:
            continue
        required = ("lemma", "display_form", "part_of_speech", "translation")
        missing = [column for column in required if column not in values]
        if missing:
            raise NovaTtsError(
                f"Word INSERT in {path} is missing columns: {', '.join(missing)}."
            )
        row = {
            **locator,
            "lemma": sql_unquote(values["lemma"]),
            "display_form": sql_unquote(values["display_form"]),
            "part_of_speech": sql_unquote(values["part_of_speech"]),
            "translation": sql_unquote(values["translation"]),
            "difficulty": parse_int(values["difficulty"], "word difficulty")
            if "difficulty" in values
            else None,
            "source_file": source_file,
        }
        if not all(str(row[column]).strip() for column in required):
            raise NovaTtsError(f"Word INSERT in {path} contains an empty identity field.")
        row["key"] = word_identity(row)
        rows.append(row)
    return rows


def word_sort_key(row: dict[str, Any]) -> tuple[str, str, str, str]:
    return (
        str(row["lemma"]).casefold(),
        str(row["part_of_speech"]).casefold(),
        str(row["translation"]).casefold(),
        str(row["key"]),
    )


def load_source_words(repo_root: Path = REPO_ROOT) -> list[dict[str, Any]]:
    unique: dict[str, dict[str, Any]] = {}
    for path in discover_source_files(repo_root):
        for row in parse_source_words(path, repo_root):
            key = str(row["key"])
            previous = unique.get(key)
            if previous is None:
                unique[key] = row
                continue
            for field in ("lemma", "display_form", "part_of_speech", "translation"):
                if previous[field] != row[field]:
                    raise NovaTtsError(
                        f"Conflicting duplicate word {row['lemma']!r} in "
                        f"{previous['source_file']} and {row['source_file']}."
                    )
            if int(row["series"]) < int(previous["series"]):
                unique[key] = row
    if not unique:
        raise NovaTtsError("No words INSERT rows were found in repository Series SQL.")
    return sorted(unique.values(), key=word_sort_key)


def new_manifest() -> dict[str, Any]:
    return {
        "version": 1,
        "asset_type": "word-pronunciation",
        "storage": "github-temporary",
        "path_mode": "repository-relative",
        "course": "de-fa",
        "source": "repository-sql-only",
        "provider": "elevenlabs",
        "model_id": MODEL_ID,
        "output_format": OUTPUT_FORMAT,
        "voice_source_id": LORI_SOURCE_VOICE_ID,
        "initialized_at": None,
        "updated_at": None,
        "entries": {},
    }


def load_manifest() -> dict[str, Any]:
    manifest = read_json(MANIFEST_PATH, new_manifest())
    if manifest.get("version") != 1 or not isinstance(manifest.get("entries"), dict):
        raise NovaTtsError(f"Unsupported word manifest at {MANIFEST_PATH}.")
    if manifest.get("asset_type") != "word-pronunciation":
        raise NovaTtsError(f"Unexpected asset type at {MANIFEST_PATH}.")
    if manifest.get("voice_source_id") != LORI_SOURCE_VOICE_ID:
        raise NovaTtsError("The word manifest was generated with a different voice.")
    return manifest


def is_initialized(config: dict[str, Any], manifest: dict[str, Any]) -> bool:
    return bool(
        config.get("voice_id")
        and MANIFEST_PATH.is_file()
        and manifest.get("initialized_at")
    )


def build_tasks(
    rows: list[dict[str, Any]], config: dict[str, Any], manifest: dict[str, Any]
) -> list[dict[str, Any]]:
    validate_word_voice(config, require_assigned=True)
    voice_id = str(config["voice_id"])
    tasks: list[dict[str, Any]] = []
    for row in rows:
        text = str(row["display_form"])
        fingerprint = word_fingerprint(text=text, voice_id=voice_id)
        filename = f"{word_slug(text)}-{fingerprint[:12]}.mp3"
        relative = (
            Path("nova")
            / "audio"
            / "words"
            / "de-fa"
            / str(row["key"])[:2]
            / filename
        )
        target = REPO_ROOT / relative
        existing = manifest["entries"].get(str(row["key"])) or {}
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
                "text": text,
                "voice_id": voice_id,
                "voice_name": config.get("voice_name"),
                "fingerprint": fingerprint,
                "relative_path": relative.as_posix(),
                "target_path": target,
            }
        )
    return tasks


def print_plan(
    rows: list[dict[str, Any]],
    tasks: list[dict[str, Any]] | None,
    config: dict[str, Any],
) -> None:
    source_files = len({str(row["source_file"]) for row in rows})
    print(f"Repository chapter SQL files: {source_files:,}")
    print(f"Unique repository words: {len(rows):,}")
    print(f"Word voice: {config.get('voice_name') or LORI_REQUESTED_NAME}")
    if tasks is None:
        if config.get("voice_id"):
            print("Lori has a validated ElevenLabs assignment.")
        else:
            print("Lori is awaiting validated assignment in ElevenLabs.")
        print(
            "Billable text characters after voice assignment: "
            f"{sum(len(str(row['display_form'])) for row in rows):,}"
        )
        return
    print(f"Up-to-date word audio files: {len(rows) - len(tasks):,}")
    print(f"Word audio files to generate: {len(tasks):,}")
    print(
        f"Billable text characters: {sum(len(str(task['text'])) for task in tasks):,}"
    )


def command_validate_sources() -> None:
    config = load_word_voice()
    rows = load_source_words()
    print_plan(rows, None, config)
    print("Repository SQL word parsing and Lori configuration checks passed.")


def command_plan() -> None:
    config = load_word_voice()
    rows = load_source_words()
    try:
        validate_word_voice(config, require_assigned=True)
    except NovaTtsError:
        print_plan(rows, None, config)
        return
    print_plan(rows, build_tasks(rows, config, load_manifest()), config)


def synthesize_word(
    client: ElevenLabsClient, task: dict[str, Any]
) -> tuple[bytes, int]:
    payload = {
        "text": str(task["text"]),
        "model_id": MODEL_ID,
        "voice_settings": WORD_VOICE_SETTINGS,
        "seed": int(str(task["fingerprint"])[:8], 16),
    }
    response = client._json_request(
        "POST",
        f"/v1/text-to-speech/{quote(str(task['voice_id']), safe='')}/with-timestamps",
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
        raise NovaTtsError("ElevenLabs returned an unexpectedly small word audio file.")
    return audio, duration_from_alignment(response)


def generate_one(client: ElevenLabsClient, task: dict[str, Any]) -> dict[str, Any]:
    audio, duration_ms = synthesize_word(client, task)
    target: Path = task["target_path"]
    target.parent.mkdir(parents=True, exist_ok=True)
    temporary = target.with_name(
        f".{target.name}.{os.getpid()}.{threading.get_ident()}.tmp"
    )
    with temporary.open("wb") as handle:
        handle.write(audio)
    os.replace(temporary, target)
    return {
        "key": str(task["key"]),
        "series": int(task["series"]),
        "cefr_level": str(task["cefr_level"]),
        "lemma": str(task["lemma"]),
        "display_form": str(task["display_form"]),
        "part_of_speech": str(task["part_of_speech"]),
        "translation": str(task["translation"]),
        "source_file": str(task["source_file"]),
        "text_sha256": sha256_text(str(task["text"])),
        "fingerprint": str(task["fingerprint"]),
        "voice_id": str(task["voice_id"]),
        "voice_name": task.get("voice_name"),
        "model_id": MODEL_ID,
        "output_format": OUTPUT_FORMAT,
        "speed": WORD_SPEED,
        "duration_ms": duration_ms,
        "path": str(task["relative_path"]),
        "generated_at": utc_now(),
    }


def command_generate(
    *, yes: bool, limit: int | None, concurrency: int, after_series: bool
) -> None:
    config = load_word_voice()
    manifest = load_manifest()
    if after_series and not is_initialized(config, manifest):
        print(
            "Word audio initial generation has not been confirmed yet; "
            "automatic Series generation was skipped."
        )
        return
    validate_word_voice(config, require_assigned=True)
    rows = load_source_words()
    tasks = build_tasks(rows, config, manifest)
    if limit is not None:
        tasks = tasks[:limit]
    print_plan(rows, tasks, config)
    if not tasks:
        if manifest["entries"]:
            write_update_sql(manifest)
        print("Nothing to generate.")
        return
    if not yes:
        raise NovaTtsError("Generation spends ElevenLabs quota. Re-run with --yes.")
    if concurrency < 1 or concurrency > 10:
        raise NovaTtsError("--concurrency must be between 1 and 10.")

    if not manifest.get("initialized_at"):
        manifest["initialized_at"] = utc_now()
        manifest["updated_at"] = utc_now()
        write_json_atomic(MANIFEST_PATH, manifest)

    client = ElevenLabsClient(required_env("ELEVENLABS_API_KEY"))
    completed = 0
    failures: list[dict[str, Any]] = []
    with concurrent.futures.ThreadPoolExecutor(max_workers=concurrency) as executor:
        futures = {executor.submit(generate_one, client, task): task for task in tasks}
        for future in concurrent.futures.as_completed(futures):
            task = futures[future]
            try:
                entry = future.result()
                manifest["entries"][str(entry["key"])] = entry
                completed += 1
                if completed % 10 == 0:
                    manifest["updated_at"] = utc_now()
                    manifest["entries"] = dict(
                        sorted(
                            manifest["entries"].items(),
                            key=lambda item: word_sort_key(item[1]),
                        )
                    )
                    write_json_atomic(MANIFEST_PATH, manifest)
                    print(f"Generated {completed:,}/{len(tasks):,} word audio files.")
            except Exception as error:  # preserve resumable progress
                failures.append(
                    {
                        "key": str(task["key"]),
                        "lemma": str(task["lemma"]),
                        "error": str(error)[:1000],
                    }
                )
                print(f"Word {task['lemma']!r} failed: {error}", file=sys.stderr)

    manifest["updated_at"] = utc_now()
    manifest["entries"] = dict(
        sorted(manifest["entries"].items(), key=lambda item: word_sort_key(item[1]))
    )
    write_json_atomic(MANIFEST_PATH, manifest)
    write_update_sql(manifest)
    report = {
        "generated_at": utc_now(),
        "requested": len(tasks),
        "completed": completed,
        "failed": len(failures),
        "failures": failures,
    }
    write_json_atomic(REPORT_PATH, report)
    print(f"Completed: {completed:,}; failed: {len(failures):,}.")
    if failures:
        raise NovaTtsError(
            "Some words failed. Successful files were saved; re-run to resume."
        )


def render_update_sql(
    entries: Iterable[dict[str, Any]], url_prefix: str | None = None
) -> str:
    ordered = sorted(entries, key=word_sort_key)
    if not ordered:
        raise NovaTtsError("The word audio manifest is empty.")
    lines = [
        "-- Generated by nova/tts/nova_word_tts.py. Do not edit by hand.",
        "-- The generator never connected to the database.",
        "-- Persistent changes are limited to words.audio_url and words.audio_duration_ms.",
        "SET NAMES utf8mb4;",
        "DROP TEMPORARY TABLE IF EXISTS nova_word_audio_updates;",
        "CREATE TEMPORARY TABLE nova_word_audio_updates (",
        "  word_key CHAR(64) NOT NULL PRIMARY KEY,",
        "  lemma VARCHAR(180) NOT NULL,",
        "  display_form VARCHAR(180) NOT NULL,",
        "  part_of_speech VARCHAR(48) NOT NULL,",
        "  translation VARCHAR(255) NOT NULL,",
        "  text_sha256 CHAR(64) NOT NULL,",
        "  audio_url VARCHAR(1024) NOT NULL,",
        "  audio_duration_ms INT UNSIGNED NOT NULL",
        ") ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;",
        "",
    ]
    for start in range(0, len(ordered), 250):
        chunk = ordered[start : start + 250]
        lines.append(
            "INSERT INTO nova_word_audio_updates "
            "(word_key,lemma,display_form,part_of_speech,translation,text_sha256,"
            "audio_url,audio_duration_ms) VALUES"
        )
        values: list[str] = []
        for entry in chunk:
            values.append(
                "("
                + ",".join(
                    [
                        sql_quote(str(entry["key"])),
                        sql_quote(str(entry["lemma"])),
                        sql_quote(str(entry["display_form"])),
                        sql_quote(str(entry["part_of_speech"])),
                        sql_quote(str(entry["translation"])),
                        sql_quote(str(entry["text_sha256"])),
                        sql_quote(entry_audio_url(entry, url_prefix)),
                        str(int(entry["duration_ms"])),
                    ]
                )
                + ")"
            )
        lines.append(",\n".join(values) + ";")
        lines.append("")
    lines.extend(
        [
            "DROP PROCEDURE IF EXISTS apply_nova_word_audio;",
            "DELIMITER $$",
            "CREATE PROCEDURE apply_nova_word_audio()",
            "BEGIN",
            "  DECLARE v_course BIGINT UNSIGNED DEFAULT NULL;",
            "  DECLARE v_expected INT UNSIGNED DEFAULT 0;",
            "  DECLARE v_invalid INT UNSIGNED DEFAULT 0;",
            "  DECLARE v_changed INT UNSIGNED DEFAULT 0;",
            "  DECLARE EXIT HANDLER FOR SQLEXCEPTION",
            "  BEGIN",
            "    ROLLBACK;",
            "    RESIGNAL;",
            "  END;",
            "",
            "  SELECT id INTO v_course FROM courses",
            "  WHERE learning_language='de' AND base_language='fa' ORDER BY id LIMIT 1;",
            "  IF v_course IS NULL THEN",
            "    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Nova de-fa course not found.';",
            "  END IF;",
            "",
            "  SELECT COUNT(*) INTO v_expected FROM nova_word_audio_updates;",
            "  SELECT COUNT(*) INTO v_invalid",
            "  FROM (",
            "    SELECT u.word_key,COUNT(w.id) AS matched_rows",
            "    FROM nova_word_audio_updates AS u",
            "    LEFT JOIN words AS w",
            "      ON w.course_id=v_course",
            "     AND BINARY w.lemma=BINARY u.lemma",
            "     AND BINARY w.display_form=BINARY u.display_form",
            "     AND BINARY w.part_of_speech=BINARY u.part_of_speech",
            "     AND BINARY w.translation=BINARY u.translation",
            "     AND SHA2(w.display_form,256)=u.text_sha256",
            "    GROUP BY u.word_key",
            "    HAVING COUNT(w.id)<>1",
            "  ) AS invalid_updates;",
            "  IF v_invalid<>0 THEN",
            "    SIGNAL SQLSTATE '45000'",
            "      SET MESSAGE_TEXT='Audio update aborted: one or more Word locators did not match exactly once.';",
            "  END IF;",
            "",
            "  START TRANSACTION;",
            "  UPDATE words AS w",
            "  JOIN nova_word_audio_updates AS u",
            "    ON BINARY u.lemma=BINARY w.lemma",
            "   AND BINARY u.display_form=BINARY w.display_form",
            "   AND BINARY u.part_of_speech=BINARY w.part_of_speech",
            "   AND BINARY u.translation=BINARY w.translation",
            "   AND u.text_sha256=SHA2(w.display_form,256)",
            "  SET w.audio_url=u.audio_url,",
            "      w.audio_duration_ms=u.audio_duration_ms",
            "  WHERE w.course_id=v_course;",
            "  SET v_changed=ROW_COUNT();",
            "  COMMIT;",
            "  SELECT v_expected AS verified_words, v_changed AS changed_words;",
            "END$$",
            "DELIMITER ;",
            "CALL apply_nova_word_audio();",
            "DROP PROCEDURE IF EXISTS apply_nova_word_audio;",
            "DROP TEMPORARY TABLE IF EXISTS nova_word_audio_updates;",
            "",
        ]
    )
    return "\n".join(lines)


def write_update_sql(
    manifest: dict[str, Any], url_prefix: str | None = None
) -> None:
    entries = list(manifest["entries"].values())
    sql = render_update_sql(entries, url_prefix)
    write_text_atomic(SQL_PATH, sql)
    print(f"Wrote {len(entries):,} guarded Word updates to {SQL_PATH}.")


def command_export_sql(url_prefix: str | None) -> None:
    write_update_sql(load_manifest(), url_prefix)


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description=__doc__)
    subparsers = parser.add_subparsers(dest="command", required=True)

    bootstrap = subparsers.add_parser(
        "bootstrap-lori",
        description="Validate and add the pinned female Lori voice for all words.",
    )
    bootstrap.add_argument("--yes", action="store_true")

    subparsers.add_parser(
        "validate-sources", description="Parse all unique words from repository SQL."
    )
    subparsers.add_parser(
        "plan", description="Inspect words and estimate missing audio generation."
    )

    generate = subparsers.add_parser(
        "generate", description="Generate missing or stale Word audio."
    )
    generate.add_argument("--yes", action="store_true")
    generate.add_argument("--limit", type=int)
    generate.add_argument("--after-series", action="store_true")
    generate.add_argument(
        "--concurrency",
        type=int,
        default=int(os.environ.get("NOVA_WORD_TTS_CONCURRENCY", "2")),
    )

    export = subparsers.add_parser(
        "export-sql", description="Rewrite the standalone Word audio update SQL."
    )
    export.add_argument(
        "--url-prefix",
        help="Public base URL after migration. Omit for repository-relative paths.",
    )
    return parser


def main() -> int:
    args = build_parser().parse_args()
    try:
        if args.command == "bootstrap-lori":
            bootstrap_lori(args.yes)
        elif args.command == "validate-sources":
            command_validate_sources()
        elif args.command == "plan":
            command_plan()
        elif args.command == "generate":
            command_generate(
                yes=args.yes,
                limit=args.limit,
                concurrency=args.concurrency,
                after_series=args.after_series,
            )
        elif args.command == "export-sql":
            command_export_sql(args.url_prefix)
        else:  # pragma: no cover
            raise NovaTtsError(f"Unknown command: {args.command}")
        return 0
    except (NovaTtsError, ValueError, KeyError) as error:
        print(f"ERROR: {error}", file=sys.stderr)
        return 2


if __name__ == "__main__":
    raise SystemExit(main())

#!/usr/bin/env python3
"""Generate ElevenLabs audio from Nova's repository SQL sources.

This program never connects to a database. It parses the canonical/staged Nova
SQL files, writes MP3 files plus a resumable manifest, and creates one separate
SQL script that the operator may run later to update only turns.audio_url and
turns.audio_duration_ms.
"""

from __future__ import annotations

import argparse
import base64
import concurrent.futures
import datetime as dt
import hashlib
import json
import math
import os
from pathlib import Path
import re
import sys
import threading
import time
from typing import Any, Iterable
from urllib.error import HTTPError, URLError
from urllib.parse import quote, urlencode
from urllib.request import Request, urlopen


API_BASE = "https://api.elevenlabs.io"
MODEL_ID = "eleven_multilingual_v2"
OUTPUT_FORMAT = "mp3_44100_64"
SPEED_BY_LEVEL = {"A1": 0.88, "A2": 0.94, "B1": 0.98, "B2": 1.0}
VOICE_SETTINGS = {
    "stability": 0.55,
    "similarity_boost": 0.75,
    "style": 0.0,
    "use_speaker_boost": True,
}
MIN_VOICE_MATCH_SCORE = 20

SCRIPT_DIR = Path(__file__).resolve().parent
REPO_ROOT = SCRIPT_DIR.parents[1]
COURSE = os.environ.get("NOVA_COURSE", "de-fa").strip().casefold()
if not re.fullmatch(r"[a-z]{2,3}-[a-z]{2,3}", COURSE):
    raise RuntimeError("NOVA_COURSE must look like de-fa or en-fa.")
TARGET_LANGUAGE, BASE_LANGUAGE = COURSE.split("-", 1)
LANGUAGE_NAME = {"de": "German", "en": "English", "fr": "French", "it": "Italian", "ko": "Korean"}.get(TARGET_LANGUAGE, TARGET_LANGUAGE)
COURSE_SLUG = COURSE.replace("-", "_")
AUDIO_DIR = REPO_ROOT / "nova" / "audio"
COURSE_AUDIO_DIR = AUDIO_DIR / COURSE
VOICE_MAP_PATH = SCRIPT_DIR / f"voice_map_{COURSE_SLUG}.json"
MANIFEST_PATH = COURSE_AUDIO_DIR / "turn_manifest.json"
SQL_PATH = COURSE_AUDIO_DIR / "update_turn_audio.sql"
REPORT_PATH = COURSE_AUDIO_DIR / "last_generation_report.json"


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


def write_text_atomic(path: Path, value: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    temporary = path.with_name(f".{path.name}.tmp")
    with temporary.open("w", encoding="utf-8", newline="\n") as handle:
        handle.write(value)
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


def normalize_words(value: Any) -> str:
    if isinstance(value, list):
        value = " ".join(str(item) for item in value)
    return re.sub(r"[^a-z0-9äöüß]+", " ", str(value or "").casefold()).strip()


def voice_language_codes(voice: dict[str, Any]) -> set[str]:
    result: set[str] = set()
    language = str(voice.get("language") or "").casefold()
    if language:
        result.add(language)
    for item in voice.get("verified_languages") or []:
        if isinstance(item, dict):
            code = str(item.get("language") or "").casefold()
            model = item.get("model_id")
            if code and model in (None, "", MODEL_ID):
                result.add(code)
        elif item:
            result.add(str(item).casefold())
    return result


def hard_voice_match(character: dict[str, Any], voice: dict[str, Any]) -> bool:
    required_gender = str(character.get("gender") or "").casefold()
    source_gender = str(voice.get("gender") or "").casefold()
    return (
        required_gender in {"female", "male", "nonbinary"}
        and source_gender == required_gender
        and TARGET_LANGUAGE in voice_language_codes(voice)
        and bool(voice.get("voice_id"))
        and bool(voice.get("public_owner_id"))
    )


def character_voice_score(
    character: dict[str, Any], voice: dict[str, Any]
) -> tuple[int, list[str]]:
    """Score only after hard gender/language checks have passed."""
    if not hard_voice_match(character, voice):
        return (-10_000, ["hard-constraint-mismatch"])
    preferences = character.get("voice_preferences") or {}
    age = normalize_words(voice.get("age"))
    use_case = normalize_words(voice.get("use_case"))
    traits = normalize_words(
        " ".join(
            str(voice.get(key) or "")
            for key in ("descriptive", "description", "name", "accent", "use_case")
        )
    )
    category = str(voice.get("category") or "").casefold()
    score = {"professional": 18, "high_quality": 14, "famous": 8}.get(category, 4)
    reasons = ["gender-exact", "german-verified" if TARGET_LANGUAGE == "de" else f"{TARGET_LANGUAGE}-verified"]

    preferred_ages = {
        normalize_words(value) for value in preferences.get("preferred_ages") or []
    }
    if age and age in preferred_ages:
        score += 12
        reasons.append(f"age:{age}")

    for preferred in preferences.get("use_cases") or []:
        token = normalize_words(preferred)
        if token and (token in use_case or token in traits):
            score += 12
            reasons.append(f"use-case:{token}")
            break

    matched_traits = 0
    for preferred in preferences.get("traits") or []:
        token = normalize_words(preferred)
        if token and token in traits:
            matched_traits += 1
            score += 5
    if matched_traits:
        reasons.append(f"traits:{matched_traits}")

    usage = int(voice.get("usage_character_count_1y") or 0)
    score += min(10, int(math.log10(max(1, usage))))
    if usage:
        reasons.append("usage-proven")
    return score, reasons


def source_voice_metadata(voice: dict[str, Any]) -> dict[str, Any]:
    return {
        "name": voice.get("name"),
        "gender": str(voice.get("gender") or "").casefold(),
        "language": str(voice.get("language") or "").casefold() or None,
        "verified_languages": voice.get("verified_languages") or [],
        "age": voice.get("age"),
        "accent": voice.get("accent"),
        "descriptive": voice.get("descriptive"),
        "use_case": voice.get("use_case"),
        "category": voice.get("category"),
    }


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
                    raise NovaTtsError(f"ElevenLabs HTTP {error.code}: {detail}") from error
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
        for page in range(20):
            response = self._json_request(
                "GET",
                "/v1/shared-voices",
                query={
                    "page_size": 100,
                    "page": page,
                    "language": TARGET_LANGUAGE,
                    "gender": gender.casefold(),
                    "sort": "usage_character_count_1y",
                    "include_custom_rates": "false",
                    "include_live_moderated": "false",
                },
            )
            voices.extend(response.get("voices") or [])
            if not response.get("has_more"):
                break
        return [
            voice
            for voice in voices
            if str(voice.get("gender") or "").casefold() == gender.casefold()
            and TARGET_LANGUAGE in voice_language_codes(voice)
            and voice.get("public_owner_id")
            and voice.get("voice_id")
        ]

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
    source_ids: set[str] = set()
    missing: list[str] = []
    archetypes = mapping.get("voice_archetypes") or {}
    for character in mapping["characters"]:
        name = str(character.get("name") or "").strip()
        gender = str(character.get("gender") or "").casefold()
        voice_id = str(character.get("voice_id") or "").strip()
        if not name or name in names:
            raise NovaTtsError(f"Duplicate or empty character in {VOICE_MAP_PATH}: {name!r}")
        if gender not in {"female", "male", "nonbinary"}:
            raise NovaTtsError(f"Invalid gender for {name}: {gender!r}")
        if not character.get("role") or not character.get("profile_source"):
            raise NovaTtsError(f"{name} is missing its canonical character profile source.")
        archetype = str(character.get("voice_archetype") or "")
        if not archetype or not isinstance(archetypes.get(archetype), dict):
            raise NovaTtsError(f"{name} has an invalid voice archetype: {archetype!r}.")
        names.add(name)
        if not voice_id:
            missing.append(name)
            continue
        source_id = str(character.get("source_voice_id") or "").strip()
        metadata = character.get("source_metadata") or {}
        if not source_id or not metadata:
            raise NovaTtsError(f"{name} has no auditable ElevenLabs source metadata.")
        if voice_id in voice_ids:
            raise NovaTtsError(f"Voice {voice_id} is assigned to more than one character.")
        if source_id in source_ids:
            raise NovaTtsError(f"Source voice {source_id} is assigned more than once.")
        if str(metadata.get("gender") or "").casefold() != gender:
            raise NovaTtsError(
                f"Voice gender mismatch for {name}: character={gender}, "
                f"voice={metadata.get('gender')!r}."
            )
        if TARGET_LANGUAGE not in voice_language_codes(metadata):
            raise NovaTtsError(f"The selected voice for {name} is not verified for {LANGUAGE_NAME}.")
        selection = character.get("selection") or {}
        if int(selection.get("score") or -10_000) < MIN_VOICE_MATCH_SCORE:
            raise NovaTtsError(f"The selected voice for {name} did not pass profile scoring.")
        voice_ids.add(voice_id)
        source_ids.add(source_id)
    if require_complete and missing:
        raise NovaTtsError("Characters without a voice: " + ", ".join(missing))


def sql_unquote(value: str) -> str:
    value = value.strip()
    if len(value) < 2 or value[0] != "'" or value[-1] != "'":
        raise NovaTtsError(f"Expected a SQL string literal, got {value[:80]!r}.")
    body = value[1:-1]
    result: list[str] = []
    index = 0
    escapes = {"0": "\0", "b": "\b", "n": "\n", "r": "\r", "t": "\t", "Z": "\x1a"}
    while index < len(body):
        char = body[index]
        if char == "'" and index + 1 < len(body) and body[index + 1] == "'":
            result.append("'")
            index += 2
        elif char == "\\" and index + 1 < len(body):
            following = body[index + 1]
            result.append(escapes.get(following, following))
            index += 2
        else:
            result.append(char)
            index += 1
    return "".join(result)


def split_sql_statements(sql: str) -> list[str]:
    statements: list[str] = []
    start = 0
    quote_char: str | None = None
    index = 0
    while index < len(sql):
        char = sql[index]
        if quote_char:
            if char == "\\":
                index += 2
                continue
            if char == quote_char:
                if index + 1 < len(sql) and sql[index + 1] == quote_char:
                    index += 2
                    continue
                quote_char = None
        elif char in {"'", '"'}:
            quote_char = char
        elif char == ";":
            statement = sql[start:index].strip()
            if statement:
                statements.append(statement)
            start = index + 1
        index += 1
    remainder = sql[start:].strip()
    if remainder:
        statements.append(remainder)
    return statements


def remove_sql_line_comments(sql: str) -> str:
    """Remove full-line MySQL comments before quote-aware statement splitting."""
    return re.sub(r"(?m)^\s*--[^\n]*(?:\n|$)", "", sql)


def split_sql_csv(value: str) -> list[str]:
    fields: list[str] = []
    start = 0
    depth = 0
    quote_char: str | None = None
    index = 0
    while index < len(value):
        char = value[index]
        if quote_char:
            if char == "\\":
                index += 2
                continue
            if char == quote_char:
                if index + 1 < len(value) and value[index + 1] == quote_char:
                    index += 2
                    continue
                quote_char = None
        elif char in {"'", '"'}:
            quote_char = char
        elif char in "([{":
            depth += 1
        elif char in ")]}" and depth:
            depth -= 1
        elif char == "," and depth == 0:
            fields.append(value[start:index].strip())
            start = index + 1
        index += 1
    fields.append(value[start:].strip())
    return fields


def parse_insert(statement: str, table: str) -> dict[str, str] | None:
    match = re.search(
        rf"INSERT\s+INTO\s+{re.escape(table)}\s*\((.*?)\)\s*VALUES\s*\((.*)\)\s*$",
        statement,
        flags=re.IGNORECASE | re.DOTALL,
    )
    if not match:
        return None
    columns = [
        column.strip().strip("`").casefold() for column in split_sql_csv(match.group(1))
    ]
    values = split_sql_csv(match.group(2))
    if len(columns) != len(values):
        raise NovaTtsError(
            f"Column/value mismatch while parsing {table}: {len(columns)} != {len(values)}."
        )
    return dict(zip(columns, values))


def parse_json_expression(value: str, label: str) -> dict[str, Any]:
    """Parse the flat JSON forms emitted by Nova chapter SQL."""
    value = value.strip()
    if value.startswith("'") and value.endswith("'"):
        parsed = json.loads(sql_unquote(value))
        if not isinstance(parsed, dict):
            raise NovaTtsError(f"Expected JSON object for {label}.")
        return parsed
    cast_match = re.fullmatch(
        r"CAST\s*\(\s*('(?:''|\\.|[^'])*')\s+AS\s+JSON\s*\)",
        value,
        re.I | re.S,
    )
    if cast_match:
        parsed = json.loads(sql_unquote(cast_match.group(1)))
        if not isinstance(parsed, dict):
            raise NovaTtsError(f"Expected JSON object for {label}.")
        return parsed
    object_match = re.fullmatch(r"JSON_OBJECT\s*\((.*)\)", value, re.I | re.S)
    if object_match:
        fields = split_sql_csv(object_match.group(1))
        if len(fields) % 2:
            raise NovaTtsError(f"Odd JSON_OBJECT argument count for {label}.")
        result: dict[str, Any] = {}
        for index in range(0, len(fields), 2):
            key = sql_unquote(fields[index])
            raw = fields[index + 1].strip()
            if raw.startswith("'") and raw.endswith("'"):
                parsed_value: Any = sql_unquote(raw)
            elif raw.upper() == "TRUE":
                parsed_value = True
            elif raw.upper() == "FALSE":
                parsed_value = False
            elif raw.upper() == "NULL":
                parsed_value = None
            elif re.fullmatch(r"-?[0-9]+", raw):
                parsed_value = int(raw)
            else:
                raise NovaTtsError(
                    f"Unsupported JSON_OBJECT value for {label}.{key}: {raw!r}."
                )
            result[key] = parsed_value
        return result
    raise NovaTtsError(f"Unsupported JSON expression for {label}: {value[:80]!r}.")


def parse_int(value: str, label: str) -> int:
    value = value.strip()
    if not re.fullmatch(r"[0-9]+", value):
        raise NovaTtsError(f"Expected integer {label}, got {value!r}.")
    return int(value)


def parse_source_locator(path: Path, sql: str) -> dict[str, Any]:
    standard = re.search(
        r"nova_DE_FA_([ABC][12])_M(\d+)_C(\d+)_series_(\d+)", path.name, re.I
    )
    if standard:
        return {
            "cefr_level": standard.group(1).upper(),
            "module_order": int(standard.group(2)),
            "chapter_order": int(standard.group(3)),
            "series": int(standard.group(4)),
        }
    series_match = re.search(r"SERIES\s+(\d+)", sql[:1000], re.I) or re.search(
        r"import_nova_series_(\d+)", sql, re.I
    )
    level_match = re.search(
        r"SELECT\s+id\s+INTO\s+v_level\s+FROM\s+levels\b[^;]*?cefr_level\s*=\s*'([A-Za-z0-9_]{1,8})'",
        sql,
        re.I | re.S,
    )
    module_match = re.search(
        r"SELECT\s+id\s+INTO\s+v_module\s+FROM\s+modules\b[^;]*?sort_order\s*=\s*(\d+)",
        sql,
        re.I | re.S,
    )
    chapter_match = re.search(
        r"SELECT\s+id\s+INTO\s+v_chapter\s+FROM\s+chapters\b[^;]*?sort_order\s*=\s*(\d+)",
        sql,
        re.I | re.S,
    )
    if not all((series_match, level_match, module_match, chapter_match)):
        raise NovaTtsError(f"Could not identify level/module/chapter/series for {path}.")
    return {
        "cefr_level": level_match.group(1).upper(),
        "module_order": int(module_match.group(1)),
        "chapter_order": int(chapter_match.group(1)),
        "series": int(series_match.group(1)),
    }


def row_key(row: dict[str, Any]) -> str:
    return (
        f"{row['cefr_level']}-M{int(row['module_order']):02d}"
        f"-C{int(row['chapter_order']):02d}-L{int(row['lesson_order']):02d}"
        f"-T{int(row['turn_order']):02d}"
    )


def row_sort_key(row: dict[str, Any]) -> tuple[Any, ...]:
    level_rank = {"A1": 1, "A2": 2, "B1": 3, "B2": 4, "C1": 5, "C2": 6, "ST": 1, "ED": 2, "IN": 3, "CF": 4, "AD": 5, "MA": 6}
    return (
        level_rank.get(str(row["cefr_level"]), 99),
        int(row["module_order"]),
        int(row["chapter_order"]),
        int(row["lesson_order"]),
        int(row["turn_order"]),
    )


def parse_source_file(path: Path, repo_root: Path = REPO_ROOT) -> list[dict[str, Any]]:
    sql = path.read_text(encoding="utf-8")
    locator = parse_source_locator(path, sql)
    statements = split_sql_statements(remove_sql_line_comments(sql))
    character_variables: dict[str, dict[str, str]] = {}
    for statement in statements:
        variable_match = re.search(
            r"SELECT\s+id\s+INTO\s+(v_c_[a-z0-9_]+)", statement, re.I
        )
        if not variable_match or not re.search(r"\bFROM\s+characters\b", statement, re.I):
            continue
        name_match = re.search(r"\bname\s*=\s*('(?:''|\\.|[^'])*')", statement, re.I)
        gender_match = re.search(
            r"\bgender\s*=\s*('(?:''|\\.|[^'])*')", statement, re.I
        )
        if name_match and gender_match:
            character_variables[variable_match.group(1).casefold()] = {
                "name": sql_unquote(name_match.group(1)),
                "gender": sql_unquote(gender_match.group(1)).casefold(),
            }

    lessons: dict[str, dict[str, Any]] = {}
    latest_lesson: dict[str, Any] | None = None
    rows: list[dict[str, Any]] = []
    try:
        source_file = path.resolve().relative_to(repo_root.resolve()).as_posix()
    except ValueError:
        source_file = path.name

    for statement in statements:
        lesson_values = parse_insert(statement, "lessons")
        if lesson_values is not None:
            latest_lesson = {
                "lesson_order": parse_int(
                    lesson_values["sort_order"], "lesson sort_order"
                ),
            }
            continue
        lesson_set = re.search(
            r"\bSET\s+(v_l_[a-z0-9_]+)\s*=\s*LAST_INSERT_ID\s*\(\s*\)\s*$",
            statement,
            re.I,
        )
        if lesson_set:
            if latest_lesson is None:
                raise NovaTtsError(f"Lesson variable without a preceding lesson in {path}.")
            lessons[lesson_set.group(1).casefold()] = dict(latest_lesson)
            continue
        turn_values = parse_insert(statement, "turns")
        if turn_values is None:
            continue
        lesson_variable = turn_values["lesson_id"].strip().casefold()
        character_variable = turn_values["character_id"].strip().casefold()
        if lesson_variable not in lessons:
            raise NovaTtsError(f"Unknown lesson variable {lesson_variable} in {path}.")
        if character_variable not in character_variables:
            raise NovaTtsError(f"Unknown character variable {character_variable} in {path}.")
        character = character_variables[character_variable]
        row = {
            **locator,
            **lessons[lesson_variable],
            "turn_order": parse_int(turn_values["sort_order"], "turn sort_order"),
            "role": sql_unquote(turn_values["role"]),
            "text": sql_unquote(turn_values["text"]),
            "character_name": character["name"],
            "character_gender": character["gender"],
            "source_file": source_file,
        }
        row["key"] = row_key(row)
        rows.append(row)

    if not rows:
        raise NovaTtsError(f"No turns found in {path}.")
    seen: set[str] = set()
    by_lesson: dict[int, list[dict[str, Any]]] = {}
    for row in rows:
        if row["key"] in seen:
            raise NovaTtsError(f"Duplicate turn locator {row['key']} in {path}.")
        seen.add(row["key"])
        by_lesson.setdefault(int(row["lesson_order"]), []).append(row)
    for lesson_rows in by_lesson.values():
        lesson_rows.sort(key=lambda item: int(item["turn_order"]))
        for index, row in enumerate(lesson_rows):
            row["previous_text"] = lesson_rows[index - 1]["text"] if index else None
            row["next_text"] = (
                lesson_rows[index + 1]["text"]
                if index + 1 < len(lesson_rows)
                else None
            )
    return sorted(rows, key=row_sort_key)


def discover_source_files(repo_root: Path = REPO_ROOT) -> list[Path]:
    candidates: list[Path] = []
    candidates.extend(
        (repo_root / "nova" / "courses" / COURSE / "staging").glob("**/chapter.sql")
    )
    located: dict[int, Path] = {}
    for path in candidates:
        if not path.is_file():
            continue
        sql = path.read_text(encoding="utf-8")
        if not re.search(r"INSERT\s+INTO\s+turns\s*\(", sql, re.I):
            continue
        series = int(parse_source_locator(path, sql)["series"])
        if series in located:
            raise NovaTtsError(
                f"Duplicate source SQL for Series {series:03d}: {located[series]} and {path}."
            )
        located[series] = path
    if not located:
        raise NovaTtsError("No Nova chapter SQL source files were found in the repository.")
    return [located[key] for key in sorted(located)]


def load_source_turns(repo_root: Path = REPO_ROOT) -> list[dict[str, Any]]:
    rows: list[dict[str, Any]] = []
    seen: set[str] = set()
    for path in discover_source_files(repo_root):
        for row in parse_source_file(path, repo_root):
            if row["key"] in seen:
                raise NovaTtsError(f"Duplicate repository turn locator: {row['key']}.")
            seen.add(row["key"])
            rows.append(row)
    return sorted(rows, key=row_sort_key)


def load_source_character_profiles(
    repo_root: Path = REPO_ROOT,
) -> dict[str, dict[str, Any]]:
    """Extract the canonical role/context facts used to audit voice profiles."""
    profiles: dict[str, dict[str, Any]] = {}
    for path in discover_source_files(repo_root):
        sql = path.read_text(encoding="utf-8")
        for statement in split_sql_statements(remove_sql_line_comments(sql)):
            values = parse_insert(statement, "characters")
            if values is None:
                continue
            name = sql_unquote(values["name"])
            profile = parse_json_expression(values["profile"], "character profile")
            metadata = parse_json_expression(values["metadata"], "character metadata")
            extracted = {
                "gender": sql_unquote(values["gender"]).casefold(),
                "role": profile.get("role"),
                "context": metadata.get("context"),
                "origin_country": metadata.get("originCountry"),
                "profile_source": path.name,
            }
            previous = profiles.get(name)
            if previous and any(
                previous.get(key) != extracted.get(key)
                for key in ("gender", "role", "context", "origin_country")
            ):
                raise NovaTtsError(f"Conflicting canonical profiles for character {name}.")
            profiles[name] = extracted
    if not profiles:
        raise NovaTtsError("No canonical character profiles were found in repository SQL.")
    return profiles


def validate_source_roster(
    rows: list[dict[str, Any]],
    mapping: dict[str, Any],
    repo_root: Path = REPO_ROOT,
) -> None:
    profiles = {str(item["name"]): item for item in mapping["characters"]}
    source_names = {str(row["character_name"]) for row in rows}
    missing = sorted(source_names - set(profiles))
    if missing:
        raise NovaTtsError(
            "Source characters missing from voice_map.json: " + ", ".join(missing)
        )
    for row in rows:
        profile = profiles[str(row["character_name"])]
        if str(profile.get("gender") or "").casefold() != str(
            row["character_gender"]
        ).casefold():
            raise NovaTtsError(
                f"Gender mismatch for {row['character_name']} between SQL source and voice map."
            )
    canonical = load_source_character_profiles(repo_root)
    for name, source in canonical.items():
        if name not in profiles:
            raise NovaTtsError(f"Canonical character {name} is missing from voice_map.json.")
        mapped = profiles[name]
        for key in ("gender", "role", "context", "origin_country"):
            if source.get(key) is not None and mapped.get(key) != source.get(key):
                raise NovaTtsError(
                    f"Canonical {key} mismatch for {name}: "
                    f"SQL={source.get(key)!r}, voice_map={mapped.get(key)!r}."
                )
        if mapped.get("profile_source") != source.get("profile_source"):
            raise NovaTtsError(f"Canonical profile source mismatch for {name}.")


def bootstrap_voices(yes: bool) -> None:
    mapping = load_voice_map()
    validate_voice_map(mapping, require_complete=False)
    validate_source_roster(load_source_turns(), mapping)
    missing = [item for item in mapping["characters"] if not item.get("voice_id")]
    if not missing:
        print("All Nova characters already have distinct, profile-validated voices.")
        return
    if not yes:
        raise NovaTtsError(
            f"This will add {len(missing)} {LANGUAGE_NAME} voices to ElevenLabs. Re-run with --yes."
        )

    client = ElevenLabsClient(required_env("ELEVENLABS_API_KEY"))
    used_sources = {
        str(item.get("source_voice_id"))
        for item in mapping["characters"]
        if item.get("source_voice_id")
    }
    used_assigned = {
        str(item.get("voice_id"))
        for item in mapping["characters"]
        if item.get("voice_id")
    }
    pools = {
        gender: [
            voice
            for voice in client.shared_voices(gender)
            if str(voice.get("voice_id")) not in used_sources
        ]
        for gender in sorted({str(item["gender"]) for item in missing})
    }
    archetypes = mapping.get("voice_archetypes") or {}

    for character in missing:
        scoring_character = dict(character)
        archetype = str(character.get("voice_archetype") or "")
        preferences = archetypes.get(archetype)
        if not isinstance(preferences, dict):
            raise NovaTtsError(
                f"Missing voice archetype {archetype!r} for {character['name']}."
            )
        scoring_character["voice_preferences"] = preferences
        candidates: list[tuple[int, int, str, dict[str, Any], list[str]]] = []
        for voice in pools[str(character["gender"])]:
            score, reasons = character_voice_score(scoring_character, voice)
            usage = int(voice.get("usage_character_count_1y") or 0)
            candidates.append(
                (score, usage, str(voice.get("voice_id")), voice, reasons)
            )
        candidates.sort(key=lambda item: (-item[0], -item[1], item[2]))
        if not candidates or candidates[0][0] < MIN_VOICE_MATCH_SCORE:
            raise NovaTtsError(
                f"No {LANGUAGE_NAME} {character['gender']} voice passed the profile threshold for "
                f"{character['name']} ({character.get('role')})."
            )
        score, _usage, _source_id, source, reasons = candidates[0]
        assigned_id = client.add_shared_voice(source, str(character["name"]))
        if assigned_id in used_assigned:
            raise NovaTtsError(f"ElevenLabs returned duplicate voice ID {assigned_id}.")
        character.update(
            {
                "voice_id": assigned_id,
                "voice_name": source.get("name"),
                "source_voice_id": source.get("voice_id"),
                "public_owner_id": source.get("public_owner_id"),
                "source_metadata": source_voice_metadata(source),
                "selection": {
                    "score": score,
                    "minimum_score": MIN_VOICE_MATCH_SCORE,
                    "reasons": reasons,
                    "matched_profile": {
                        "gender": character.get("gender"),
                        "role": character.get("role"),
                        "context": character.get("context"),
                    },
                },
                "assigned_at": utc_now(),
            }
        )
        used_sources.add(str(source["voice_id"]))
        used_assigned.add(assigned_id)
        pools[str(character["gender"])] = [
            voice
            for voice in pools[str(character["gender"])]
            if str(voice.get("voice_id")) != str(source.get("voice_id"))
        ]
        mapping["updated_at"] = utc_now()
        write_json_atomic(VOICE_MAP_PATH, mapping)
        print(
            f"Assigned {character['name']}: {source.get('name')} "
            f"({character['gender']}, {LANGUAGE_NAME} verified, profile score {score})."
        )
    validate_voice_map(mapping, require_complete=True)


def new_manifest() -> dict[str, Any]:
    return {
        "version": 2,
        "storage": "github-temporary",
        "path_mode": "repository-relative",
        "course": COURSE,
        "source": "repository-sql-only",
        "provider": "elevenlabs",
        "model_id": MODEL_ID,
        "output_format": OUTPUT_FORMAT,
        "updated_at": None,
        "entries": {},
    }


def load_manifest() -> dict[str, Any]:
    manifest = read_json(MANIFEST_PATH, new_manifest())
    if manifest.get("version") == 1 and not manifest.get("entries"):
        return new_manifest()
    if manifest.get("version") != 2 or not isinstance(manifest.get("entries"), dict):
        raise NovaTtsError(f"Unsupported manifest at {MANIFEST_PATH}.")
    if manifest.get("course") != COURSE:
        raise NovaTtsError(f"Manifest course mismatch at {MANIFEST_PATH}.")
    return manifest


def build_tasks(
    rows: list[dict[str, Any]], mapping: dict[str, Any], manifest: dict[str, Any]
) -> list[dict[str, Any]]:
    validate_voice_map(mapping, require_complete=True)
    validate_source_roster(rows, mapping)
    voices = {str(item["name"]): item for item in mapping["characters"]}
    tasks: list[dict[str, Any]] = []
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
        filename = (
            f"t{int(row['turn_order']):02d}-{character_slug(str(row['character_name']))}"
            f"-{fingerprint[:12]}.mp3"
        )
        relative = (
            Path("nova")
            / "audio"
            / "turns"
            / COURSE
            / level
            / f"m{int(row['module_order']):02d}"
            / f"c{int(row['chapter_order']):02d}"
            / f"l{int(row['lesson_order']):02d}"
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
                "voice_id": voice_id,
                "voice_name": character.get("voice_name"),
                "level": level,
                "fingerprint": fingerprint,
                "relative_path": relative.as_posix(),
                "target_path": target,
            }
        )
    return tasks


def print_plan(
    rows: list[dict[str, Any]],
    tasks: list[dict[str, Any]] | None,
    mapping: dict[str, Any],
) -> None:
    source_files = len({str(row["source_file"]) for row in rows})
    characters = len({str(row["character_name"]) for row in rows})
    missing = [
        str(item["name"]) for item in mapping["characters"] if not item.get("voice_id")
    ]
    print(f"Repository chapter SQL files: {source_files:,}")
    print(f"Repository turns: {len(rows):,}")
    print(f"Characters: {characters:,}")
    if tasks is None:
        print("Characters awaiting a validated voice: " + ", ".join(missing))
        print(
            "Billable text characters after voice assignment: "
            f"{sum(len(str(row['text'])) for row in rows):,}"
        )
        return
    print(f"Up-to-date audio files: {len(rows) - len(tasks):,}")
    print(f"Audio files to generate: {len(tasks):,}")
    print(
        f"Billable text characters: {sum(len(str(task['text'])) for task in tasks):,}"
    )


def command_validate_sources() -> None:
    mapping = load_voice_map()
    rows = load_source_turns()
    validate_source_roster(rows, mapping)
    print_plan(rows, None, mapping)
    print("Repository SQL parsing and character gender checks passed.")


def command_plan() -> None:
    mapping = load_voice_map()
    rows = load_source_turns()
    validate_source_roster(rows, mapping)
    try:
        validate_voice_map(mapping, require_complete=True)
    except NovaTtsError:
        validate_voice_map(mapping, require_complete=False)
        print_plan(rows, None, mapping)
        return
    tasks = build_tasks(rows, mapping, load_manifest())
    print_plan(rows, tasks, mapping)


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
        "key": str(task["key"]),
        "series": int(task["series"]),
        "cefr_level": str(task["level"]),
        "module_order": int(task["module_order"]),
        "chapter_order": int(task["chapter_order"]),
        "lesson_order": int(task["lesson_order"]),
        "turn_order": int(task["turn_order"]),
        "role": str(task["role"]),
        "character": str(task["character_name"]),
        "source_file": str(task["source_file"]),
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


def entry_sort_key(entry: dict[str, Any]) -> tuple[Any, ...]:
    return row_sort_key(entry)


def command_generate(*, yes: bool, limit: int | None, concurrency: int) -> None:
    mapping = load_voice_map()
    manifest = load_manifest()
    rows = load_source_turns()
    tasks = build_tasks(rows, mapping, manifest)
    if limit is not None:
        tasks = tasks[:limit]
    print_plan(rows, tasks, mapping)
    if not tasks:
        write_update_sql(manifest)
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
                manifest["entries"][str(entry["key"])] = entry
                completed += 1
                if completed % 10 == 0:
                    manifest["updated_at"] = utc_now()
                    manifest["entries"] = dict(
                        sorted(
                            manifest["entries"].items(),
                            key=lambda item: entry_sort_key(item[1]),
                        )
                    )
                    write_json_atomic(MANIFEST_PATH, manifest)
                    print(f"Generated {completed:,}/{len(tasks):,} audio files.")
            except Exception as error:  # preserve resumable progress
                failures.append(
                    {
                        "key": str(task["key"]),
                        "character": str(task["character_name"]),
                        "error": str(error)[:1000],
                    }
                )
                print(f"Turn {task['key']} failed: {error}", file=sys.stderr)

    manifest["updated_at"] = utc_now()
    manifest["entries"] = dict(
        sorted(manifest["entries"].items(), key=lambda item: entry_sort_key(item[1]))
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
            "Some turns failed. Successful files were saved; re-run to resume."
        )


def sql_quote(value: str) -> str:
    return "'" + value.replace("\\", "\\\\").replace("'", "''") + "'"


def entry_audio_url(entry: dict[str, Any], url_prefix: str | None) -> str:
    stored_path = str(entry["path"])
    prefix = (url_prefix or "").rstrip("/")
    if prefix:
        stored_path = stored_path.removeprefix("nova/audio/")
        result = f"{prefix}/{stored_path}"
    else:
        result = stored_path
    if len(result) > 1024:
        raise NovaTtsError(f"Audio URL is too long for {entry['key']}.")
    return result


def render_update_sql(
    entries: Iterable[dict[str, Any]], url_prefix: str | None = None
) -> str:
    ordered = sorted(entries, key=entry_sort_key)
    if not ordered:
        raise NovaTtsError("The audio manifest is empty.")
    lines = [
        "-- Generated by nova/tts/nova_tts.py. Do not edit by hand.",
        "-- The generator never connected to the database.",
        "-- Persistent changes are limited to turns.audio_url and turns.audio_duration_ms.",
        "SET NAMES utf8mb4;",
        "DROP TEMPORARY TABLE IF EXISTS nova_turn_audio_updates;",
        "CREATE TEMPORARY TABLE nova_turn_audio_updates (",
        "  cefr_level VARCHAR(8) NOT NULL,",
        "  module_order INT UNSIGNED NOT NULL,",
        "  chapter_order INT UNSIGNED NOT NULL,",
        "  lesson_order INT UNSIGNED NOT NULL,",
        "  turn_order INT UNSIGNED NOT NULL,",
        "  character_name VARCHAR(120) NOT NULL,",
        "  turn_role VARCHAR(16) NOT NULL,",
        "  text_sha256 CHAR(64) NOT NULL,",
        "  audio_url VARCHAR(1024) NOT NULL,",
        "  audio_duration_ms INT UNSIGNED NOT NULL,",
        "  PRIMARY KEY (cefr_level,module_order,chapter_order,lesson_order,turn_order)",
        ") ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;",
        "",
    ]
    for start in range(0, len(ordered), 250):
        chunk = ordered[start : start + 250]
        lines.append(
            "INSERT INTO nova_turn_audio_updates "
            "(cefr_level,module_order,chapter_order,lesson_order,turn_order,"
            "character_name,turn_role,text_sha256,audio_url,audio_duration_ms) VALUES"
        )
        values: list[str] = []
        for entry in chunk:
            values.append(
                "("
                + ",".join(
                    [
                        sql_quote(str(entry["cefr_level"])),
                        str(int(entry["module_order"])),
                        str(int(entry["chapter_order"])),
                        str(int(entry["lesson_order"])),
                        str(int(entry["turn_order"])),
                        sql_quote(str(entry["character"])),
                        sql_quote(str(entry["role"])),
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
            "DROP PROCEDURE IF EXISTS apply_nova_turn_audio;",
            "DELIMITER $$",
            "CREATE PROCEDURE apply_nova_turn_audio()",
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
            f"  WHERE learning_language='{TARGET_LANGUAGE}' AND base_language='{BASE_LANGUAGE}' ORDER BY id LIMIT 1;",
            "  IF v_course IS NULL THEN",
            f"    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Nova {COURSE} course not found.';",
            "  END IF;",
            "",
            "  SELECT COUNT(*) INTO v_expected FROM nova_turn_audio_updates;",
            "  SELECT COUNT(*) INTO v_invalid",
            "  FROM (",
            "    SELECT u.cefr_level,u.module_order,u.chapter_order,u.lesson_order,u.turn_order,",
            "           COUNT(c.id) AS matched_rows",
            "    FROM nova_turn_audio_updates AS u",
            "    LEFT JOIN levels AS lv",
            "      ON lv.course_id=v_course AND lv.cefr_level=u.cefr_level",
            "    LEFT JOIN modules AS m",
            "      ON m.level_id=lv.id AND m.sort_order=u.module_order",
            "    LEFT JOIN chapters AS ch",
            "      ON ch.module_id=m.id AND ch.sort_order=u.chapter_order",
            "    LEFT JOIN lessons AS l",
            "      ON l.chapter_id=ch.id AND l.sort_order=u.lesson_order",
            "    LEFT JOIN turns AS t",
            "      ON t.lesson_id=l.id AND t.sort_order=u.turn_order",
            "     AND t.role=u.turn_role AND SHA2(t.text,256)=u.text_sha256",
            "    LEFT JOIN characters AS c",
            "      ON c.id=t.character_id AND c.course_id=v_course AND c.name=u.character_name",
            "    GROUP BY u.cefr_level,u.module_order,u.chapter_order,u.lesson_order,u.turn_order",
            "    HAVING COUNT(c.id)<>1",
            "  ) AS invalid_updates;",
            "  IF v_invalid<>0 THEN",
            "    SIGNAL SQLSTATE '45000'",
            "      SET MESSAGE_TEXT='Audio update aborted: one or more Turn locators did not match exactly once.';",
            "  END IF;",
            "",
            "  START TRANSACTION;",
            "  UPDATE turns AS t",
            "  JOIN lessons AS l ON l.id=t.lesson_id",
            "  JOIN chapters AS ch ON ch.id=l.chapter_id",
            "  JOIN modules AS m ON m.id=ch.module_id",
            "  JOIN levels AS lv ON lv.id=m.level_id AND lv.course_id=v_course",
            "  JOIN characters AS c ON c.id=t.character_id AND c.course_id=v_course",
            "  JOIN nova_turn_audio_updates AS u",
            "    ON u.cefr_level=lv.cefr_level",
            "   AND u.module_order=m.sort_order",
            "   AND u.chapter_order=ch.sort_order",
            "   AND u.lesson_order=l.sort_order",
            "   AND u.turn_order=t.sort_order",
            "   AND u.character_name=c.name",
            "   AND u.turn_role=t.role",
            "   AND u.text_sha256=SHA2(t.text,256)",
            "  SET t.audio_url=u.audio_url,",
            "      t.audio_duration_ms=u.audio_duration_ms;",
            "  SET v_changed=ROW_COUNT();",
            "  COMMIT;",
            "  SELECT v_expected AS verified_turns, v_changed AS changed_turns;",
            "END$$",
            "DELIMITER ;",
            "CALL apply_nova_turn_audio();",
            "DROP PROCEDURE IF EXISTS apply_nova_turn_audio;",
            "DROP TEMPORARY TABLE IF EXISTS nova_turn_audio_updates;",
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
    print(f"Wrote {len(entries):,} guarded Turn updates to {SQL_PATH}.")


def command_export_sql(url_prefix: str | None) -> None:
    manifest = load_manifest()
    write_update_sql(manifest, url_prefix)


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description=__doc__)
    subparsers = parser.add_subparsers(dest="command", required=True)

    voices = subparsers.add_parser(
        "bootstrap-voices",
        description=f"Assign one distinct profile-validated {LANGUAGE_NAME} voice per character.",
    )
    voices.add_argument("--yes", action="store_true")

    subparsers.add_parser(
        "validate-sources",
        description="Parse repository SQL and validate the character roster.",
    )
    subparsers.add_parser(
        "plan", description="Inspect repository SQL and estimate generation."
    )

    generate = subparsers.add_parser(
        "generate",
        description="Generate missing or stale Turn audio from repository SQL.",
    )
    generate.add_argument("--yes", action="store_true")
    generate.add_argument("--limit", type=int)
    generate.add_argument(
        "--concurrency",
        type=int,
        default=int(os.environ.get("NOVA_TTS_CONCURRENCY", "2")),
    )

    export = subparsers.add_parser(
        "export-sql",
        description="Rewrite the standalone two-column Turn update SQL.",
    )
    export.add_argument(
        "--url-prefix",
        help="Public base URL after migration. Omit for repository-relative paths.",
    )
    return parser


def main() -> int:
    args = build_parser().parse_args()
    try:
        if args.command == "bootstrap-voices":
            bootstrap_voices(args.yes)
        elif args.command == "validate-sources":
            command_validate_sources()
        elif args.command == "plan":
            command_plan()
        elif args.command == "generate":
            command_generate(
                yes=args.yes, limit=args.limit, concurrency=args.concurrency
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

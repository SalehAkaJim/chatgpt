#!/usr/bin/env python3
"""Statically scan Nova's canonical Series 001-080 archive.

The scanner uses only the Python standard library. It validates archive identity,
file coverage, JSON syntax, SQL import structure, row counts, ordered dependency
resolution, lesson/turn/activity invariants, and the real turn-token contract.
It does not replace an execution test against MySQL.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import re
import sys
import zipfile
from collections import Counter, defaultdict
from datetime import date
from pathlib import Path
from typing import Any, Iterable


CANONICAL_ARCHIVE = "nova_v9_production_series_001_080_fixed.zip"
CANONICAL_SHA256 = "11e5b8834dcee6002ccf6981650069309ba9df0bdb10063b82fcc5dfb293e8c2"
CANONICAL_BYTES = 502_504
SERIES_RE = re.compile(
    r"^nova_DE_FA_(A1|A2)_M(\d{2})_C(\d{2})_series_(\d{3})_v9(?:_(r\d+))?\.sql$"
)


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as handle:
        for chunk in iter(lambda: handle.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def scan_to_semicolon(text: str, start: int) -> int:
    quote: str | None = None
    escaped = False
    index = start
    while index < len(text):
        char = text[index]
        if quote:
            if escaped:
                escaped = False
            elif char == "\\" and quote in ("'", '"'):
                escaped = True
            elif char == quote:
                if index + 1 < len(text) and text[index + 1] == quote:
                    index += 1
                else:
                    quote = None
        elif char in ("'", '"', "`"):
            quote = char
        elif char == ";":
            return index + 1
        index += 1
    raise ValueError(f"unterminated SQL statement at byte {start}")


def matching_paren(text: str, start: int) -> int:
    depth = 0
    quote: str | None = None
    escaped = False
    index = start
    while index < len(text):
        char = text[index]
        if quote:
            if escaped:
                escaped = False
            elif char == "\\" and quote in ("'", '"'):
                escaped = True
            elif char == quote:
                if index + 1 < len(text) and text[index + 1] == quote:
                    index += 1
                else:
                    quote = None
        elif char in ("'", '"', "`"):
            quote = char
        elif char == "(":
            depth += 1
        elif char == ")":
            depth -= 1
            if depth == 0:
                return index
        index += 1
    raise ValueError(f"unmatched parenthesis at byte {start}")


def split_top_level(text: str) -> list[str]:
    values: list[str] = []
    start = 0
    depth = 0
    quote: str | None = None
    escaped = False
    index = 0
    while index < len(text):
        char = text[index]
        if quote:
            if escaped:
                escaped = False
            elif char == "\\" and quote in ("'", '"'):
                escaped = True
            elif char == quote:
                if index + 1 < len(text) and text[index + 1] == quote:
                    index += 1
                else:
                    quote = None
        elif char in ("'", '"', "`"):
            quote = char
        elif char == "(":
            depth += 1
        elif char == ")":
            depth -= 1
        elif char == "," and depth == 0:
            values.append(text[start:index].strip())
            start = index + 1
        index += 1
    values.append(text[start:].strip())
    return values


def sql_string(value: str) -> str | None:
    value = value.strip()
    if len(value) < 2 or value[0] != "'" or value[-1] != "'":
        return None
    return value[1:-1].replace("''", "'")


def insert_rows(text: str) -> Iterable[tuple[str, list[str], list[str]]]:
    pattern = re.compile(r"\bINSERT\s+INTO\s+`?([A-Za-z_][A-Za-z0-9_]*)`?", re.I)
    for match in pattern.finditer(text):
        table = match.group(1).lower()
        end = scan_to_semicolon(text, match.start())
        statement = text[match.start():end]
        open_columns = statement.find("(", match.end() - match.start())
        if open_columns < 0:
            continue
        close_columns = matching_paren(statement, open_columns)
        columns = [item.strip(" `\n\r\t").lower() for item in split_top_level(statement[open_columns + 1:close_columns])]
        values_match = re.search(r"\bVALUES\b", statement[close_columns + 1:], re.I)
        if not values_match:
            continue
        cursor = close_columns + 1 + values_match.end()
        while cursor < len(statement):
            if statement[cursor] == "(":
                close_row = matching_paren(statement, cursor)
                row = split_top_level(statement[cursor + 1:close_row])
                if len(row) != len(columns):
                    raise ValueError(
                        f"{table}: {len(row)} values for {len(columns)} columns"
                    )
                yield table, columns, row
                cursor = close_row + 1
            else:
                cursor += 1


def row_map(columns: list[str], values: list[str]) -> dict[str, str]:
    return dict(zip(columns, values))


def literal_int(value: str) -> int | None:
    value = value.strip()
    return int(value) if re.fullmatch(r"-?\d+", value) else None


def word_selects(text: str) -> list[tuple[str, str, str, str]]:
    result = []
    pattern = re.compile(
        r"SELECT\s+id\s+INTO\s+(v_w_[A-Za-z0-9_]+)\s+FROM\s+words\s+WHERE\s+(.*?)"
        r"ORDER\s+BY\s+id\s+LIMIT\s+1\s*;",
        re.I | re.S,
    )
    for variable, where in pattern.findall(text):
        parts = []
        for field in ("lemma", "part_of_speech", "translation"):
            found = re.search(rf"\b{field}\s*=\s*'((?:''|[^'])*)'", where, re.I)
            if not found:
                break
            parts.append(found.group(1).replace("''", "'"))
        if len(parts) == 3:
            result.append((variable, *parts))
    return result


def character_selects(text: str) -> list[tuple[str, str, str]]:
    result = []
    pattern = re.compile(
        r"SELECT\s+id\s+INTO\s+(v_c_[A-Za-z0-9_]+)\s+FROM\s+characters\s+WHERE\s+(.*?)"
        r"ORDER\s+BY\s+id\s+LIMIT\s+1\s*;",
        re.I | re.S,
    )
    for variable, where in pattern.findall(text):
        name = re.search(r"\bname\s*=\s*'((?:''|[^'])*)'", where, re.I)
        gender = re.search(r"\bgender\s*=\s*'((?:''|[^'])*)'", where, re.I)
        if name and gender:
            result.append(
                (variable, name.group(1).replace("''", "'"), gender.group(1).replace("''", "'"))
            )
    return result


def expected_location(series: int) -> tuple[str, int, int]:
    if series <= 40:
        return "A1", (series - 1) // 5 + 1, (series - 1) % 5 + 1
    return "A2", (series - 41) // 5 + 1, (series - 41) % 5 + 1


def json_literal(value: str) -> Any:
    raw = sql_string(value)
    if raw is None:
        raise ValueError("JSON column is not a SQL string literal")
    return json.loads(raw)


def scan_series(path: Path, known_words: set[tuple[str, str, str]], known_characters: set[tuple[str, str]]) -> dict[str, Any]:
    match = SERIES_RE.match(path.name)
    if not match:
        raise ValueError(f"not a canonical series filename: {path.name}")
    level, module_text, chapter_text, series_text, revision = match.groups()
    series = int(series_text)
    module = int(module_text)
    chapter = int(chapter_text)
    expected = expected_location(series)
    text = path.read_text(encoding="utf-8")
    errors: list[str] = []
    warnings: list[str] = []
    if (level, module, chapter) != expected:
        errors.append(f"filename location {(level, module, chapter)} != expected {expected}")

    required_fragments = (
        "DECLARE EXIT HANDLER FOR SQLEXCEPTION",
        "START TRANSACTION",
        "ROLLBACK",
        "RESIGNAL",
        "COMMIT",
    )
    for fragment in required_fragments:
        if fragment not in text:
            errors.append(f"missing transactional/import guard: {fragment}")
    empty_guard = re.search(
        rf"Chapter\s+0?{chapter}\s+must\s+be\s+empty\s+before\s+Series\s+0*{series}\s+import\.",
        text,
        re.I,
    )
    if not empty_guard:
        errors.append("missing or mismatched empty-chapter import guard")

    rows: dict[str, list[dict[str, str]]] = defaultdict(list)
    try:
        for table, columns, values in insert_rows(text):
            rows[table].append(row_map(columns, values))
    except ValueError as exc:
        errors.append(f"INSERT parse error: {exc}")

    inserted_words: set[tuple[str, str, str]] = set()
    for row in rows["words"]:
        identity = tuple(sql_string(row.get(key, "")) or "" for key in ("lemma", "part_of_speech", "translation"))
        if not all(identity):
            errors.append("word INSERT has an incomplete canonical identity")
        inserted_words.add(identity)  # type: ignore[arg-type]
        for json_key in ("grammar", "distractors", "metadata"):
            value = row.get(json_key, "NULL").strip()
            if value.upper() != "NULL" and sql_string(value) is not None:
                try:
                    json.loads(sql_string(value) or "")
                except json.JSONDecodeError as exc:
                    errors.append(f"invalid words.{json_key} JSON: {exc}")

    selected_words = {(lemma, pos, translation) for _, lemma, pos, translation in word_selects(text)}
    missing_words = sorted(selected_words - known_words - inserted_words)
    if missing_words:
        errors.append(f"{len(missing_words)} unresolved prior word dependencies")

    inserted_characters: set[tuple[str, str]] = set()
    for row in rows["characters"]:
        identity = (sql_string(row.get("name", "")) or "", sql_string(row.get("gender", "")) or "")
        inserted_characters.add(identity)
        for json_key in ("profile", "metadata"):
            value = row.get(json_key, "NULL").strip()
            if value.upper() != "NULL" and sql_string(value) is not None:
                try:
                    json.loads(sql_string(value) or "")
                except json.JSONDecodeError as exc:
                    errors.append(f"invalid characters.{json_key} JSON: {exc}")
    selected_characters = {(name, gender) for _, name, gender in character_selects(text)}
    missing_characters = sorted(selected_characters - known_characters - inserted_characters)
    if missing_characters:
        errors.append(f"{len(missing_characters)} unresolved prior character dependencies")

    lessons = rows["lessons"]
    if len(lessons) != 4:
        errors.append(f"expected 4 lessons, found {len(lessons)}")
    lesson_orders = sorted(filter(lambda item: item is not None, (literal_int(row.get("sort_order", "")) for row in lessons)))
    if lesson_orders != [1, 2, 3, 4]:
        errors.append(f"lesson sort order is {lesson_orders}, expected [1, 2, 3, 4]")

    declared: dict[str, tuple[str, str]] = {}
    storylines: list[dict[str, Any]] = []
    for index, row in enumerate(lessons, 1):
        lesson_var_match = re.search(
            rf"SET\s+(v_l_{index})\s*=\s*LAST_INSERT_ID\(\)\s*;", text, re.I
        )
        lesson_var = lesson_var_match.group(1) if lesson_var_match else f"v_l_{index}"
        declared[lesson_var] = (
            row.get("prompt_character_id", "").strip(), row.get("learner_character_id", "").strip()
        )
        key = sql_string(row.get("storyline_key", ""))
        order = literal_int(row.get("storyline_order", ""))
        if key and order is not None:
            storylines.append({"key": key, "order": order})
        for json_key in ("metadata",):
            value = row.get(json_key, "NULL").strip()
            if value.upper() != "NULL" and sql_string(value) is not None:
                try:
                    json.loads(sql_string(value) or "")
                except json.JSONDecodeError as exc:
                    errors.append(f"invalid lessons.{json_key} JSON: {exc}")

    turns = rows["turns"]
    turn_groups: dict[str, list[dict[str, str]]] = defaultdict(list)
    token_count = 0
    token_shapes: Counter[str] = Counter()
    unmatched_token_words: set[tuple[str, str, str]] = set()
    known_for_tokens = known_words | inserted_words
    for row in turns:
        lesson_var = row.get("lesson_id", "").strip()
        turn_groups[lesson_var].append(row)
        role = sql_string(row.get("role", ""))
        speech_target = sql_string(row.get("speech_target", ""))
        if role == "learner" and (speech_target is None or not speech_target.strip()):
            errors.append(f"{lesson_var} learner turn lacks a speech target")
        try:
            tokens = json_literal(row.get("tokens", ""))
        except (ValueError, json.JSONDecodeError) as exc:
            errors.append(f"invalid turns.tokens JSON: {exc}")
            continue
        if not isinstance(tokens, list) or not tokens:
            errors.append("turn tokens must be a non-empty JSON array")
            continue
        token_count += len(tokens)
        for token in tokens:
            if not isinstance(token, dict):
                errors.append("turn token is not an object")
                continue
            required = ("surface", "lemma", "translation", "partOfSpeech")
            missing = [key for key in required if not isinstance(token.get(key), str) or not token[key].strip()]
            if missing:
                errors.append(f"token missing required fields: {','.join(missing)}")
                continue
            token_shapes[",".join(sorted(token))] += 1
            identity = (token["lemma"], token["partOfSpeech"], token["translation"])
            if identity not in known_for_tokens:
                unmatched_token_words.add(identity)
    if unmatched_token_words:
        warnings.append(
            f"{len(unmatched_token_words)} token tuples have no exact dictionary-tuple match; tokens remain self-contained"
        )

    for lesson_var, group in sorted(turn_groups.items()):
        group.sort(key=lambda row: literal_int(row.get("sort_order", "")) or 0)
        orders = [literal_int(row.get("sort_order", "")) for row in group]
        if orders != list(range(1, len(group) + 1)):
            errors.append(f"{lesson_var} turn order is not contiguous: {orders}")
        roles = [sql_string(row.get("role", "")) for row in group]
        if any(left == right for left, right in zip(roles, roles[1:])):
            errors.append(f"{lesson_var} turn roles do not alternate")
        prompt, learner = declared.get(lesson_var, ("", ""))
        for row, role in zip(group, roles):
            expected_character = prompt if role == "character" else learner if role == "learner" else ""
            if not expected_character or row.get("character_id", "").strip() != expected_character:
                errors.append(f"{lesson_var} has role/character mismatch")
                break

    lesson_word_pairs: list[tuple[str, str]] = []
    explicit_targets = 0
    for row in rows["lesson_words"]:
        pair = (row.get("lesson_id", "").strip(), row.get("word_id", "").strip())
        lesson_word_pairs.append(pair)
        if literal_int(row.get("is_target", "")) == 1:
            explicit_targets += 1
    duplicate_lesson_words = [pair for pair, count in Counter(lesson_word_pairs).items() if count > 1]
    if duplicate_lesson_words:
        errors.append(f"{len(duplicate_lesson_words)} duplicate lesson_words pairs")

    activities = rows["activities"]
    activity_groups: dict[str, list[dict[str, str]]] = defaultdict(list)
    activity_types: Counter[str] = Counter()
    for row in activities:
        lesson_var = row.get("lesson_id", "").strip()
        activity_groups[lesson_var].append(row)
        activity_type = sql_string(row.get("activity_type", "")) or "<invalid>"
        activity_types[activity_type] += 1
        turn_ref = row.get("turn_id", "NULL").strip().upper() != "NULL"
        word_ref = row.get("word_id", "NULL").strip().upper() != "NULL"
        if activity_type in {"listen", "speak", "word_order"} and not turn_ref:
            errors.append(f"{activity_type} activity lacks turn_id")
        if activity_type == "new_word" and not word_ref:
            errors.append("new_word activity lacks word_id")
        if activity_type == "meaning_choice" and turn_ref == word_ref:
            errors.append("meaning_choice must reference exactly one of turn_id or word_id")
        if activity_type == "reading_comprehension":
            prompt = sql_string(row.get("prompt", ""))
            if prompt is None or not prompt.strip():
                errors.append("reading_comprehension lacks a learner prompt")
        if activity_type in {"meaning_choice", "reading_comprehension"}:
            try:
                config = json_literal(row.get("config", ""))
                choices = config.get("choices") if isinstance(config, dict) else None
                correct_index = config.get("correctIndex") if isinstance(config, dict) else None
                question = config.get("question") if isinstance(config, dict) else None
                if (
                    not isinstance(question, str)
                    or not question.strip()
                    or not isinstance(choices, list)
                    or len(choices) < 2
                    or not isinstance(correct_index, int)
                    or isinstance(correct_index, bool)
                    or not 0 <= correct_index < len(choices)
                ):
                    errors.append(f"{activity_type} has an invalid choice-task config")
            except (ValueError, json.JSONDecodeError):
                pass
        for json_key in ("config", "metadata"):
            value = row.get(json_key, "NULL").strip()
            if value.upper() != "NULL" and sql_string(value) is not None:
                try:
                    json.loads(sql_string(value) or "")
                except json.JSONDecodeError as exc:
                    errors.append(f"invalid activities.{json_key} JSON: {exc}")
    for lesson_var, group in activity_groups.items():
        orders = sorted(filter(lambda item: item is not None, (literal_int(row.get("sort_order", "")) for row in group)))
        if orders != list(range(1, len(group) + 1)):
            errors.append(f"{lesson_var} activity order is not contiguous: {orders}")
    if set(declared) != set(turn_groups) or set(declared) != set(activity_groups):
        errors.append("one or more lessons have no turns or no activities")

    known_words.update(inserted_words)
    known_characters.update(inserted_characters)
    return {
        "series": series,
        "level": level,
        "module": module,
        "chapter": chapter,
        "revision": revision,
        "file": path.name,
        "bytes": path.stat().st_size,
        "sha256": sha256(path),
        "counts": {
            "inserted_words": len(inserted_words),
            "selected_words": len(selected_words),
            "inserted_characters": len(inserted_characters),
            "selected_characters": len(selected_characters),
            "lessons": len(lessons),
            "turns": len(turns),
            "tokens": token_count,
            "lesson_words": len(lesson_word_pairs),
            "explicit_targets": explicit_targets,
            "activities": len(activities),
        },
        "activity_types": dict(sorted(activity_types.items())),
        "storylines": storylines,
        "unmatched_token_word_tuples": len(unmatched_token_words),
        "errors": errors,
        "warnings": warnings,
    }


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("extracted_dir", type=Path)
    parser.add_argument("--archive", type=Path)
    parser.add_argument("--output", type=Path)
    parser.add_argument("--manifest", type=Path)
    parser.add_argument(
        "--state-dir",
        type=Path,
        help="Optional repository nova/state directory for exact state cross-checking",
    )
    args = parser.parse_args()

    root = args.extracted_dir.resolve()
    errors: list[str] = []
    warnings: list[str] = []
    archive_info: dict[str, Any] = {
        "canonical_filename": CANONICAL_ARCHIVE,
        "expected_sha256": CANONICAL_SHA256,
        "expected_bytes": CANONICAL_BYTES,
    }
    if args.archive:
        archive = args.archive.resolve()
        actual_sha = sha256(archive)
        actual_bytes = archive.stat().st_size
        archive_info.update(
            {"uploaded_filename": archive.name, "sha256": actual_sha, "bytes": actual_bytes}
        )
        if actual_sha != CANONICAL_SHA256 or actual_bytes != CANONICAL_BYTES:
            errors.append("archive identity does not match the canonical checksum/size")
        try:
            with zipfile.ZipFile(archive) as handle:
                bad = handle.testzip()
                members = handle.infolist()
                unsafe = [
                    item.filename
                    for item in members
                    if Path(item.filename).is_absolute() or ".." in Path(item.filename).parts
                ]
                encrypted = [item.filename for item in members if item.flag_bits & 0x1]
                symlinks = [
                    item.filename for item in members if ((item.external_attr >> 16) & 0o170000) == 0o120000
                ]
                archive_info.update(
                    {
                        "zip_integrity": "PASS" if bad is None else f"FAIL:{bad}",
                        "members": len(members),
                        "unsafe_paths": unsafe,
                        "encrypted_members": encrypted,
                        "symlink_members": symlinks,
                    }
                )
                if bad or unsafe or encrypted or symlinks:
                    errors.append("ZIP safety/integrity checks failed")
                file_members = [item for item in members if not item.is_dir()]
                extracted_differences: list[str] = []
                member_names = {item.filename for item in file_members}
                extracted_names = {path.name for path in root.iterdir() if path.is_file()}
                for missing in sorted(member_names - extracted_names):
                    extracted_differences.append(f"missing extracted member: {missing}")
                for extra in sorted(extracted_names - member_names):
                    extracted_differences.append(f"extra extracted file: {extra}")
                for item in file_members:
                    extracted = root / item.filename
                    if not extracted.is_file():
                        continue
                    archive_digest = hashlib.sha256(handle.read(item)).hexdigest()
                    if extracted.stat().st_size != item.file_size or sha256(extracted) != archive_digest:
                        extracted_differences.append(f"content differs: {item.filename}")
                archive_info["extracted_content_match"] = (
                    "PASS" if not extracted_differences else "FAIL"
                )
                archive_info["extracted_differences"] = extracted_differences
                if extracted_differences:
                    errors.append("extracted directory is not byte-for-byte equal to the ZIP")
        except zipfile.BadZipFile as exc:
            errors.append(f"invalid ZIP: {exc}")

    files = sorted(path for path in root.iterdir() if path.is_file())
    file_inventory = [
        {
            "file": path.name,
            "type": path.suffix.lower().lstrip("."),
            "bytes": path.stat().st_size,
            "sha256": sha256(path),
        }
        for path in files
    ]
    json_files = [path for path in files if path.suffix.lower() == ".json"]
    sql_files = [path for path in files if path.suffix.lower() == ".sql"]
    series_files = [path for path in sql_files if SERIES_RE.match(path.name)]
    support_sql = [path for path in sql_files if not SERIES_RE.match(path.name)]

    if len(files) != 105 or len(sql_files) != 84 or len(json_files) != 21:
        errors.append(
            f"unexpected inventory: files={len(files)}, sql={len(sql_files)}, json={len(json_files)}"
        )

    expected_support_sql = {
        "nova_schema_v9.sql": ("CREATE TABLE courses", "CREATE TABLE activities", "CREATE VIEW v_lesson_story"),
        "nova_DE_FA_base_seed_v9.sql": ("INSERT INTO courses", "INSERT INTO levels", "INSERT INTO modules", "INSERT INTO chapters"),
        "nova_reset_all_v9.sql": ("DROP VIEW IF EXISTS v_lesson_story", "DROP TABLE IF EXISTS courses"),
        "nova_runtime_lesson_query_v9.sql": (
            "FROM lessons",
            "JOIN activities",
            "LEFT JOIN turns",
            "LEFT JOIN words",
        ),
    }
    if {path.name for path in support_sql} != set(expected_support_sql):
        errors.append("support SQL file set does not match the canonical four-file set")
    for path in support_sql:
        try:
            support_text = path.read_text(encoding="utf-8")
        except UnicodeDecodeError as exc:
            errors.append(f"{path.name}: UTF-8 decode error: {exc}")
            continue
        for fragment in expected_support_sql.get(path.name, ()):
            if fragment not in support_text:
                errors.append(f"{path.name}: missing expected structure: {fragment}")

    parsed_json = 0
    for path in json_files:
        try:
            json.loads(path.read_text(encoding="utf-8"))
            parsed_json += 1
        except (UnicodeDecodeError, json.JSONDecodeError) as exc:
            errors.append(f"{path.name}: JSON parse error: {exc}")

    parsed_series: dict[int, Path] = {}
    for path in series_files:
        match = SERIES_RE.match(path.name)
        assert match
        series = int(match.group(4))
        if series in parsed_series:
            errors.append(f"duplicate canonical Series {series:03d}")
        parsed_series[series] = path
    if sorted(parsed_series) != list(range(1, 81)):
        errors.append("canonical Series coverage is not exactly 001-080")

    expected_revisions = {4: "r2", 15: "r3", 20: "r2"}
    actual_revisions: dict[int, str] = {}
    for series, path in parsed_series.items():
        match = SERIES_RE.match(path.name)
        assert match
        if match.group(5):
            actual_revisions[series] = match.group(5)
    if actual_revisions != expected_revisions:
        errors.append(f"canonical revision set is {actual_revisions}, expected {expected_revisions}")

    known_words: set[tuple[str, str, str]] = set()
    known_characters: set[tuple[str, str]] = set()
    series_results = [
        scan_series(parsed_series[number], known_words, known_characters)
        for number in sorted(parsed_series)
    ]
    for result in series_results:
        errors.extend(f"Series {result['series']:03d}: {item}" for item in result["errors"])
        warnings.extend(f"Series {result['series']:03d}: {item}" for item in result["warnings"])

    totals: Counter[str] = Counter()
    activity_types: Counter[str] = Counter()
    storyline_orders: dict[str, list[int]] = defaultdict(list)
    for result in series_results:
        totals.update(result["counts"])
        activity_types.update(result["activity_types"])
        for storyline in result["storylines"]:
            storyline_orders[storyline["key"]].append(storyline["order"])
    storyline_gaps = {
        key: sorted(orders)
        for key, orders in storyline_orders.items()
        if sorted(set(orders)) != list(range(min(orders), max(orders) + 1))
        or len(orders) != len(set(orders))
    }
    if storyline_gaps:
        errors.append(f"{len(storyline_gaps)} storylines have a gap or duplicate order")

    expected_totals = {
        "lessons": 320,
        "turns": 1524,
        "tokens": 3826,
        "lesson_words": 3260,
        "explicit_targets": 244,
        "activities": 2275,
        "inserted_characters": 24,
        "inserted_words": 379,
    }
    for field, expected_value in expected_totals.items():
        if totals[field] != expected_value:
            errors.append(
                f"canonical total {field} is {totals[field]}, expected {expected_value}"
            )
    expected_activity_types = {
        "listen": 764,
        "meaning_choice": 274,
        "new_word": 244,
        "reading_comprehension": 152,
        "speak": 760,
        "word_order": 81,
    }
    if dict(sorted(activity_types.items())) != expected_activity_types:
        errors.append("activity-type totals do not match the canonical inventory")
    if len(known_words) != 377 or len(known_characters) != 24 or len(storyline_orders) != 51:
        errors.append("word, character, or storyline unique totals are not canonical")

    bundled_audit = root / "nova_series_001_080_full_audit.json"
    bundled_audit_comparison: dict[str, Any] = {"present": bundled_audit.exists()}
    if bundled_audit.exists():
        internal = json.loads(bundled_audit.read_text(encoding="utf-8"))
        internal_by_file = {item["file"]: item for item in internal.get("series", [])}
        mismatches = []
        for result in series_results:
            item = internal_by_file.get(result["file"])
            if not item:
                mismatches.append(f"missing internal audit row: {result['file']}")
                continue
            comparisons = {
                "inserted_words": (result["counts"]["inserted_words"], item["words"]["inserted"]),
                "lesson_words": (result["counts"]["lesson_words"], item["lessonWords"]["rows"]),
            }
            for field, (actual, claimed) in comparisons.items():
                if actual != claimed:
                    mismatches.append(
                        f"{result['file']} {field}: independent={actual}, bundled={claimed}"
                    )
        bundled_audit_comparison.update(
            {
                "status": internal.get("status"),
                "series_rows": len(internal.get("series", [])),
                "mismatches": mismatches,
            }
        )
        if internal.get("status") != "PASS" or len(internal.get("series", [])) != 80 or mismatches:
            errors.append("bundled full-audit report does not match independent scan")

    state_crosscheck: dict[str, Any] = {"status": "not_run"}
    if args.state_dir:
        state_dir = args.state_dir.resolve()
        archive_words: dict[tuple[str, str, str], dict[str, Any]] = {}
        target_series: dict[tuple[str, str, str], list[int]] = defaultdict(list)
        archive_characters: dict[tuple[str, str], int] = {}
        archive_storylines: dict[str, list[tuple[int, int]]] = defaultdict(list)
        for series in sorted(parsed_series):
            series_path = parsed_series[series]
            series_text = series_path.read_text(encoding="utf-8")
            variables = {
                variable: (lemma, pos, translation)
                for variable, lemma, pos, translation in word_selects(series_text)
            }
            for table, columns, values in insert_rows(series_text):
                row = row_map(columns, values)
                if table == "words":
                    identity = tuple(
                        sql_string(row[key]) or ""
                        for key in ("lemma", "part_of_speech", "translation")
                    )
                    archive_words.setdefault(identity, {"introduced_series": series})
                elif table == "characters":
                    identity = (
                        sql_string(row["name"]) or "",
                        sql_string(row["gender"]) or "",
                    )
                    archive_characters.setdefault(identity, series)
                elif table == "lesson_words" and literal_int(row["is_target"]) == 1:
                    identity = variables.get(row["word_id"].strip())
                    if identity:
                        target_series[identity].append(series)
                elif table == "lessons":
                    key = sql_string(row["storyline_key"])
                    order = literal_int(row["storyline_order"])
                    if key and order is not None:
                        archive_storylines[key].append((series, order))

        archive_word_rows = {}
        for identity, item in archive_words.items():
            targets = target_series[identity]
            archive_word_rows[identity] = {
                "introduced_series": item["introduced_series"],
                "explicit_target_count": len(targets),
                "first_target_series": min(targets) if targets else None,
                "last_target_series": max(targets) if targets else None,
            }
        archive_storyline_rows = {
            key: {
                "min_order": min(order for _, order in values),
                "max_order": max(order for _, order in values),
                "lessons": len(values),
                "first_series": min(series for series, _ in values),
                "last_series": max(series for series, _ in values),
            }
            for key, values in archive_storylines.items()
        }
        state_differences: list[dict[str, Any]] = []
        try:
            state_word_rows = []
            for path in sorted(state_dir.glob("words_state_*.json")):
                state_word_rows.extend(json.loads(path.read_text(encoding="utf-8")))
            state_words = {
                (row["lemma"], row["pos"], row["translation"]): row
                for row in state_word_rows
            }
            state_characters = {
                (row["name"], row["gender"]): row
                for row in json.loads((state_dir / "characters.json").read_text(encoding="utf-8"))
            }
            state_storylines = {
                row["key"]: row
                for row in json.loads((state_dir / "storylines.json").read_text(encoding="utf-8"))
            }
            for label, archive_map, state_map, fields in (
                (
                    "words",
                    archive_word_rows,
                    state_words,
                    (
                        "introduced_series",
                        "explicit_target_count",
                        "first_target_series",
                        "last_target_series",
                    ),
                ),
                (
                    "characters",
                    {key: {"introduced_series": value} for key, value in archive_characters.items()},
                    state_characters,
                    ("introduced_series",),
                ),
                (
                    "storylines",
                    archive_storyline_rows,
                    state_storylines,
                    ("min_order", "max_order", "lessons", "first_series", "last_series"),
                ),
            ):
                for key in sorted(set(archive_map) | set(state_map), key=str):
                    if key not in archive_map:
                        state_differences.append({"type": label, "key": key, "issue": "extra_in_state"})
                        continue
                    if key not in state_map:
                        state_differences.append({"type": label, "key": key, "issue": "missing_from_state"})
                        continue
                    for field in fields:
                        if archive_map[key].get(field) != state_map[key].get(field):
                            state_differences.append(
                                {
                                    "type": label,
                                    "key": key,
                                    "field": field,
                                    "archive": archive_map[key].get(field),
                                    "state": state_map[key].get(field),
                                }
                            )
            state_crosscheck = {
                "status": "PASS" if not state_differences else "FAIL",
                "word_state_files": len(list(state_dir.glob("words_state_*.json"))),
                "words": len(state_words),
                "characters": len(state_characters),
                "storylines": len(state_storylines),
                "differences": state_differences,
            }
            if state_differences:
                errors.append(
                    f"repository generation state has {len(state_differences)} differences from the archive"
                )
        except (OSError, KeyError, TypeError, json.JSONDecodeError) as exc:
            state_crosscheck = {"status": "FAIL", "error": str(exc)}
            errors.append(f"repository state cross-check failed: {exc}")

    report = {
        "project": "Nova",
        "scan_date": str(date.today()),
        "scope": "canonical A1/A2 Series 001-080 archive",
        "scanner": "nova/tools/scan_canonical_archive.py",
        "scan_kind": "static_full_archive_scan",
        "mysql_execution_test": "not_run",
        "status": "PASS" if not errors else "FAIL",
        "archive": archive_info,
        "inventory": {
            "files": len(files),
            "uncompressed_bytes": sum(path.stat().st_size for path in files),
            "sql_files": len(sql_files),
            "series_sql_files": len(series_files),
            "support_sql_files": len(support_sql),
            "json_files": len(json_files),
            "parsed_json_files": parsed_json,
            "series_range": [min(parsed_series) if parsed_series else None, max(parsed_series) if parsed_series else None],
            "levels": {"A1": 40, "A2": 40},
        },
        "canonical_revisions": {f"series_{key:03d}": value for key, value in actual_revisions.items()},
        "content_totals": dict(sorted(totals.items())),
        "activity_types": dict(sorted(activity_types.items())),
        "dictionary": {
            "unique_word_tuples_after_series_080": len(known_words),
            "unique_characters_after_series_080": len(known_characters),
            "token_contract": {
                "required": ["surface", "lemma", "translation", "partOfSpeech"],
                "optional_observed": ["meaning", "form", "suffix"],
                "storage": "self-contained display-order JSON objects",
            },
            "unmatched_exact_token_dictionary_tuples": sum(
                result["unmatched_token_word_tuples"] for result in series_results
            ),
        },
        "storylines": {
            "unique": len(storyline_orders),
            "gaps_or_duplicate_orders": storyline_gaps,
        },
        "bundled_audit_comparison": bundled_audit_comparison,
        "repository_state_crosscheck": state_crosscheck,
        "freeze": {
            "content_through_series": 80,
            "next_level": "B1",
            "next_series": 81,
            "generation_enabled": False,
        },
        "errors": errors,
        "warnings": warnings,
        "series": series_results,
    }

    manifest = {
        "project": "Nova",
        "archive": archive_info,
        "extracted_root": "nova/archive/series_001_080_fixed/extracted",
        "files": file_inventory,
    }
    rendered = json.dumps(report, ensure_ascii=False, indent=2) + "\n"
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(rendered, encoding="utf-8")
    else:
        sys.stdout.write(rendered)
    if args.manifest:
        args.manifest.parent.mkdir(parents=True, exist_ok=True)
        args.manifest.write_text(
            json.dumps(manifest, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
        )
    return 0 if not errors else 1


if __name__ == "__main__":
    raise SystemExit(main())

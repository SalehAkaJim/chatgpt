#!/usr/bin/env python3
"""Native-v3.2 TTS adapter for explicit deterministic audio locators.

Canonical Chapter SQL is the text source and already stores final repository-
relative audio_url values. This adapter materializes MP3 files at the exact same
stable paths. It never emits post-import audio UPDATE SQL and does not couple
content-story metadata to voice-map role/context labels.
"""
from __future__ import annotations

import re
import sys
from pathlib import Path

CURRENT_DIR = Path(__file__).resolve().parent
if str(CURRENT_DIR) not in sys.path:
    sys.path.insert(0, str(CURRENT_DIR))

import nova_tts

_ORIGINAL_SPLIT_STATEMENTS = nova_tts.split_sql_statements
_ORIGINAL_PARSE_INSERT = nova_tts.parse_insert
_ORIGINAL_TURN_BUILD_TASKS = nova_tts.build_tasks


def _split_values_rows(payload: str) -> list[str]:
    rows: list[str] = []
    start: int | None = None
    depth = 0
    quote: str | None = None
    escape = False
    index = 0
    while index < len(payload):
        char = payload[index]
        if quote is not None:
            if escape:
                escape = False
                index += 1
                continue
            if char == "\\":
                escape = True
                index += 1
                continue
            if char == quote:
                if index + 1 < len(payload) and payload[index + 1] == quote:
                    index += 2
                    continue
                quote = None
            index += 1
            continue
        if char in ("'", '"'):
            quote = char
            index += 1
            continue
        if char == "(":
            if depth == 0:
                start = index
            depth += 1
        elif char == ")":
            depth -= 1
            if depth < 0:
                raise nova_tts.NovaTtsError("Unbalanced VALUES tuple in native-v3 SQL.")
            if depth == 0 and start is not None:
                rows.append(payload[start : index + 1].strip())
                start = None
        index += 1
    if quote is not None or depth != 0:
        raise nova_tts.NovaTtsError("Unbalanced quoted/parenthesized VALUES payload in native-v3 SQL.")
    return rows


def _normalize_character_variables(sql: str) -> str:
    variables: list[str] = []
    for match in re.finditer(
        r"SELECT\b[^;]*?\bINTO\s+(?:v_count\s*,\s*)?(v_[a-z0-9_]+)\s+FROM\s+characters\b[^;]*?\bname\s*=\s*'(?:''|\\.|[^'])*'",
        sql,
        flags=re.IGNORECASE | re.DOTALL,
    ):
        variable = match.group(1)
        if variable.casefold().startswith("v_c_"):
            continue
        variables.append(variable)
    for variable in sorted(set(variables), key=len, reverse=True):
        suffix = re.sub(r"[^a-z0-9_]+", "_", variable[2:].casefold()).strip("_")
        alias = f"v_c_{suffix or 'character'}"
        sql = re.sub(rf"\b{re.escape(variable)}\b", alias, sql, flags=re.IGNORECASE)
    return sql


def _lesson_variable_map(sql: str) -> dict[int, str]:
    result: dict[int, str] = {}
    for match in re.finditer(
        r"SELECT\s+id\s+INTO\s+(v_l_[a-z0-9_]+)\s+FROM\s+lessons\b[^;]*?\bsort_order\s*=\s*(\d+)",
        sql,
        flags=re.IGNORECASE | re.DOTALL,
    ):
        order = int(match.group(2))
        variable = match.group(1)
        previous = result.get(order)
        if previous and previous.casefold() != variable.casefold():
            raise nova_tts.NovaTtsError(
                f"Conflicting native-v3 lesson variables for sort_order {order}: {previous}, {variable}."
            )
        result[order] = variable
    return result


def _row_values(row: str) -> list[str]:
    row = row.strip()
    if not (row.startswith("(") and row.endswith(")")):
        raise nova_tts.NovaTtsError(f"Expected parenthesized VALUES row, got {row[:80]!r}.")
    return nova_tts.split_sql_csv(row[1:-1])


def compat_split_sql_statements(sql: str) -> list[str]:
    sql = _normalize_character_variables(sql)
    lesson_vars = _lesson_variable_map(sql)
    expanded: list[str] = []
    for statement in _ORIGINAL_SPLIT_STATEMENTS(sql):
        match = re.match(
            r"^\s*(INSERT\s+INTO\s+(lessons|turns|words)\s*\((.*?)\)\s*VALUES\s*)(.*)\s*$",
            statement,
            flags=re.IGNORECASE | re.DOTALL,
        )
        if not match:
            expanded.append(statement)
            continue
        prefix = match.group(1)
        table = match.group(2).casefold()
        columns = [c.strip().strip("`").casefold() for c in nova_tts.split_sql_csv(match.group(3))]
        payload = match.group(4).strip()
        rows = _split_values_rows(payload)
        if not rows:
            expanded.append(statement)
            continue
        last_end = payload.rfind(rows[-1]) + len(rows[-1])
        suffix = payload[last_end:].strip().lstrip(",").strip()
        if suffix:
            raise nova_tts.NovaTtsError(
                f"Unsupported suffix after native-v3 multi-row {table} INSERT: {suffix[:80]!r}."
            )
        for row in rows:
            expanded.append(prefix + row)
            if table != "lessons" or not lesson_vars:
                continue
            if "sort_order" not in columns:
                raise nova_tts.NovaTtsError("Native-v3 lessons INSERT is missing sort_order.")
            values = _row_values(row)
            if len(values) != len(columns):
                raise nova_tts.NovaTtsError(
                    f"Column/value mismatch while normalizing native-v3 lessons: {len(columns)} != {len(values)}."
                )
            raw_order = values[columns.index("sort_order")].strip()
            if not re.fullmatch(r"\d+", raw_order):
                raise nova_tts.NovaTtsError(
                    f"Native-v3 lesson sort_order must be an integer, got {raw_order!r}."
                )
            variable = lesson_vars.get(int(raw_order))
            if variable:
                expanded.append(f"SET {variable}=LAST_INSERT_ID()")
    return expanded


def compat_parse_insert(statement: str, table: str) -> dict[str, str] | None:
    parsed = _ORIGINAL_PARSE_INSERT(statement, table)
    if parsed is not None or table.casefold() != "words":
        return parsed
    match = re.search(
        r"INSERT\s+INTO\s+words\s*\((.*?)\)\s*SELECT\s+(.*?)\s+WHERE\s+NOT\s+EXISTS\b",
        statement,
        flags=re.IGNORECASE | re.DOTALL,
    )
    if not match:
        return None
    columns = [column.strip().strip("`").casefold() for column in nova_tts.split_sql_csv(match.group(1))]
    values = nova_tts.split_sql_csv(match.group(2))
    if len(columns) != len(values):
        raise nova_tts.NovaTtsError(
            f"Column/value mismatch while parsing native-v3 words: {len(columns)} != {len(values)}."
        )
    return dict(zip(columns, values))


def stable_validate_source_roster(rows, mapping, repo_root=None) -> None:
    """Content metadata may evolve; TTS only requires a mapped name + exact gender."""
    profiles = {str(item.get("name") or ""): item for item in mapping.get("characters", [])}
    source_names = {str(row["character_name"]) for row in rows}
    missing = sorted(name for name in source_names if name not in profiles)
    if missing:
        raise nova_tts.NovaTtsError(
            "Source characters missing from voice map: " + ", ".join(missing)
        )
    for row in rows:
        profile = profiles[str(row["character_name"])]
        expected = str(row.get("character_gender") or "").casefold()
        actual = str(profile.get("gender") or "").casefold()
        if expected != actual:
            raise nova_tts.NovaTtsError(
                f"Gender mismatch for {row['character_name']}: SQL={expected!r}, voice_map={actual!r}."
            )


def _stable_turn_relative(task: dict) -> Path:
    return (
        Path("nova") / "audio" / "turns" / nova_tts.COURSE / str(task["level"]).upper()
        / f"s{int(task['series']):04d}"
        / f"l{int(task['lesson_order']):02d}"
        / f"t{int(task['turn_order']):02d}.mp3"
    )


def stable_turn_build_tasks(rows, mapping, manifest):
    candidates = _ORIGINAL_TURN_BUILD_TASKS(rows, mapping, manifest)
    tasks = []
    for task in candidates:
        relative = _stable_turn_relative(task)
        target = nova_tts.REPO_ROOT / relative
        existing = manifest.get("entries", {}).get(str(task["key"])) or {}
        if (
            existing.get("fingerprint") == task.get("fingerprint")
            and existing.get("path") == relative.as_posix()
            and target.is_file()
            and target.stat().st_size >= 100
        ):
            continue
        task["relative_path"] = relative.as_posix()
        task["target_path"] = target
        tasks.append(task)
    return tasks


def _no_audio_update_sql(*_args, **_kwargs) -> None:
    """Native-v3.2 stores audio_url in source rows; standalone UPDATE SQL is forbidden."""
    return None


def _install_compatibility() -> None:
    nova_tts.split_sql_statements = compat_split_sql_statements
    nova_tts.parse_insert = compat_parse_insert
    nova_tts.validate_source_roster = stable_validate_source_roster
    nova_tts.build_tasks = stable_turn_build_tasks
    nova_tts.write_update_sql = _no_audio_update_sql


def main() -> int:
    if len(sys.argv) < 3 or sys.argv[1] not in {"turn", "word"}:
        print("Usage: python nova/tts/v3_tts_runner.py {turn|word} <tts-command> [args...]", file=sys.stderr)
        return 2
    mode = sys.argv[1]
    sys.argv = [sys.argv[0], *sys.argv[2:]]
    _install_compatibility()
    if mode == "turn":
        return nova_tts.main()

    import nova_word_tts
    original_word_build_tasks = nova_word_tts.build_tasks

    def stable_word_build_tasks(rows, config, manifest):
        candidates = original_word_build_tasks(rows, config, manifest)
        tasks = []
        for task in candidates:
            text = str(task["display_form"])
            relative = (
                Path("nova") / "audio" / "words" / nova_tts.COURSE
                / f"{nova_tts.sha256_text(text)}.mp3"
            )
            target = nova_tts.REPO_ROOT / relative
            existing = manifest.get("entries", {}).get(str(task["key"])) or {}
            if (
                existing.get("fingerprint") == task.get("fingerprint")
                and existing.get("path") == relative.as_posix()
                and target.is_file()
                and target.stat().st_size >= 100
            ):
                continue
            task["relative_path"] = relative.as_posix()
            task["target_path"] = target
            tasks.append(task)
        return tasks

    nova_word_tts.split_sql_statements = compat_split_sql_statements
    nova_word_tts.parse_insert = compat_parse_insert
    nova_word_tts.build_tasks = stable_word_build_tasks
    nova_word_tts.write_update_sql = _no_audio_update_sql
    return nova_word_tts.main()


if __name__ == "__main__":
    raise SystemExit(main())

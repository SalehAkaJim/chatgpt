#!/usr/bin/env python3
"""Run Nova TTS against native-v3 SQL without weakening the SQL contract.

The original TTS parser predates native-v3 and assumes:
1) one VALUES tuple per INSERT INTO turns statement,
2) character lookup variables are named v_c_*, and
3) words are inserted with VALUES rather than the idempotent
   INSERT ... SELECT ... WHERE NOT EXISTS form used by v3.

This adapter normalizes only the parser view. It does not change canonical SQL,
MySQL execution semantics, or publication state.
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


def _split_values_rows(payload: str) -> list[str]:
    """Split `(a,b),(c,d)` into complete top-level row tuples."""
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
    """Alias native-v3 character variables to the legacy v_c_* parser convention."""
    variables: list[str] = []
    for match in re.finditer(
        r"SELECT\b[^;]*?\bINTO\s+(v_[a-z0-9_]+)\s+FROM\s+characters\b[^;]*?\bname\s*=\s*'(?:''|\\.|[^'])*'",
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


def compat_split_sql_statements(sql: str) -> list[str]:
    sql = _normalize_character_variables(sql)
    expanded: list[str] = []
    for statement in _ORIGINAL_SPLIT_STATEMENTS(sql):
        match = re.match(
            r"^\s*(INSERT\s+INTO\s+turns\s*\((.*?)\)\s*VALUES\s*)(.*)\s*$",
            statement,
            flags=re.IGNORECASE | re.DOTALL,
        )
        if not match:
            expanded.append(statement)
            continue
        prefix = match.group(1)
        payload = match.group(3).strip()
        rows = _split_values_rows(payload)
        if len(rows) <= 1:
            expanded.append(statement)
            continue
        expanded.extend(prefix + row for row in rows)
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
    columns = [
        column.strip().strip("`").casefold()
        for column in nova_tts.split_sql_csv(match.group(1))
    ]
    values = nova_tts.split_sql_csv(match.group(2))
    if len(columns) != len(values):
        raise nova_tts.NovaTtsError(
            f"Column/value mismatch while parsing native-v3 words: {len(columns)} != {len(values)}."
        )
    return dict(zip(columns, values))


def _install_compatibility() -> None:
    nova_tts.split_sql_statements = compat_split_sql_statements
    nova_tts.parse_insert = compat_parse_insert


def main() -> int:
    if len(sys.argv) < 3 or sys.argv[1] not in {"turn", "word"}:
        print(
            "Usage: python nova/tts/v3_tts_runner.py {turn|word} <tts-command> [args...]",
            file=sys.stderr,
        )
        return 2
    mode = sys.argv[1]
    sys.argv = [sys.argv[0], *sys.argv[2:]]
    _install_compatibility()
    if mode == "turn":
        return nova_tts.main()
    import nova_word_tts
    nova_word_tts.split_sql_statements = compat_split_sql_statements
    nova_word_tts.parse_insert = compat_parse_insert
    return nova_word_tts.main()


if __name__ == "__main__":
    raise SystemExit(main())

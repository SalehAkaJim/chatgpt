#!/usr/bin/env python3
"""Zero-dependency local prototype for the language-learning content repository.

Run from the repository root:
    python prototype.py

The script reads the canonical SQL files under database/ directly. It does not
need Docker, Node.js, MySQL, pip, or third-party Python packages.
"""
from __future__ import annotations

import argparse
import json
import re
import sys
import threading
import webbrowser
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path
from urllib.parse import urlparse

ROOT = Path(__file__).resolve().parent
PLAN_FILE = ROOT / "database" / "plans" / "de_pre_a1_lesson_map.sql"
CONTENT_DIR = ROOT / "database" / "content"

LANGUAGES = {
    "de": {"name_fa": "آلمانی", "name_native": "Deutsch"},
    "en": {"name_fa": "انگلیسی", "name_native": "English"},
}
LEVELS = [
    ("Pre-A1", "پیش از A1"), ("A1", "A1"), ("A2", "A2"),
    ("B1", "B1"), ("B2", "B2"), ("C1", "C1"), ("C2", "C2"),
]


def sql_text(value: str | None) -> str | None:
    if value is None:
        return None
    value = value.strip()
    m = re.match(r"'((?:''|[^'])*)'", value, re.S)
    if not m:
        return None
    return m.group(1).replace("''", "'")


def split_top_level(text: str, delimiter: str = ",") -> list[str]:
    parts, buf = [], []
    depth = 0
    quote = False
    i = 0
    while i < len(text):
        ch = text[i]
        if quote:
            buf.append(ch)
            if ch == "'":
                if i + 1 < len(text) and text[i + 1] == "'":
                    buf.append(text[i + 1])
                    i += 2
                    continue
                quote = False
            i += 1
            continue
        if ch == "'":
            quote = True
            buf.append(ch)
        elif ch == "(":
            depth += 1
            buf.append(ch)
        elif ch == ")":
            depth = max(0, depth - 1)
            buf.append(ch)
        elif ch == delimiter and depth == 0:
            parts.append("".join(buf).strip())
            buf = []
        else:
            buf.append(ch)
        i += 1
    if buf or text.strip():
        parts.append("".join(buf).strip())
    return parts


def split_union_rows(text: str) -> list[str]:
    rows, buf = [], []
    depth = 0
    quote = False
    i = 0
    upper = text.upper()
    token = "UNION ALL"
    while i < len(text):
        ch = text[i]
        if quote:
            buf.append(ch)
            if ch == "'":
                if i + 1 < len(text) and text[i + 1] == "'":
                    buf.append(text[i + 1])
                    i += 2
                    continue
                quote = False
            i += 1
            continue
        if ch == "'":
            quote = True
            buf.append(ch)
            i += 1
            continue
        if ch == "(":
            depth += 1
        elif ch == ")":
            depth = max(0, depth - 1)
        if depth == 0 and upper.startswith(token, i):
            rows.append("".join(buf).strip())
            buf = []
            i += len(token)
            continue
        buf.append(ch)
        i += 1
    if "".join(buf).strip():
        rows.append("".join(buf).strip())
    return rows


def split_statements(sql: str) -> list[str]:
    statements, buf = [], []
    quote = False
    i = 0
    while i < len(sql):
        ch = sql[i]
        if quote:
            buf.append(ch)
            if ch == "'":
                if i + 1 < len(sql) and sql[i + 1] == "'":
                    buf.append(sql[i + 1])
                    i += 2
                    continue
                quote = False
            i += 1
            continue
        if ch == "'":
            quote = True
            buf.append(ch)
        elif ch == ";":
            stmt = "".join(buf).strip()
            if stmt:
                statements.append(stmt)
            buf = []
        else:
            buf.append(ch)
        i += 1
    if "".join(buf).strip():
        statements.append("".join(buf).strip())
    return statements


def sql_value(expr: str):
    expr = expr.strip()
    if not expr:
        return None
    if expr.startswith("'"):
        return sql_text(expr)
    upper = expr.upper()
    if upper.startswith("NULL"):
        return None
    if upper.startswith("TRUE"):
        return True
    if upper.startswith("FALSE"):
        return False
    if upper.startswith("JSON_OBJECT"):
        return parse_json_object(expr)
    m = re.match(r"-?\d+(?:\.\d+)?", expr)
    if m:
        raw = m.group(0)
        return float(raw) if "." in raw else int(raw)
    return expr


def parse_json_object(expr: str) -> dict:
    start = expr.find("(")
    if start < 0:
        return {}
    depth, quote, end = 0, False, None
    i = start
    while i < len(expr):
        ch = expr[i]
        if quote:
            if ch == "'":
                if i + 1 < len(expr) and expr[i + 1] == "'":
                    i += 2
                    continue
                quote = False
        else:
            if ch == "'": quote = True
            elif ch == "(": depth += 1
            elif ch == ")":
                depth -= 1
                if depth == 0:
                    end = i
                    break
        i += 1
    if end is None:
        return {}
    fields = split_top_level(expr[start + 1:end])
    out = {}
    for i in range(0, len(fields) - 1, 2):
        key = sql_value(fields[i])
        if isinstance(key, str):
            out[key] = sql_value(fields[i + 1])
    return out


def extract_insert_block(sql: str, table: str) -> list[str]:
    pattern = re.compile(
        rf"INSERT(?:\s+IGNORE)?\s+INTO\s+{re.escape(table)}\b.*?\bFROM\s*\(\s*(.*?)\s*\)\s*x\b",
        re.I | re.S,
    )
    return [m.group(1) for m in pattern.finditer(sql)]


def row_fields(row: str) -> list[str]:
    row = re.sub(r"^\s*SELECT\s+", "", row, flags=re.I)
    return split_top_level(row)


def set_assignments(stmt: str) -> dict[str, str]:
    m = re.search(r"\bSET\b(.*?)(?:\bWHERE\b|$)", stmt, re.I | re.S)
    if not m:
        return {}
    out = {}
    for chunk in split_top_level(m.group(1)):
        if "=" not in chunk:
            continue
        key, value = chunk.split("=", 1)
        out[key.strip().split(".")[-1].strip(" `")] = value.strip()
    return out


def parse_case_by_position(expr: str) -> dict[int, object]:
    out = {}
    for m in re.finditer(r"WHEN\s+(\d+)\s+THEN\s+('(?:''|[^'])*'|NULL|-?\d+(?:\.\d+)?)", expr, re.I | re.S):
        out[int(m.group(1))] = sql_value(m.group(2))
    return out


def load_model() -> dict:
    if not PLAN_FILE.exists() or not CONTENT_DIR.exists():
        raise FileNotFoundError(
            "پوشه database پیدا نشد. prototype.py را در ریشهٔ همین repository اجرا کن."
        )

    lessons: dict[str, dict] = {}
    activities: dict[str, dict] = {}
    items: dict[tuple[str, int], dict] = {}
    dialogues: dict[str, dict] = {}
    turns: dict[tuple[str, int], dict] = {}
    characters: dict[str, str] = {}

    plan = PLAN_FILE.read_text(encoding="utf-8")
    lesson_rows = re.search(
        r"JOIN\s*\(\s*(SELECT\s+1\s+seq,.*?SELECT\s+30,'review'.*?)\s*\)\s*x\s+ON",
        plan, re.I | re.S,
    )
    if lesson_rows:
        for row in split_union_rows(lesson_rows.group(1)):
            fields = row_fields(row)
            if len(fields) < 4:
                continue
            seq = sql_value(fields[0])
            topic = sql_value(fields[1])
            title = sql_value(fields[2])
            source_title = sql_value(fields[3])
            if not isinstance(seq, int):
                continue
            public_id = f"de_pre_a1_l{seq:03d}"
            lessons[public_id] = {
                "public_id": public_id,
                "sequence_number": seq,
                "unit_or_topic": topic,
                "title_fa": title,
                "source_title": source_title,
                "status": "draft",
                "template_signature": None,
                "activity_count_rationale": None,
                "sequence_rationale": None,
            }

    files = sorted(CONTENT_DIR.glob("*.sql"), key=lambda p: p.name)
    for file in files:
        sql = file.read_text(encoding="utf-8")

        for m in re.finditer(
            r"SELECT\s+'(de_char_[^']+)'\s*,\s*l\.id\s*,\s*'((?:''|[^'])*)'\s*,\s*'(?:source|app_created)'",
            sql, re.I | re.S,
        ):
            characters[m.group(1)] = m.group(2).replace("''", "'")

        for block in extract_insert_block(sql, "dialogues"):
            for row in split_union_rows(block):
                fields = row_fields(row)
                if len(fields) < 2:
                    continue
                did, scenario = sql_value(fields[0]), sql_value(fields[1])
                if isinstance(did, str) and did.startswith("de_pre_a1_dlg_"):
                    dialogues[did] = {"public_id": did, "scenario": scenario, "origin_file": file.name}

        for block in extract_insert_block(sql, "dialogue_turns"):
            for row in split_union_rows(block):
                fields = row_fields(row)
                if len(fields) < 8:
                    continue
                did = sql_value(fields[0])
                pos = sql_value(fields[1])
                cid = sql_value(fields[2])
                if not isinstance(did, str) or not isinstance(pos, int):
                    continue
                turns[(did, pos)] = {
                    "dialogue_id": did,
                    "position": pos,
                    "character_id": cid,
                    "text_target": sql_value(fields[5]),
                    "translation_fa": sql_value(fields[6]),
                    "learner_turn": bool(sql_value(fields[7])),
                    "origin_file": file.name,
                }

        for block in extract_insert_block(sql, "activities"):
            for row in split_union_rows(block):
                fields = row_fields(row)
                if len(fields) < 7:
                    continue
                aid = sql_value(fields[0])
                lid = sql_value(fields[1])
                pos = sql_value(fields[2])
                if not isinstance(aid, str) or not aid.startswith("de_pre_a1_a"):
                    continue
                activities[aid] = {
                    "public_id": aid,
                    "lesson_id": lid,
                    "position": pos,
                    "type_code": sql_value(fields[3]),
                    "instruction_fa": sql_value(fields[4]),
                    "selection_reason": sql_value(fields[5]),
                    "dialogue_id": sql_value(fields[6]),
                    "payload": sql_value(fields[7]) if len(fields) > 7 else {},
                    "transformations": sql_value(fields[8]) if len(fields) > 8 else {},
                    "origin_file": file.name,
                }

        for block in extract_insert_block(sql, "activity_items"):
            for row in split_union_rows(block):
                fields = row_fields(row)
                if len(fields) < 7:
                    continue
                aid = sql_value(fields[0])
                pos = sql_value(fields[1])
                if not isinstance(aid, str) or not isinstance(pos, int):
                    continue
                items[(aid, pos)] = {
                    "activity_id": aid,
                    "position": pos,
                    "item_role": sql_value(fields[2]),
                    "text_target": sql_value(fields[3]),
                    "text_fa": sql_value(fields[4]),
                    "is_correct": sql_value(fields[5]),
                    "group_key": sql_value(fields[6]),
                    "metadata": sql_value(fields[7]) if len(fields) > 7 else {},
                    "origin_file": file.name,
                }

        for stmt in split_statements(sql):
            normalized = re.sub(r"\s+", " ", stmt).strip()
            upper = normalized.upper()

            if upper.startswith("UPDATE LESSONS"):
                lid_match = re.search(r"public_id\s*=\s*'(de_pre_a1_l\d+)'", stmt, re.I)
                if lid_match and lid_match.group(1) in lessons:
                    target = lessons[lid_match.group(1)]
                    for key, expr in set_assignments(stmt).items():
                        if key in {"status", "template_signature", "activity_count_rationale", "sequence_rationale", "source_title", "title_fa", "unit_or_topic"}:
                            value = sql_value(expr)
                            if not isinstance(value, str) or not value.upper().startswith("VALUES("):
                                target[key] = value

            elif upper.startswith("UPDATE DIALOGUES"):
                did_match = re.search(r"public_id\s*=\s*'(de_pre_a1_dlg_\d+)'", stmt, re.I)
                if did_match:
                    did = did_match.group(1)
                    dialogues.setdefault(did, {"public_id": did})
                    assigns = set_assignments(stmt)
                    if "scenario" in assigns:
                        dialogues[did]["scenario"] = sql_value(assigns["scenario"])
                        dialogues[did]["origin_file"] = file.name

            elif upper.startswith("UPDATE DIALOGUE_TURNS"):
                did_match = re.search(r"d\.public_id\s*=\s*'(de_pre_a1_dlg_\d+)'", stmt, re.I)
                pos_match = re.search(r"dt\.position\s*=\s*(\d+)", stmt, re.I)
                if did_match and pos_match:
                    key = (did_match.group(1), int(pos_match.group(1)))
                    target = turns.setdefault(key, {"dialogue_id": key[0], "position": key[1]})
                    char_match = re.search(r"ch\.public_id\s*=\s*'(de_char_[^']+)'", stmt, re.I)
                    if char_match:
                        target["character_id"] = char_match.group(1)
                    assigns = set_assignments(stmt)
                    for field in ("text_target", "translation_fa", "learner_turn"):
                        if field in assigns:
                            value = sql_value(assigns[field])
                            target[field] = bool(value) if field == "learner_turn" else value
                    target["origin_file"] = file.name

            elif upper.startswith("UPDATE ACTIVITIES"):
                aid = None
                direct = re.search(r"(?:a\.)?public_id\s*=\s*'(de_pre_a1_a\d+_\d+)'", stmt, re.I)
                if direct:
                    aid = direct.group(1)
                else:
                    lid_match = re.search(r"l\.public_id\s*=\s*'(de_pre_a1_l\d+)'", stmt, re.I)
                    pos_match = re.search(r"a\.position\s*=\s*(\d+)", stmt, re.I)
                    if lid_match and pos_match:
                        for candidate, activity in activities.items():
                            if activity.get("lesson_id") == lid_match.group(1) and activity.get("position") == int(pos_match.group(1)):
                                aid = candidate
                                break
                if aid and aid in activities:
                    assigns = set_assignments(stmt)
                    target = activities[aid]
                    for field in ("instruction_fa", "selection_reason", "payload", "transformations", "dialogue_id", "type_code"):
                        if field in assigns:
                            target[field] = sql_value(assigns[field])
                    target["origin_file"] = file.name

            elif upper.startswith("UPDATE ACTIVITY_ITEMS"):
                aid = None
                direct = re.search(r"a\.public_id\s*=\s*'(de_pre_a1_a\d+_\d+)'", stmt, re.I)
                if direct:
                    aid = direct.group(1)
                else:
                    lid_match = re.search(r"l\.public_id\s*=\s*'(de_pre_a1_l\d+)'", stmt, re.I)
                    apos_match = re.search(r"a\.position\s*=\s*(\d+)", stmt, re.I)
                    if lid_match and apos_match:
                        for candidate, activity in activities.items():
                            if activity.get("lesson_id") == lid_match.group(1) and activity.get("position") == int(apos_match.group(1)):
                                aid = candidate
                                break
                if aid:
                    assigns = set_assignments(stmt)
                    item_pos_match = re.search(r"ai\.position\s*=\s*(\d+)", stmt, re.I)
                    target_positions = [int(item_pos_match.group(1))] if item_pos_match else [p for a, p in items if a == aid]
                    for field in ("text_target", "text_fa", "group_key", "is_correct", "metadata", "item_role"):
                        if field not in assigns:
                            continue
                        case_values = parse_case_by_position(assigns[field]) if "CASE" in assigns[field].upper() else None
                        for pos in target_positions:
                            target = items.get((aid, pos))
                            if not target:
                                continue
                            target[field] = case_values.get(pos) if case_values is not None else sql_value(assigns[field])
                            target["origin_file"] = file.name

            elif upper.startswith("DELETE FROM ACTIVITY_ITEMS") or upper.startswith("DELETE AI FROM ACTIVITY_ITEMS"):
                direct = re.search(r"(?:a\.)?public_id\s*=\s*'(de_pre_a1_a\d+_\d+)'", stmt, re.I)
                if direct:
                    aid = direct.group(1)
                    for key in [key for key in items if key[0] == aid]:
                        items.pop(key, None)

    for turn in turns.values():
        turn["character_name"] = characters.get(turn.get("character_id"), turn.get("character_id") or "Speaker")

    activities_by_lesson: dict[str, list[dict]] = {}
    for activity in activities.values():
        aid = activity["public_id"]
        activity["items"] = sorted(
            [value for (item_aid, _), value in items.items() if item_aid == aid],
            key=lambda x: x["position"],
        )
        did = activity.get("dialogue_id")
        activity["dialogue"] = dialogues.get(did) if did else None
        activity["dialogue_turns"] = sorted(
            [value for (turn_did, _), value in turns.items() if did and turn_did == did],
            key=lambda x: x["position"],
        )
        activities_by_lesson.setdefault(activity.get("lesson_id"), []).append(activity)

    for lid, lesson in lessons.items():
        lesson["activities"] = sorted(activities_by_lesson.get(lid, []), key=lambda x: x.get("position") or 999)
        lesson["activity_count"] = len(lesson["activities"])
        if lesson["activities"]:
            lesson["template_signature"] = ">".join(str(a.get("type_code") or "unknown") for a in lesson["activities"])

    ordered_lessons = sorted(lessons.values(), key=lambda x: x["sequence_number"])
    catalog = []
    for code, lang in LANGUAGES.items():
        for level_code, level_fa in LEVELS:
            count = len(ordered_lessons) if code == "de" and level_code == "Pre-A1" else 0
            catalog.append({
                "language_code": code,
                "language_name_fa": lang["name_fa"],
                "language_name_native": lang["name_native"],
                "level_code": level_code,
                "level_label_fa": level_fa,
                "lesson_count": count,
                "level_status": "review" if count else "unassessed",
            })

    return {
        "catalog": catalog,
        "lessons": ordered_lessons,
        "meta": {
            "source": "database/plans + database/content",
            "content_files": [p.name for p in files],
            "lesson_count": len(ordered_lessons),
            "activity_count": len(activities),
            "dialogue_count": len(dialogues),
            "turn_count": len(turns),
        },
    }


HTML = r'''<!doctype html><html lang="fa" dir="rtl"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1"><title>Language Content Prototype</title><style>:root{--bg:#f6f5f0;--paper:#fff;--ink:#1e1d1a;--muted:#777269;--line:#e7e3db;--soft:#efede7;--accent:#2c665c;--accent2:#e4efec;--bad:#a84840;--shadow:0 14px 40px #2b271f12;font-family:Tahoma,Arial,sans-serif}*{box-sizing:border-box}body{margin:0;background:var(--bg);color:var(--ink)}button,select,textarea{font:inherit}button{cursor:pointer}.top{height:78px;padding:0 24px;display:flex;align-items:center;justify-content:space-between;border-bottom:1px solid var(--line);background:#f6f5f0ee;position:sticky;top:0;z-index:10;backdrop-filter:blur(10px)}h1{font-size:20px;margin:2px 0}.eyebrow{font:700 10px/1 Arial;letter-spacing:.12em;color:var(--muted);direction:ltr;text-align:right}.stat{font-size:11px;border:1px solid var(--line);background:var(--paper);padding:7px 10px;border-radius:999px}.layout{display:grid;grid-template-columns:300px minmax(0,1fr);min-height:calc(100vh - 78px)}aside{padding:16px;border-left:1px solid var(--line);background:#fbfaf7}.filters{display:grid;grid-template-columns:1fr 1fr;gap:8px}.filters label{display:grid;gap:5px;font-size:11px;color:var(--muted)}select{border:1px solid var(--line);border-radius:10px;background:var(--paper);padding:9px}.meta{margin:12px 0;padding:10px;border-radius:12px;background:var(--soft);font-size:11px;color:var(--muted);line-height:1.8}.lessons{display:grid;gap:6px;max-height:calc(100vh - 240px);overflow:auto}.lesson{display:grid;grid-template-columns:30px 1fr;gap:9px;text-align:right;border:1px solid transparent;background:transparent;border-radius:12px;padding:8px}.lesson:hover{background:var(--paper);border-color:var(--line)}.lesson.active{background:var(--accent2);border-color:#c7dcd6}.num{width:30px;height:30px;display:grid;place-items:center;border-radius:9px;background:var(--soft);font-weight:700;font-size:11px}.lesson strong{display:block;font-size:12px}.lesson small{color:var(--muted);font-size:9px}.main{padding:28px}.empty{min-height:65vh;display:grid;place-content:center;text-align:center;color:var(--muted)}.empty h2{color:var(--ink);margin-bottom:4px}.view{max-width:820px;margin:auto}.hidden{display:none!important}.head{display:flex;justify-content:space-between;gap:15px;align-items:start}.head h2{font-size:30px;margin:6px 0}.muted{color:var(--muted);font-size:12px}.outline,.primary{border-radius:11px;padding:9px 14px;font-weight:700}.outline{border:1px solid var(--line);background:var(--paper)}.primary{border:1px solid var(--accent);background:var(--accent);color:#fff}.progressline{height:6px;background:var(--soft);border-radius:99px;overflow:hidden;margin:20px 0}.progress{height:100%;background:var(--accent);width:0}.activity{background:var(--paper);border:1px solid var(--line);border-radius:22px;padding:22px;min-height:390px;box-shadow:var(--shadow)}.activity-title{display:flex;gap:12px;align-items:center;border-bottom:1px solid var(--line);padding-bottom:16px;margin-bottom:20px}.icon{width:46px;height:46px;display:grid;place-items:center;border-radius:14px;background:var(--accent2);font-size:19px}.activity-title h3{margin:4px 0;font-size:16px}.code{font:10px Arial;color:var(--muted);direction:ltr;text-align:right}.conversation{display:grid;gap:14px}.turn{display:flex;gap:9px}.turn.me{flex-direction:row-reverse}.avatar{width:36px;height:36px;flex:0 0 36px;border-radius:50%;background:var(--soft);display:grid;place-items:center;font-size:10px}.me .avatar{background:var(--accent);color:#fff}.bubble{max-width:80%;background:var(--soft);border-radius:14px 4px 14px 14px;padding:11px 13px}.me .bubble{background:var(--accent2);border-radius:4px 14px 14px 14px}.speaker{font-size:9px;color:var(--muted);margin-bottom:5px}.target{direction:ltr;text-align:left;font-weight:700;font-size:18px;line-height:1.55}.fa{font-size:11px;color:var(--muted);margin-top:5px;line-height:1.7}.choices,.generic{display:grid;gap:9px}.choice,.item{border:1px solid var(--line);background:#fff;border-radius:12px;padding:11px 13px}.choice{display:flex;justify-content:space-between;gap:12px;text-align:left}.choice.correct{border-color:var(--accent);background:var(--accent2)}.choice.wrong{border-color:var(--bad);background:#faecea}.tokens{display:flex;gap:7px;flex-wrap:wrap;direction:ltr}.token{border:1px solid var(--line);background:#fff;padding:8px 10px;border-radius:9px}.answer{min-height:64px;background:var(--soft);border-radius:12px;padding:10px;margin-bottom:12px;display:flex;gap:7px;flex-wrap:wrap;direction:ltr}.read{font-size:30px;font-weight:800;direction:ltr;text-align:left;padding:20px;border:1px solid var(--line);border-radius:14px;background:#fcfbf8}.nav{display:flex;justify-content:space-between;margin-top:15px}.inspector{position:fixed;top:78px;right:0;bottom:0;width:min(430px,95vw);z-index:20;background:#fff;border-left:1px solid var(--line);box-shadow:-15px 0 40px #0002;padding:18px;overflow:auto}.inspect-head{display:flex;justify-content:space-between}.inspect section{padding:14px 0;border-bottom:1px solid var(--line)}.inspect h3{font-size:12px;margin:0 0 9px}.inspect pre{direction:ltr;text-align:left;white-space:pre-wrap;overflow-wrap:anywhere;background:var(--soft);padding:10px;border-radius:9px;font:10px/1.6 monospace}.inspect p{font-size:11px;line-height:1.8;color:var(--muted)}.notice{border:1px dashed var(--line);padding:14px;border-radius:12px;color:var(--muted);font-size:12px}.role{font:9px Arial;color:var(--muted);background:var(--soft);padding:3px 6px;border-radius:99px}.writing{width:100%;min-height:100px;border:1px solid var(--line);border-radius:12px;padding:12px}.error{max-width:760px;margin:30px auto;background:#fff0ee;color:var(--bad);border:1px solid #edc8c3;border-radius:14px;padding:18px;line-height:1.8}@media(max-width:800px){.top{height:66px;padding:0 14px}.layout{display:block}.layout>aside{border:0;border-bottom:1px solid var(--line)}.lessons{display:flex;overflow:auto;max-height:none}.lesson{min-width:235px;background:#fff;border-color:var(--line)}.main{padding:18px 12px 80px}.head{display:grid}.activity{padding:16px;border-radius:18px}.bubble{max-width:88%}.inspector{top:66px;width:100%}}</style></head><body><header class="top"><div><div class="eyebrow">PYTHON CONTENT PROTOTYPE</div><h1>آزمایشگاه درس‌ها</h1></div><div class="stat" id="stat">در حال خواندن محتوا…</div></header><div class="layout"><aside><div class="filters"><label>زبان<select id="lang"></select></label><label>سطح<select id="level"></select></label></div><div class="meta" id="meta"></div><div class="lessons" id="lessons"></div></aside><main class="main"><div id="empty" class="empty"><div><h2>یک درس را انتخاب کن</h2><p>این پروتوتایپ مستقیماً SQLهای پروژه را می‌خواند.</p></div></div><div id="view" class="view hidden"><div class="head"><div><div id="kicker" class="eyebrow"></div><h2 id="title"></h2><div id="topic" class="muted"></div></div><button id="inspectBtn" class="outline">جزئیات محتوا</button></div><div class="progressline"><div id="progress" class="progress"></div></div><div id="activity" class="activity"></div><div class="nav"><button id="prev" class="outline">قبلی</button><button id="next" class="primary">بعدی</button></div></div></main></div><div id="inspector" class="inspector hidden"><div class="inspect-head"><div><div class="eyebrow">CONTENT INSPECTOR</div><h3>دادهٔ استخراج‌شده</h3></div><button id="closeInspect" class="outline">×</button></div><div id="inspect" class="inspect"></div></div><script>const S={data:null,lang:'de',level:'Pre-A1',lesson:null,index:0};const $=s=>document.querySelector(s);const esc=s=>String(s??'').replace(/[&<>"']/g,c=>({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[c]));const nf=new Intl.NumberFormat('fa-IR');const icon=t=>({conversation_speaking:'💬',listen_choose:'🎧',multiple_choice:'◉',choose_response:'↪',word_order:'↕',fill_blank:'▱',matching:'⌁',listen_repeat:'🔁',pronunciation_read:'🎙',grammar_focus:'Aa',comprehension:'◎',true_false:'✓',review:'↺',form_fill:'▤',guided_writing:'✎'}[t]||'•');function catalog(){return S.data.catalog.filter(x=>x.language_code===S.lang)}function currentMeta(){return S.data.catalog.find(x=>x.language_code===S.lang&&x.level_code===S.level)}function visibleLessons(){return S.lang==='de'&&S.level==='Pre-A1'?S.data.lessons:[]}function drawSelectors(){const langs=[...new Map(S.data.catalog.map(x=>[x.language_code,x])).values()];$('#lang').innerHTML=langs.map(x=>`<option value="${esc(x.language_code)}">${esc(x.language_name_fa)} · ${esc(x.language_name_native)}</option>`).join('');$('#lang').value=S.lang;$('#level').innerHTML=catalog().map(x=>`<option value="${esc(x.level_code)}">${esc(x.level_label_fa)}${x.lesson_count?` · ${nf.format(x.lesson_count)} درس`:''}</option>`).join('');$('#level').value=S.level;drawList()}function drawList(){const m=currentMeta(),ls=visibleLessons();$('#meta').innerHTML=`محتوای موجود: <b>${nf.format(m?.lesson_count||0)} درس</b><br>وضعیت: <b>${esc(m?.level_status||'—')}</b><br>اجرا: <b>بدون دیتابیس و dependency</b>`;$('#lessons').innerHTML=ls.length?ls.map(l=>`<button class="lesson ${S.lesson?.public_id===l.public_id?'active':''}" data-id="${l.public_id}"><span class="num">${nf.format(l.sequence_number)}</span><span><strong>${esc(l.title_fa)}</strong><small>${nf.format(l.activity_count)} اکتیویتی · ${esc(l.status)}</small></span></button>`).join(''):`<div class="notice">برای این زبان/سطح هنوز محتوای اجرایی داخل SQLها وجود ندارد.</div>`;document.querySelectorAll('.lesson').forEach(b=>b.onclick=()=>openLesson(b.dataset.id))}function openLesson(id){S.lesson=S.data.lessons.find(x=>x.public_id===id);S.index=0;$('#empty').classList.add('hidden');$('#view').classList.remove('hidden');$('#kicker').textContent=`آلمانی · Pre-A1 · درس ${nf.format(S.lesson.sequence_number)}`;$('#title').textContent=S.lesson.title_fa;$('#topic').textContent=S.lesson.unit_or_topic||S.lesson.source_title||'';drawList();drawActivity()}function conversation(a){return `<div class="conversation">${(a.dialogue_turns||[]).map(t=>`<div class="turn ${t.learner_turn?'me':''}"><div class="avatar">${t.learner_turn?'تو':esc((t.character_name||'?').slice(0,1))}</div><div class="bubble"><div class="speaker">${t.learner_turn?'نوبت تو':esc(t.character_name)}</div><div class="target">${esc(t.text_target)}</div><div class="fa">${esc(t.translation_fa)}</div></div></div>`).join('')||'<div class="notice">turn قابل نمایش پیدا نشد.</div>'}</div>`}function generic(a){const payloadText=a.payload?.targetText||a.payload?.canonicalText||a.payload?.promptTarget;return `${payloadText?`<div class="read">${esc(payloadText)}</div>`:''}<div class="generic">${(a.items||[]).map(i=>`<div class="item"><span class="role">${esc(i.item_role)}</span>${i.text_target?` <b dir="ltr">${esc(i.text_target)}</b>`:''}${i.text_fa?`<div class="fa">${esc(i.text_fa)}</div>`:''}</div>`).join('')||(!payloadText?'<div class="notice">این activity دادهٔ نمایشی مستقیم ندارد؛ payload را از جزئیات محتوا ببین.</div>':'')}</div>`}function choices(a){const p=(a.items||[]).find(i=>['prompt','question','stem'].includes(i.item_role));const opts=(a.items||[]).filter(i=>i.item_role==='option'||i.is_correct!==null);return `${p?`<div class="item"><div class="target">${esc(p.text_target)}</div><div class="fa">${esc(p.text_fa)}</div></div>`:''}<div class="choices">${opts.map(i=>`<button class="choice" data-c="${i.is_correct===1?'1':i.is_correct===0?'0':''}"><span dir="ltr">${esc(i.text_target||i.text_fa)}</span><small>${esc(i.text_fa&&i.text_target?i.text_fa:'')}</small></button>`).join('')||generic(a)}</div>`}function wordOrder(a){const ts=(a.items||[]).filter(i=>i.item_role==='token');return `<div id="answer" class="answer"><span class="muted">روی واژه‌ها بزن.</span></div><div class="tokens">${ts.map(i=>`<button class="token">${esc(i.text_target)}</button>`).join('')}</div>`}function readAct(a){const vals=(a.items||[]).filter(i=>i.text_target);const pt=a.payload?.targetText||a.payload?.canonicalText;return vals.length?vals.map(i=>`<div class="read">${esc(i.text_target)}</div><div class="fa">${esc(i.text_fa)}</div>`).join(''):pt?`<div class="read">${esc(pt)}</div>`:generic(a)}function drawActivity(){const acts=S.lesson.activities||[];if(!acts.length){$('#activity').innerHTML='<div class="notice">این درس activity استخراج‌شده ندارد.</div>';return}const a=acts[S.index],n=S.index+1;$('#progress').style.width=`${n/acts.length*100}%`;$('#prev').disabled=S.index===0;$('#next').textContent=n===acts.length?'پایان درس':'بعدی';let body=a.type_code==='conversation_speaking'?conversation(a):['listen_choose','multiple_choice','choose_response','fill_blank','true_false','comprehension'].includes(a.type_code)?choices(a):a.type_code==='word_order'?wordOrder(a):['pronunciation_read','listen_repeat'].includes(a.type_code)?readAct(a):['guided_writing','form_fill'].includes(a.type_code)?generic(a)+'<textarea class="writing" placeholder="برای تست اینجا بنویس…"></textarea>':generic(a);$('#activity').innerHTML=`<div class="activity-title"><div class="icon">${icon(a.type_code)}</div><div><div class="code">${esc(a.type_code)} · ${nf.format(n)}/${nf.format(acts.length)}</div><h3>${esc(a.instruction_fa||a.type_code)}</h3></div></div>${body}`;document.querySelectorAll('.choice').forEach(b=>b.onclick=()=>{document.querySelectorAll('.choice').forEach(x=>x.classList.remove('correct','wrong'));if(b.dataset.c==='1')b.classList.add('correct');else if(b.dataset.c==='0'){b.classList.add('wrong');document.querySelector('.choice[data-c="1"]')?.classList.add('correct')}});if(a.type_code==='word_order'){const ans=$('#answer');document.querySelectorAll('.token').forEach(b=>b.onclick=()=>{b.disabled=true;if(ans.querySelector('.muted'))ans.innerHTML='';ans.insertAdjacentHTML('beforeend',`<span class="token">${esc(b.textContent)}</span>`)})}drawInspector()}function drawInspector(){if(!S.lesson)return;const a=S.lesson.activities[S.index];$('#inspect').innerHTML=`<section><h3>درس</h3><p><b>${esc(S.lesson.public_id)}</b><br>${esc(S.lesson.template_signature||'—')}</p><p>${esc(S.lesson.activity_count_rationale||'')}</p><p>${esc(S.lesson.sequence_rationale||'')}</p></section><section><h3>Activity</h3><p><b>${esc(a?.public_id)}</b><br>فایل: ${esc(a?.origin_file||'—')}</p><p>${esc(a?.selection_reason||'')}</p><pre>${esc(JSON.stringify({payload:a?.payload,transformations:a?.transformations,items:a?.items},null,2))}</pre></section><section><h3>Dialogue</h3><pre>${esc(JSON.stringify({dialogue:a?.dialogue,turns:a?.dialogue_turns},null,2))}</pre></section>`}$('#prev').onclick=()=>{if(S.index>0){S.index--;drawActivity()}};$('#next').onclick=()=>{if(S.index<S.lesson.activities.length-1){S.index++;drawActivity()}else{$('#activity').innerHTML=`<div class="empty" style="min-height:300px"><div><h2>درس تمام شد ✓</h2><p>پیشرفت کاربر در این prototype ذخیره نمی‌شود.</p></div></div>`}};$('#lang').onchange=e=>{S.lang=e.target.value;S.level=catalog()[0]?.level_code||'Pre-A1';S.lesson=null;$('#view').classList.add('hidden');$('#empty').classList.remove('hidden');drawSelectors()};$('#level').onchange=e=>{S.level=e.target.value;S.lesson=null;$('#view').classList.add('hidden');$('#empty').classList.remove('hidden');drawList()};$('#inspectBtn').onclick=()=>$('#inspector').classList.remove('hidden');$('#closeInspect').onclick=()=>$('#inspector').classList.add('hidden');fetch('/data').then(r=>r.json()).then(d=>{if(d.error)throw new Error(d.error);S.data=d;$('#stat').textContent=`${nf.format(d.meta.lesson_count)} درس · ${nf.format(d.meta.activity_count)} اکتیویتی`;drawSelectors()}).catch(e=>{document.querySelector('.layout').innerHTML=`<div class="error">${esc(e.message)}</div>`;$('#stat').textContent='خطا در خواندن محتوا'});</script></body></html>'''


class Handler(BaseHTTPRequestHandler):
    model = None
    load_error = None

    def do_GET(self):
        path = urlparse(self.path).path
        if path == "/data":
            payload = {"error": self.load_error} if self.load_error else self.model
            raw = json.dumps(payload, ensure_ascii=False, separators=(",", ":")).encode("utf-8")
            self.send_response(200 if not self.load_error else 500)
            self.send_header("Content-Type", "application/json; charset=utf-8")
            self.send_header("Content-Length", str(len(raw)))
            self.end_headers()
            self.wfile.write(raw)
            return
        if path in ("/", "/index.html"):
            raw = HTML.encode("utf-8")
            self.send_response(200)
            self.send_header("Content-Type", "text/html; charset=utf-8")
            self.send_header("Content-Length", str(len(raw)))
            self.end_headers()
            self.wfile.write(raw)
            return
        self.send_error(404)

    def log_message(self, fmt, *args):
        return


def main() -> int:
    parser = argparse.ArgumentParser(description="Run the local content prototype without dependencies.")
    parser.add_argument("--host", default="127.0.0.1")
    parser.add_argument("--port", type=int, default=8000)
    parser.add_argument("--no-browser", action="store_true")
    args = parser.parse_args()

    try:
        Handler.model = load_model()
    except Exception as exc:
        Handler.load_error = f"{type(exc).__name__}: {exc}"

    try:
        server = ThreadingHTTPServer((args.host, args.port), Handler)
    except OSError as exc:
        print(f"Could not start server on {args.host}:{args.port}: {exc}", file=sys.stderr)
        print("Try another port, for example: python prototype.py --port 8010", file=sys.stderr)
        return 2

    url = f"http://{args.host}:{args.port}"
    print(f"Prototype: {url}")
    if Handler.load_error:
        print(f"Content warning: {Handler.load_error}", file=sys.stderr)
    else:
        meta = Handler.model["meta"]
        print(f"Loaded {meta['lesson_count']} lessons, {meta['activity_count']} activities, {meta['turn_count']} dialogue turns.")
    print("Press Ctrl+C to stop.")

    if not args.no_browser:
        threading.Timer(0.35, lambda: webbrowser.open(url)).start()
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        print("\nStopped.")
    finally:
        server.server_close()
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

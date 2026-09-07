#!/usr/bin/env python3
"""Native Nova v3 chapter validator.

Historical v2 chapters continue to be checked by validate_content.py and are
re-audited with v3 artifacts. This validator applies to chapters whose qa.json
has contract_version=3.0.0. It intentionally does not force a fixed 18-step
lesson template: 12-18 activities are allowed according to the learning goal.
"""
from __future__ import annotations

import json
import re
import sys
from collections import defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
GLOB = "nova/courses/*/staging/batch_*/chapter_*/chapter.sql"
CAST_JSON = re.compile(r"CAST\('((?:''|[^'])*)' AS JSON\)")


def split_top(value: str) -> list[str]:
    items, current, quoted, depth = [], [], False, 0
    i = 0
    while i < len(value):
        ch = value[i]
        if ch == "'":
            current.append(ch)
            if quoted and i + 1 < len(value) and value[i + 1] == "'":
                current.append("'")
                i += 2
                continue
            quoted = not quoted
        elif not quoted and ch == "(":
            depth += 1
            current.append(ch)
        elif not quoted and ch == ")":
            depth -= 1
            current.append(ch)
        elif not quoted and ch == "," and depth == 0:
            items.append("".join(current).strip())
            current = []
        else:
            current.append(ch)
        i += 1
    items.append("".join(current).strip())
    return items


def values_from(line: str) -> list[str]:
    m = re.search(r"VALUES \((.*)\);", line)
    if not m:
        raise ValueError("VALUES payload not found")
    return split_top(m.group(1))


def unquote(value: str) -> str | None:
    value = value.strip()
    if value == "NULL":
        return None
    if value.startswith("'") and value.endswith("'"):
        return value[1:-1].replace("''", "'")
    return value


def cast_json(value: str):
    m = CAST_JSON.search(value)
    if not m:
        raise ValueError("CAST JSON payload not found")
    return json.loads(m.group(1).replace("''", "'"))


def load(path: Path):
    return json.loads(path.read_text(encoding="utf-8"))


def validate_native(path: Path) -> list[str]:
    rel = path.relative_to(ROOT)
    folder = path.parent
    qa_path = folder / "qa.json"
    if not qa_path.exists():
        return []
    qa = load(qa_path)
    if qa.get("contract_version") != "3.0.0":
        return []

    sql = path.read_text(encoding="utf-8")
    lines = sql.splitlines()
    errors: list[str] = []

    if sql.count("DECLARE EXIT HANDLER") != 1:
        errors.append("expected exactly one SQLEXCEPTION handler")
    if sql.count("START TRANSACTION") != 1:
        errors.append("expected exactly one START TRANSACTION")
    if re.search(r"placeholder|todo|anders\d", sql, re.I):
        errors.append("placeholder-like content found")

    by_lesson: dict[int, list[tuple[int, str, dict]]] = defaultdict(list)
    for line in lines:
        if "INSERT INTO activities " not in line:
            continue
        try:
            values = values_from(line)
            lesson_match = re.search(r"v_l_(\d+)", values[0])
            if not lesson_match:
                raise ValueError("lesson variable missing")
            lesson = int(lesson_match.group(1))
            order = int(values[2])
            activity_type = unquote(values[1]) or ""
            config = cast_json(values[8]) if "CAST(" in values[8] else {}
            by_lesson[lesson].append((order, activity_type, config))
        except Exception as exc:
            errors.append(f"cannot parse activity: {exc}")

    if set(by_lesson) != {1, 2, 3, 4}:
        errors.append(f"expected four lessons, found {sorted(by_lesson)}")

    for lesson, rows in sorted(by_lesson.items()):
        count = len(rows)
        orders = sorted(row[0] for row in rows)
        if not 12 <= count <= 18:
            errors.append(f"lesson {lesson}: activity count {count} outside 12-18")
        if orders != list(range(1, count + 1)):
            errors.append(f"lesson {lesson}: activity order must be contiguous 1..{count}")
        modes = {row[2].get("mode") for row in rows if row[2].get("mode")}
        # v3 is objective-driven: no exact mode counts. We only require an
        # exposure path and an independent retrieval/transfer path.
        if "audio_first" not in modes:
            errors.append(f"lesson {lesson}: missing audio_first exposure")
        if not modes.intersection({"word_teach", "chunk_teach", "micro_grammar", "reading_input", "sound_notice"}):
            errors.append(f"lesson {lesson}: missing explicit/guided learning input")
        if not modes.intersection({"recall_hidden", "scenario_transfer", "short_response", "functional_write", "reading_inference"}):
            errors.append(f"lesson {lesson}: missing independent retrieval/transfer")

        for _, _, config in rows:
            mode = config.get("mode")
            if mode == "sentence_blank":
                options = config.get("options", [])
                index = config.get("answer_index", config.get("answerIndex"))
                if len(options) != 3 or len(set(options)) != 3 or index not in (0, 1, 2):
                    errors.append(f"lesson {lesson}: invalid sentence_blank")
            elif mode == "recall_hidden":
                if not config.get("cue_fa") or len(config.get("accepted", [])) < 2:
                    errors.append(f"lesson {lesson}: incomplete recall_hidden")
            elif mode == "scenario_transfer":
                scenario = config.get("scenario_fa", config.get("scenarioFa"))
                accepted = config.get("accepted_intents", config.get("accepted", []))
                if not scenario or len(accepted) < 2:
                    errors.append(f"lesson {lesson}: incomplete scenario_transfer")

    # Native v3 publication always requires the pedagogical evidence artifacts.
    required = {
        "linguistic_audit_v3.json": "linguistic audit",
        "learning_units_v3.json": "learning-unit mapping",
        "review_evidence_v3.json": "review evidence",
    }
    for name, label in required.items():
        if not (folder / name).exists():
            errors.append(f"missing {label}: {name}")

    ling_path = folder / "linguistic_audit_v3.json"
    if ling_path.exists():
        ling = load(ling_path)
        if ling.get("status") != "PASS" or ling.get("blocking_issues", []) != []:
            errors.append("linguistic audit is not clean PASS")

    review_path = folder / "review_evidence_v3.json"
    if review_path.exists():
        review = load(review_path)
        if review.get("unfulfilled_due", []) != []:
            errors.append("review debt remains in this chapter")

    units_path = folder / "learning_units_v3.json"
    if units_path.exists():
        units = load(units_path)
        if not units.get("learning_units"):
            errors.append("learning_units_v3 has no learning units")
        if not units.get("curriculum_outcomes"):
            errors.append("learning_units_v3 has no curriculum outcome mapping")

    if qa.get("counts", {}).get("activities") != sum(len(rows) for rows in by_lesson.values()):
        errors.append("qa activity count does not match SQL")
    if qa.get("publication_gates", {}).get("linguistic_audit") is not True:
        errors.append("qa must require linguistic_audit publication gate")
    if qa.get("publication_gates", {}).get("review_ledger") is not True:
        errors.append("qa must require review_ledger publication gate")
    if qa.get("publication_gates", {}).get("curriculum") is not True:
        errors.append("qa must require curriculum publication gate")

    return [f"{rel}: {item}" for item in errors]


def main() -> int:
    errors: list[str] = []
    native = 0
    for path in sorted(ROOT.glob(GLOB)):
        qa = path.with_name("qa.json")
        if qa.exists() and load(qa).get("contract_version") == "3.0.0":
            native += 1
            errors.extend(validate_native(path))
    if errors:
        print("\n".join(f"FAIL {item}" for item in errors), file=sys.stderr)
        return 1
    print(f"PASS Nova native v3 content gate ({native} native v3 chapter(s)).")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

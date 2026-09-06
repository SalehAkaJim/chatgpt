#!/usr/bin/env python3
"""Static quality gate for Nova independent-course chapter SQL files."""
from __future__ import annotations

import argparse
import json
import re
import sys
from collections import Counter, defaultdict
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
CHAPTER_GLOB = "nova/courses/*/staging/batch_*/chapter_*/chapter.sql"
PUNCT = re.compile(r"[\s.!?,،؛:]+")
CAST_JSON = re.compile(r"CAST\('((?:''|[^'])*)' AS JSON\)")
WORD_INSERT = re.compile(
    r"INSERT INTO words .*?VALUES \(v_course,'((?:''|[^'])*)','(?:''|[^']*)','((?:''|[^'])*)'"
)
WORD_LOOKUP = re.compile(
    r"SELECT\s+(id|COUNT\(\*\)\s*,\s*MIN\(id\))\s+INTO\s+"
    r"(?:v_count\s*,\s*)?v_w_\d+\s+FROM words\s+WHERE\s+course_id=v_course\s+"
    r"AND\s+lemma='((?:''|[^'])*)'\s+AND\s+part_of_speech='((?:''|[^'])*)'"
)


def split_top(value: str) -> list[str]:
    items, current, quoted, depth = [], [], False, 0
    i = 0
    while i < len(value):
        char = value[i]
        if char == "'":
            current.append(char)
            if quoted and i + 1 < len(value) and value[i + 1] == "'":
                current.append("'")
                i += 2
                continue
            quoted = not quoted
        elif not quoted and char == "(":
            depth += 1
            current.append(char)
        elif not quoted and char == ")":
            depth -= 1
            current.append(char)
        elif not quoted and char == "," and depth == 0:
            items.append("".join(current).strip())
            current = []
        else:
            current.append(char)
        i += 1
    items.append("".join(current).strip())
    return items


def unquote(value: str) -> str | None:
    value = value.strip()
    if value == "NULL":
        return None
    if value.startswith("'") and value.endswith("'"):
        return value[1:-1].replace("''", "'")
    return value


def values_from(line: str) -> list[str]:
    match = re.search(r"VALUES \((.*)\);", line)
    if not match:
        raise ValueError("VALUES payload not found")
    return split_top(match.group(1))


def cast_json(value: str):
    match = CAST_JSON.search(value)
    if not match:
        raise ValueError("CAST JSON payload not found")
    return json.loads(match.group(1).replace("''", "'"))


def semantic_count(values: list[str]) -> int:
    return len({PUNCT.sub("", item.lower()) for item in values})


def validate_word_dependencies(paths: list[Path]) -> list[str]:
    """Ensure every cross-chapter Word lookup resolves before MySQL execution."""
    targets = {path.resolve() for path in paths}
    known_by_course: dict[str, set[tuple[str, str]]] = defaultdict(set)
    errors: list[str] = []
    for path in sorted(ROOT.glob(CHAPTER_GLOB)):
        rel = path.relative_to(ROOT)
        course = rel.parts[2]
        known = known_by_course[course]
        lines = path.read_text(encoding="utf-8").splitlines()
        for line_number, line in enumerate(lines, 1):
            inserted = WORD_INSERT.search(line)
            if inserted:
                key = tuple(item.replace("''", "'") for item in inserted.groups())
                known.add(key)
            lookup = WORD_LOOKUP.search(line)
            if lookup:
                selector, lemma, part_of_speech = lookup.groups()
                key = (lemma.replace("''", "'"), part_of_speech.replace("''", "'"))
                guarded_fallback = False
                if selector.startswith("COUNT"):
                    for following in lines[line_number:line_number + 2]:
                        candidate = WORD_INSERT.search(following)
                        if candidate:
                            candidate_key = tuple(
                                item.replace("''", "'") for item in candidate.groups()
                            )
                            if candidate_key == key:
                                guarded_fallback = True
                                break
                if key not in known and not guarded_fallback and path.resolve() in targets:
                    errors.append(
                        f"{rel}: unresolved prior Word dependency {key[0]}|{key[1]} "
                        f"at line {line_number}"
                    )
    return errors


def validate_file(path: Path) -> list[str]:
    rel = path.relative_to(ROOT)
    course = rel.parts[2]
    series_match = re.search(r"chapter_(\d+)", str(rel))
    series = int(series_match.group(1)) if series_match else 0
    # Semantic gate v2 starts at the first rebuilt chapters. Older published
    # chapters stay installable, while every new chapter must satisfy it.
    strict_semantic = ((course == "en-fa" and series >= 3) or
                       (course == "de-fa" and series >= 5))
    sql = path.read_text(encoding="utf-8")
    errors: list[str] = []
    lines = sql.splitlines()

    handlers = [i for i, line in enumerate(lines) if "DECLARE EXIT HANDLER" in line]
    starts = [i for i, line in enumerate(lines) if "START TRANSACTION" in line]
    if len(handlers) != 1:
        errors.append(f"expected one SQLEXCEPTION handler, found {len(handlers)}")
    if len(starts) != 1:
        errors.append(f"expected one START TRANSACTION, found {len(starts)}")
    if handlers and starts and handlers[0] > starts[0]:
        errors.append("DECLARE appears after START TRANSACTION")
    if re.search(r"anders\d|placeholder|todo", sql, re.IGNORECASE):
        errors.append("placeholder-like content found")
    if re.search(r'"input":"(?:typing|writing)"', sql):
        errors.append("forbidden typed input found")

    activities = [line for line in lines if "INSERT INTO activities " in line]
    by_lesson: dict[int, list[tuple[int, str, dict, list[str]]]] = defaultdict(list)
    recalls_by_lesson: dict[int, list[set[str]]] = defaultdict(list)
    transfers_by_lesson: dict[int, list[set[str]]] = defaultdict(list)
    choice_indices: list[int] = []
    for line in activities:
        try:
            values = values_from(line)
            lesson = int(re.search(r"v_l_(\d+)", values[0]).group(1))
            activity_type = unquote(values[1])
            order = int(values[2])
            config = cast_json(values[8])
            by_lesson[lesson].append((order, activity_type, config, values))
        except Exception as exc:
            errors.append(f"cannot parse activity: {exc}")
            continue
        mode = config.get("mode")
        if mode == "sentence_blank":
            options = config.get("options", [])
            index = config.get("answer_index", config.get("answerIndex"))
            if len(options) != 3 or len(set(options)) != 3:
                errors.append(f"lesson {lesson} choice must have three distinct options")
            if index not in (0, 1, 2):
                errors.append(f"lesson {lesson} has invalid answer index")
            else:
                choice_indices.append(index)
            if strict_semantic:
                prompt = unquote(values[5]) or ""
                if prompt.count("___") != 1:
                    errors.append(f"lesson {lesson} sentence_blank must contain one real blank")
                if any(re.search(r"[\u0600-\u06ff]", str(option)) for option in options):
                    errors.append(f"lesson {lesson} sentence_blank options must be target-language text")
        elif mode == "recall_hidden":
            accepted = config.get("accepted", [])
            if not config.get("cue_fa") or semantic_count(accepted) < 2:
                errors.append(f"lesson {lesson} recall lacks cue or semantic alternatives")
            if config.get("audioReveal") != "after_attempt":
                errors.append(f"lesson {lesson} recall may reveal answer audio too early")
            recalls_by_lesson[lesson].append({PUNCT.sub("", item.lower()) for item in accepted})
        elif mode == "scenario_transfer":
            accepted = config.get("accepted_intents", config.get("accepted", []))
            scenario = config.get("scenario_fa", config.get("scenarioFa", ""))
            if not config.get("scenario_fa") or semantic_count(accepted) < 2:
                errors.append(f"lesson {lesson} transfer lacks scenario or semantic intents")
            if unquote(values[5]) is None:
                errors.append(f"lesson {lesson} transfer prompt is NULL")
            if strict_semantic and re.search(r"در (?:موقعیتی|گفت.?وگویی) تازه", scenario):
                errors.append(f"lesson {lesson} transfer uses a generic pseudo-scenario")
            transfers_by_lesson[lesson].append({PUNCT.sub("", item.lower()) for item in accepted})
        elif mode == "repeat_visible":
            if config.get("evaluation") != "stt" or semantic_count(config.get("accepted", [])) < 1:
                errors.append(f"lesson {lesson} visible speaking config incomplete")
        elif mode == "audio_first":
            if config.get("reveal_transcript") != "after_attempt":
                errors.append(f"lesson {lesson} transcript reveal policy missing")

    if set(by_lesson) != {1, 2, 3, 4}:
        errors.append(f"expected lessons 1..4 in activities, found {sorted(by_lesson)}")
    for lesson, rows in sorted(by_lesson.items()):
        orders = sorted(row[0] for row in rows)
        modes = Counter(row[2].get("mode") for row in rows)
        if len(rows) != 18 or orders != list(range(1, 19)):
            errors.append(f"lesson {lesson} must have 18 unique ordered activities")
        exact = {"micro_grammar": 1, "recall_hidden": 2, "sentence_blank": 2,
                 "tap_tokens": 2, "scenario_transfer": 2}
        distribution_ok = (all(modes[key] == value for key, value in exact.items()) and
                           1 <= modes["audio_first"] <= 2 and
                           5 <= modes["word_teach"] <= 7 and
                           1 <= modes["repeat_visible"] <= 2 and
                           sum(modes.values()) == 18)
        if not distribution_ok:
            errors.append(f"lesson {lesson} mode distribution is {dict(modes)}")
        if strict_semantic:
            for transfer in transfers_by_lesson.get(lesson, []):
                if transfer in recalls_by_lesson.get(lesson, []):
                    errors.append(f"lesson {lesson} transfer duplicates a recall answer set")
    if set(choice_indices) != {0, 1, 2}:
        errors.append(f"answer positions must use 0, 1 and 2; found {sorted(set(choice_indices))}")

    distractor_sets = []
    for line in lines:
        if "INSERT INTO words " not in line:
            continue
        try:
            values = values_from(line)
            translation = unquote(values[4])
            distractors = cast_json(values[7])
            if len(distractors) != 3 or len(set(distractors)) != 3 or translation in distractors:
                errors.append(f"invalid Word distractors for {unquote(values[1])}")
            distractor_sets.append(tuple(distractors))
        except Exception as exc:
            errors.append(f"cannot parse Word distractors: {exc}")
    if len(distractor_sets) != len(set(distractor_sets)):
        errors.append("reused Word distractor template found")

    learner_alternatives = 0
    for line in lines:
        if "INSERT INTO turns " not in line:
            continue
        values = values_from(line)
        if unquote(values[3]) != "learner":
            continue
        alternatives = [item.replace("''", "'") for item in re.findall(r"'((?:''|[^'])*)'", values[8])]
        if semantic_count(alternatives) < 2:
            errors.append(f"learner turn {values[0]}#{values[2]} lacks semantic alternatives")
        learner_alternatives += 1
    if learner_alternatives < 16:
        errors.append(f"expected at least 16 learner turns, found {learner_alternatives}")
    if sql.count("'focusPattern'") < 32:
        errors.append("explicit grammar focus is missing from turns")

    if strict_semantic:
        descriptions = []
        for line in lines:
            if "INSERT INTO lessons " in line:
                descriptions.append(unquote(values_from(line)[5]) or "")
        if len(descriptions) != 4 or len(set(descriptions)) != 4:
            errors.append("all four lessons need distinct, content-specific descriptions")

        # New definitions must be taught explicitly unless deliberately marked
        # as a small support token set. This is computed from SQL, not trusted
        # from a QA flag.
        defined: dict[str, tuple[str, bool]] = {}
        taught: set[str] = set()
        for line in lines:
            if "INSERT INTO words " in line:
                values = values_from(line)
                variable = re.search(r"SET (v_w_\d+)=LAST_INSERT_ID", line)
                if variable:
                    defined[variable.group(1)] = (
                        unquote(values[1]) or "",
                        bool(re.search(r"'supportToken',TRUE", line)),
                    )
            elif "INSERT INTO activities " in line and "'new_word'" in line:
                values = values_from(line)
                taught.add(values[4])
        unsupported = [lemma for var, (lemma, support) in defined.items()
                       if var not in taught and not support]
        support_count = sum(1 for var, (_, support) in defined.items()
                            if var not in taught and support)
        if unsupported:
            errors.append("defined words lack teaching/support: " + ", ".join(unsupported))
        if support_count > 14:
            errors.append(f"too many untaught support tokens: {support_count}")

        # Closed-class token mappings must be literal. This catches fabricated
        # mappings such as all→they, his→he, her→she and that→this.
        for line_number, line in enumerate(lines, 1):
            if "INSERT INTO turns " not in line:
                continue
            turn_values = values_from(line)
            token_parts = re.findall(
                r"'surface','((?:''|[^'])*)','prefix','((?:''|[^'])*)','suffix','((?:''|[^'])*)','lemma'",
                turn_values[9],
            )
            rebuilt = " ".join(
                prefix.replace("''", "'") + surface.replace("''", "'") + suffix.replace("''", "'")
                for surface, prefix, suffix in token_parts
            )
            if rebuilt != (unquote(turn_values[4]) or ""):
                errors.append(f"turn text does not reconstruct from tokens at line {line_number}")
            if course != "en-fa":
                continue
            for surface, lemma, pos in re.findall(
                r"'surface','((?:''|[^'])*)'.*?'lemma','((?:''|[^'])*)'.*?'partOfSpeech','((?:''|[^'])*)'",
                line,
            ):
                if pos in {"pronoun", "determiner"} and surface.lower() != lemma.lower():
                    errors.append(
                        f"closed-class token mapping mismatch at line {line_number}: "
                        f"{surface}→{lemma}"
                    )

    qa_path = path.with_name("qa.json")
    if not qa_path.exists():
        errors.append("qa.json is missing")
    else:
        qa = json.loads(qa_path.read_text(encoding="utf-8"))
        if qa.get("counts", {}).get("activities") != len(activities):
            errors.append("qa.json activity count does not match SQL")
        if qa.get("contract_version") != "2.1.0":
            errors.append("qa.json is not on contract 2.1.0")
        if strict_semantic and qa.get("semantic_gate_version") != 2:
            errors.append("qa.json is not on semantic gate 2")
        required_invariants = [
            "mysql_declaration_order", "answer_positions_not_fixed",
            "recall_cues_complete", "semantic_speech_alternatives",
            "scenario_transfer_is_novel", "explicit_word_teaching",
            "explicit_micro_grammar", "word_distractors_unique_same_pos"
        ]
        for key in required_invariants:
            if qa.get("invariants", {}).get(key) is not True:
                errors.append(f"qa invariant {key} is not true")

    if errors:
        return [f"{rel}: {error}" for error in errors]
    print(f"PASS {rel}")
    return []


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("paths", nargs="*", type=Path)
    args = parser.parse_args()
    paths = args.paths or sorted(ROOT.glob(CHAPTER_GLOB))
    errors = []
    paths = [path if path.is_absolute() else ROOT / path for path in paths]
    for path in paths:
        errors.extend(validate_file(path))
    errors.extend(validate_word_dependencies(paths))
    if errors:
        print("\n".join(f"FAIL {item}" for item in errors), file=sys.stderr)
        return 1
    print(f"Validated {len(paths)} Nova chapter SQL file(s).")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

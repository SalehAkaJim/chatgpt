#!/usr/bin/env python3
"""End-to-end database contract test for the Nova English reference implementation.

Run after database/import/en/reference.py on a clean MySQL database. This tests
properties that source-only validation cannot prove: cross-table lesson delivery
integrity, lexical materialization, app-dictionary precedence, frontend payload
schema conformance and the server-side exercise grading boundary.
"""
from __future__ import annotations

import json
from pathlib import Path
from typing import Any

import mysql.connector
from jsonschema import Draft202012Validator, FormatChecker

from api.frontend_repository import LessonRepository, utf16_offset
from scripts.lesson_flow import STAGE_ORDER
from scripts.materialize_level import db_config

ROOT = Path(__file__).resolve().parents[1]
PAYLOAD_SCHEMA = ROOT / "api" / "lesson-payload.schema.json"
LEVELS = ["Pre-A1", "A1", "A2", "B1", "B2", "C1", "C2"]
COURSE = "fa-en-us"


def scalar(cur, sql: str, params: tuple[Any, ...] = ()) -> int:
    cur.execute(sql, params)
    row = cur.fetchone()
    return int(row[0]) if row else 0


def sample_lessons(rows: list[dict[str, Any]]) -> list[dict[str, Any]]:
    if len(rows) <= 3:
        return rows
    indexes = {0, len(rows) // 2, len(rows) - 1}
    return [rows[index] for index in sorted(indexes)]


def main() -> None:
    # Guard the browser-facing coordinate conversion with a non-BMP fixture.
    offset_fixture = "A😀B"
    if [utf16_offset(offset_fixture, index) for index in range(4)] != [0, 1, 3, 4]:
        raise AssertionError("UTF-16 annotation offset conversion is incorrect")

    conn = mysql.connector.connect(**db_config())
    report: dict[str, Any] = {"course": COURSE, "levels": {}, "checks": {}}
    try:
        cur = conn.cursor()
        course_lessons = scalar(
            cur,
            """
            SELECT COUNT(*)
            FROM lessons l JOIN courses c ON c.id=l.course_id
            WHERE c.slug=%s
            """,
            (COURSE,),
        )
        if course_lessons <= 0:
            raise AssertionError("English reference import produced no lessons")

        lessons_without_steps = scalar(
            cur,
            """
            SELECT COUNT(*) FROM (
              SELECT l.id
              FROM lessons l
              JOIN courses c ON c.id=l.course_id
              LEFT JOIN lesson_steps ls ON ls.lesson_id=l.id
              WHERE c.slug=%s
              GROUP BY l.id
              HAVING COUNT(ls.id)=0
            ) AS missing
            """,
            (COURSE,),
        )
        if lessons_without_steps:
            raise AssertionError(f"{lessons_without_steps} English lessons have no delivery steps")

        cross_lesson_items = scalar(
            cur,
            """
            SELECT COUNT(*)
            FROM lesson_step_items lsi
            JOIN lesson_steps ls ON ls.id=lsi.lesson_step_id
            JOIN lesson_items li ON li.id=lsi.lesson_item_id
            JOIN lessons l ON l.id=ls.lesson_id
            JOIN courses c ON c.id=l.course_id
            WHERE c.slug=%s AND li.lesson_id<>ls.lesson_id
            """,
            (COURSE,),
        )
        if cross_lesson_items:
            raise AssertionError(f"{cross_lesson_items} step items cross lesson boundaries")

        cross_lesson_exercises = scalar(
            cur,
            """
            SELECT COUNT(*)
            FROM lesson_step_exercises lse
            JOIN lesson_steps ls ON ls.id=lse.lesson_step_id
            JOIN exercises e ON e.id=lse.exercise_id
            JOIN lessons l ON l.id=ls.lesson_id
            JOIN courses c ON c.id=l.course_id
            WHERE c.slug=%s AND (e.lesson_id IS NULL OR e.lesson_id<>ls.lesson_id)
            """,
            (COURSE,),
        )
        if cross_lesson_exercises:
            raise AssertionError(f"{cross_lesson_exercises} step exercises cross lesson boundaries")

        lexical_annotations = scalar(cur, "SELECT COUNT(*) FROM lexical_annotations")
        if lexical_annotations <= 0:
            raise AssertionError("English lexical annotations were not materialized")

        unresolved_annotations = scalar(
            cur,
            """
            SELECT COUNT(*) FROM lexical_annotations
            WHERE concept_id IS NULL AND lexeme_id IS NULL AND word_form_id IS NULL
            """,
        )
        if unresolved_annotations:
            raise AssertionError(f"{unresolved_annotations} lexical annotations have no canonical target")

        dictionary_definition_leaks = scalar(
            cur,
            """
            SELECT COUNT(*) FROM concepts
            WHERE JSON_UNQUOTE(JSON_EXTRACT(metadata,'$.source'))='app_dictionary'
              AND definition IS NOT NULL
            """,
        )
        if dictionary_definition_leaks:
            raise AssertionError("App-dictionary concepts contain learner-language text in concepts.definition")

        dictionary_primary_links = scalar(
            cur,
            """
            SELECT COUNT(*)
            FROM concept_lexemes cl
            JOIN concepts c ON c.id=cl.concept_id
            WHERE JSON_UNQUOTE(JSON_EXTRACT(c.metadata,'$.source'))='app_dictionary'
              AND cl.relation_type='primary'
            """,
        )
        if dictionary_primary_links:
            raise AssertionError("App-dictionary fallback concepts unexpectedly own primary lexeme links")

        # MySQL SUBSTRING counts characters, matching the code-point contract for
        # the English reference text. Exercise JSON spans are revalidated by the
        # importer and again by the API read model.
        stale_utterance_spans = scalar(
            cur,
            """
            SELECT COUNT(*)
            FROM lexical_annotations la
            JOIN utterance_texts ut ON ut.id=la.utterance_text_id
            WHERE la.utterance_text_id IS NOT NULL
              AND SUBSTRING(ut.text, la.start_offset + 1, la.end_offset - la.start_offset)<>la.surface_text
            """,
        )
        stale_dialogue_spans = scalar(
            cur,
            """
            SELECT COUNT(*)
            FROM lexical_annotations la
            JOIN dialogue_turns dt ON dt.id=la.dialogue_turn_id
            WHERE la.dialogue_turn_id IS NOT NULL
              AND SUBSTRING(dt.text, la.start_offset + 1, la.end_offset - la.start_offset)<>la.surface_text
            """,
        )
        if stale_utterance_spans or stale_dialogue_spans:
            raise AssertionError(
                f"Stale lexical spans: utterances={stale_utterance_spans}, dialogues={stale_dialogue_spans}"
            )

        # Stage order is a persisted invariant, not merely a source-builder rule.
        cur.execute(
            """
            SELECT BIN_TO_UUID(l.id,1), ls.stage, ls.step_order
            FROM lessons l
            JOIN courses c ON c.id=l.course_id
            JOIN lesson_steps ls ON ls.lesson_id=l.id
            WHERE c.slug=%s
            ORDER BY l.id, ls.step_order
            """,
            (COURSE,),
        )
        current_lesson: str | None = None
        stage_indexes: list[int] = []
        for lesson_id, stage, _step_order in cur.fetchall():
            if lesson_id != current_lesson:
                if stage_indexes != sorted(stage_indexes):
                    raise AssertionError(f"Persisted stage regression in lesson {current_lesson}: {stage_indexes}")
                current_lesson = lesson_id
                stage_indexes = []
            if stage not in STAGE_ORDER:
                raise AssertionError(f"Unknown persisted lesson stage {stage!r}")
            stage_indexes.append(STAGE_ORDER[stage])
        if stage_indexes != sorted(stage_indexes):
            raise AssertionError(f"Persisted stage regression in lesson {current_lesson}: {stage_indexes}")

        report["checks"].update({
            "lessons": course_lessons,
            "lessons_without_steps": lessons_without_steps,
            "cross_lesson_items": cross_lesson_items,
            "cross_lesson_exercises": cross_lesson_exercises,
            "lexical_annotations": lexical_annotations,
            "unresolved_annotations": unresolved_annotations,
            "dictionary_definition_leaks": dictionary_definition_leaks,
            "dictionary_primary_links": dictionary_primary_links,
            "stale_utterance_spans": stale_utterance_spans,
            "stale_dialogue_spans": stale_dialogue_spans,
            "utf16_fixture": "passed",
        })
        cur.close()

        payload_schema = json.loads(PAYLOAD_SCHEMA.read_text(encoding="utf-8"))
        payload_validator = Draft202012Validator(payload_schema, format_checker=FormatChecker())
        repo = LessonRepository(conn)
        payloads_checked = 0
        for level in LEVELS:
            lessons = repo.list_lessons(COURSE, level)
            if not lessons:
                raise AssertionError(f"No English lessons returned for level {level}")
            selected = sample_lessons(lessons)
            level_report = {"lessons": len(lessons), "sampled_payloads": []}
            for lesson in selected:
                payload = repo.lesson_payload(COURSE, lesson["slug"])
                errors = sorted(payload_validator.iter_errors(payload), key=lambda error: list(error.path))
                if errors:
                    first = errors[0]
                    path = ".".join(map(str, first.path)) or "<root>"
                    raise AssertionError(
                        f"Lesson payload schema failure {level}:{lesson['slug']} at {path}: {first.message}"
                    )
                if payload["path"]["cefr"] != level:
                    raise AssertionError(f"Payload CEFR mismatch for {lesson['slug']}")
                if payload["course"]["slug"] != COURSE:
                    raise AssertionError(f"Payload course mismatch for {lesson['slug']}")
                level_report["sampled_payloads"].append(lesson["slug"])
                payloads_checked += 1
            report["levels"][level] = level_report

        # Verify the grading boundary using one automatically gradable exercise.
        cur = conn.cursor(dictionary=True)
        cur.execute(
            """
            SELECT BIN_TO_UUID(e.id,1) AS id, e.answer
            FROM exercises e
            JOIN lessons l ON l.id=e.lesson_id
            JOIN courses c ON c.id=l.course_id
            WHERE c.slug=%s
              AND COALESCE(JSON_UNQUOTE(JSON_EXTRACT(e.answer,'$.evaluation_mode')),'automatic')<>'rubric'
            ORDER BY e.created_at, e.id
            LIMIT 1
            """,
            (COURSE,),
        )
        exercise = cur.fetchone()
        cur.close()
        if not exercise:
            raise AssertionError("No automatically gradable English exercise found")
        answer = exercise["answer"]
        if isinstance(answer, str):
            answer = json.loads(answer)
        expected = None
        if isinstance(answer, dict):
            for key in ("value", "tokens", "text", "expected_text"):
                if key in answer:
                    expected = answer[key]
                    break
        if expected is None:
            raise AssertionError(f"Reference grading fixture has no supported expected value: {exercise['id']}")
        grade = repo.grade_exercise(exercise["id"], expected)
        if not grade.get("gradable") or grade.get("correct") is not True:
            raise AssertionError(f"Reference grading failed for {exercise['id']}: {grade}")

        report["checks"]["payloads_checked"] = payloads_checked
        report["checks"]["grading_exercise"] = exercise["id"]
        report["valid"] = True
        print(json.dumps(report, ensure_ascii=False, indent=2))
    finally:
        conn.close()


if __name__ == "__main__":
    main()

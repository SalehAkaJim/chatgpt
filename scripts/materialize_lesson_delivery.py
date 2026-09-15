#!/usr/bin/env python3
"""Materialize deterministic frontend delivery steps for production lessons.

Run after canonical level materialization. The operation is idempotent: existing
steps for each touched lesson are replaced transactionally from the exact source
batch, while canonical lesson_items and exercises remain untouched.
"""
from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any

import mysql.connector

try:
    from scripts.lesson_flow import build_batch_lesson_flows
    from scripts.materialize_level import db_config, lang_id, one, slugify, stable, validate_batches, variant_id
except ModuleNotFoundError:
    from lesson_flow import build_batch_lesson_flows
    from materialize_level import db_config, lang_id, one, slugify, stable, validate_batches, variant_id


def _lesson_item_map(cur, lesson_id: bytes) -> dict[tuple[str, str], bytes]:
    cur.execute(
        """
        SELECT id,
               JSON_UNQUOTE(JSON_EXTRACT(metadata,'$.kind')) AS kind,
               JSON_UNQUOTE(JSON_EXTRACT(metadata,'$.external_id')) AS external_id
        FROM lesson_items
        WHERE lesson_id=%s
        """,
        (lesson_id,),
    )
    result: dict[tuple[str, str], bytes] = {}
    for item_id, kind, external_id in cur.fetchall():
        if kind and external_id:
            result[(str(kind), str(external_id))] = item_id
    return result


def _exercise_map(cur, lesson_id: bytes) -> dict[str, bytes]:
    cur.execute(
        """
        SELECT id, JSON_UNQUOTE(JSON_EXTRACT(metadata,'$.external_id')) AS external_id
        FROM exercises
        WHERE lesson_id=%s
        """,
        (lesson_id,),
    )
    return {str(external_id): exercise_id for exercise_id, external_id in cur.fetchall() if external_id}


def _materialize_dialogue_translations(cur, batch: dict[str, Any], language_cache: dict[str, bytes], variant_cache: dict[str, bytes | None]) -> int:
    inserted = 0
    batch_id = batch["batch_id"]
    learner_language = batch.get("learner_language")
    learner_variant = batch.get("learner_variant")

    def language(code: str) -> bytes:
        if code not in language_cache:
            language_cache[code] = lang_id(cur, code)
        return language_cache[code]

    def variant(code: str | None) -> bytes | None:
        if not code:
            return None
        if code not in variant_cache:
            variant_cache[code] = variant_id(cur, code)
        return variant_cache[code]

    for item in batch.get("items", []):
        if item.get("kind") != "dialogue":
            continue
        ext = item.get("external_id") or ""
        data = item.get("data") or {}
        dslug = slugify(f"{batch_id}-{ext}")
        for turn in data.get("turns", []):
            turn_uuid = stable("dialogue_turn", f"{dslug}:{turn['order']}")
            turn_id = one(cur, "SELECT id FROM dialogue_turns WHERE id=UUID_TO_BIN(%s,1)", (turn_uuid,))
            if not turn_id:
                raise ValueError(f"Missing dialogue turn for delivery translation: {batch_id}:{ext}:{turn['order']}")

            translations = dict(turn.get("translations") or {})
            if turn.get("translation_fa") and "fa" not in translations:
                translations["fa"] = turn["translation_fa"]

            for code, text in translations.items():
                if not isinstance(text, str) or not text.strip():
                    continue
                vid = variant(learner_variant) if code == learner_language and learner_variant else None
                cur.execute(
                    """
                    INSERT INTO dialogue_turn_translations(
                      dialogue_turn_id,language_id,language_variant_id,text,metadata
                    ) VALUES(%s,%s,%s,%s,%s)
                    ON DUPLICATE KEY UPDATE
                      language_variant_id=VALUES(language_variant_id),
                      text=VALUES(text),
                      metadata=VALUES(metadata),
                      updated_at=CURRENT_TIMESTAMP(6)
                    """,
                    (
                        turn_id,
                        language(code),
                        vid,
                        text,
                        json.dumps({"source": "production_batch", "batch_id": batch_id}, ensure_ascii=False),
                    ),
                )
                inserted += 1
    return inserted


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("content_dir", type=Path)
    ap.add_argument("--course", required=True)
    ap.add_argument("--level", required=True)
    ap.add_argument("--dry-run", action="store_true")
    args = ap.parse_args()

    paths = sorted(args.content_dir.glob("*.json"))
    if not paths:
        raise SystemExit(f"No JSON batches in {args.content_dir}")
    batches = validate_batches(paths)
    wrong = [batch["batch_id"] for batch in batches if batch.get("cefr") != args.level]
    if wrong:
        raise SystemExit(f"Batches with wrong level: {wrong}")

    flows = [(batch, build_batch_lesson_flows(batch)) for batch in batches]
    planned_lessons = sum(len(flow) for _, flow in flows)
    planned_steps = sum(len(steps) for _, flow in flows for steps in flow.values())
    planned_item_links = sum(len(step["items"]) for _, flow in flows for steps in flow.values() for step in steps)
    planned_exercise_links = sum(len(step["exercises"]) for _, flow in flows for steps in flow.values() for step in steps)

    if args.dry_run:
        print(json.dumps({
            "course": args.course,
            "level": args.level,
            "batches": len(batches),
            "lessons": planned_lessons,
            "steps": planned_steps,
            "item_links": planned_item_links,
            "exercise_links": planned_exercise_links,
            "valid": True,
        }, ensure_ascii=False))
        return

    conn = mysql.connector.connect(**db_config())
    stats = {
        "lessons": 0,
        "steps": 0,
        "item_links": 0,
        "exercise_links": 0,
        "dialogue_translations": 0,
    }
    language_cache: dict[str, bytes] = {}
    variant_cache: dict[str, bytes | None] = {}

    try:
        cur = conn.cursor()
        cur.execute("SET time_zone='+00:00'")
        cur.execute("SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci")
        course_id = one(cur, "SELECT id FROM courses WHERE slug=%s", (args.course,))
        level_id = one(cur, "SELECT id FROM cefr_levels WHERE code=%s", (args.level,))
        if not course_id or not level_id:
            raise ValueError("Course or CEFR level missing")

        for batch, flow in flows:
            stats["dialogue_translations"] += _materialize_dialogue_translations(
                cur, batch, language_cache, variant_cache
            )
            for lesson_key, steps in flow.items():
                lesson_id = one(
                    cur,
                    "SELECT id FROM lessons WHERE course_id=%s AND cefr_level_id=%s AND slug=%s",
                    (course_id, level_id, lesson_key),
                )
                if not lesson_id:
                    raise ValueError(f"Missing canonical lesson {args.course}:{lesson_key}")

                item_map = _lesson_item_map(cur, lesson_id)
                exercise_map = _exercise_map(cur, lesson_id)
                cur.execute("DELETE FROM lesson_steps WHERE lesson_id=%s", (lesson_id,))

                for step_order, step in enumerate(steps, start=1):
                    step_uuid = stable("lesson_step", f"{args.course}:{lesson_key}:{step['step_key']}")
                    cur.execute(
                        """
                        INSERT INTO lesson_steps(
                          id,lesson_id,step_key,step_order,stage,step_type,label_key,is_required,metadata
                        ) VALUES(UUID_TO_BIN(%s,1),%s,%s,%s,%s,%s,%s,TRUE,%s)
                        """,
                        (
                            step_uuid,
                            lesson_id,
                            step["step_key"],
                            step_order,
                            step["stage"],
                            step["step_type"],
                            step.get("label_key"),
                            json.dumps(step.get("metadata") or {}, ensure_ascii=False),
                        ),
                    )
                    step_id = one(cur, "SELECT UUID_TO_BIN(%s,1)", (step_uuid,))
                    stats["steps"] += 1

                    for item_order, member in enumerate(step.get("items", []), start=1):
                        key = (str(member.get("kind") or ""), str(member["external_id"]))
                        lesson_item_id = item_map.get(key)
                        if not lesson_item_id:
                            raise ValueError(
                                f"Unresolved lesson item {args.course}:{lesson_key}:{key[0]}:{key[1]}"
                            )
                        cur.execute(
                            """
                            INSERT INTO lesson_step_items(
                              lesson_step_id,lesson_item_id,item_order,role,metadata
                            ) VALUES(%s,%s,%s,%s,JSON_OBJECT())
                            """,
                            (step_id, lesson_item_id, item_order, member.get("role") or "primary"),
                        )
                        stats["item_links"] += 1

                    for item_order, member in enumerate(step.get("exercises", []), start=1):
                        exercise_id = exercise_map.get(str(member["external_id"]))
                        if not exercise_id:
                            raise ValueError(
                                f"Unresolved exercise {args.course}:{lesson_key}:{member['external_id']}"
                            )
                        cur.execute(
                            """
                            INSERT INTO lesson_step_exercises(
                              lesson_step_id,exercise_id,item_order,role,metadata
                            ) VALUES(%s,%s,%s,%s,JSON_OBJECT())
                            """,
                            (step_id, exercise_id, item_order, member.get("role") or "practice"),
                        )
                        stats["exercise_links"] += 1

                stats["lessons"] += 1

        conn.commit()
    except Exception:
        conn.rollback()
        raise
    finally:
        try:
            cur.close()
        except Exception:
            pass
        conn.close()

    print(json.dumps({
        "course": args.course,
        "level": args.level,
        "batches": len(batches),
        "stats": stats,
    }, ensure_ascii=False))


if __name__ == "__main__":
    main()

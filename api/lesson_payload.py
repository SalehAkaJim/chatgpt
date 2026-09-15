"""Database-backed Nova lesson read model.

The normalized content tables remain the canonical source of truth. This module
assembles a versioned frontend contract with explicit lesson steps, localized
text, lexical tap annotations and audio references so clients do not need to
recreate curriculum joins or infer the lesson flow.
"""
from __future__ import annotations

import hashlib
import json
import re
from typing import Any


class LessonNotFound(LookupError):
    pass


class ExerciseNotFound(LookupError):
    pass


class DeliveryNotMaterialized(RuntimeError):
    pass


def _json(value: Any, default: Any) -> Any:
    if value is None:
        return default
    if isinstance(value, (dict, list, str, int, float, bool)):
        if isinstance(value, str):
            try:
                return json.loads(value)
            except json.JSONDecodeError:
                return value
        return value
    return default


def _norm_text(value: Any) -> str:
    return re.sub(r"\s+", " ", str(value or "").strip()).casefold()


def _audio_hash(value: str) -> str:
    normalized = " ".join(str(value or "").strip().split())
    return hashlib.sha256(normalized.encode("utf-8")).hexdigest()


def _public_metadata(value: Any) -> dict[str, Any]:
    payload = _json(value, {})
    return payload if isinstance(payload, dict) else {}


class LessonRepository:
    PAYLOAD_VERSION = 1

    def __init__(self, connection):
        self.connection = connection
        self._concept_translation_cache: dict[tuple[bytes, bytes], str | None] = {}
        self._concept_for_lexeme_cache: dict[bytes, bytes | None] = {}

    def _one(self, sql: str, params: tuple[Any, ...] = ()) -> dict[str, Any] | None:
        cur = self.connection.cursor(dictionary=True)
        try:
            cur.execute(sql, params)
            return cur.fetchone()
        finally:
            cur.close()

    def _all(self, sql: str, params: tuple[Any, ...] = ()) -> list[dict[str, Any]]:
        cur = self.connection.cursor(dictionary=True)
        try:
            cur.execute(sql, params)
            return list(cur.fetchall())
        finally:
            cur.close()

    def _concept_translation(self, concept_id: bytes | None, learner_language_id: bytes) -> str | None:
        if not concept_id:
            return None
        key = (concept_id, learner_language_id)
        if key not in self._concept_translation_cache:
            row = self._one(
                """
                SELECT term
                FROM concept_terms
                WHERE concept_id=%s AND language_id=%s
                  AND status IN ('validated','approved')
                ORDER BY is_primary DESC, created_at, id
                LIMIT 1
                """,
                (concept_id, learner_language_id),
            )
            self._concept_translation_cache[key] = row["term"] if row else None
        return self._concept_translation_cache[key]

    def _concept_for_lexeme(self, lexeme_id: bytes | None) -> bytes | None:
        if not lexeme_id:
            return None
        if lexeme_id not in self._concept_for_lexeme_cache:
            row = self._one(
                """
                SELECT concept_id
                FROM concept_lexemes
                WHERE lexeme_id=%s
                ORDER BY FIELD(relation_type,'primary','contextual','synonym','regional','related'), concept_id
                LIMIT 1
                """,
                (lexeme_id,),
            )
            self._concept_for_lexeme_cache[lexeme_id] = row["concept_id"] if row else None
        return self._concept_for_lexeme_cache[lexeme_id]

    def _audio(self, lesson: dict[str, Any], entity_type: str, entity_id: bytes, fallback_text: str | None = None) -> dict[str, Any] | None:
        params: list[Any] = [lesson["_target_language_id"]]
        variant_clause = ""
        if lesson.get("_target_variant_id"):
            variant_clause = " AND (language_variant_id=%s OR language_variant_id IS NULL)"
            params.append(lesson["_target_variant_id"])
        params.extend([entity_type, entity_id])
        row = self._one(
            f"""
            SELECT BIN_TO_UUID(id,1) AS id, voice_key, provider, provider_model,
                   storage_url, duration_ms, checksum, source_text_hash, status, metadata
            FROM audio_assets
            WHERE language_id=%s {variant_clause}
              AND entity_type=%s AND entity_id=%s
              AND status IN ('validated','approved','generated')
            ORDER BY FIELD(status,'approved','validated','generated'), generated_at DESC, created_at DESC
            LIMIT 1
            """,
            tuple(params),
        )
        if not row and fallback_text:
            params = [lesson["_target_language_id"]]
            variant_clause = ""
            if lesson.get("_target_variant_id"):
                variant_clause = " AND (language_variant_id=%s OR language_variant_id IS NULL)"
                params.append(lesson["_target_variant_id"])
            params.append(_audio_hash(fallback_text))
            row = self._one(
                f"""
                SELECT BIN_TO_UUID(id,1) AS id, voice_key, provider, provider_model,
                       storage_url, duration_ms, checksum, source_text_hash, status, metadata
                FROM audio_assets
                WHERE language_id=%s {variant_clause}
                  AND source_text_hash=%s
                  AND status IN ('validated','approved','generated')
                ORDER BY FIELD(status,'approved','validated','generated'), generated_at DESC, created_at DESC
                LIMIT 1
                """,
                tuple(params),
            )
        if not row:
            return None
        return {
            "id": row["id"],
            "url": row["storage_url"],
            "duration_ms": row["duration_ms"],
            "voice_key": row["voice_key"],
            "provider": row["provider"],
            "model": row["provider_model"],
            "status": row["status"],
        }

    def _annotations(self, lesson: dict[str, Any], source_column: str, source_id: bytes, source_text: str, source_path: str = "") -> list[dict[str, Any]]:
        if source_column not in {"utterance_text_id", "dialogue_turn_id", "exercise_id"}:
            raise ValueError(f"Unsupported annotation source {source_column}")
        path_clause = " AND la.source_path=%s" if source_column == "exercise_id" else ""
        params: tuple[Any, ...] = (source_id, source_path) if path_clause else (source_id,)
        rows = self._all(
            f"""
            SELECT la.start_offset, la.end_offset, la.surface_text, la.annotation_type,
                   la.confidence, la.provenance, la.metadata,
                   la.concept_id AS _concept_id, BIN_TO_UUID(la.concept_id,1) AS concept_id,
                   la.lexeme_id AS _lexeme_id, BIN_TO_UUID(la.lexeme_id,1) AS lexeme_id,
                   l.lemma, l.display_lemma, l.part_of_speech, l.pronunciation, l.transliteration,
                   la.word_form_id AS _word_form_id, BIN_TO_UUID(la.word_form_id,1) AS word_form_id,
                   wf.surface_form, wf.display_form, wf.grammatical_features
            FROM lexical_annotations la
            LEFT JOIN lexemes l ON l.id=la.lexeme_id
            LEFT JOIN word_forms wf ON wf.id=la.word_form_id
            WHERE la.{source_column}=%s {path_clause}
              AND la.status IN ('validated','approved')
            ORDER BY la.start_offset, la.end_offset DESC
            """,
            params,
        )
        result: list[dict[str, Any]] = []
        for row in rows:
            start = int(row["start_offset"])
            end = int(row["end_offset"])
            surface = row["surface_text"]
            if start < 0 or end > len(source_text) or start >= end or source_text[start:end] != surface:
                continue
            concept_id = row.get("_concept_id") or self._concept_for_lexeme(row.get("_lexeme_id"))
            meaning = self._concept_translation(concept_id, lesson["_learner_language_id"])
            result.append({
                "start": start,
                "end": end,
                "surface": surface,
                "type": row["annotation_type"],
                "confidence": float(row["confidence"]),
                "provenance": row["provenance"],
                "entry": {
                    "concept_id": row["concept_id"],
                    "lexeme_id": row["lexeme_id"],
                    "word_form_id": row["word_form_id"],
                    "lemma": row["display_lemma"] or row["lemma"],
                    "part_of_speech": row["part_of_speech"],
                    "pronunciation": row["pronunciation"],
                    "transliteration": row["transliteration"],
                    "form": row["display_form"] or row["surface_form"],
                    "grammatical_features": _json(row["grammatical_features"], {}),
                    "meaning": meaning,
                },
            })
        return result

    def _target_concept_surface(self, lesson: dict[str, Any], concept_id: bytes) -> dict[str, Any] | None:
        params: list[Any] = [concept_id, lesson["_target_language_id"]]
        variant_clause = ""
        if lesson.get("_target_variant_id"):
            variant_clause = " AND (l.language_variant_id=%s OR l.language_variant_id IS NULL)"
            params.append(lesson["_target_variant_id"])
        row = self._one(
            f"""
            SELECT l.id AS _lexeme_id, BIN_TO_UUID(l.id,1) AS lexeme_id,
                   l.lemma, l.display_lemma, l.part_of_speech, l.pronunciation, l.transliteration
            FROM concept_lexemes cl
            JOIN lexemes l ON l.id=cl.lexeme_id
            WHERE cl.concept_id=%s AND l.language_id=%s {variant_clause}
              AND l.status IN ('validated','approved')
            ORDER BY FIELD(cl.relation_type,'primary','contextual','synonym','regional','related'),
                     (l.language_variant_id IS NOT NULL) DESC, l.created_at, l.id
            LIMIT 1
            """,
            tuple(params),
        )
        if row:
            text = row["display_lemma"] or row["lemma"]
            return {
                "text": text,
                "lexeme_id": row["lexeme_id"],
                "part_of_speech": row["part_of_speech"],
                "pronunciation": row["pronunciation"],
                "transliteration": row["transliteration"],
                "audio": self._audio(lesson, "lexeme", row["_lexeme_id"], text),
            }
        term = self._one(
            """
            SELECT term, part_of_speech, pronunciation, transliteration
            FROM concept_terms
            WHERE concept_id=%s AND language_id=%s
              AND status IN ('validated','approved')
            ORDER BY is_primary DESC, created_at, id
            LIMIT 1
            """,
            (concept_id, lesson["_target_language_id"]),
        )
        if not term:
            return None
        return {
            "text": term["term"],
            "lexeme_id": None,
            "part_of_speech": term["part_of_speech"],
            "pronunciation": term["pronunciation"],
            "transliteration": term["transliteration"],
            "audio": self._audio(lesson, "concept", concept_id, term["term"]),
        }

    def _concept_item(self, lesson: dict[str, Any], concept_id: bytes) -> dict[str, Any]:
        row = self._one(
            """
            SELECT BIN_TO_UUID(id,1) AS id, slug, concept_type, definition, metadata, status
            FROM concepts WHERE id=%s
            """,
            (concept_id,),
        )
        if not row:
            raise RuntimeError("Broken lesson_item concept reference")
        return {
            "kind": "concept",
            "id": row["id"],
            "slug": row["slug"],
            "concept_type": row["concept_type"],
            "target": self._target_concept_surface(lesson, concept_id),
            "translation": self._concept_translation(concept_id, lesson["_learner_language_id"]),
            "status": row["status"],
            "metadata": _public_metadata(row["metadata"]),
        }

    def _lexeme_item(self, lesson: dict[str, Any], lexeme_id: bytes) -> dict[str, Any]:
        row = self._one(
            """
            SELECT BIN_TO_UUID(id,1) AS id, lemma, display_lemma, part_of_speech,
                   grammatical_gender, pronunciation, transliteration, metadata, status
            FROM lexemes WHERE id=%s
            """,
            (lexeme_id,),
        )
        if not row:
            raise RuntimeError("Broken lesson_item lexeme reference")
        concept_id = self._concept_for_lexeme(lexeme_id)
        text = row["display_lemma"] or row["lemma"]
        return {
            "kind": "lexeme",
            "id": row["id"],
            "text": text,
            "lemma": row["lemma"],
            "part_of_speech": row["part_of_speech"],
            "gender": row["grammatical_gender"],
            "pronunciation": row["pronunciation"],
            "transliteration": row["transliteration"],
            "translation": self._concept_translation(concept_id, lesson["_learner_language_id"]),
            "audio": self._audio(lesson, "lexeme", lexeme_id, text),
            "status": row["status"],
            "metadata": _public_metadata(row["metadata"]),
        }

    def _word_form_item(self, lesson: dict[str, Any], word_form_id: bytes) -> dict[str, Any]:
        row = self._one(
            """
            SELECT BIN_TO_UUID(wf.id,1) AS id, wf.surface_form, wf.display_form,
                   wf.grammatical_features, wf.pronunciation, wf.transliteration,
                   wf.is_lemma, wf.is_preferred, wf.metadata, wf.status,
                   l.id AS _lexeme_id, BIN_TO_UUID(l.id,1) AS lexeme_id,
                   l.lemma, l.display_lemma, l.part_of_speech
            FROM word_forms wf
            JOIN lexemes l ON l.id=wf.lexeme_id
            WHERE wf.id=%s
            """,
            (word_form_id,),
        )
        if not row:
            raise RuntimeError("Broken lesson_item word_form reference")
        concept_id = self._concept_for_lexeme(row["_lexeme_id"])
        text = row["display_form"] or row["surface_form"]
        return {
            "kind": "word_form",
            "id": row["id"],
            "text": text,
            "lexeme": {
                "id": row["lexeme_id"],
                "lemma": row["display_lemma"] or row["lemma"],
                "part_of_speech": row["part_of_speech"],
            },
            "grammatical_features": _json(row["grammatical_features"], {}),
            "pronunciation": row["pronunciation"],
            "transliteration": row["transliteration"],
            "translation": self._concept_translation(concept_id, lesson["_learner_language_id"]),
            "audio": self._audio(lesson, "word_form", word_form_id, text),
            "status": row["status"],
            "metadata": _public_metadata(row["metadata"]),
        }

    def _utterance_item(self, lesson: dict[str, Any], utterance_id: bytes) -> dict[str, Any]:
        utterance = self._one(
            """
            SELECT BIN_TO_UUID(id,1) AS id, intent, meaning, metadata, status
            FROM utterances WHERE id=%s
            """,
            (utterance_id,),
        )
        if not utterance:
            raise RuntimeError("Broken lesson_item utterance reference")
        target = self._one(
            """
            SELECT id AS _id, BIN_TO_UUID(id,1) AS id, text, display_text, transliteration,
                   register, notes, metadata, status
            FROM utterance_texts
            WHERE utterance_id=%s AND language_id=%s
              AND (language_variant_id=%s OR language_variant_id IS NULL)
              AND status IN ('validated','approved')
            ORDER BY (language_variant_id=%s) DESC, created_at, id
            LIMIT 1
            """,
            (utterance_id, lesson["_target_language_id"], lesson.get("_target_variant_id"), lesson.get("_target_variant_id")),
        )
        translation = self._one(
            """
            SELECT BIN_TO_UUID(id,1) AS id, text, display_text, transliteration
            FROM utterance_texts
            WHERE utterance_id=%s AND language_id=%s
              AND (language_variant_id=%s OR language_variant_id IS NULL)
              AND status IN ('validated','approved')
            ORDER BY (language_variant_id=%s) DESC, created_at, id
            LIMIT 1
            """,
            (utterance_id, lesson["_learner_language_id"], lesson.get("_learner_variant_id"), lesson.get("_learner_variant_id")),
        )
        target_payload = None
        if target:
            value = target["display_text"] or target["text"]
            target_payload = {
                "id": target["id"],
                "value": value,
                "canonical": target["text"],
                "transliteration": target["transliteration"],
                "register": target["register"],
                "annotations": self._annotations(lesson, "utterance_text_id", target["_id"], value),
                "audio": self._audio(lesson, "utterance", utterance_id, value),
            }
        return {
            "kind": "utterance",
            "id": utterance["id"],
            "intent": utterance["intent"],
            "target": target_payload,
            "translation": None if not translation else {
                "id": translation["id"],
                "value": translation["display_text"] or translation["text"],
                "transliteration": translation["transliteration"],
            },
            "status": utterance["status"],
            "metadata": _public_metadata(utterance["metadata"]),
        }

    def _dialogue_item(self, lesson: dict[str, Any], dialogue_id: bytes) -> dict[str, Any]:
        dialogue = self._one(
            """
            SELECT BIN_TO_UUID(id,1) AS id, slug, scenario, metadata, status
            FROM dialogues WHERE id=%s
            """,
            (dialogue_id,),
        )
        if not dialogue:
            raise RuntimeError("Broken lesson_item dialogue reference")
        version = self._one(
            """
            SELECT id AS _id, BIN_TO_UUID(id,1) AS id, title, metadata, status
            FROM dialogue_versions
            WHERE dialogue_id=%s AND language_id=%s
              AND (language_variant_id=%s OR language_variant_id IS NULL)
              AND status IN ('validated','approved')
            ORDER BY (language_variant_id=%s) DESC, created_at, id
            LIMIT 1
            """,
            (dialogue_id, lesson["_target_language_id"], lesson.get("_target_variant_id"), lesson.get("_target_variant_id")),
        )
        turns: list[dict[str, Any]] = []
        if version:
            rows = self._all(
                """
                SELECT dt.id AS _id, BIN_TO_UUID(dt.id,1) AS id, dt.turn_order,
                       dt.text, dt.translation_hint, dt.metadata,
                       BIN_TO_UUID(ch.id,1) AS character_id, ch.slug AS character_slug,
                       COALESCE(cl.display_name,ch.default_name) AS speaker
                FROM dialogue_turns dt
                LEFT JOIN characters ch ON ch.id=dt.character_id
                LEFT JOIN character_localizations cl
                  ON cl.character_id=ch.id AND cl.language_id=%s
                WHERE dt.dialogue_version_id=%s
                ORDER BY dt.turn_order
                """,
                (lesson["_target_language_id"], version["_id"]),
            )
            for row in rows:
                translated = self._one(
                    """
                    SELECT text
                    FROM dialogue_turn_translations
                    WHERE dialogue_turn_id=%s AND language_id=%s
                    ORDER BY (language_variant_id=%s) DESC, updated_at DESC
                    LIMIT 1
                    """,
                    (row["_id"], lesson["_learner_language_id"], lesson.get("_learner_variant_id")),
                )
                turns.append({
                    "id": row["id"],
                    "order": row["turn_order"],
                    "speaker": {"character_id": row["character_id"], "slug": row["character_slug"], "name": row["speaker"]},
                    "text": {"value": row["text"], "annotations": self._annotations(lesson, "dialogue_turn_id", row["_id"], row["text"])},
                    "translation": translated["text"] if translated else row["translation_hint"],
                    "audio": self._audio(lesson, "dialogue_turn", row["_id"], row["text"]),
                })
        return {
            "kind": "dialogue",
            "id": dialogue["id"],
            "slug": dialogue["slug"],
            "title": version["title"] if version else None,
            "scenario": dialogue["scenario"],
            "turns": turns,
            "status": dialogue["status"],
            "metadata": _public_metadata(dialogue["metadata"]),
        }

    def _grammar_item(self, lesson: dict[str, Any], grammar_id: bytes) -> dict[str, Any]:
        row = self._one(
            """
            SELECT BIN_TO_UUID(gp.id,1) AS id, gp.slug, gp.title, gp.rule_summary,
                   gp.metadata, gp.status, ge.explanation, ge.examples
            FROM grammar_points gp
            LEFT JOIN grammar_explanations ge
              ON ge.grammar_point_id=gp.id AND ge.explanation_language_id=%s
            WHERE gp.id=%s
            LIMIT 1
            """,
            (lesson["_learner_language_id"], grammar_id),
        )
        if not row:
            raise RuntimeError("Broken lesson_item grammar reference")
        examples = _json(row["examples"], [])
        rendered_examples = []
        if isinstance(examples, list):
            for example in examples:
                if isinstance(example, dict):
                    target = example.get(lesson["target_language"]) or next((v for k, v in example.items() if k != lesson["learner_language"] and isinstance(v, str)), None)
                    learner = example.get(lesson["learner_language"])
                    rendered_examples.append({
                        "target": target,
                        "translation": learner,
                        "audio": self._audio(lesson, "grammar_point", grammar_id, target) if target else None,
                    })
        return {
            "kind": "grammar_point",
            "id": row["id"],
            "slug": row["slug"],
            "title": row["title"],
            "rule_summary": row["rule_summary"],
            "explanation": row["explanation"],
            "examples": rendered_examples,
            "status": row["status"],
            "metadata": _public_metadata(row["metadata"]),
        }

    def _lesson_item(self, lesson: dict[str, Any], row: dict[str, Any]) -> dict[str, Any]:
        if row.get("concept_id"):
            return self._concept_item(lesson, row["concept_id"])
        if row.get("lexeme_id"):
            return self._lexeme_item(lesson, row["lexeme_id"])
        if row.get("word_form_id"):
            return self._word_form_item(lesson, row["word_form_id"])
        if row.get("utterance_id"):
            return self._utterance_item(lesson, row["utterance_id"])
        if row.get("dialogue_id"):
            return self._dialogue_item(lesson, row["dialogue_id"])
        if row.get("grammar_point_id"):
            return self._grammar_item(lesson, row["grammar_point_id"])
        raise RuntimeError("lesson_item has no canonical content reference")

    @staticmethod
    def _nested_json_text(root: Any, suffix: str) -> str | None:
        value = root
        for key, index in re.findall(r"\.([^.[\]]+)|\[(\d+)\]", suffix):
            if key:
                if not isinstance(value, dict) or key not in value:
                    return None
                value = value[key]
            else:
                idx = int(index)
                if not isinstance(value, list) or idx >= len(value):
                    return None
                value = value[idx]
        return value if isinstance(value, str) else None

    def _exercise_annotations(self, lesson: dict[str, Any], exercise_id: bytes, prompt: dict[str, Any]) -> dict[str, list[dict[str, Any]]]:
        rows = self._all(
            """
            SELECT DISTINCT source_path
            FROM lexical_annotations
            WHERE exercise_id=%s AND status IN ('validated','approved')
            ORDER BY source_path
            """,
            (exercise_id,),
        )
        groups: dict[str, list[dict[str, Any]]] = {}
        for row in rows:
            path = str(row["source_path"] or "")
            if not path.startswith("prompt"):
                continue
            text = self._nested_json_text(prompt, path[len("prompt"):])
            if text is not None:
                groups[path] = self._annotations(lesson, "exercise_id", exercise_id, text, path)
        return groups

    def _exercise(self, lesson: dict[str, Any], exercise_id: bytes) -> dict[str, Any]:
        row = self._one(
            """
            SELECT id AS _id, BIN_TO_UUID(id,1) AS id, exercise_type, prompt, answer,
                   difficulty, metadata, status
            FROM exercises WHERE id=%s
            """,
            (exercise_id,),
        )
        if not row:
            raise RuntimeError("Broken lesson_step exercise reference")
        prompt = _json(row["prompt"], {})
        answer = _json(row["answer"], {})
        options = self._all(
            """
            SELECT BIN_TO_UUID(id,1) AS id, option_order, value
            FROM exercise_options
            WHERE exercise_id=%s
            ORDER BY option_order
            """,
            (exercise_id,),
        )
        return {
            "id": row["id"],
            "type": row["exercise_type"],
            "prompt": prompt,
            "options": [{"id": option["id"], "order": option["option_order"], "value": _json(option["value"], option["value"])} for option in options],
            "difficulty": row["difficulty"],
            "evaluation_mode": answer.get("evaluation_mode", "automatic") if isinstance(answer, dict) else "automatic",
            "annotations": self._exercise_annotations(lesson, exercise_id, prompt if isinstance(prompt, dict) else {}),
            "audio": self._audio(lesson, "exercise", exercise_id, prompt.get("audio_text") if isinstance(prompt, dict) else None),
            "status": row["status"],
        }

    def lesson_payload(self, course_slug: str, lesson_slug: str) -> dict[str, Any]:
        lesson = self._one(
            """
            SELECT l.id AS _lesson_id, BIN_TO_UUID(l.id,1) AS id, l.slug, l.title,
                   l.objective, l.estimated_minutes, l.sort_order, l.status, l.metadata,
                   c.slug AS course_slug, c.title AS course_title,
                   ll.id AS _learner_language_id, ll.code AS learner_language,
                   lv.id AS _learner_variant_id, lv.code AS learner_variant,
                   tl.id AS _target_language_id, tl.code AS target_language,
                   tv.id AS _target_variant_id, tv.code AS target_variant,
                   cl.code AS cefr,
                   cu.slug AS unit_slug, cu.title AS unit_title, cu.learning_objective AS unit_objective
            FROM lessons l
            JOIN courses c ON c.id=l.course_id
            JOIN languages ll ON ll.id=c.learner_language_id
            LEFT JOIN language_variants lv ON lv.id=c.learner_variant_id
            JOIN languages tl ON tl.id=c.target_language_id
            LEFT JOIN language_variants tv ON tv.id=c.target_variant_id
            JOIN cefr_levels cl ON cl.id=l.cefr_level_id
            LEFT JOIN curriculum_units cu ON cu.id=l.curriculum_unit_id
            WHERE c.slug=%s AND l.slug=%s
            LIMIT 1
            """,
            (course_slug, lesson_slug),
        )
        if not lesson:
            raise LessonNotFound(f"Unknown lesson {course_slug}:{lesson_slug}")

        step_rows = self._all(
            """
            SELECT id AS _step_id, BIN_TO_UUID(id,1) AS id, step_key, step_order,
                   stage, step_type, label_key, is_required, metadata
            FROM lesson_steps
            WHERE lesson_id=%s
            ORDER BY step_order
            """,
            (lesson["_lesson_id"],),
        )
        if not step_rows:
            raise DeliveryNotMaterialized(f"Lesson delivery not materialized for {course_slug}:{lesson_slug}")

        steps: list[dict[str, Any]] = []
        for step in step_rows:
            members = self._all(
                """
                SELECT lsi.item_order, lsi.role, li.id AS _lesson_item_id,
                       li.concept_id, li.lexeme_id, li.word_form_id, li.utterance_id,
                       li.dialogue_id, li.grammar_point_id
                FROM lesson_step_items lsi
                JOIN lesson_items li ON li.id=lsi.lesson_item_id
                WHERE lsi.lesson_step_id=%s
                ORDER BY lsi.item_order
                """,
                (step["_step_id"],),
            )
            exercise_members = self._all(
                """
                SELECT lse.item_order, lse.role, e.id AS _exercise_id
                FROM lesson_step_exercises lse
                JOIN exercises e ON e.id=lse.exercise_id
                WHERE lse.lesson_step_id=%s
                ORDER BY lse.item_order
                """,
                (step["_step_id"],),
            )
            steps.append({
                "id": step["id"],
                "key": step["step_key"],
                "order": step["step_order"],
                "stage": step["stage"],
                "type": step["step_type"],
                "label_key": step["label_key"],
                "required": bool(step["is_required"]),
                "items": [{"role": member["role"], "content": self._lesson_item(lesson, member)} for member in members],
                "exercises": [{"role": member["role"], "exercise": self._exercise(lesson, member["_exercise_id"])} for member in exercise_members],
                "metadata": _public_metadata(step["metadata"]),
            })

        return {
            "schema_version": self.PAYLOAD_VERSION,
            "lesson": {
                "id": lesson["id"], "slug": lesson["slug"], "title": lesson["title"],
                "objective": lesson["objective"], "estimated_minutes": lesson["estimated_minutes"],
                "sort_order": lesson["sort_order"], "status": lesson["status"],
            },
            "course": {
                "slug": lesson["course_slug"], "title": lesson["course_title"],
                "learner": {"language": lesson["learner_language"], "variant": lesson["learner_variant"]},
                "target": {"language": lesson["target_language"], "variant": lesson["target_variant"]},
            },
            "path": {
                "cefr": lesson["cefr"],
                "unit": {"slug": lesson["unit_slug"], "title": lesson["unit_title"], "objective": lesson["unit_objective"]},
            },
            "steps": steps,
        }

    def list_lessons(self, course_slug: str, level: str) -> list[dict[str, Any]]:
        return self._all(
            """
            SELECT l.slug, l.title, l.objective, l.estimated_minutes, l.sort_order, l.status,
                   cu.slug AS unit_slug, cu.title AS unit_title,
                   COUNT(ls.id) AS step_count
            FROM lessons l
            JOIN courses c ON c.id=l.course_id
            JOIN cefr_levels cl ON cl.id=l.cefr_level_id
            LEFT JOIN curriculum_units cu ON cu.id=l.curriculum_unit_id
            LEFT JOIN lesson_steps ls ON ls.lesson_id=l.id
            WHERE c.slug=%s AND cl.code=%s
            GROUP BY l.id, l.slug, l.title, l.objective, l.estimated_minutes,
                     l.sort_order, l.status, cu.slug, cu.title
            ORDER BY l.sort_order, l.slug
            """,
            (course_slug, level),
        )

    def grade_exercise(self, exercise_uuid: str, submitted: Any) -> dict[str, Any]:
        row = self._one(
            """
            SELECT BIN_TO_UUID(id,1) AS id, exercise_type, answer, metadata
            FROM exercises
            WHERE id=UUID_TO_BIN(%s,1)
            LIMIT 1
            """,
            (exercise_uuid,),
        )
        if not row:
            raise ExerciseNotFound(exercise_uuid)
        answer = _json(row["answer"], {})
        metadata = _public_metadata(row["metadata"])
        feedback = metadata.get("feedback")

        if isinstance(answer, dict) and answer.get("evaluation_mode") == "rubric":
            return {
                "exercise_id": row["id"], "evaluation_mode": "rubric", "gradable": False,
                "correct": None, "model_text": answer.get("model_text"), "rubric": answer.get("rubric"),
                "feedback": feedback,
            }

        expected: Any = None
        if isinstance(answer, dict):
            for key in ("value", "tokens", "text", "expected_text"):
                if key in answer:
                    expected = answer[key]
                    break
        else:
            expected = answer

        def equivalent(left: Any, right: Any) -> bool:
            if isinstance(left, str) and isinstance(right, str):
                return _norm_text(left).rstrip(".!?") == _norm_text(right).rstrip(".!?")
            if isinstance(left, list) and isinstance(right, list):
                return [str(x) for x in left] == [str(x) for x in right]
            if isinstance(left, list) and isinstance(right, str):
                return _norm_text(" ".join(map(str, left))) == _norm_text(right).rstrip(".!?")
            if isinstance(left, str) and isinstance(right, list):
                return _norm_text(left).rstrip(".!?") == _norm_text(" ".join(map(str, right)))
            return left == right

        correct = equivalent(submitted, expected)
        return {
            "exercise_id": row["id"], "evaluation_mode": "automatic", "gradable": True,
            "correct": correct, "feedback": feedback if not correct else None, "solution": expected,
        }

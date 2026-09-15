-- Frontend delivery/read-model layer + lexical annotation integrity.
-- MySQL 9.0.1
--
-- Canonical lesson_items continue to describe *what* belongs to a lesson.
-- lesson_steps describes *how* the approved content is delivered. The same
-- canonical item may appear in multiple steps (for example phrase + repeat).

SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';

-- Never silently delete annotations because a lexical target was removed.
-- Source deletion still cascades because the annotation has no meaning without
-- its exact source text.
ALTER TABLE lexical_annotations
  DROP FOREIGN KEY fk_lexical_annotations_concept,
  DROP FOREIGN KEY fk_lexical_annotations_lexeme,
  DROP FOREIGN KEY fk_lexical_annotations_word_form,
  ADD CONSTRAINT fk_lexical_annotations_concept
    FOREIGN KEY (concept_id) REFERENCES concepts(id) ON DELETE RESTRICT,
  ADD CONSTRAINT fk_lexical_annotations_lexeme
    FOREIGN KEY (lexeme_id) REFERENCES lexemes(id) ON DELETE RESTRICT,
  ADD CONSTRAINT fk_lexical_annotations_word_form
    FOREIGN KEY (word_form_id) REFERENCES word_forms(id) ON DELETE RESTRICT;

CREATE TABLE lesson_steps (
  id BINARY(16) NOT NULL,
  lesson_id BINARY(16) NOT NULL,
  step_key VARCHAR(100) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  step_order SMALLINT UNSIGNED NOT NULL,
  stage VARCHAR(40) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  step_type VARCHAR(60) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  label_key VARCHAR(120) CHARACTER SET ascii COLLATE ascii_bin NULL,
  is_required BOOLEAN NOT NULL DEFAULT TRUE,
  metadata JSON NOT NULL DEFAULT (JSON_OBJECT()),
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (id),
  UNIQUE KEY uq_lesson_steps_key (lesson_id, step_key),
  UNIQUE KEY uq_lesson_steps_order (lesson_id, step_order),
  KEY idx_lesson_steps_stage (lesson_id, stage, step_order),
  CONSTRAINT chk_lesson_steps_order CHECK (step_order > 0),
  CONSTRAINT fk_lesson_steps_lesson
    FOREIGN KEY (lesson_id) REFERENCES lessons(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE lesson_step_items (
  lesson_step_id BINARY(16) NOT NULL,
  lesson_item_id BINARY(16) NOT NULL,
  item_order SMALLINT UNSIGNED NOT NULL,
  role VARCHAR(60) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT 'primary',
  metadata JSON NOT NULL DEFAULT (JSON_OBJECT()),
  PRIMARY KEY (lesson_step_id, item_order),
  UNIQUE KEY uq_lesson_step_items_member (lesson_step_id, lesson_item_id, role),
  KEY idx_lesson_step_items_item (lesson_item_id),
  CONSTRAINT chk_lesson_step_items_order CHECK (item_order > 0),
  CONSTRAINT fk_lesson_step_items_step
    FOREIGN KEY (lesson_step_id) REFERENCES lesson_steps(id) ON DELETE CASCADE,
  CONSTRAINT fk_lesson_step_items_item
    FOREIGN KEY (lesson_item_id) REFERENCES lesson_items(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE lesson_step_exercises (
  lesson_step_id BINARY(16) NOT NULL,
  exercise_id BINARY(16) NOT NULL,
  item_order SMALLINT UNSIGNED NOT NULL,
  role VARCHAR(60) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT 'practice',
  metadata JSON NOT NULL DEFAULT (JSON_OBJECT()),
  PRIMARY KEY (lesson_step_id, item_order),
  UNIQUE KEY uq_lesson_step_exercises_member (lesson_step_id, exercise_id, role),
  KEY idx_lesson_step_exercises_exercise (exercise_id),
  CONSTRAINT chk_lesson_step_exercises_order CHECK (item_order > 0),
  CONSTRAINT fk_lesson_step_exercises_step
    FOREIGN KEY (lesson_step_id) REFERENCES lesson_steps(id) ON DELETE CASCADE,
  CONSTRAINT fk_lesson_step_exercises_exercise
    FOREIGN KEY (exercise_id) REFERENCES exercises(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dialogue translations were previously stored in a single translation_hint
-- field. Keep that column for compatibility, but normalize translations so the
-- same dialogue can serve courses with different learner languages.
CREATE TABLE dialogue_turn_translations (
  dialogue_turn_id BINARY(16) NOT NULL,
  language_id BINARY(16) NOT NULL,
  language_variant_id BINARY(16) NULL,
  text TEXT NOT NULL,
  metadata JSON NOT NULL DEFAULT (JSON_OBJECT()),
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (dialogue_turn_id, language_id),
  KEY idx_dialogue_turn_translations_language (language_id, language_variant_id),
  CONSTRAINT fk_dialogue_turn_translations_turn
    FOREIGN KEY (dialogue_turn_id) REFERENCES dialogue_turns(id) ON DELETE CASCADE,
  CONSTRAINT fk_dialogue_turn_translations_language
    FOREIGN KEY (language_id) REFERENCES languages(id) ON DELETE CASCADE,
  CONSTRAINT fk_dialogue_turn_translations_variant
    FOREIGN KEY (language_variant_id) REFERENCES language_variants(id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

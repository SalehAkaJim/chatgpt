-- Canonical lexical span annotations for tap-to-explain lesson text.
-- MySQL 9.0.1
--
-- Source content remains database-ID agnostic. During materialization/backfill,
-- deterministic resolvers attach character spans in learner-visible text to
-- canonical concepts, lexemes and (when known) inflected word forms.

SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';

CREATE TABLE lexical_annotations (
  id BINARY(16) NOT NULL,
  language_id BINARY(16) NOT NULL,
  language_variant_id BINARY(16) NULL,

  -- Exactly one source is populated. source_path is used for text nested in an
  -- exercise JSON payload and is deliberately non-null so the exercise unique
  -- key remains effective under MySQL NULL semantics.
  utterance_text_id BINARY(16) NULL,
  dialogue_turn_id BINARY(16) NULL,
  exercise_id BINARY(16) NULL,
  source_path VARCHAR(190) NOT NULL DEFAULT '' COMMENT 'JSON path for text nested inside an exercise payload',

  -- Unicode code-point offsets: [start_offset, end_offset).
  start_offset INT UNSIGNED NOT NULL,
  end_offset INT UNSIGNED NOT NULL,
  surface_text VARCHAR(512) COLLATE utf8mb4_0900_bin NOT NULL,
  annotation_type ENUM('word','phrase','expression','morpheme') NOT NULL DEFAULT 'word',

  -- At least one target is required. A phrase may intentionally point only to
  -- a concept; an inflected token can point to concept + lexeme + word_form.
  concept_id BINARY(16) NULL,
  lexeme_id BINARY(16) NULL,
  word_form_id BINARY(16) NULL,

  confidence DECIMAL(5,4) NOT NULL DEFAULT 1.0000,
  provenance ENUM('authored','deterministic','reviewed','manual_override') NOT NULL DEFAULT 'deterministic',
  metadata JSON NOT NULL DEFAULT (JSON_OBJECT()),
  status ENUM('generated','validated','approved','rejected','archived') NOT NULL DEFAULT 'generated',
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),

  PRIMARY KEY (id),
  UNIQUE KEY uq_lexical_annotations_utterance_span (utterance_text_id, start_offset, end_offset),
  UNIQUE KEY uq_lexical_annotations_turn_span (dialogue_turn_id, start_offset, end_offset),
  UNIQUE KEY uq_lexical_annotations_exercise_span (exercise_id, source_path, start_offset, end_offset),
  KEY idx_lexical_annotations_language (language_id, language_variant_id),
  KEY idx_lexical_annotations_concept (concept_id),
  KEY idx_lexical_annotations_lexeme (lexeme_id),
  KEY idx_lexical_annotations_word_form (word_form_id),

  CONSTRAINT chk_lexical_annotations_one_source CHECK (
    (utterance_text_id IS NOT NULL) +
    (dialogue_turn_id IS NOT NULL) +
    (exercise_id IS NOT NULL) = 1
  ),
  CONSTRAINT chk_lexical_annotations_valid_span CHECK (start_offset < end_offset),
  CONSTRAINT chk_lexical_annotations_has_target CHECK (
    concept_id IS NOT NULL OR lexeme_id IS NOT NULL OR word_form_id IS NOT NULL
  ),
  CONSTRAINT chk_lexical_annotations_confidence CHECK (confidence > 0.0000 AND confidence <= 1.0000),
  CONSTRAINT chk_lexical_annotations_source_path CHECK (exercise_id IS NOT NULL OR source_path = ''),

  CONSTRAINT fk_lexical_annotations_language
    FOREIGN KEY (language_id) REFERENCES languages(id) ON DELETE CASCADE,
  CONSTRAINT fk_lexical_annotations_variant
    FOREIGN KEY (language_variant_id) REFERENCES language_variants(id) ON DELETE SET NULL,
  CONSTRAINT fk_lexical_annotations_utterance_text
    FOREIGN KEY (utterance_text_id) REFERENCES utterance_texts(id) ON DELETE CASCADE,
  CONSTRAINT fk_lexical_annotations_dialogue_turn
    FOREIGN KEY (dialogue_turn_id) REFERENCES dialogue_turns(id) ON DELETE CASCADE,
  CONSTRAINT fk_lexical_annotations_exercise
    FOREIGN KEY (exercise_id) REFERENCES exercises(id) ON DELETE CASCADE,
  CONSTRAINT fk_lexical_annotations_concept
    FOREIGN KEY (concept_id) REFERENCES concepts(id) ON DELETE CASCADE,
  CONSTRAINT fk_lexical_annotations_lexeme
    FOREIGN KEY (lexeme_id) REFERENCES lexemes(id) ON DELETE CASCADE,
  CONSTRAINT fk_lexical_annotations_word_form
    FOREIGN KEY (word_form_id) REFERENCES word_forms(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

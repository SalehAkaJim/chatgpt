-- Multilingual / language-agnostic core
-- MySQL 9.0.1
-- Adds Pre-A1, language variants, courses, orthography, lexemes and inflected word forms.

SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';

-- CEFR Companion Volume includes Pre-A1 descriptors. Keep sort_order=0 so
-- existing A1-C2 sort orders do not need a destructive renumbering migration.
ALTER TABLE cefr_levels
  MODIFY COLUMN code ENUM('Pre-A1','A1','A2','B1','B2','C1','C2') NOT NULL;

INSERT IGNORE INTO cefr_levels (code, sort_order, description)
VALUES ('Pre-A1', 0, 'Pre-beginner / initial access to the language');

CREATE TABLE language_variants (
  id BINARY(16) NOT NULL DEFAULT (UUID_TO_BIN(UUID(), 1)),
  language_id BINARY(16) NOT NULL,
  code VARCHAR(32) NOT NULL,
  name VARCHAR(120) NOT NULL,
  native_name VARCHAR(120) NOT NULL,
  variant_type ENUM('standard','regional','dialect','register') NOT NULL DEFAULT 'standard',
  script VARCHAR(40) NULL,
  direction ENUM('ltr','rtl') NOT NULL DEFAULT 'ltr',
  is_default BOOLEAN NOT NULL DEFAULT FALSE,
  is_active BOOLEAN NOT NULL DEFAULT TRUE,
  metadata JSON NOT NULL DEFAULT (JSON_OBJECT()),
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (id),
  UNIQUE KEY uq_language_variants_code (code),
  KEY idx_language_variants_language (language_id, is_active),
  CONSTRAINT fk_language_variants_language
    FOREIGN KEY (language_id) REFERENCES languages(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE orthography_profiles (
  id BINARY(16) NOT NULL DEFAULT (UUID_TO_BIN(UUID(), 1)),
  language_variant_id BINARY(16) NOT NULL,
  code VARCHAR(64) NOT NULL,
  name VARCHAR(120) NOT NULL,
  script VARCHAR(40) NOT NULL,
  is_primary BOOLEAN NOT NULL DEFAULT TRUE,
  uses_case BOOLEAN NOT NULL DEFAULT FALSE,
  uses_diacritics BOOLEAN NOT NULL DEFAULT FALSE,
  diacritics_policy ENUM('none','optional','recommended','required') NOT NULL DEFAULT 'none',
  normalization_form ENUM('NFC','NFD','NFKC','NFKD') NOT NULL DEFAULT 'NFC',
  metadata JSON NOT NULL DEFAULT (JSON_OBJECT()),
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (id),
  UNIQUE KEY uq_orthography_profiles_code (code),
  KEY idx_orthography_profiles_variant (language_variant_id, is_primary),
  CONSTRAINT fk_orthography_profiles_variant
    FOREIGN KEY (language_variant_id) REFERENCES language_variants(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE courses (
  id BINARY(16) NOT NULL DEFAULT (UUID_TO_BIN(UUID(), 1)),
  slug VARCHAR(160) NOT NULL,
  learner_language_id BINARY(16) NOT NULL,
  learner_variant_id BINARY(16) NULL,
  target_language_id BINARY(16) NOT NULL,
  target_variant_id BINARY(16) NULL,
  title VARCHAR(220) NOT NULL,
  description TEXT NULL,
  is_active BOOLEAN NOT NULL DEFAULT TRUE,
  metadata JSON NOT NULL DEFAULT (JSON_OBJECT()),
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (id),
  UNIQUE KEY uq_courses_slug (slug),
  UNIQUE KEY uq_courses_pair (
    learner_language_id,
    learner_variant_id,
    target_language_id,
    target_variant_id
  ),
  KEY idx_courses_learner_language (learner_language_id),
  KEY idx_courses_target_language (target_language_id),
  KEY idx_courses_learner_variant (learner_variant_id),
  KEY idx_courses_target_variant (target_variant_id),
  CONSTRAINT fk_courses_learner_language
    FOREIGN KEY (learner_language_id) REFERENCES languages(id),
  CONSTRAINT fk_courses_learner_variant
    FOREIGN KEY (learner_variant_id) REFERENCES language_variants(id) ON DELETE SET NULL,
  CONSTRAINT fk_courses_target_language
    FOREIGN KEY (target_language_id) REFERENCES languages(id),
  CONSTRAINT fk_courses_target_variant
    FOREIGN KEY (target_variant_id) REFERENCES language_variants(id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- A lexeme is a language-specific dictionary unit (lemma). Concepts remain
-- language-neutral and are connected through concept_lexemes.
CREATE TABLE lexemes (
  id BINARY(16) NOT NULL DEFAULT (UUID_TO_BIN(UUID(), 1)),
  language_id BINARY(16) NOT NULL,
  language_variant_id BINARY(16) NULL,
  orthography_profile_id BINARY(16) NULL,
  lemma VARCHAR(512) COLLATE utf8mb4_0900_bin NOT NULL,
  normalized_lemma VARCHAR(512) COLLATE utf8mb4_0900_bin NULL,
  display_lemma VARCHAR(512) COLLATE utf8mb4_0900_bin NULL,
  transliteration VARCHAR(512) NULL,
  pronunciation TEXT NULL,
  part_of_speech VARCHAR(40) NULL,
  grammatical_gender VARCHAR(40) NULL,
  root_form VARCHAR(160) NULL,
  morphological_pattern VARCHAR(160) NULL,
  metadata JSON NOT NULL DEFAULT (JSON_OBJECT()),
  status ENUM('generated','validated','approved','rejected','archived') NOT NULL DEFAULT 'generated',
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (id),
  KEY idx_lexemes_language (language_id, language_variant_id),
  KEY idx_lexemes_normalized (language_id, normalized_lemma),
  KEY idx_lexemes_orthography (orthography_profile_id),
  CONSTRAINT fk_lexemes_language
    FOREIGN KEY (language_id) REFERENCES languages(id) ON DELETE CASCADE,
  CONSTRAINT fk_lexemes_variant
    FOREIGN KEY (language_variant_id) REFERENCES language_variants(id) ON DELETE SET NULL,
  CONSTRAINT fk_lexemes_orthography
    FOREIGN KEY (orthography_profile_id) REFERENCES orthography_profiles(id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE concept_lexemes (
  concept_id BINARY(16) NOT NULL,
  lexeme_id BINARY(16) NOT NULL,
  relation_type ENUM('primary','synonym','regional','contextual','related') NOT NULL DEFAULT 'primary',
  usage_notes TEXT NULL,
  metadata JSON NOT NULL DEFAULT (JSON_OBJECT()),
  PRIMARY KEY (concept_id, lexeme_id),
  KEY idx_concept_lexemes_lexeme (lexeme_id),
  CONSTRAINT fk_concept_lexemes_concept
    FOREIGN KEY (concept_id) REFERENCES concepts(id) ON DELETE CASCADE,
  CONSTRAINT fk_concept_lexemes_lexeme
    FOREIGN KEY (lexeme_id) REFERENCES lexemes(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE word_forms (
  id BINARY(16) NOT NULL DEFAULT (UUID_TO_BIN(UUID(), 1)),
  lexeme_id BINARY(16) NOT NULL,
  orthography_profile_id BINARY(16) NULL,
  surface_form VARCHAR(512) COLLATE utf8mb4_0900_bin NOT NULL,
  normalized_form VARCHAR(512) COLLATE utf8mb4_0900_bin NULL,
  display_form VARCHAR(512) COLLATE utf8mb4_0900_bin NULL,
  transliteration VARCHAR(512) NULL,
  pronunciation TEXT NULL,
  grammatical_features JSON NOT NULL DEFAULT (JSON_OBJECT()),
  is_lemma BOOLEAN NOT NULL DEFAULT FALSE,
  is_preferred BOOLEAN NOT NULL DEFAULT TRUE,
  metadata JSON NOT NULL DEFAULT (JSON_OBJECT()),
  status ENUM('generated','validated','approved','rejected','archived') NOT NULL DEFAULT 'generated',
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (id),
  KEY idx_word_forms_lexeme (lexeme_id, is_lemma),
  KEY idx_word_forms_normalized (normalized_form),
  KEY idx_word_forms_orthography (orthography_profile_id),
  CONSTRAINT fk_word_forms_lexeme
    FOREIGN KEY (lexeme_id) REFERENCES lexemes(id) ON DELETE CASCADE,
  CONSTRAINT fk_word_forms_orthography
    FOREIGN KEY (orthography_profile_id) REFERENCES orthography_profiles(id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Existing concept_terms stays in place as a compact compatibility layer.
-- New production vocabulary should prefer lexemes + word_forms.

ALTER TABLE utterance_texts
  ADD COLUMN language_variant_id BINARY(16) NULL AFTER language_id,
  ADD COLUMN orthography_profile_id BINARY(16) NULL AFTER language_variant_id,
  ADD COLUMN display_text VARCHAR(700) COLLATE utf8mb4_0900_bin NULL AFTER normalized_text,
  ADD COLUMN transliteration TEXT NULL AFTER display_text,
  ADD KEY idx_utterance_texts_variant (language_variant_id),
  ADD KEY idx_utterance_texts_orthography (orthography_profile_id),
  ADD CONSTRAINT fk_utterance_texts_variant
    FOREIGN KEY (language_variant_id) REFERENCES language_variants(id) ON DELETE SET NULL,
  ADD CONSTRAINT fk_utterance_texts_orthography
    FOREIGN KEY (orthography_profile_id) REFERENCES orthography_profiles(id) ON DELETE SET NULL;

ALTER TABLE grammar_points
  ADD COLUMN target_language_variant_id BINARY(16) NULL AFTER target_language_id,
  ADD KEY idx_grammar_points_variant (target_language_variant_id),
  ADD CONSTRAINT fk_grammar_points_variant
    FOREIGN KEY (target_language_variant_id) REFERENCES language_variants(id) ON DELETE SET NULL;

ALTER TABLE dialogue_versions
  ADD COLUMN language_variant_id BINARY(16) NULL AFTER language_id,
  ADD COLUMN orthography_profile_id BINARY(16) NULL AFTER language_variant_id,
  ADD KEY idx_dialogue_versions_variant (language_variant_id),
  ADD KEY idx_dialogue_versions_orthography (orthography_profile_id),
  ADD CONSTRAINT fk_dialogue_versions_variant
    FOREIGN KEY (language_variant_id) REFERENCES language_variants(id) ON DELETE SET NULL,
  ADD CONSTRAINT fk_dialogue_versions_orthography
    FOREIGN KEY (orthography_profile_id) REFERENCES orthography_profiles(id) ON DELETE SET NULL;

ALTER TABLE audio_assets
  ADD COLUMN language_variant_id BINARY(16) NULL AFTER language_id,
  ADD KEY idx_audio_assets_variant (language_variant_id),
  ADD CONSTRAINT fk_audio_assets_variant
    FOREIGN KEY (language_variant_id) REFERENCES language_variants(id) ON DELETE SET NULL;

ALTER TABLE curriculum_units
  DROP INDEX uq_curriculum_units_slug,
  DROP INDEX uq_curriculum_units_order,
  ADD COLUMN course_id BINARY(16) NULL AFTER id,
  ADD UNIQUE KEY uq_curriculum_units_course_slug (course_id, cefr_level_id, slug),
  ADD UNIQUE KEY uq_curriculum_units_course_order (course_id, cefr_level_id, sort_order),
  ADD KEY idx_curriculum_units_course (course_id, cefr_level_id, sort_order),
  ADD CONSTRAINT fk_curriculum_units_course
    FOREIGN KEY (course_id) REFERENCES courses(id) ON DELETE CASCADE;

ALTER TABLE lessons
  DROP INDEX uq_lessons_slug,
  ADD COLUMN course_id BINARY(16) NULL AFTER id,
  ADD UNIQUE KEY uq_lessons_course_slug (course_id, slug),
  ADD KEY idx_lessons_course (course_id, cefr_level_id, sort_order),
  ADD CONSTRAINT fk_lessons_course
    FOREIGN KEY (course_id) REFERENCES courses(id) ON DELETE CASCADE;

ALTER TABLE generation_jobs
  ADD COLUMN course_id BINARY(16) NULL AFTER job_type,
  ADD COLUMN target_language_variant_id BINARY(16) NULL AFTER target_language_id,
  ADD KEY idx_generation_jobs_course (course_id),
  ADD KEY idx_generation_jobs_target_variant (target_language_variant_id),
  ADD CONSTRAINT fk_generation_jobs_course
    FOREIGN KEY (course_id) REFERENCES courses(id) ON DELETE SET NULL,
  ADD CONSTRAINT fk_generation_jobs_target_variant
    FOREIGN KEY (target_language_variant_id) REFERENCES language_variants(id) ON DELETE SET NULL;

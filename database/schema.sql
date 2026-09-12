-- Language Learning Core
-- MySQL 9.0.1
-- All application timestamps are stored as UTC DATETIME(6).
-- UUIDs are stored as BINARY(16). For human-readable values use:
--   BIN_TO_UUID(id, 1)
-- and for string -> binary conversion use:
--   UUID_TO_BIN(uuid_string, 1)

SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';

CREATE TABLE languages (
  id BINARY(16) NOT NULL DEFAULT (UUID_TO_BIN(UUID(), 1)),
  code VARCHAR(16) NOT NULL,
  name VARCHAR(100) NOT NULL,
  native_name VARCHAR(100) NOT NULL,
  script VARCHAR(40) NULL,
  direction ENUM('ltr', 'rtl') NOT NULL DEFAULT 'ltr',
  is_active BOOLEAN NOT NULL DEFAULT TRUE,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (id),
  UNIQUE KEY uq_languages_code (code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE cefr_levels (
  id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  code ENUM('A1','A2','B1','B2','C1','C2') NOT NULL,
  sort_order SMALLINT UNSIGNED NOT NULL,
  description TEXT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY uq_cefr_levels_code (code),
  UNIQUE KEY uq_cefr_levels_sort_order (sort_order)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE skills (
  id BINARY(16) NOT NULL DEFAULT (UUID_TO_BIN(UUID(), 1)),
  slug VARCHAR(120) NOT NULL,
  name VARCHAR(160) NOT NULL,
  description TEXT NULL,
  sort_order INT NOT NULL DEFAULT 0,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (id),
  UNIQUE KEY uq_skills_slug (slug)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE topics (
  id BINARY(16) NOT NULL DEFAULT (UUID_TO_BIN(UUID(), 1)),
  skill_id BINARY(16) NULL,
  slug VARCHAR(160) NOT NULL,
  name VARCHAR(180) NOT NULL,
  description TEXT NULL,
  sort_order INT NOT NULL DEFAULT 0,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (id),
  UNIQUE KEY uq_topics_slug (slug),
  KEY idx_topics_skill (skill_id),
  CONSTRAINT fk_topics_skill
    FOREIGN KEY (skill_id) REFERENCES skills(id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- A concept is a language-neutral semantic meaning such as airport,
-- asking_for_the_bill, present_perfect_experience, etc.
CREATE TABLE concepts (
  id BINARY(16) NOT NULL DEFAULT (UUID_TO_BIN(UUID(), 1)),
  slug VARCHAR(180) NOT NULL,
  concept_type VARCHAR(40) NOT NULL DEFAULT 'lexical',
  cefr_level_id SMALLINT UNSIGNED NULL,
  definition TEXT NULL,
  metadata JSON NOT NULL DEFAULT (JSON_OBJECT()),
  status ENUM('generated','validated','approved','rejected','archived') NOT NULL DEFAULT 'generated',
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (id),
  UNIQUE KEY uq_concepts_slug (slug),
  KEY idx_concepts_cefr (cefr_level_id),
  CONSTRAINT fk_concepts_cefr
    FOREIGN KEY (cefr_level_id) REFERENCES cefr_levels(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE concept_topics (
  concept_id BINARY(16) NOT NULL,
  topic_id BINARY(16) NOT NULL,
  PRIMARY KEY (concept_id, topic_id),
  KEY idx_concept_topics_topic (topic_id),
  CONSTRAINT fk_concept_topics_concept
    FOREIGN KEY (concept_id) REFERENCES concepts(id) ON DELETE CASCADE,
  CONSTRAINT fk_concept_topics_topic
    FOREIGN KEY (topic_id) REFERENCES topics(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Localized lexical realization of a concept.
CREATE TABLE concept_terms (
  id BINARY(16) NOT NULL DEFAULT (UUID_TO_BIN(UUID(), 1)),
  concept_id BINARY(16) NOT NULL,
  language_id BINARY(16) NOT NULL,
  term VARCHAR(512) COLLATE utf8mb4_0900_bin NOT NULL,
  normalized_term VARCHAR(512) COLLATE utf8mb4_0900_bin NULL,
  part_of_speech VARCHAR(40) NULL,
  gender VARCHAR(30) NULL,
  pronunciation TEXT NULL,
  transliteration TEXT NULL,
  notes TEXT NULL,
  is_primary BOOLEAN NOT NULL DEFAULT TRUE,
  status ENUM('generated','validated','approved','rejected','archived') NOT NULL DEFAULT 'generated',
  metadata JSON NOT NULL DEFAULT (JSON_OBJECT()),
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (id),
  UNIQUE KEY uq_concept_terms_exact (concept_id, language_id, term),
  KEY idx_concept_terms_language (language_id),
  KEY idx_concept_terms_term (language_id, normalized_term),
  CONSTRAINT fk_concept_terms_concept
    FOREIGN KEY (concept_id) REFERENCES concepts(id) ON DELETE CASCADE,
  CONSTRAINT fk_concept_terms_language
    FOREIGN KEY (language_id) REFERENCES languages(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Language-neutral semantic unit. Each localization can be natural rather than literal.
CREATE TABLE utterances (
  id BINARY(16) NOT NULL DEFAULT (UUID_TO_BIN(UUID(), 1)),
  cefr_level_id SMALLINT UNSIGNED NULL,
  topic_id BINARY(16) NULL,
  intent VARCHAR(120) NULL,
  meaning TEXT NULL,
  metadata JSON NOT NULL DEFAULT (JSON_OBJECT()),
  status ENUM('generated','validated','approved','rejected','archived') NOT NULL DEFAULT 'generated',
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (id),
  KEY idx_utterances_cefr_topic (cefr_level_id, topic_id),
  KEY idx_utterances_topic (topic_id),
  CONSTRAINT fk_utterances_cefr
    FOREIGN KEY (cefr_level_id) REFERENCES cefr_levels(id),
  CONSTRAINT fk_utterances_topic
    FOREIGN KEY (topic_id) REFERENCES topics(id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE utterance_concepts (
  utterance_id BINARY(16) NOT NULL,
  concept_id BINARY(16) NOT NULL,
  PRIMARY KEY (utterance_id, concept_id),
  KEY idx_utterance_concepts_concept (concept_id),
  CONSTRAINT fk_utterance_concepts_utterance
    FOREIGN KEY (utterance_id) REFERENCES utterances(id) ON DELETE CASCADE,
  CONSTRAINT fk_utterance_concepts_concept
    FOREIGN KEY (concept_id) REFERENCES concepts(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE utterance_texts (
  id BINARY(16) NOT NULL DEFAULT (UUID_TO_BIN(UUID(), 1)),
  utterance_id BINARY(16) NOT NULL,
  language_id BINARY(16) NOT NULL,
  text VARCHAR(700) COLLATE utf8mb4_0900_bin NOT NULL,
  normalized_text VARCHAR(700) COLLATE utf8mb4_0900_bin NULL,
  register VARCHAR(40) NOT NULL DEFAULT 'neutral',
  notes TEXT NULL,
  status ENUM('generated','validated','approved','rejected','archived') NOT NULL DEFAULT 'generated',
  metadata JSON NOT NULL DEFAULT (JSON_OBJECT()),
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (id),
  UNIQUE KEY uq_utterance_texts_exact (utterance_id, language_id, text),
  KEY idx_utterance_texts_language (language_id),
  CONSTRAINT fk_utterance_texts_utterance
    FOREIGN KEY (utterance_id) REFERENCES utterances(id) ON DELETE CASCADE,
  CONSTRAINT fk_utterance_texts_language
    FOREIGN KEY (language_id) REFERENCES languages(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE grammar_points (
  id BINARY(16) NOT NULL DEFAULT (UUID_TO_BIN(UUID(), 1)),
  slug VARCHAR(180) NOT NULL,
  target_language_id BINARY(16) NOT NULL,
  cefr_level_id SMALLINT UNSIGNED NULL,
  title TEXT NOT NULL,
  rule_summary TEXT NULL,
  status ENUM('generated','validated','approved','rejected','archived') NOT NULL DEFAULT 'generated',
  metadata JSON NOT NULL DEFAULT (JSON_OBJECT()),
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (id),
  UNIQUE KEY uq_grammar_points_slug (slug),
  KEY idx_grammar_points_language (target_language_id),
  KEY idx_grammar_points_cefr (cefr_level_id),
  CONSTRAINT fk_grammar_points_language
    FOREIGN KEY (target_language_id) REFERENCES languages(id) ON DELETE CASCADE,
  CONSTRAINT fk_grammar_points_cefr
    FOREIGN KEY (cefr_level_id) REFERENCES cefr_levels(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE grammar_explanations (
  id BINARY(16) NOT NULL DEFAULT (UUID_TO_BIN(UUID(), 1)),
  grammar_point_id BINARY(16) NOT NULL,
  explanation_language_id BINARY(16) NOT NULL,
  explanation TEXT NOT NULL,
  examples JSON NOT NULL DEFAULT (JSON_ARRAY()),
  status ENUM('generated','validated','approved','rejected','archived') NOT NULL DEFAULT 'generated',
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (id),
  UNIQUE KEY uq_grammar_explanations_language (grammar_point_id, explanation_language_id),
  KEY idx_grammar_explanations_language (explanation_language_id),
  CONSTRAINT fk_grammar_explanations_point
    FOREIGN KEY (grammar_point_id) REFERENCES grammar_points(id) ON DELETE CASCADE,
  CONSTRAINT fk_grammar_explanations_language
    FOREIGN KEY (explanation_language_id) REFERENCES languages(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE characters (
  id BINARY(16) NOT NULL DEFAULT (UUID_TO_BIN(UUID(), 1)),
  slug VARCHAR(120) NOT NULL,
  default_name VARCHAR(120) NOT NULL,
  persona JSON NOT NULL DEFAULT (JSON_OBJECT()),
  voice_profile JSON NOT NULL DEFAULT (JSON_OBJECT()),
  is_active BOOLEAN NOT NULL DEFAULT TRUE,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (id),
  UNIQUE KEY uq_characters_slug (slug)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE character_localizations (
  character_id BINARY(16) NOT NULL,
  language_id BINARY(16) NOT NULL,
  display_name VARCHAR(120) NOT NULL,
  bio TEXT NULL,
  PRIMARY KEY (character_id, language_id),
  KEY idx_character_localizations_language (language_id),
  CONSTRAINT fk_character_localizations_character
    FOREIGN KEY (character_id) REFERENCES characters(id) ON DELETE CASCADE,
  CONSTRAINT fk_character_localizations_language
    FOREIGN KEY (language_id) REFERENCES languages(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE dialogues (
  id BINARY(16) NOT NULL DEFAULT (UUID_TO_BIN(UUID(), 1)),
  slug VARCHAR(180) NOT NULL,
  cefr_level_id SMALLINT UNSIGNED NULL,
  topic_id BINARY(16) NULL,
  scenario TEXT NULL,
  metadata JSON NOT NULL DEFAULT (JSON_OBJECT()),
  status ENUM('generated','validated','approved','rejected','archived') NOT NULL DEFAULT 'generated',
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (id),
  UNIQUE KEY uq_dialogues_slug (slug),
  KEY idx_dialogues_cefr_topic (cefr_level_id, topic_id),
  KEY idx_dialogues_topic (topic_id),
  CONSTRAINT fk_dialogues_cefr
    FOREIGN KEY (cefr_level_id) REFERENCES cefr_levels(id),
  CONSTRAINT fk_dialogues_topic
    FOREIGN KEY (topic_id) REFERENCES topics(id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE dialogue_versions (
  id BINARY(16) NOT NULL DEFAULT (UUID_TO_BIN(UUID(), 1)),
  dialogue_id BINARY(16) NOT NULL,
  language_id BINARY(16) NOT NULL,
  title TEXT NULL,
  status ENUM('generated','validated','approved','rejected','archived') NOT NULL DEFAULT 'generated',
  metadata JSON NOT NULL DEFAULT (JSON_OBJECT()),
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (id),
  UNIQUE KEY uq_dialogue_versions_language (dialogue_id, language_id),
  KEY idx_dialogue_versions_language (language_id),
  CONSTRAINT fk_dialogue_versions_dialogue
    FOREIGN KEY (dialogue_id) REFERENCES dialogues(id) ON DELETE CASCADE,
  CONSTRAINT fk_dialogue_versions_language
    FOREIGN KEY (language_id) REFERENCES languages(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE dialogue_turns (
  id BINARY(16) NOT NULL DEFAULT (UUID_TO_BIN(UUID(), 1)),
  dialogue_version_id BINARY(16) NOT NULL,
  turn_order INT UNSIGNED NOT NULL,
  character_id BINARY(16) NULL,
  text TEXT NOT NULL,
  translation_hint TEXT NULL,
  metadata JSON NOT NULL DEFAULT (JSON_OBJECT()),
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (id),
  UNIQUE KEY uq_dialogue_turns_order (dialogue_version_id, turn_order),
  KEY idx_dialogue_turns_character (character_id),
  CONSTRAINT chk_dialogue_turns_order CHECK (turn_order > 0),
  CONSTRAINT fk_dialogue_turns_version
    FOREIGN KEY (dialogue_version_id) REFERENCES dialogue_versions(id) ON DELETE CASCADE,
  CONSTRAINT fk_dialogue_turns_character
    FOREIGN KEY (character_id) REFERENCES characters(id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE lessons (
  id BINARY(16) NOT NULL DEFAULT (UUID_TO_BIN(UUID(), 1)),
  slug VARCHAR(180) NOT NULL,
  target_language_id BINARY(16) NOT NULL,
  cefr_level_id SMALLINT UNSIGNED NOT NULL,
  topic_id BINARY(16) NULL,
  title TEXT NOT NULL,
  objective TEXT NULL,
  estimated_minutes SMALLINT UNSIGNED NULL,
  sort_order INT NOT NULL DEFAULT 0,
  status ENUM('generated','validated','approved','rejected','archived') NOT NULL DEFAULT 'generated',
  metadata JSON NOT NULL DEFAULT (JSON_OBJECT()),
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (id),
  UNIQUE KEY uq_lessons_slug (slug),
  KEY idx_lessons_path (target_language_id, cefr_level_id, sort_order),
  KEY idx_lessons_topic (topic_id),
  CONSTRAINT chk_lessons_estimated_minutes CHECK (estimated_minutes IS NULL OR estimated_minutes > 0),
  CONSTRAINT fk_lessons_language
    FOREIGN KEY (target_language_id) REFERENCES languages(id) ON DELETE CASCADE,
  CONSTRAINT fk_lessons_cefr
    FOREIGN KEY (cefr_level_id) REFERENCES cefr_levels(id),
  CONSTRAINT fk_lessons_topic
    FOREIGN KEY (topic_id) REFERENCES topics(id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE lesson_items (
  id BINARY(16) NOT NULL DEFAULT (UUID_TO_BIN(UUID(), 1)),
  lesson_id BINARY(16) NOT NULL,
  item_order INT UNSIGNED NOT NULL,
  concept_id BINARY(16) NULL,
  utterance_id BINARY(16) NULL,
  dialogue_id BINARY(16) NULL,
  grammar_point_id BINARY(16) NULL,
  metadata JSON NOT NULL DEFAULT (JSON_OBJECT()),
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (id),
  UNIQUE KEY uq_lesson_items_order (lesson_id, item_order),
  KEY idx_lesson_items_concept (concept_id),
  KEY idx_lesson_items_utterance (utterance_id),
  KEY idx_lesson_items_dialogue (dialogue_id),
  KEY idx_lesson_items_grammar (grammar_point_id),
  CONSTRAINT chk_lesson_items_order CHECK (item_order > 0),
  CONSTRAINT fk_lesson_items_lesson
    FOREIGN KEY (lesson_id) REFERENCES lessons(id) ON DELETE CASCADE,
  CONSTRAINT fk_lesson_items_concept
    FOREIGN KEY (concept_id) REFERENCES concepts(id),
  CONSTRAINT fk_lesson_items_utterance
    FOREIGN KEY (utterance_id) REFERENCES utterances(id),
  CONSTRAINT fk_lesson_items_dialogue
    FOREIGN KEY (dialogue_id) REFERENCES dialogues(id),
  CONSTRAINT fk_lesson_items_grammar
    FOREIGN KEY (grammar_point_id) REFERENCES grammar_points(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- MySQL does not permit CHECK constraints to depend on FK columns that use
-- referential actions. The application/content pipeline must enforce that
-- exactly one of concept_id, utterance_id, dialogue_id, grammar_point_id is set.

CREATE TABLE exercises (
  id BINARY(16) NOT NULL DEFAULT (UUID_TO_BIN(UUID(), 1)),
  lesson_item_id BINARY(16) NULL,
  exercise_type ENUM(
    'dialogue_comprehension',
    'listening',
    'speaking',
    'sentence_building',
    'translation',
    'fill_blank',
    'multiple_choice'
  ) NOT NULL,
  instruction_language_id BINARY(16) NULL,
  prompt JSON NOT NULL,
  answer JSON NOT NULL,
  difficulty TINYINT UNSIGNED NULL,
  status ENUM('generated','validated','approved','rejected','archived') NOT NULL DEFAULT 'generated',
  metadata JSON NOT NULL DEFAULT (JSON_OBJECT()),
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (id),
  KEY idx_exercises_lesson_item (lesson_item_id),
  KEY idx_exercises_instruction_language (instruction_language_id),
  KEY idx_exercises_type_status (exercise_type, status),
  CONSTRAINT chk_exercises_difficulty CHECK (difficulty IS NULL OR difficulty BETWEEN 1 AND 5),
  CONSTRAINT fk_exercises_lesson_item
    FOREIGN KEY (lesson_item_id) REFERENCES lesson_items(id) ON DELETE CASCADE,
  CONSTRAINT fk_exercises_instruction_language
    FOREIGN KEY (instruction_language_id) REFERENCES languages(id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE exercise_options (
  id BINARY(16) NOT NULL DEFAULT (UUID_TO_BIN(UUID(), 1)),
  exercise_id BINARY(16) NOT NULL,
  option_order INT UNSIGNED NOT NULL,
  value JSON NOT NULL,
  is_correct BOOLEAN NOT NULL DEFAULT FALSE,
  PRIMARY KEY (id),
  UNIQUE KEY uq_exercise_options_order (exercise_id, option_order),
  CONSTRAINT fk_exercise_options_exercise
    FOREIGN KEY (exercise_id) REFERENCES exercises(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE audio_assets (
  id BINARY(16) NOT NULL DEFAULT (UUID_TO_BIN(UUID(), 1)),
  language_id BINARY(16) NOT NULL,
  entity_type VARCHAR(40) NOT NULL,
  entity_id BINARY(16) NOT NULL,
  voice_key VARCHAR(120) NULL,
  provider VARCHAR(80) NULL,
  storage_url TEXT NOT NULL,
  duration_ms INT UNSIGNED NULL,
  checksum VARCHAR(128) NULL,
  status ENUM('generated','validated','approved','rejected','archived') NOT NULL DEFAULT 'generated',
  metadata JSON NOT NULL DEFAULT (JSON_OBJECT()),
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (id),
  KEY idx_audio_assets_language (language_id),
  KEY idx_audio_assets_entity (entity_type, entity_id),
  CONSTRAINT fk_audio_assets_language
    FOREIGN KEY (language_id) REFERENCES languages(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Staging area: generators never write directly into canonical production tables.
CREATE TABLE generation_jobs (
  id BINARY(16) NOT NULL DEFAULT (UUID_TO_BIN(UUID(), 1)),
  job_type VARCHAR(80) NOT NULL,
  target_language_id BINARY(16) NULL,
  cefr_level_id SMALLINT UNSIGNED NULL,
  parameters JSON NOT NULL DEFAULT (JSON_OBJECT()),
  status VARCHAR(30) NOT NULL DEFAULT 'pending',
  stats JSON NOT NULL DEFAULT (JSON_OBJECT()),
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  started_at DATETIME(6) NULL,
  completed_at DATETIME(6) NULL,
  PRIMARY KEY (id),
  KEY idx_generation_jobs_language (target_language_id),
  KEY idx_generation_jobs_cefr (cefr_level_id),
  CONSTRAINT fk_generation_jobs_language
    FOREIGN KEY (target_language_id) REFERENCES languages(id) ON DELETE SET NULL,
  CONSTRAINT fk_generation_jobs_cefr
    FOREIGN KEY (cefr_level_id) REFERENCES cefr_levels(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE generated_content (
  id BINARY(16) NOT NULL DEFAULT (UUID_TO_BIN(UUID(), 1)),
  generation_job_id BINARY(16) NULL,
  content_kind VARCHAR(60) NOT NULL,
  payload JSON NOT NULL,
  fingerprint CHAR(64) CHARACTER SET ascii COLLATE ascii_bin NULL,
  status ENUM('generated','validated','approved','rejected','archived') NOT NULL DEFAULT 'generated',
  validation_results JSON NOT NULL DEFAULT (JSON_OBJECT()),
  canonical_entity_type VARCHAR(60) NULL,
  canonical_entity_id BINARY(16) NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (id),
  UNIQUE KEY uq_generated_content_fingerprint (fingerprint),
  KEY idx_generated_content_job (generation_job_id),
  KEY idx_generated_content_status_kind (status, content_kind),
  CONSTRAINT fk_generated_content_job
    FOREIGN KEY (generation_job_id) REFERENCES generation_jobs(id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- MySQL UNIQUE indexes permit multiple NULL values, so the nullable unique
-- fingerprint preserves the PostgreSQL partial-index behavior.

CREATE TABLE content_reviews (
  id BINARY(16) NOT NULL DEFAULT (UUID_TO_BIN(UUID(), 1)),
  generated_content_id BINARY(16) NOT NULL,
  reviewer_type ENUM('rule','ai','human') NOT NULL,
  reviewer_key VARCHAR(120) NULL,
  decision ENUM('pass','fail','needs_revision') NOT NULL,
  score DECIMAL(5,2) NULL,
  findings JSON NOT NULL DEFAULT (JSON_ARRAY()),
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (id),
  KEY idx_content_reviews_content (generated_content_id),
  CONSTRAINT fk_content_reviews_generated_content
    FOREIGN KEY (generated_content_id) REFERENCES generated_content(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

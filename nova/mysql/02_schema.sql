-- ===============================================================
-- NOVA CONTENT SYSTEM v1 — CORE SCHEMA
-- English -> Persian pilot first; language-agnostic structure retained.
-- Content authoring source is canonical JSON, not SQL.
-- ===============================================================
SET NAMES utf8mb4;

CREATE TABLE courses (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  course_key VARCHAR(64) NOT NULL,
  learning_language VARCHAR(16) NOT NULL,
  base_language VARCHAR(16) NOT NULL,
  title VARCHAR(180) NOT NULL,
  title_translation VARCHAR(180) NOT NULL,
  description TEXT NULL,
  description_translation TEXT NULL,
  status ENUM('planned','active','complete','archived') NOT NULL DEFAULT 'planned',
  metadata JSON NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY uq_courses_key (course_key),
  UNIQUE KEY uq_courses_language_pair (learning_language,base_language)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE levels (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  course_id BIGINT UNSIGNED NOT NULL,
  cefr_level VARCHAR(8) NOT NULL,
  title VARCHAR(180) NOT NULL,
  title_translation VARCHAR(180) NOT NULL,
  description TEXT NULL,
  description_translation TEXT NULL,
  sort_order INT UNSIGNED NOT NULL,
  status ENUM('planned','active','complete','archived') NOT NULL DEFAULT 'planned',
  metadata JSON NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY uq_levels_course_cefr (course_id,cefr_level),
  UNIQUE KEY uq_levels_course_order (course_id,sort_order),
  CONSTRAINT fk_levels_course FOREIGN KEY(course_id) REFERENCES courses(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE modules (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  level_id BIGINT UNSIGNED NOT NULL,
  module_key VARCHAR(96) NOT NULL,
  title VARCHAR(180) NOT NULL,
  title_translation VARCHAR(180) NOT NULL,
  description TEXT NULL,
  description_translation TEXT NULL,
  emoji VARCHAR(32) NULL,
  sort_order INT UNSIGNED NOT NULL,
  status ENUM('planned','active','complete','archived') NOT NULL DEFAULT 'planned',
  metadata JSON NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY uq_modules_level_key (level_id,module_key),
  UNIQUE KEY uq_modules_level_order (level_id,sort_order),
  CONSTRAINT fk_modules_level FOREIGN KEY(level_id) REFERENCES levels(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE chapters (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  module_id BIGINT UNSIGNED NOT NULL,
  chapter_key VARCHAR(96) NOT NULL,
  course_sequence INT UNSIGNED NOT NULL,
  title VARCHAR(180) NOT NULL,
  title_translation VARCHAR(180) NOT NULL,
  description TEXT NULL,
  description_translation TEXT NULL,
  primary_outcome_key VARCHAR(255) NOT NULL,
  source_hash CHAR(64) NOT NULL,
  sort_order INT UNSIGNED NOT NULL,
  status ENUM('planned','draft','validated','complete','archived') NOT NULL DEFAULT 'planned',
  metadata JSON NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY uq_chapters_key (chapter_key),
  UNIQUE KEY uq_chapters_module_order (module_id,sort_order),
  KEY idx_chapters_course_sequence (course_sequence),
  KEY idx_chapters_primary_outcome (primary_outcome_key),
  CONSTRAINT fk_chapters_module FOREIGN KEY(module_id) REFERENCES modules(id) ON DELETE CASCADE,
  CONSTRAINT chk_chapters_source_hash CHECK (source_hash REGEXP '^[0-9a-f]{64}$')
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE characters (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  course_id BIGINT UNSIGNED NOT NULL,
  character_key VARCHAR(96) NOT NULL,
  name VARCHAR(120) NOT NULL,
  gender ENUM('female','male','nonbinary','unspecified') NOT NULL DEFAULT 'unspecified',
  avatar_url VARCHAR(1024) NULL,
  voice_key VARCHAR(128) NULL,
  profile JSON NULL,
  metadata JSON NULL,
  is_active TINYINT(1) NOT NULL DEFAULT 1,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY uq_characters_course_key (course_id,character_key),
  KEY idx_characters_course_name (course_id,name),
  CONSTRAINT fk_characters_course FOREIGN KEY(course_id) REFERENCES courses(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE lessons (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  chapter_id BIGINT UNSIGNED NOT NULL,
  lesson_key VARCHAR(32) NOT NULL,
  interlocutor_character_id BIGINT UNSIGNED NULL,
  title VARCHAR(180) NOT NULL,
  title_translation VARCHAR(180) NOT NULL,
  description TEXT NULL,
  description_translation TEXT NULL,
  lesson_type ENUM('dialogue','scenario','listening','reading','practice','review','mixed') NOT NULL,
  estimated_duration_sec INT UNSIGNED NULL,
  sort_order INT UNSIGNED NOT NULL,
  status ENUM('draft','validated','published','archived') NOT NULL DEFAULT 'draft',
  metadata JSON NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY uq_lessons_chapter_key (chapter_id,lesson_key),
  UNIQUE KEY uq_lessons_chapter_order (chapter_id,sort_order),
  CONSTRAINT fk_lessons_chapter FOREIGN KEY(chapter_id) REFERENCES chapters(id) ON DELETE CASCADE,
  CONSTRAINT fk_lessons_interlocutor FOREIGN KEY(interlocutor_character_id) REFERENCES characters(id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE words (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  course_id BIGINT UNSIGNED NOT NULL,
  word_key VARCHAR(255) NOT NULL,
  lemma VARCHAR(180) NOT NULL,
  display_form VARCHAR(80) NOT NULL,
  part_of_speech VARCHAR(48) NOT NULL,
  sense_key VARCHAR(120) NOT NULL,
  translation VARCHAR(500) NOT NULL,
  grammar JSON NULL,
  example_text TEXT NULL,
  example_translation TEXT NULL,
  audio_url VARCHAR(1024) NULL,
  audio_duration_ms INT UNSIGNED NULL,
  metadata JSON NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY uq_words_course_key (course_id,word_key),
  KEY idx_words_course_lemma (course_id,lemma),
  KEY idx_words_course_form (course_id,display_form),
  CONSTRAINT fk_words_course FOREIGN KEY(course_id) REFERENCES courses(id) ON DELETE CASCADE,
  CONSTRAINT chk_words_single_token CHECK (
    CHAR_LENGTH(TRIM(display_form)) > 0
    AND display_form = TRIM(display_form)
    AND display_form NOT REGEXP '[[:space:]]'
  )
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE turns (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  lesson_id BIGINT UNSIGNED NOT NULL,
  turn_key VARCHAR(32) NOT NULL,
  character_id BIGINT UNSIGNED NULL,
  sort_order INT UNSIGNED NOT NULL,
  role ENUM('character','learner','system') NOT NULL,
  text TEXT NOT NULL,
  translation TEXT NOT NULL,
  audio_url VARCHAR(1024) NULL,
  audio_duration_ms INT UNSIGNED NULL,
  speech_target TEXT NULL,
  speech_alternatives JSON NULL,
  tokens JSON NULL COMMENT 'Derived from canonical Turn text; never independently authored',
  metadata JSON NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY uq_turns_lesson_key (lesson_id,turn_key),
  UNIQUE KEY uq_turns_lesson_order (lesson_id,sort_order),
  CONSTRAINT fk_turns_lesson FOREIGN KEY(lesson_id) REFERENCES lessons(id) ON DELETE CASCADE,
  CONSTRAINT fk_turns_character FOREIGN KEY(character_id) REFERENCES characters(id) ON DELETE SET NULL,
  CONSTRAINT chk_turn_character_role CHECK (
    (role='character' AND character_id IS NOT NULL)
    OR (role IN ('learner','system') AND character_id IS NULL)
  )
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE lesson_words (
  lesson_id BIGINT UNSIGNED NOT NULL,
  word_id BIGINT UNSIGNED NOT NULL,
  learning_role ENUM('target','review','support','incidental') NOT NULL,
  exposure_count INT UNSIGNED NOT NULL DEFAULT 1,
  metadata JSON NULL,
  PRIMARY KEY(lesson_id,word_id),
  KEY idx_lesson_words_role (lesson_id,learning_role),
  CONSTRAINT fk_lesson_words_lesson FOREIGN KEY(lesson_id) REFERENCES lessons(id) ON DELETE CASCADE,
  CONSTRAINT fk_lesson_words_word FOREIGN KEY(word_id) REFERENCES words(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE activities (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  lesson_id BIGINT UNSIGNED NOT NULL,
  activity_key VARCHAR(32) NOT NULL,
  activity_type ENUM(
    'listen','speak','meaning_choice','word_order','reading','writing',
    'pronunciation','unit_teach','response_choice'
  ) NOT NULL,
  purpose ENUM('exposure','noticing','supported','retrieval','transfer','mastery') NOT NULL,
  sort_order INT UNSIGNED NOT NULL,
  turn_id BIGINT UNSIGNED NULL,
  word_id BIGINT UNSIGNED NULL,
  prompt TEXT NULL,
  instruction TEXT NOT NULL,
  config JSON NULL,
  metadata JSON NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY uq_activities_lesson_key (lesson_id,activity_key),
  UNIQUE KEY uq_activities_lesson_order (lesson_id,sort_order),
  KEY idx_activities_type_purpose (activity_type,purpose),
  CONSTRAINT fk_activities_lesson FOREIGN KEY(lesson_id) REFERENCES lessons(id) ON DELETE CASCADE,
  CONSTRAINT fk_activities_turn FOREIGN KEY(turn_id) REFERENCES turns(id) ON DELETE SET NULL,
  CONSTRAINT fk_activities_word FOREIGN KEY(word_id) REFERENCES words(id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE VIEW v_lesson_turns AS
SELECT
  l.id AS lesson_id,
  l.lesson_key,
  t.id AS turn_id,
  t.turn_key,
  t.sort_order,
  t.role,
  t.character_id,
  c.name AS character_name,
  c.gender AS character_gender,
  t.text,
  t.translation,
  t.audio_url,
  t.speech_target,
  t.speech_alternatives,
  t.tokens
FROM lessons l
JOIN turns t ON t.lesson_id=l.id
LEFT JOIN characters c ON c.id=t.character_id;

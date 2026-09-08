-- ===============================================================
-- NOVA LESSON RUNTIME — CORE SCHEMA
-- Product model: Course -> Level -> Lesson -> Activity.
-- Rich curriculum/QA data stays in canonical source files, not runtime tables.
-- Deployment/test target: MySQL Server 9.0.1.
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
  level_key VARCHAR(64) NOT NULL,
  sort_order SMALLINT UNSIGNED NOT NULL,
  title VARCHAR(120) NOT NULL,
  title_translation VARCHAR(120) NOT NULL,
  standard_code VARCHAR(32) NULL,
  description TEXT NULL,
  status ENUM('planned','active','complete','archived') NOT NULL DEFAULT 'planned',
  metadata JSON NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY uq_levels_course_key (course_id,level_key),
  UNIQUE KEY uq_levels_course_order (course_id,sort_order),
  KEY idx_levels_course_status (course_id,status,sort_order),
  CONSTRAINT fk_levels_course FOREIGN KEY(course_id) REFERENCES courses(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE characters (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  course_id BIGINT UNSIGNED NOT NULL,
  character_key VARCHAR(96) NOT NULL,
  name VARCHAR(120) NOT NULL,
  gender ENUM('female','male','nonbinary','unspecified') NOT NULL DEFAULT 'unspecified',
  voice_key VARCHAR(128) NULL,
  avatar_url VARCHAR(1024) NULL,
  profile JSON NULL,
  is_active TINYINT(1) NOT NULL DEFAULT 1,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY uq_characters_course_key (course_id,character_key),
  CONSTRAINT fk_characters_course FOREIGN KEY(course_id) REFERENCES courses(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE lessons (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  level_id BIGINT UNSIGNED NOT NULL,
  lesson_key VARCHAR(96) NOT NULL,
  sort_order INT UNSIGNED NOT NULL,
  title VARCHAR(180) NOT NULL,
  title_translation VARCHAR(180) NOT NULL,
  description TEXT NULL,
  primary_outcome_key VARCHAR(255) NULL,
  estimated_duration_sec INT UNSIGNED NULL,
  source_hash CHAR(64) NOT NULL,
  status ENUM('draft','validated','published','archived') NOT NULL DEFAULT 'draft',
  metadata JSON NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY uq_lessons_key (lesson_key),
  UNIQUE KEY uq_lessons_level_order (level_id,sort_order),
  KEY idx_lessons_level_status (level_id,status,sort_order),
  CONSTRAINT fk_lessons_level FOREIGN KEY(level_id) REFERENCES levels(id) ON DELETE CASCADE,
  CONSTRAINT chk_lessons_source_hash CHECK (source_hash REGEXP '^[0-9a-f]{64}$')
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE lexical_items (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  course_id BIGINT UNSIGNED NOT NULL,
  lexical_key VARCHAR(255) NOT NULL,
  item_type ENUM('word','expression','phrasal_verb','formula','other') NOT NULL,
  display_form VARCHAR(255) NOT NULL,
  lemma VARCHAR(255) NULL,
  part_of_speech VARCHAR(64) NULL,
  sense_key VARCHAR(160) NULL,
  translation VARCHAR(500) NOT NULL,
  audio_url VARCHAR(1024) NULL,
  audio_duration_ms INT UNSIGNED NULL,
  metadata JSON NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY uq_lexical_items_course_key (course_id,lexical_key),
  KEY idx_lexical_items_course_form (course_id,display_form),
  CONSTRAINT fk_lexical_items_course FOREIGN KEY(course_id) REFERENCES courses(id) ON DELETE CASCADE,
  CONSTRAINT chk_lexical_display_form CHECK (CHAR_LENGTH(TRIM(display_form)) > 0 AND display_form = TRIM(display_form))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE lesson_lexical_items (
  lesson_id BIGINT UNSIGNED NOT NULL,
  lexical_item_id BIGINT UNSIGNED NOT NULL,
  learning_role ENUM('target','review','support','incidental') NOT NULL,
  sort_order SMALLINT UNSIGNED NOT NULL DEFAULT 1,
  metadata JSON NULL,
  PRIMARY KEY(lesson_id,lexical_item_id),
  KEY idx_lli_role (lesson_id,learning_role,sort_order),
  CONSTRAINT fk_lli_lesson FOREIGN KEY(lesson_id) REFERENCES lessons(id) ON DELETE CASCADE,
  CONSTRAINT fk_lli_item FOREIGN KEY(lexical_item_id) REFERENCES lexical_items(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE lesson_turns (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  lesson_id BIGINT UNSIGNED NOT NULL,
  turn_key VARCHAR(32) NOT NULL,
  sort_order SMALLINT UNSIGNED NOT NULL,
  role ENUM('character','learner','system') NOT NULL,
  character_id BIGINT UNSIGNED NULL,
  text TEXT NOT NULL,
  translation TEXT NOT NULL,
  audio_url VARCHAR(1024) NULL,
  audio_duration_ms INT UNSIGNED NULL,
  speech_target TEXT NULL,
  accepted_speech JSON NULL,
  tokens JSON NULL COMMENT 'Derived clickable-token data; canonical visible text remains lesson_turns.text',
  metadata JSON NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY uq_turns_lesson_key (lesson_id,turn_key),
  UNIQUE KEY uq_turns_lesson_order (lesson_id,sort_order),
  CONSTRAINT fk_turns_lesson FOREIGN KEY(lesson_id) REFERENCES lessons(id) ON DELETE CASCADE,
  CONSTRAINT fk_turns_character FOREIGN KEY(character_id) REFERENCES characters(id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- character/role consistency is enforced by canonical validation rather than a
-- DB CHECK because MySQL 9.0.1 rejects a CHECK on a column participating in a
-- foreign key referential action.

CREATE TABLE activities (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  lesson_id BIGINT UNSIGNED NOT NULL,
  activity_key VARCHAR(32) NOT NULL,
  sort_order SMALLINT UNSIGNED NOT NULL,
  activity_type ENUM(
    'dialogue','speak','sentence_order','fill_blank','comprehension',
    'listen','reading','pronunciation','writing','lexical_teach','response_choice'
  ) NOT NULL,
  instruction TEXT NULL,
  prompt TEXT NULL,
  config JSON NOT NULL,
  metadata JSON NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY uq_activities_lesson_key (lesson_id,activity_key),
  UNIQUE KEY uq_activities_lesson_order (lesson_id,sort_order),
  KEY idx_activities_type (activity_type),
  CONSTRAINT fk_activities_lesson FOREIGN KEY(lesson_id) REFERENCES lessons(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE VIEW v_lesson_payload AS
SELECT
  c.course_key,
  lv.level_key,
  lv.sort_order AS level_order,
  lv.title AS level_title,
  lv.title_translation AS level_title_translation,
  lv.standard_code AS level_standard_code,
  l.id AS lesson_id,
  l.lesson_key,
  l.sort_order AS lesson_order,
  l.title,
  l.title_translation,
  l.description,
  l.primary_outcome_key,
  l.estimated_duration_sec,
  l.source_hash,
  l.status,
  a.id AS activity_id,
  a.activity_key,
  a.sort_order AS activity_order,
  a.activity_type,
  a.instruction,
  a.prompt,
  a.config,
  a.metadata AS activity_metadata
FROM lessons l
JOIN levels lv ON lv.id=l.level_id
JOIN courses c ON c.id=lv.course_id
JOIN activities a ON a.lesson_id=l.id;

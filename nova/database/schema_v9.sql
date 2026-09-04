-- ===============================================================
-- NOVA DATABASE SCHEMA v9.0
-- Content engine only; no User/Progress tables yet.
-- ===============================================================
SET NAMES utf8mb4;

CREATE TABLE courses (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
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
  KEY idx_courses_language_pair (learning_language,base_language)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE levels (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  course_id BIGINT UNSIGNED NOT NULL,
  cefr_level VARCHAR(8) NOT NULL,
  title VARCHAR(180) NOT NULL,
  title_translation VARCHAR(180) NOT NULL,
  description TEXT NULL,
  description_translation TEXT NULL,
  difficulty_min TINYINT UNSIGNED NOT NULL,
  difficulty_max TINYINT UNSIGNED NOT NULL,
  sort_order INT UNSIGNED NOT NULL,
  status ENUM('planned','active','complete','archived') NOT NULL DEFAULT 'planned',
  metadata JSON NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY idx_levels_course_order (course_id,sort_order),
  CONSTRAINT fk_levels_course FOREIGN KEY(course_id) REFERENCES courses(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE modules (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  level_id BIGINT UNSIGNED NOT NULL,
  title VARCHAR(180) NOT NULL,
  title_translation VARCHAR(180) NOT NULL,
  description TEXT NULL,
  description_translation TEXT NULL,
  emoji VARCHAR(32) NULL,
  difficulty_min TINYINT UNSIGNED NOT NULL,
  difficulty_max TINYINT UNSIGNED NOT NULL,
  sort_order INT UNSIGNED NOT NULL,
  status ENUM('planned','active','complete','archived') NOT NULL DEFAULT 'planned',
  metadata JSON NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY idx_modules_level_order (level_id,sort_order),
  CONSTRAINT fk_modules_level FOREIGN KEY(level_id) REFERENCES levels(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE chapters (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  module_id BIGINT UNSIGNED NOT NULL,
  title VARCHAR(180) NOT NULL,
  title_translation VARCHAR(180) NOT NULL,
  description TEXT NULL,
  description_translation TEXT NULL,
  planned_lesson_count INT UNSIGNED NULL,
  difficulty_min TINYINT UNSIGNED NOT NULL,
  difficulty_max TINYINT UNSIGNED NOT NULL,
  sort_order INT UNSIGNED NOT NULL,
  status ENUM('planned','draft','validated','complete','archived') NOT NULL DEFAULT 'planned',
  metadata JSON NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY idx_chapters_module_order (module_id,sort_order),
  CONSTRAINT fk_chapters_module FOREIGN KEY(module_id) REFERENCES modules(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE characters (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  course_id BIGINT UNSIGNED NOT NULL,
  name VARCHAR(120) NOT NULL,
  gender ENUM('female','male','nonbinary','unspecified') NOT NULL DEFAULT 'unspecified',
  avatar_url VARCHAR(1024) NULL,
  voice_key VARCHAR(128) NULL,
  profile JSON NULL,
  metadata JSON NULL,
  is_active TINYINT(1) NOT NULL DEFAULT 1,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY idx_characters_course_name (course_id,name),
  CONSTRAINT fk_characters_course FOREIGN KEY(course_id) REFERENCES courses(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE lessons (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  chapter_id BIGINT UNSIGNED NOT NULL,
  prompt_character_id BIGINT UNSIGNED NOT NULL,
  learner_character_id BIGINT UNSIGNED NOT NULL,
  title VARCHAR(180) NOT NULL,
  title_translation VARCHAR(180) NOT NULL,
  description TEXT NULL,
  description_translation TEXT NULL,
  lesson_type ENUM('story') NOT NULL DEFAULT 'story',
  storyline_key VARCHAR(120) NULL,
  storyline_order INT UNSIGNED NULL,
  difficulty TINYINT UNSIGNED NOT NULL,
  estimated_duration_sec INT UNSIGNED NULL,
  sort_order INT UNSIGNED NOT NULL,
  status ENUM('draft','validated','published','archived') NOT NULL DEFAULT 'draft',
  metadata JSON NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY idx_lessons_chapter_order (chapter_id,sort_order),
  KEY idx_lessons_storyline (storyline_key,storyline_order),
  CONSTRAINT fk_lessons_chapter FOREIGN KEY(chapter_id) REFERENCES chapters(id) ON DELETE CASCADE,
  CONSTRAINT fk_lessons_prompt_character FOREIGN KEY(prompt_character_id) REFERENCES characters(id),
  CONSTRAINT fk_lessons_learner_character FOREIGN KEY(learner_character_id) REFERENCES characters(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE words (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  course_id BIGINT UNSIGNED NOT NULL,
  lemma VARCHAR(180) NOT NULL,
  display_form VARCHAR(180) NOT NULL,
  part_of_speech VARCHAR(48) NOT NULL,
  translation VARCHAR(255) NOT NULL,
  difficulty TINYINT UNSIGNED NOT NULL,
  grammar JSON NULL,
  distractors JSON NOT NULL,
  example_text TEXT NULL,
  example_translation TEXT NULL,
  audio_url VARCHAR(1024) NULL,
  audio_duration_ms INT UNSIGNED NULL,
  metadata JSON NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY idx_words_course_lemma (course_id,lemma),
  KEY idx_words_difficulty (course_id,difficulty),
  CONSTRAINT fk_words_course FOREIGN KEY(course_id) REFERENCES courses(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE turns (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  lesson_id BIGINT UNSIGNED NOT NULL,
  character_id BIGINT UNSIGNED NOT NULL,
  sort_order INT UNSIGNED NOT NULL,
  role ENUM('character','learner') NOT NULL,
  text TEXT NOT NULL,
  translation TEXT NOT NULL,
  difficulty TINYINT UNSIGNED NOT NULL,
  audio_url VARCHAR(1024) NULL,
  audio_duration_ms INT UNSIGNED NULL,
  speech_target TEXT NULL,
  speech_alternatives JSON NULL,
  tokens JSON NOT NULL,
  grammar_title VARCHAR(255) NULL,
  grammar_note TEXT NULL,
  grammar_data JSON NULL,
  metadata JSON NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY idx_turns_lesson_order (lesson_id,sort_order),
  CONSTRAINT fk_turns_lesson FOREIGN KEY(lesson_id) REFERENCES lessons(id) ON DELETE CASCADE,
  CONSTRAINT fk_turns_character FOREIGN KEY(character_id) REFERENCES characters(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE lesson_words (
  lesson_id BIGINT UNSIGNED NOT NULL,
  word_id BIGINT UNSIGNED NOT NULL,
  learning_role ENUM('new','review','passive') NOT NULL,
  is_target TINYINT(1) NOT NULL DEFAULT 0,
  exposure_count INT UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY(lesson_id,word_id),
  CONSTRAINT fk_lesson_words_lesson FOREIGN KEY(lesson_id) REFERENCES lessons(id) ON DELETE CASCADE,
  CONSTRAINT fk_lesson_words_word FOREIGN KEY(word_id) REFERENCES words(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE activities (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  lesson_id BIGINT UNSIGNED NOT NULL,
  activity_type ENUM('listen','speak','new_word','meaning_choice','reading_comprehension','word_order') NOT NULL,
  sort_order INT UNSIGNED NOT NULL,
  turn_id BIGINT UNSIGNED NULL,
  word_id BIGINT UNSIGNED NULL,
  prompt TEXT NULL,
  instruction TEXT NULL,
  difficulty TINYINT UNSIGNED NOT NULL,
  config JSON NULL,
  metadata JSON NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY idx_activities_lesson_order (lesson_id,sort_order),
  KEY idx_activities_type (activity_type),
  CONSTRAINT fk_activities_lesson FOREIGN KEY(lesson_id) REFERENCES lessons(id) ON DELETE CASCADE,
  CONSTRAINT fk_activities_turn FOREIGN KEY(turn_id) REFERENCES turns(id) ON DELETE SET NULL,
  CONSTRAINT fk_activities_word FOREIGN KEY(word_id) REFERENCES words(id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE VIEW v_lesson_story AS
SELECT
  l.id AS lesson_id,
  JSON_ARRAYAGG(JSON_OBJECT(
    'id',t.id,
    'sortOrder',t.sort_order,
    'role',t.role,
    'characterId',c.id,
    'characterName',c.name,
    'characterGender',c.gender,
    'text',t.text,
    'translation',t.translation,
    'audioUrl',t.audio_url,
    'speechTarget',t.speech_target,
    'tokens',t.tokens,
    'grammarTitle',t.grammar_title,
    'grammarNote',t.grammar_note
  )) AS story
FROM lessons l
JOIN turns t ON t.lesson_id=l.id
JOIN characters c ON c.id=t.character_id
GROUP BY l.id;
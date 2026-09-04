-- ============================================================================
-- NOVA DATABASE SCHEMA v9.1
-- MySQL 8.0.21+
--
-- Implementation-ready schema for:
--   1) language-agnostic course content,
--   2) deterministic lesson payloads,
--   3) content batch traceability, and
--   4) auth-provider-agnostic learner progress.
--
-- Existing v9 content INSERTs remain compatible: newly added content columns
-- are nullable or have defaults, and the original table/column names remain.
-- ============================================================================

SET NAMES utf8mb4 COLLATE utf8mb4_unicode_ci;
SET time_zone = '+00:00';

CREATE TABLE schema_versions (
  version VARCHAR(32) PRIMARY KEY,
  description VARCHAR(255) NOT NULL,
  applied_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE courses (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  course_key VARCHAR(64) NULL,
  learning_language VARCHAR(16) NOT NULL,
  base_language VARCHAR(16) NOT NULL,
  learning_locale VARCHAR(32) NULL,
  base_locale VARCHAR(32) NULL,
  learning_direction ENUM('ltr','rtl') NOT NULL DEFAULT 'ltr',
  base_direction ENUM('ltr','rtl') NOT NULL DEFAULT 'ltr',
  title VARCHAR(180) NOT NULL,
  title_translation VARCHAR(180) NOT NULL,
  description TEXT NULL,
  description_translation TEXT NULL,
  cover_image_url VARCHAR(1024) NULL,
  status ENUM('planned','active','complete','archived') NOT NULL DEFAULT 'planned',
  content_revision INT UNSIGNED NOT NULL DEFAULT 1,
  metadata JSON NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY uq_courses_key (course_key),
  UNIQUE KEY uq_courses_language_pair (learning_language,base_language),
  CONSTRAINT chk_courses_distinct_languages CHECK (learning_language <> base_language),
  CONSTRAINT chk_courses_metadata CHECK (metadata IS NULL OR JSON_TYPE(metadata) = 'OBJECT')
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE levels (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  course_id BIGINT UNSIGNED NOT NULL,
  level_key VARCHAR(32) NULL,
  cefr_level VARCHAR(8) NOT NULL,
  title VARCHAR(180) NOT NULL,
  title_translation VARCHAR(180) NOT NULL,
  description TEXT NULL,
  description_translation TEXT NULL,
  cover_image_url VARCHAR(1024) NULL,
  difficulty_min TINYINT UNSIGNED NOT NULL,
  difficulty_max TINYINT UNSIGNED NOT NULL,
  sort_order INT UNSIGNED NOT NULL,
  status ENUM('planned','active','complete','archived') NOT NULL DEFAULT 'planned',
  metadata JSON NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY uq_levels_course_cefr (course_id,cefr_level),
  UNIQUE KEY uq_levels_course_order (course_id,sort_order),
  UNIQUE KEY uq_levels_course_key (course_id,level_key),
  CONSTRAINT chk_levels_difficulty CHECK (difficulty_min <= difficulty_max),
  CONSTRAINT chk_levels_sort_order CHECK (sort_order > 0),
  CONSTRAINT chk_levels_metadata CHECK (metadata IS NULL OR JSON_TYPE(metadata) = 'OBJECT'),
  CONSTRAINT fk_levels_course FOREIGN KEY(course_id) REFERENCES courses(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE modules (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  level_id BIGINT UNSIGNED NOT NULL,
  module_key VARCHAR(64) NULL,
  title VARCHAR(180) NOT NULL,
  title_translation VARCHAR(180) NOT NULL,
  description TEXT NULL,
  description_translation TEXT NULL,
  emoji VARCHAR(32) NULL,
  cover_image_url VARCHAR(1024) NULL,
  planned_chapter_count INT UNSIGNED NULL,
  difficulty_min TINYINT UNSIGNED NOT NULL,
  difficulty_max TINYINT UNSIGNED NOT NULL,
  sort_order INT UNSIGNED NOT NULL,
  status ENUM('planned','active','complete','archived') NOT NULL DEFAULT 'planned',
  metadata JSON NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY uq_modules_level_order (level_id,sort_order),
  UNIQUE KEY uq_modules_level_key (level_id,module_key),
  CONSTRAINT chk_modules_difficulty CHECK (difficulty_min <= difficulty_max),
  CONSTRAINT chk_modules_sort_order CHECK (sort_order > 0),
  CONSTRAINT chk_modules_planned_count CHECK (planned_chapter_count IS NULL OR planned_chapter_count > 0),
  CONSTRAINT chk_modules_metadata CHECK (metadata IS NULL OR JSON_TYPE(metadata) = 'OBJECT'),
  CONSTRAINT fk_modules_level FOREIGN KEY(level_id) REFERENCES levels(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE content_batches (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  level_id BIGINT UNSIGNED NOT NULL,
  batch_number TINYINT UNSIGNED NOT NULL,
  chapter_order_from INT UNSIGNED NOT NULL,
  chapter_order_to INT UNSIGNED NOT NULL,
  series_from INT UNSIGNED NOT NULL,
  series_to INT UNSIGNED NOT NULL,
  artifact_name VARCHAR(255) NOT NULL,
  artifact_sha256 CHAR(64) NULL,
  source_commit_sha CHAR(40) NULL,
  status ENUM('planned','generating','qa_pending','validated','published','failed','archived') NOT NULL DEFAULT 'planned',
  qa_report JSON NULL,
  published_at TIMESTAMP NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY uq_content_batches_level_number (level_id,batch_number),
  UNIQUE KEY uq_content_batches_level_artifact (level_id,artifact_name),
  KEY idx_content_batches_status (level_id,status),
  CONSTRAINT chk_content_batches_number CHECK (batch_number > 0),
  CONSTRAINT chk_content_batches_chapter_range CHECK (chapter_order_from > 0 AND chapter_order_from <= chapter_order_to),
  CONSTRAINT chk_content_batches_series_range CHECK (series_from > 0 AND series_from <= series_to),
  CONSTRAINT chk_content_batches_sha256 CHECK (artifact_sha256 IS NULL OR artifact_sha256 REGEXP '^[0-9a-f]{64}$'),
  CONSTRAINT chk_content_batches_commit CHECK (source_commit_sha IS NULL OR source_commit_sha REGEXP '^[0-9a-f]{40}$'),
  CONSTRAINT chk_content_batches_qa CHECK (qa_report IS NULL OR JSON_TYPE(qa_report) = 'OBJECT'),
  CONSTRAINT fk_content_batches_level FOREIGN KEY(level_id) REFERENCES levels(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE chapters (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  module_id BIGINT UNSIGNED NOT NULL,
  batch_id BIGINT UNSIGNED NULL,
  chapter_key VARCHAR(96) NULL,
  series_number INT UNSIGNED NULL,
  global_sort_order INT UNSIGNED NULL,
  title VARCHAR(180) NOT NULL,
  title_translation VARCHAR(180) NOT NULL,
  description TEXT NULL,
  description_translation TEXT NULL,
  cover_image_url VARCHAR(1024) NULL,
  planned_lesson_count INT UNSIGNED NULL,
  estimated_duration_sec INT UNSIGNED NULL,
  difficulty_min TINYINT UNSIGNED NOT NULL,
  difficulty_max TINYINT UNSIGNED NOT NULL,
  sort_order INT UNSIGNED NOT NULL,
  status ENUM('planned','draft','validated','complete','archived') NOT NULL DEFAULT 'planned',
  published_at TIMESTAMP NULL,
  metadata JSON NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY uq_chapters_module_order (module_id,sort_order),
  UNIQUE KEY uq_chapters_module_key (module_id,chapter_key),
  UNIQUE KEY uq_chapters_batch_series (batch_id,series_number),
  KEY idx_chapters_series (series_number),
  KEY idx_chapters_global_order (global_sort_order),
  CONSTRAINT chk_chapters_difficulty CHECK (difficulty_min <= difficulty_max),
  CONSTRAINT chk_chapters_sort_order CHECK (sort_order > 0),
  CONSTRAINT chk_chapters_global_order CHECK (global_sort_order IS NULL OR global_sort_order > 0),
  CONSTRAINT chk_chapters_series CHECK (series_number IS NULL OR series_number > 0),
  CONSTRAINT chk_chapters_planned_count CHECK (planned_lesson_count IS NULL OR planned_lesson_count > 0),
  CONSTRAINT chk_chapters_metadata CHECK (metadata IS NULL OR JSON_TYPE(metadata) = 'OBJECT'),
  CONSTRAINT fk_chapters_module FOREIGN KEY(module_id) REFERENCES modules(id) ON DELETE CASCADE,
  CONSTRAINT fk_chapters_batch FOREIGN KEY(batch_id) REFERENCES content_batches(id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE characters (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  course_id BIGINT UNSIGNED NOT NULL,
  character_key VARCHAR(64) NULL,
  name VARCHAR(120) NOT NULL,
  name_translation VARCHAR(120) NULL,
  gender ENUM('female','male','nonbinary','unspecified') NOT NULL DEFAULT 'unspecified',
  avatar_url VARCHAR(1024) NULL,
  voice_key VARCHAR(128) NULL,
  profile JSON NULL,
  metadata JSON NULL,
  is_active TINYINT(1) NOT NULL DEFAULT 1,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY uq_characters_course_name (course_id,name),
  UNIQUE KEY uq_characters_course_key (course_id,character_key),
  CONSTRAINT chk_characters_profile CHECK (profile IS NULL OR JSON_TYPE(profile) = 'OBJECT'),
  CONSTRAINT chk_characters_metadata CHECK (metadata IS NULL OR JSON_TYPE(metadata) = 'OBJECT'),
  CONSTRAINT fk_characters_course FOREIGN KEY(course_id) REFERENCES courses(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE lessons (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  chapter_id BIGINT UNSIGNED NOT NULL,
  prompt_character_id BIGINT UNSIGNED NOT NULL,
  learner_character_id BIGINT UNSIGNED NOT NULL,
  lesson_key VARCHAR(96) NULL,
  title VARCHAR(180) NOT NULL,
  title_translation VARCHAR(180) NOT NULL,
  description TEXT NULL,
  description_translation TEXT NULL,
  learning_objective TEXT NULL,
  learning_objective_translation TEXT NULL,
  lesson_type ENUM('story') NOT NULL DEFAULT 'story',
  storyline_key VARCHAR(120) NULL,
  storyline_order INT UNSIGNED NULL,
  difficulty TINYINT UNSIGNED NOT NULL,
  estimated_duration_sec INT UNSIGNED NULL,
  full_audio_url VARCHAR(1024) NULL,
  full_audio_duration_ms INT UNSIGNED NULL,
  sort_order INT UNSIGNED NOT NULL,
  status ENUM('draft','validated','published','archived') NOT NULL DEFAULT 'draft',
  content_version INT UNSIGNED NOT NULL DEFAULT 1,
  content_hash CHAR(64) NULL,
  published_at TIMESTAMP NULL,
  metadata JSON NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY uq_lessons_chapter_order (chapter_id,sort_order),
  UNIQUE KEY uq_lessons_chapter_key (chapter_id,lesson_key),
  KEY idx_lessons_storyline (storyline_key,storyline_order),
  KEY idx_lessons_status (status),
  CONSTRAINT chk_lessons_characters CHECK (prompt_character_id <> learner_character_id),
  CONSTRAINT chk_lessons_sort_order CHECK (sort_order > 0),
  CONSTRAINT chk_lessons_storyline_pair CHECK (
    (storyline_key IS NULL AND storyline_order IS NULL)
    OR (storyline_key IS NOT NULL AND storyline_order IS NOT NULL AND storyline_order > 0)
  ),
  CONSTRAINT chk_lessons_content_hash CHECK (content_hash IS NULL OR content_hash REGEXP '^[0-9a-f]{64}$'),
  CONSTRAINT chk_lessons_metadata CHECK (metadata IS NULL OR JSON_TYPE(metadata) = 'OBJECT'),
  CONSTRAINT fk_lessons_chapter FOREIGN KEY(chapter_id) REFERENCES chapters(id) ON DELETE CASCADE,
  CONSTRAINT fk_lessons_prompt_character FOREIGN KEY(prompt_character_id) REFERENCES characters(id),
  CONSTRAINT fk_lessons_learner_character FOREIGN KEY(learner_character_id) REFERENCES characters(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE words (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  course_id BIGINT UNSIGNED NOT NULL,
  word_key VARCHAR(96) NULL,
  sense_key VARCHAR(64) NULL,
  lemma VARCHAR(255) NOT NULL,
  display_form VARCHAR(255) NOT NULL,
  part_of_speech VARCHAR(48) NOT NULL,
  translation VARCHAR(512) NOT NULL,
  pronunciation_hint VARCHAR(255) NULL,
  romanization VARCHAR(255) NULL,
  difficulty TINYINT UNSIGNED NOT NULL,
  grammar JSON NULL,
  distractors JSON NOT NULL,
  related_words JSON NULL,
  example_text TEXT NULL,
  example_translation TEXT NULL,
  audio_url VARCHAR(1024) NULL,
  audio_duration_ms INT UNSIGNED NULL,
  introduced_series INT UNSIGNED NULL,
  explicit_target_count INT UNSIGNED NOT NULL DEFAULT 0,
  first_target_series INT UNSIGNED NULL,
  last_target_series INT UNSIGNED NULL,
  metadata JSON NULL,
  is_active TINYINT(1) NOT NULL DEFAULT 1,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY uq_words_course_key (course_id,word_key),
  UNIQUE KEY uq_words_course_sense (course_id,lemma,part_of_speech,sense_key),
  KEY idx_words_course_lemma (course_id,lemma),
  KEY idx_words_course_display (course_id,display_form),
  KEY idx_words_difficulty (course_id,difficulty),
  KEY idx_words_target_history (course_id,explicit_target_count,last_target_series),
  CONSTRAINT chk_words_grammar CHECK (grammar IS NULL OR JSON_TYPE(grammar) = 'OBJECT'),
  CONSTRAINT chk_words_distractors CHECK (JSON_TYPE(distractors) = 'ARRAY'),
  CONSTRAINT chk_words_related CHECK (related_words IS NULL OR JSON_TYPE(related_words) = 'ARRAY'),
  CONSTRAINT chk_words_target_history CHECK (
    (explicit_target_count = 0 AND first_target_series IS NULL AND last_target_series IS NULL)
    OR (
      explicit_target_count > 0
      AND first_target_series IS NOT NULL
      AND last_target_series IS NOT NULL
      AND first_target_series <= last_target_series
    )
  ),
  CONSTRAINT fk_words_course FOREIGN KEY(course_id) REFERENCES courses(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE turns (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  lesson_id BIGINT UNSIGNED NOT NULL,
  character_id BIGINT UNSIGNED NOT NULL,
  turn_key VARCHAR(96) NULL,
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
  UNIQUE KEY uq_turns_lesson_order (lesson_id,sort_order),
  UNIQUE KEY uq_turns_lesson_key (lesson_id,turn_key),
  KEY idx_turns_character (character_id),
  KEY idx_turns_role (lesson_id,role),
  CONSTRAINT chk_turns_sort_order CHECK (sort_order > 0),
  CONSTRAINT chk_turns_speech_target CHECK (
    role = 'character' OR (speech_target IS NOT NULL AND CHAR_LENGTH(TRIM(speech_target)) > 0)
  ),
  CONSTRAINT chk_turns_speech_alternatives CHECK (
    speech_alternatives IS NULL OR JSON_TYPE(speech_alternatives) = 'ARRAY'
  ),
  CONSTRAINT chk_turns_tokens CHECK (JSON_TYPE(tokens) = 'ARRAY'),
  CONSTRAINT chk_turns_grammar_data CHECK (grammar_data IS NULL OR JSON_TYPE(grammar_data) = 'OBJECT'),
  CONSTRAINT chk_turns_metadata CHECK (metadata IS NULL OR JSON_TYPE(metadata) = 'OBJECT'),
  CONSTRAINT fk_turns_lesson FOREIGN KEY(lesson_id) REFERENCES lessons(id) ON DELETE CASCADE,
  CONSTRAINT fk_turns_character FOREIGN KEY(character_id) REFERENCES characters(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE lesson_words (
  lesson_id BIGINT UNSIGNED NOT NULL,
  word_id BIGINT UNSIGNED NOT NULL,
  sort_order INT UNSIGNED NOT NULL DEFAULT 0,
  learning_role ENUM('new','review','passive') NOT NULL,
  is_target TINYINT(1) NOT NULL DEFAULT 0,
  exposure_count INT UNSIGNED NOT NULL DEFAULT 1,
  metadata JSON NULL,
  PRIMARY KEY(lesson_id,word_id),
  KEY idx_lesson_words_order (lesson_id,sort_order,word_id),
  KEY idx_lesson_words_word (word_id,learning_role),
  CONSTRAINT chk_lesson_words_exposure CHECK (exposure_count > 0),
  CONSTRAINT chk_lesson_words_metadata CHECK (metadata IS NULL OR JSON_TYPE(metadata) = 'OBJECT'),
  CONSTRAINT fk_lesson_words_lesson FOREIGN KEY(lesson_id) REFERENCES lessons(id) ON DELETE CASCADE,
  CONSTRAINT fk_lesson_words_word FOREIGN KEY(word_id) REFERENCES words(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE activities (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  lesson_id BIGINT UNSIGNED NOT NULL,
  activity_key VARCHAR(96) NULL,
  activity_type ENUM('listen','speak','new_word','meaning_choice','reading_comprehension','word_order') NOT NULL,
  sort_order INT UNSIGNED NOT NULL,
  turn_id BIGINT UNSIGNED NULL,
  word_id BIGINT UNSIGNED NULL,
  prompt TEXT NULL,
  prompt_translation TEXT NULL,
  instruction TEXT NULL,
  instruction_translation TEXT NULL,
  difficulty TINYINT UNSIGNED NOT NULL,
  is_required TINYINT(1) NOT NULL DEFAULT 1,
  max_score DECIMAL(7,2) UNSIGNED NOT NULL DEFAULT 100.00,
  estimated_duration_sec INT UNSIGNED NULL,
  config JSON NULL,
  metadata JSON NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY uq_activities_lesson_order (lesson_id,sort_order),
  UNIQUE KEY uq_activities_lesson_key (lesson_id,activity_key),
  KEY idx_activities_type (activity_type),
  KEY idx_activities_turn (turn_id),
  KEY idx_activities_word (word_id),
  CONSTRAINT chk_activities_sort_order CHECK (sort_order > 0),
  CONSTRAINT chk_activities_score CHECK (max_score > 0),
  CONSTRAINT chk_activities_config CHECK (config IS NULL OR JSON_TYPE(config) = 'OBJECT'),
  CONSTRAINT chk_activities_metadata CHECK (metadata IS NULL OR JSON_TYPE(metadata) = 'OBJECT'),
  CONSTRAINT fk_activities_lesson FOREIGN KEY(lesson_id) REFERENCES lessons(id) ON DELETE CASCADE,
  CONSTRAINT fk_activities_turn FOREIGN KEY(turn_id) REFERENCES turns(id) ON DELETE SET NULL,
  CONSTRAINT fk_activities_word FOREIGN KEY(word_id) REFERENCES words(id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Authentication remains outside Nova. `external_subject` stores the stable ID
-- from any chosen authentication provider and never stores a password.
CREATE TABLE learners (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  auth_provider VARCHAR(64) NOT NULL DEFAULT 'external',
  external_subject VARCHAR(191) NOT NULL,
  display_name VARCHAR(120) NULL,
  ui_language VARCHAR(16) NOT NULL DEFAULT 'fa',
  timezone VARCHAR(64) NOT NULL DEFAULT 'UTC',
  status ENUM('active','disabled','deleted') NOT NULL DEFAULT 'active',
  preferences JSON NULL,
  last_seen_at TIMESTAMP NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY uq_learners_external_subject (auth_provider,external_subject),
  CONSTRAINT chk_learners_preferences CHECK (preferences IS NULL OR JSON_TYPE(preferences) = 'OBJECT')
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE course_enrollments (
  learner_id BIGINT UNSIGNED NOT NULL,
  course_id BIGINT UNSIGNED NOT NULL,
  current_lesson_id BIGINT UNSIGNED NULL,
  status ENUM('active','paused','complete') NOT NULL DEFAULT 'active',
  settings JSON NULL,
  started_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  completed_at TIMESTAMP NULL,
  last_activity_at TIMESTAMP NULL,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY(learner_id,course_id),
  KEY idx_course_enrollments_course (course_id,status),
  KEY idx_course_enrollments_current_lesson (current_lesson_id),
  CONSTRAINT chk_course_enrollments_settings CHECK (settings IS NULL OR JSON_TYPE(settings) = 'OBJECT'),
  CONSTRAINT fk_course_enrollments_learner FOREIGN KEY(learner_id) REFERENCES learners(id) ON DELETE CASCADE,
  CONSTRAINT fk_course_enrollments_course FOREIGN KEY(course_id) REFERENCES courses(id) ON DELETE CASCADE,
  CONSTRAINT fk_course_enrollments_lesson FOREIGN KEY(current_lesson_id) REFERENCES lessons(id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE lesson_sessions (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  session_key CHAR(36) NOT NULL,
  learner_id BIGINT UNSIGNED NOT NULL,
  lesson_id BIGINT UNSIGNED NOT NULL,
  current_activity_id BIGINT UNSIGNED NULL,
  status ENUM('in_progress','completed','abandoned') NOT NULL DEFAULT 'in_progress',
  score DECIMAL(9,2) UNSIGNED NULL,
  max_score DECIMAL(9,2) UNSIGNED NULL,
  client_state JSON NULL,
  started_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  last_activity_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  completed_at TIMESTAMP NULL,
  UNIQUE KEY uq_lesson_sessions_key (session_key),
  KEY idx_lesson_sessions_resume (learner_id,lesson_id,status,last_activity_at),
  KEY idx_lesson_sessions_activity (current_activity_id),
  CONSTRAINT chk_lesson_sessions_scores CHECK (
    (score IS NULL AND max_score IS NULL)
    OR (score IS NOT NULL AND max_score IS NOT NULL AND max_score > 0 AND score <= max_score)
  ),
  CONSTRAINT chk_lesson_sessions_state CHECK (client_state IS NULL OR JSON_TYPE(client_state) = 'OBJECT'),
  CONSTRAINT fk_lesson_sessions_learner FOREIGN KEY(learner_id) REFERENCES learners(id) ON DELETE CASCADE,
  CONSTRAINT fk_lesson_sessions_lesson FOREIGN KEY(lesson_id) REFERENCES lessons(id) ON DELETE CASCADE,
  CONSTRAINT fk_lesson_sessions_activity FOREIGN KEY(current_activity_id) REFERENCES activities(id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE lesson_progress (
  learner_id BIGINT UNSIGNED NOT NULL,
  lesson_id BIGINT UNSIGNED NOT NULL,
  last_session_id BIGINT UNSIGNED NULL,
  status ENUM('available','in_progress','completed') NOT NULL DEFAULT 'available',
  completion_percent DECIMAL(5,2) UNSIGNED NOT NULL DEFAULT 0.00,
  best_score_percent DECIMAL(5,2) UNSIGNED NULL,
  attempt_count INT UNSIGNED NOT NULL DEFAULT 0,
  started_at TIMESTAMP NULL,
  completed_at TIMESTAMP NULL,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY(learner_id,lesson_id),
  KEY idx_lesson_progress_lesson (lesson_id,status),
  KEY idx_lesson_progress_session (last_session_id),
  CONSTRAINT chk_lesson_progress_completion CHECK (completion_percent <= 100.00),
  CONSTRAINT chk_lesson_progress_score CHECK (best_score_percent IS NULL OR best_score_percent <= 100.00),
  CONSTRAINT fk_lesson_progress_learner FOREIGN KEY(learner_id) REFERENCES learners(id) ON DELETE CASCADE,
  CONSTRAINT fk_lesson_progress_lesson FOREIGN KEY(lesson_id) REFERENCES lessons(id) ON DELETE CASCADE,
  CONSTRAINT fk_lesson_progress_session FOREIGN KEY(last_session_id) REFERENCES lesson_sessions(id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE activity_attempts (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  session_id BIGINT UNSIGNED NOT NULL,
  learner_id BIGINT UNSIGNED NOT NULL,
  activity_id BIGINT UNSIGNED NOT NULL,
  attempt_number INT UNSIGNED NOT NULL,
  status ENUM('started','submitted','passed','failed','abandoned') NOT NULL DEFAULT 'started',
  response JSON NULL,
  transcript TEXT NULL,
  speech_confidence DECIMAL(6,5) UNSIGNED NULL,
  pronunciation_result JSON NULL,
  score DECIMAL(7,2) UNSIGNED NULL,
  max_score DECIMAL(7,2) UNSIGNED NULL,
  is_correct TINYINT(1) NULL,
  feedback JSON NULL,
  started_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  submitted_at TIMESTAMP NULL,
  metadata JSON NULL,
  UNIQUE KEY uq_activity_attempt_number (session_id,activity_id,attempt_number),
  KEY idx_activity_attempts_learner (learner_id,activity_id,started_at),
  KEY idx_activity_attempts_session (session_id,activity_id),
  KEY idx_activity_attempts_activity (activity_id,status),
  CONSTRAINT chk_activity_attempt_number CHECK (attempt_number > 0),
  CONSTRAINT chk_activity_attempt_score CHECK (
    (score IS NULL AND max_score IS NULL)
    OR (score IS NOT NULL AND max_score IS NOT NULL AND max_score > 0 AND score <= max_score)
  ),
  CONSTRAINT chk_activity_attempt_confidence CHECK (speech_confidence IS NULL OR speech_confidence <= 1.00000),
  CONSTRAINT chk_activity_attempt_response CHECK (response IS NULL OR JSON_TYPE(response) IN ('OBJECT','ARRAY')),
  CONSTRAINT chk_activity_attempt_pronunciation CHECK (pronunciation_result IS NULL OR JSON_TYPE(pronunciation_result) = 'OBJECT'),
  CONSTRAINT chk_activity_attempt_feedback CHECK (feedback IS NULL OR JSON_TYPE(feedback) = 'OBJECT'),
  CONSTRAINT chk_activity_attempt_metadata CHECK (metadata IS NULL OR JSON_TYPE(metadata) = 'OBJECT'),
  CONSTRAINT fk_activity_attempts_session FOREIGN KEY(session_id) REFERENCES lesson_sessions(id) ON DELETE CASCADE,
  CONSTRAINT fk_activity_attempts_learner FOREIGN KEY(learner_id) REFERENCES learners(id) ON DELETE CASCADE,
  CONSTRAINT fk_activity_attempts_activity FOREIGN KEY(activity_id) REFERENCES activities(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE word_progress (
  learner_id BIGINT UNSIGNED NOT NULL,
  word_id BIGINT UNSIGNED NOT NULL,
  status ENUM('new','learning','review','mastered') NOT NULL DEFAULT 'new',
  exposure_count INT UNSIGNED NOT NULL DEFAULT 0,
  correct_count INT UNSIGNED NOT NULL DEFAULT 0,
  incorrect_count INT UNSIGNED NOT NULL DEFAULT 0,
  mastery_score DECIMAL(6,5) UNSIGNED NOT NULL DEFAULT 0.00000,
  first_seen_at TIMESTAMP NULL,
  last_seen_at TIMESTAMP NULL,
  next_review_at TIMESTAMP NULL,
  metadata JSON NULL,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY(learner_id,word_id),
  KEY idx_word_progress_review (learner_id,status,next_review_at),
  KEY idx_word_progress_word (word_id,status),
  CONSTRAINT chk_word_progress_counts CHECK (correct_count + incorrect_count <= exposure_count),
  CONSTRAINT chk_word_progress_mastery CHECK (mastery_score <= 1.00000),
  CONSTRAINT chk_word_progress_metadata CHECK (metadata IS NULL OR JSON_TYPE(metadata) = 'OBJECT'),
  CONSTRAINT fk_word_progress_learner FOREIGN KEY(learner_id) REFERENCES learners(id) ON DELETE CASCADE,
  CONSTRAINT fk_word_progress_word FOREIGN KEY(word_id) REFERENCES words(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Flat, deterministic path used by catalog, unlock and resume queries.
CREATE VIEW v_lesson_path AS
SELECT
  c.id AS course_id,
  c.course_key,
  c.learning_language,
  c.base_language,
  lv.id AS level_id,
  lv.cefr_level,
  lv.title AS level_title,
  lv.title_translation AS level_title_translation,
  lv.sort_order AS level_order,
  m.id AS module_id,
  m.title AS module_title,
  m.title_translation AS module_title_translation,
  m.emoji AS module_emoji,
  m.sort_order AS module_order,
  ch.id AS chapter_id,
  ch.series_number,
  ch.title AS chapter_title,
  ch.title_translation AS chapter_title_translation,
  ch.sort_order AS chapter_order,
  ch.global_sort_order AS chapter_global_order,
  ch.status AS chapter_status,
  l.id AS lesson_id,
  l.title AS lesson_title,
  l.title_translation AS lesson_title_translation,
  l.difficulty,
  l.estimated_duration_sec,
  l.sort_order AS lesson_order,
  l.status AS lesson_status
FROM courses c
JOIN levels lv ON lv.course_id = c.id
JOIN modules m ON m.level_id = lv.id
JOIN chapters ch ON ch.module_id = m.id
JOIN lessons l ON l.chapter_id = ch.id;

-- Windowed JSON aggregation guarantees turn ordering on MySQL 8 without the
-- GROUP_CONCAT size/truncation risk of the previous view.
CREATE VIEW v_lesson_story AS
SELECT lesson_id, story
FROM (
  SELECT
    t.lesson_id,
    JSON_ARRAYAGG(
      JSON_OBJECT(
        'id',t.id,
        'sortOrder',t.sort_order,
        'role',t.role,
        'characterId',c.id,
        'characterName',c.name,
        'characterGender',c.gender,
        'text',t.text,
        'translation',t.translation,
        'difficulty',t.difficulty,
        'audioUrl',t.audio_url,
        'audioDurationMs',t.audio_duration_ms,
        'speechTarget',t.speech_target,
        'speechAlternatives',t.speech_alternatives,
        'tokens',t.tokens,
        'grammarTitle',t.grammar_title,
        'grammarNote',t.grammar_note,
        'grammarData',t.grammar_data
      )
    ) OVER (
      PARTITION BY t.lesson_id
      ORDER BY t.sort_order
      ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    ) AS story,
    ROW_NUMBER() OVER (PARTITION BY t.lesson_id ORDER BY t.sort_order,t.id) AS row_num
  FROM turns t
  JOIN characters c ON c.id = t.character_id
) ordered_story
WHERE row_num = 1;

CREATE VIEW v_lesson_activities AS
SELECT lesson_id, activities
FROM (
  SELECT
    a.lesson_id,
    JSON_ARRAYAGG(
      JSON_OBJECT(
        'id',a.id,
        'sortOrder',a.sort_order,
        'type',a.activity_type,
        'turnId',a.turn_id,
        'wordId',a.word_id,
        'prompt',a.prompt,
        'promptTranslation',a.prompt_translation,
        'instruction',a.instruction,
        'instructionTranslation',a.instruction_translation,
        'difficulty',a.difficulty,
        'required',a.is_required,
        'maxScore',a.max_score,
        'estimatedDurationSec',a.estimated_duration_sec,
        'config',a.config
      )
    ) OVER (
      PARTITION BY a.lesson_id
      ORDER BY a.sort_order
      ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    ) AS activities,
    ROW_NUMBER() OVER (PARTITION BY a.lesson_id ORDER BY a.sort_order,a.id) AS row_num
  FROM activities a
) ordered_activities
WHERE row_num = 1;

CREATE VIEW v_lesson_dictionary AS
SELECT lesson_id, dictionary
FROM (
  SELECT
    lw.lesson_id,
    JSON_ARRAYAGG(
      JSON_OBJECT(
        'id',w.id,
        'sortOrder',lw.sort_order,
        'learningRole',lw.learning_role,
        'isTarget',lw.is_target,
        'exposureCount',lw.exposure_count,
        'wordKey',w.word_key,
        'senseKey',w.sense_key,
        'lemma',w.lemma,
        'displayForm',w.display_form,
        'partOfSpeech',w.part_of_speech,
        'translation',w.translation,
        'pronunciationHint',w.pronunciation_hint,
        'romanization',w.romanization,
        'difficulty',w.difficulty,
        'grammar',w.grammar,
        'distractors',w.distractors,
        'relatedWords',w.related_words,
        'exampleText',w.example_text,
        'exampleTranslation',w.example_translation,
        'audioUrl',w.audio_url,
        'audioDurationMs',w.audio_duration_ms
      )
    ) OVER (
      PARTITION BY lw.lesson_id
      ORDER BY lw.sort_order,w.id
      ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    ) AS dictionary,
    ROW_NUMBER() OVER (PARTITION BY lw.lesson_id ORDER BY lw.sort_order,w.id) AS row_num
  FROM lesson_words lw
  JOIN words w ON w.id = lw.word_id
) ordered_dictionary
WHERE row_num = 1;

-- One row is the complete immutable lesson content payload needed by the app.
-- Learner state is deliberately queried separately so this view remains cacheable.
CREATE VIEW v_lesson_runtime AS
SELECT
  p.course_id,
  p.course_key,
  p.learning_language,
  p.base_language,
  p.level_id,
  p.cefr_level,
  p.level_title,
  p.level_title_translation,
  p.level_order,
  p.module_id,
  p.module_title,
  p.module_title_translation,
  p.module_emoji,
  p.module_order,
  p.chapter_id,
  p.series_number,
  p.chapter_title,
  p.chapter_title_translation,
  p.chapter_order,
  p.chapter_global_order,
  l.id AS lesson_id,
  l.lesson_key,
  l.title,
  l.title_translation,
  l.description,
  l.description_translation,
  l.learning_objective,
  l.learning_objective_translation,
  l.lesson_type,
  l.storyline_key,
  l.storyline_order,
  l.difficulty,
  l.estimated_duration_sec,
  l.full_audio_url,
  l.full_audio_duration_ms,
  l.sort_order,
  l.status,
  l.content_version,
  JSON_OBJECT(
    'id',pc.id,
    'key',pc.character_key,
    'name',pc.name,
    'nameTranslation',pc.name_translation,
    'gender',pc.gender,
    'avatarUrl',pc.avatar_url,
    'voiceKey',pc.voice_key
  ) AS prompt_character,
  JSON_OBJECT(
    'id',lc.id,
    'key',lc.character_key,
    'name',lc.name,
    'nameTranslation',lc.name_translation,
    'gender',lc.gender,
    'avatarUrl',lc.avatar_url,
    'voiceKey',lc.voice_key
  ) AS learner_character,
  COALESCE(s.story,JSON_ARRAY()) AS story,
  COALESCE(a.activities,JSON_ARRAY()) AS activities,
  COALESCE(d.dictionary,JSON_ARRAY()) AS dictionary
FROM v_lesson_path p
JOIN lessons l ON l.id = p.lesson_id
JOIN characters pc ON pc.id = l.prompt_character_id
JOIN characters lc ON lc.id = l.learner_character_id
LEFT JOIN v_lesson_story s ON s.lesson_id = l.id
LEFT JOIN v_lesson_activities a ON a.lesson_id = l.id
LEFT JOIN v_lesson_dictionary d ON d.lesson_id = l.id;

INSERT INTO schema_versions(version,description)
VALUES ('v9.1.0','Implementation-ready Nova v9 content, runtime and learner-progress schema');

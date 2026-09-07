-- ===============================================================
-- NOVA SEMANTIC LEARNING LAYER v10.2 / native-v3.2
-- Physical semantic objects use the sem_ prefix only.
-- No legacy compatibility views are created.
-- ===============================================================
SET NAMES utf8mb4;

ALTER TABLE activities
  MODIFY activity_type ENUM(
    'listen','speak','new_word','meaning_choice','reading_comprehension','word_order',
    'reading','writing','pronunciation','chunk'
  ) NOT NULL;

CREATE TABLE IF NOT EXISTS sem_learning_units (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  course_id BIGINT UNSIGNED NOT NULL,
  unit_type ENUM('word_sense','chunk','construction','grammar','pronunciation','can_do') NOT NULL,
  unit_key VARCHAR(255) NOT NULL,
  display_form VARCHAR(255) NOT NULL,
  translation VARCHAR(500) NULL,
  description_fa TEXT NULL,
  cefr_level VARCHAR(8) NOT NULL,
  difficulty TINYINT UNSIGNED NOT NULL DEFAULT 1,
  data JSON NULL,
  metadata JSON NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY uq_sem_learning_unit_course_key (course_id,unit_key),
  KEY idx_sem_learning_units_course_type (course_id,unit_type),
  KEY idx_sem_learning_units_course_level (course_id,cefr_level),
  CONSTRAINT fk_sem_learning_units_course FOREIGN KEY(course_id) REFERENCES courses(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS sem_learning_unit_words (
  learning_unit_id BIGINT UNSIGNED NOT NULL,
  word_id BIGINT UNSIGNED NOT NULL,
  sort_order INT UNSIGNED NOT NULL DEFAULT 1,
  component_role ENUM('head','component','optional','surface_example') NOT NULL DEFAULT 'component',
  metadata JSON NULL,
  PRIMARY KEY(learning_unit_id,word_id,sort_order),
  KEY idx_sem_learning_unit_words_word (word_id),
  CONSTRAINT fk_sem_luw_unit FOREIGN KEY(learning_unit_id) REFERENCES sem_learning_units(id) ON DELETE CASCADE,
  CONSTRAINT fk_sem_luw_word FOREIGN KEY(word_id) REFERENCES words(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS sem_lesson_learning_units (
  lesson_id BIGINT UNSIGNED NOT NULL,
  learning_unit_id BIGINT UNSIGNED NOT NULL,
  learning_role ENUM('new','review','passive','mastery') NOT NULL,
  is_target TINYINT(1) NOT NULL DEFAULT 0,
  exposure_count INT UNSIGNED NOT NULL DEFAULT 1,
  evidence_activity_ids JSON NULL,
  metadata JSON NULL,
  PRIMARY KEY(lesson_id,learning_unit_id),
  KEY idx_sem_lesson_learning_units_unit (learning_unit_id),
  CONSTRAINT fk_sem_llu_lesson FOREIGN KEY(lesson_id) REFERENCES lessons(id) ON DELETE CASCADE,
  CONSTRAINT fk_sem_llu_unit FOREIGN KEY(learning_unit_id) REFERENCES sem_learning_units(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS sem_turn_learning_units (
  turn_id BIGINT UNSIGNED NOT NULL,
  learning_unit_id BIGINT UNSIGNED NOT NULL,
  evidence_type ENUM('exposure','example','production','transfer','mastery') NOT NULL DEFAULT 'exposure',
  metadata JSON NULL,
  PRIMARY KEY(turn_id,learning_unit_id),
  KEY idx_sem_turn_learning_units_unit (learning_unit_id),
  CONSTRAINT fk_sem_tlu_turn FOREIGN KEY(turn_id) REFERENCES turns(id) ON DELETE CASCADE,
  CONSTRAINT fk_sem_tlu_unit FOREIGN KEY(learning_unit_id) REFERENCES sem_learning_units(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS sem_review_obligations (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  course_id BIGINT UNSIGNED NOT NULL,
  learning_unit_id BIGINT UNSIGNED NOT NULL,
  origin_chapter_id BIGINT UNSIGNED NOT NULL,
  due_series INT UNSIGNED NOT NULL,
  spacing_offset INT UNSIGNED NOT NULL,
  status ENUM('due','fulfilled','waived') NOT NULL DEFAULT 'due',
  fulfilled_chapter_id BIGINT UNSIGNED NULL,
  evidence_activity_id BIGINT UNSIGNED NULL,
  metadata JSON NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY uq_sem_review_obligation (learning_unit_id,origin_chapter_id,spacing_offset),
  KEY idx_sem_review_course_due (course_id,due_series,status),
  CONSTRAINT fk_sem_review_course FOREIGN KEY(course_id) REFERENCES courses(id) ON DELETE CASCADE,
  CONSTRAINT fk_sem_review_unit FOREIGN KEY(learning_unit_id) REFERENCES sem_learning_units(id) ON DELETE CASCADE,
  CONSTRAINT fk_sem_review_origin_chapter FOREIGN KEY(origin_chapter_id) REFERENCES chapters(id) ON DELETE CASCADE,
  CONSTRAINT fk_sem_review_fulfilled_chapter FOREIGN KEY(fulfilled_chapter_id) REFERENCES chapters(id) ON DELETE SET NULL,
  CONSTRAINT fk_sem_review_evidence_activity FOREIGN KEY(evidence_activity_id) REFERENCES activities(id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS sem_curriculum_outcomes (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  course_id BIGINT UNSIGNED NOT NULL,
  cefr_level VARCHAR(8) NOT NULL,
  outcome_key VARCHAR(255) NOT NULL,
  outcome_type ENUM('can_do','grammar','lexical','pronunciation','listening','reading','writing') NOT NULL,
  title VARCHAR(255) NOT NULL,
  description_fa TEXT NOT NULL,
  required TINYINT(1) NOT NULL DEFAULT 1,
  status ENUM('planned','in_progress','covered','mastered') NOT NULL DEFAULT 'planned',
  evidence JSON NULL,
  metadata JSON NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY uq_sem_curriculum_outcome (course_id,cefr_level,outcome_key),
  KEY idx_sem_curriculum_outcome_status (course_id,cefr_level,status),
  CONSTRAINT fk_sem_curriculum_outcomes_course FOREIGN KEY(course_id) REFERENCES courses(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE OR REPLACE VIEW sem_due_reviews AS
SELECT
  ro.id,
  ro.course_id,
  ro.learning_unit_id,
  lu.unit_type,
  lu.unit_key,
  lu.display_form,
  lu.translation,
  ro.due_series,
  ro.spacing_offset,
  ro.status
FROM sem_review_obligations ro
JOIN sem_learning_units lu ON lu.id=ro.learning_unit_id
WHERE ro.status='due';

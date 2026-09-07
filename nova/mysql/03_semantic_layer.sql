-- ===============================================================
-- NOVA CONTENT SYSTEM v1 — SEMANTIC LEARNING LAYER
-- Separates communicative outcomes from enabling language units.
-- ===============================================================
SET NAMES utf8mb4;

CREATE TABLE sem_learning_units (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  course_id BIGINT UNSIGNED NOT NULL,
  unit_type ENUM('word_sense','chunk','construction','grammar','pronunciation') NOT NULL,
  unit_key VARCHAR(255) NOT NULL,
  display_form VARCHAR(255) NOT NULL,
  translation VARCHAR(500) NULL,
  description_fa TEXT NULL,
  cefr_level VARCHAR(8) NOT NULL,
  data JSON NULL,
  metadata JSON NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY uq_sem_learning_unit_course_key (course_id,unit_key),
  KEY idx_sem_learning_units_course_type (course_id,unit_type),
  KEY idx_sem_learning_units_course_level (course_id,cefr_level),
  CONSTRAINT fk_sem_learning_units_course FOREIGN KEY(course_id) REFERENCES courses(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE sem_learning_unit_words (
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

CREATE TABLE sem_lesson_learning_units (
  lesson_id BIGINT UNSIGNED NOT NULL,
  learning_unit_id BIGINT UNSIGNED NOT NULL,
  learning_role ENUM('target','review','support','incidental') NOT NULL,
  evidence_activity_ids JSON NULL,
  metadata JSON NULL,
  PRIMARY KEY(lesson_id,learning_unit_id),
  KEY idx_sem_lesson_learning_units_unit (learning_unit_id),
  KEY idx_sem_lesson_learning_units_role (lesson_id,learning_role),
  CONSTRAINT fk_sem_llu_lesson FOREIGN KEY(lesson_id) REFERENCES lessons(id) ON DELETE CASCADE,
  CONSTRAINT fk_sem_llu_unit FOREIGN KEY(learning_unit_id) REFERENCES sem_learning_units(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE sem_turn_learning_units (
  turn_id BIGINT UNSIGNED NOT NULL,
  learning_unit_id BIGINT UNSIGNED NOT NULL,
  evidence_type ENUM('exposure','example','production','retrieval','transfer','mastery') NOT NULL DEFAULT 'exposure',
  metadata JSON NULL,
  PRIMARY KEY(turn_id,learning_unit_id,evidence_type),
  KEY idx_sem_turn_learning_units_unit (learning_unit_id),
  CONSTRAINT fk_sem_tlu_turn FOREIGN KEY(turn_id) REFERENCES turns(id) ON DELETE CASCADE,
  CONSTRAINT fk_sem_tlu_unit FOREIGN KEY(learning_unit_id) REFERENCES sem_learning_units(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE sem_curriculum_outcomes (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  course_id BIGINT UNSIGNED NOT NULL,
  cefr_level VARCHAR(8) NOT NULL,
  outcome_key VARCHAR(255) NOT NULL,
  mode ENUM('reception','interaction','production','mediation','strategy') NOT NULL,
  title_en VARCHAR(255) NOT NULL,
  can_do_fa TEXT NOT NULL,
  stage INT UNSIGNED NULL,
  required TINYINT(1) NOT NULL DEFAULT 1,
  status ENUM('planned','introduced','practiced','mastered','excluded') NOT NULL DEFAULT 'planned',
  prerequisite_outcome_keys JSON NULL,
  evidence JSON NULL,
  metadata JSON NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY uq_sem_curriculum_outcome (course_id,cefr_level,outcome_key),
  KEY idx_sem_curriculum_outcome_status (course_id,cefr_level,status),
  KEY idx_sem_curriculum_outcome_mode (course_id,cefr_level,mode),
  CONSTRAINT fk_sem_curriculum_outcomes_course FOREIGN KEY(course_id) REFERENCES courses(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE sem_chapter_outcomes (
  chapter_id BIGINT UNSIGNED NOT NULL,
  outcome_id BIGINT UNSIGNED NOT NULL,
  outcome_role ENUM('primary','reinforcement','prerequisite') NOT NULL,
  evidence_activity_ids JSON NULL,
  metadata JSON NULL,
  PRIMARY KEY(chapter_id,outcome_id,outcome_role),
  KEY idx_sem_chapter_outcomes_outcome (outcome_id),
  CONSTRAINT fk_sem_chapter_outcomes_chapter FOREIGN KEY(chapter_id) REFERENCES chapters(id) ON DELETE CASCADE,
  CONSTRAINT fk_sem_chapter_outcomes_outcome FOREIGN KEY(outcome_id) REFERENCES sem_curriculum_outcomes(id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE sem_review_obligations (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  course_id BIGINT UNSIGNED NOT NULL,
  learning_unit_id BIGINT UNSIGNED NOT NULL,
  origin_chapter_id BIGINT UNSIGNED NOT NULL,
  min_chapter_gap SMALLINT UNSIGNED NOT NULL,
  max_chapter_gap SMALLINT UNSIGNED NOT NULL,
  priority ENUM('core','high','normal') NOT NULL DEFAULT 'normal',
  status ENUM('open','fulfilled','waived') NOT NULL DEFAULT 'open',
  fulfilled_chapter_id BIGINT UNSIGNED NULL,
  evidence_activity_id BIGINT UNSIGNED NULL,
  metadata JSON NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY uq_sem_review_window (learning_unit_id,origin_chapter_id,min_chapter_gap,max_chapter_gap),
  KEY idx_sem_review_course_status (course_id,status,priority),
  CONSTRAINT fk_sem_review_course FOREIGN KEY(course_id) REFERENCES courses(id) ON DELETE CASCADE,
  CONSTRAINT fk_sem_review_unit FOREIGN KEY(learning_unit_id) REFERENCES sem_learning_units(id) ON DELETE CASCADE,
  CONSTRAINT fk_sem_review_origin_chapter FOREIGN KEY(origin_chapter_id) REFERENCES chapters(id) ON DELETE CASCADE,
  CONSTRAINT fk_sem_review_fulfilled_chapter FOREIGN KEY(fulfilled_chapter_id) REFERENCES chapters(id) ON DELETE SET NULL,
  CONSTRAINT fk_sem_review_evidence_activity FOREIGN KEY(evidence_activity_id) REFERENCES activities(id) ON DELETE SET NULL,
  CONSTRAINT chk_sem_review_window CHECK (min_chapter_gap >= 1 AND max_chapter_gap >= min_chapter_gap)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE VIEW sem_open_review_windows AS
SELECT
  ro.id,
  ro.course_id,
  ro.learning_unit_id,
  lu.unit_type,
  lu.unit_key,
  lu.display_form,
  lu.translation,
  ch.chapter_key AS origin_chapter_key,
  ch.course_sequence AS origin_sequence,
  ch.course_sequence + ro.min_chapter_gap AS not_before_sequence,
  ch.course_sequence + ro.max_chapter_gap AS due_by_sequence,
  ro.priority,
  ro.status
FROM sem_review_obligations ro
JOIN sem_learning_units lu ON lu.id=ro.learning_unit_id
JOIN chapters ch ON ch.id=ro.origin_chapter_id
WHERE ro.status='open';

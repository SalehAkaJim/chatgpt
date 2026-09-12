-- Curriculum layer
-- MySQL 9.0.1

CREATE TABLE curriculum_units (
  id BINARY(16) NOT NULL DEFAULT (UUID_TO_BIN(UUID(), 1)),
  target_language_id BINARY(16) NOT NULL,
  cefr_level_id SMALLINT UNSIGNED NOT NULL,
  skill_id BINARY(16) NULL,
  topic_id BINARY(16) NULL,
  slug VARCHAR(180) NOT NULL,
  title VARCHAR(220) NOT NULL,
  learning_objective TEXT NOT NULL,
  sort_order INT NOT NULL,
  expected_lessons SMALLINT UNSIGNED NOT NULL DEFAULT 1,
  metadata JSON NOT NULL DEFAULT (JSON_OBJECT()),
  status ENUM('generated','validated','approved','rejected','archived') NOT NULL DEFAULT 'generated',
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (id),
  UNIQUE KEY uq_curriculum_units_slug (target_language_id, cefr_level_id, slug),
  UNIQUE KEY uq_curriculum_units_order (target_language_id, cefr_level_id, sort_order),
  KEY idx_curriculum_path (target_language_id, cefr_level_id, sort_order),
  KEY idx_curriculum_units_skill (skill_id),
  KEY idx_curriculum_units_topic (topic_id),
  CONSTRAINT chk_curriculum_expected_lessons CHECK (expected_lessons > 0),
  CONSTRAINT fk_curriculum_units_language
    FOREIGN KEY (target_language_id) REFERENCES languages(id) ON DELETE CASCADE,
  CONSTRAINT fk_curriculum_units_cefr
    FOREIGN KEY (cefr_level_id) REFERENCES cefr_levels(id),
  CONSTRAINT fk_curriculum_units_skill
    FOREIGN KEY (skill_id) REFERENCES skills(id) ON DELETE SET NULL,
  CONSTRAINT fk_curriculum_units_topic
    FOREIGN KEY (topic_id) REFERENCES topics(id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

ALTER TABLE lessons
  ADD COLUMN curriculum_unit_id BINARY(16) NULL,
  ADD KEY idx_lessons_curriculum_unit (curriculum_unit_id, sort_order),
  ADD CONSTRAINT fk_lessons_curriculum_unit
    FOREIGN KEY (curriculum_unit_id) REFERENCES curriculum_units(id) ON DELETE SET NULL;

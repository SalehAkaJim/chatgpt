-- Curriculum layer

CREATE TABLE curriculum_units (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  target_language_id uuid NOT NULL REFERENCES languages(id) ON DELETE CASCADE,
  cefr_level_id smallint NOT NULL REFERENCES cefr_levels(id),
  skill_id uuid REFERENCES skills(id) ON DELETE SET NULL,
  topic_id uuid REFERENCES topics(id) ON DELETE SET NULL,
  slug varchar(180) NOT NULL,
  title varchar(220) NOT NULL,
  learning_objective text NOT NULL,
  sort_order integer NOT NULL,
  expected_lessons smallint NOT NULL DEFAULT 1 CHECK (expected_lessons > 0),
  metadata jsonb NOT NULL DEFAULT '{}'::jsonb,
  status content_status NOT NULL DEFAULT 'generated',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (target_language_id, cefr_level_id, slug),
  UNIQUE (target_language_id, cefr_level_id, sort_order)
);

ALTER TABLE lessons
  ADD COLUMN curriculum_unit_id uuid REFERENCES curriculum_units(id) ON DELETE SET NULL;

CREATE INDEX idx_curriculum_path
  ON curriculum_units(target_language_id, cefr_level_id, sort_order);

CREATE INDEX idx_lessons_curriculum_unit
  ON lessons(curriculum_unit_id, sort_order);

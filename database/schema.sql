-- Language Learning Core
-- PostgreSQL 16+

CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE TYPE content_status AS ENUM ('generated', 'validated', 'approved', 'rejected', 'archived');
CREATE TYPE exercise_type AS ENUM (
  'dialogue_comprehension',
  'listening',
  'speaking',
  'sentence_building',
  'translation',
  'fill_blank',
  'multiple_choice'
);

CREATE TABLE languages (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  code varchar(16) NOT NULL UNIQUE,
  name varchar(100) NOT NULL,
  native_name varchar(100) NOT NULL,
  script varchar(40),
  direction varchar(3) NOT NULL DEFAULT 'ltr' CHECK (direction IN ('ltr', 'rtl')),
  is_active boolean NOT NULL DEFAULT true,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE cefr_levels (
  id smallserial PRIMARY KEY,
  code varchar(2) NOT NULL UNIQUE CHECK (code IN ('A1','A2','B1','B2','C1','C2')),
  sort_order smallint NOT NULL UNIQUE,
  description text
);

CREATE TABLE skills (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  slug varchar(120) NOT NULL UNIQUE,
  name varchar(160) NOT NULL,
  description text,
  sort_order integer NOT NULL DEFAULT 0,
  created_at timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE topics (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  skill_id uuid REFERENCES skills(id) ON DELETE SET NULL,
  slug varchar(160) NOT NULL UNIQUE,
  name varchar(180) NOT NULL,
  description text,
  sort_order integer NOT NULL DEFAULT 0,
  created_at timestamptz NOT NULL DEFAULT now()
);

-- A concept is language-neutral semantic meaning such as airport, asking_for_the_bill,
-- present_perfect_experience, etc.
CREATE TABLE concepts (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  slug varchar(180) NOT NULL UNIQUE,
  concept_type varchar(40) NOT NULL DEFAULT 'lexical',
  cefr_level_id smallint REFERENCES cefr_levels(id),
  definition text,
  metadata jsonb NOT NULL DEFAULT '{}'::jsonb,
  status content_status NOT NULL DEFAULT 'generated',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE concept_topics (
  concept_id uuid NOT NULL REFERENCES concepts(id) ON DELETE CASCADE,
  topic_id uuid NOT NULL REFERENCES topics(id) ON DELETE CASCADE,
  PRIMARY KEY (concept_id, topic_id)
);

-- Localized lexical realization of a concept.
CREATE TABLE concept_terms (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  concept_id uuid NOT NULL REFERENCES concepts(id) ON DELETE CASCADE,
  language_id uuid NOT NULL REFERENCES languages(id) ON DELETE CASCADE,
  term text NOT NULL,
  normalized_term text,
  part_of_speech varchar(40),
  gender varchar(30),
  pronunciation text,
  transliteration text,
  notes text,
  is_primary boolean NOT NULL DEFAULT true,
  status content_status NOT NULL DEFAULT 'generated',
  metadata jsonb NOT NULL DEFAULT '{}'::jsonb,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (concept_id, language_id, term)
);

-- Language-neutral semantic unit. Each localization below can be natural rather than literal.
CREATE TABLE utterances (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  cefr_level_id smallint REFERENCES cefr_levels(id),
  topic_id uuid REFERENCES topics(id) ON DELETE SET NULL,
  intent varchar(120),
  meaning text,
  metadata jsonb NOT NULL DEFAULT '{}'::jsonb,
  status content_status NOT NULL DEFAULT 'generated',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE utterance_concepts (
  utterance_id uuid NOT NULL REFERENCES utterances(id) ON DELETE CASCADE,
  concept_id uuid NOT NULL REFERENCES concepts(id) ON DELETE CASCADE,
  PRIMARY KEY (utterance_id, concept_id)
);

CREATE TABLE utterance_texts (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  utterance_id uuid NOT NULL REFERENCES utterances(id) ON DELETE CASCADE,
  language_id uuid NOT NULL REFERENCES languages(id) ON DELETE CASCADE,
  text text NOT NULL,
  normalized_text text,
  register varchar(40) NOT NULL DEFAULT 'neutral',
  notes text,
  status content_status NOT NULL DEFAULT 'generated',
  metadata jsonb NOT NULL DEFAULT '{}'::jsonb,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (utterance_id, language_id, text)
);

CREATE TABLE grammar_points (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  slug varchar(180) NOT NULL UNIQUE,
  target_language_id uuid NOT NULL REFERENCES languages(id) ON DELETE CASCADE,
  cefr_level_id smallint REFERENCES cefr_levels(id),
  title text NOT NULL,
  rule_summary text,
  status content_status NOT NULL DEFAULT 'generated',
  metadata jsonb NOT NULL DEFAULT '{}'::jsonb,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE grammar_explanations (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  grammar_point_id uuid NOT NULL REFERENCES grammar_points(id) ON DELETE CASCADE,
  explanation_language_id uuid NOT NULL REFERENCES languages(id) ON DELETE CASCADE,
  explanation text NOT NULL,
  examples jsonb NOT NULL DEFAULT '[]'::jsonb,
  status content_status NOT NULL DEFAULT 'generated',
  created_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (grammar_point_id, explanation_language_id)
);

CREATE TABLE characters (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  slug varchar(120) NOT NULL UNIQUE,
  default_name varchar(120) NOT NULL,
  persona jsonb NOT NULL DEFAULT '{}'::jsonb,
  voice_profile jsonb NOT NULL DEFAULT '{}'::jsonb,
  is_active boolean NOT NULL DEFAULT true,
  created_at timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE character_localizations (
  character_id uuid NOT NULL REFERENCES characters(id) ON DELETE CASCADE,
  language_id uuid NOT NULL REFERENCES languages(id) ON DELETE CASCADE,
  display_name varchar(120) NOT NULL,
  bio text,
  PRIMARY KEY (character_id, language_id)
);

CREATE TABLE dialogues (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  slug varchar(180) NOT NULL UNIQUE,
  cefr_level_id smallint REFERENCES cefr_levels(id),
  topic_id uuid REFERENCES topics(id) ON DELETE SET NULL,
  scenario text,
  metadata jsonb NOT NULL DEFAULT '{}'::jsonb,
  status content_status NOT NULL DEFAULT 'generated',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE dialogue_versions (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  dialogue_id uuid NOT NULL REFERENCES dialogues(id) ON DELETE CASCADE,
  language_id uuid NOT NULL REFERENCES languages(id) ON DELETE CASCADE,
  title text,
  status content_status NOT NULL DEFAULT 'generated',
  metadata jsonb NOT NULL DEFAULT '{}'::jsonb,
  created_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (dialogue_id, language_id)
);

CREATE TABLE dialogue_turns (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  dialogue_version_id uuid NOT NULL REFERENCES dialogue_versions(id) ON DELETE CASCADE,
  turn_order integer NOT NULL CHECK (turn_order > 0),
  character_id uuid REFERENCES characters(id) ON DELETE SET NULL,
  text text NOT NULL,
  translation_hint text,
  metadata jsonb NOT NULL DEFAULT '{}'::jsonb,
  created_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (dialogue_version_id, turn_order)
);

CREATE TABLE lessons (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  slug varchar(180) NOT NULL UNIQUE,
  target_language_id uuid NOT NULL REFERENCES languages(id) ON DELETE CASCADE,
  cefr_level_id smallint NOT NULL REFERENCES cefr_levels(id),
  topic_id uuid REFERENCES topics(id) ON DELETE SET NULL,
  title text NOT NULL,
  objective text,
  estimated_minutes smallint CHECK (estimated_minutes IS NULL OR estimated_minutes > 0),
  sort_order integer NOT NULL DEFAULT 0,
  status content_status NOT NULL DEFAULT 'generated',
  metadata jsonb NOT NULL DEFAULT '{}'::jsonb,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE lesson_items (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  lesson_id uuid NOT NULL REFERENCES lessons(id) ON DELETE CASCADE,
  item_order integer NOT NULL CHECK (item_order > 0),
  concept_id uuid REFERENCES concepts(id) ON DELETE RESTRICT,
  utterance_id uuid REFERENCES utterances(id) ON DELETE RESTRICT,
  dialogue_id uuid REFERENCES dialogues(id) ON DELETE RESTRICT,
  grammar_point_id uuid REFERENCES grammar_points(id) ON DELETE RESTRICT,
  metadata jsonb NOT NULL DEFAULT '{}'::jsonb,
  created_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (lesson_id, item_order),
  CHECK (
    ((concept_id IS NOT NULL)::int +
     (utterance_id IS NOT NULL)::int +
     (dialogue_id IS NOT NULL)::int +
     (grammar_point_id IS NOT NULL)::int) = 1
  )
);

CREATE TABLE exercises (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  lesson_item_id uuid REFERENCES lesson_items(id) ON DELETE CASCADE,
  exercise_type exercise_type NOT NULL,
  instruction_language_id uuid REFERENCES languages(id) ON DELETE SET NULL,
  prompt jsonb NOT NULL,
  answer jsonb NOT NULL,
  difficulty smallint CHECK (difficulty BETWEEN 1 AND 5),
  status content_status NOT NULL DEFAULT 'generated',
  metadata jsonb NOT NULL DEFAULT '{}'::jsonb,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE exercise_options (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  exercise_id uuid NOT NULL REFERENCES exercises(id) ON DELETE CASCADE,
  option_order integer NOT NULL,
  value jsonb NOT NULL,
  is_correct boolean NOT NULL DEFAULT false,
  UNIQUE (exercise_id, option_order)
);

CREATE TABLE audio_assets (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  language_id uuid NOT NULL REFERENCES languages(id) ON DELETE CASCADE,
  entity_type varchar(40) NOT NULL,
  entity_id uuid NOT NULL,
  voice_key varchar(120),
  provider varchar(80),
  storage_url text NOT NULL,
  duration_ms integer CHECK (duration_ms IS NULL OR duration_ms >= 0),
  checksum varchar(128),
  status content_status NOT NULL DEFAULT 'generated',
  metadata jsonb NOT NULL DEFAULT '{}'::jsonb,
  created_at timestamptz NOT NULL DEFAULT now()
);

-- Staging area: generators never need to write directly into canonical production tables.
CREATE TABLE generation_jobs (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  job_type varchar(80) NOT NULL,
  target_language_id uuid REFERENCES languages(id) ON DELETE SET NULL,
  cefr_level_id smallint REFERENCES cefr_levels(id),
  parameters jsonb NOT NULL DEFAULT '{}'::jsonb,
  status varchar(30) NOT NULL DEFAULT 'pending',
  stats jsonb NOT NULL DEFAULT '{}'::jsonb,
  created_at timestamptz NOT NULL DEFAULT now(),
  started_at timestamptz,
  completed_at timestamptz
);

CREATE TABLE generated_content (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  generation_job_id uuid REFERENCES generation_jobs(id) ON DELETE SET NULL,
  content_kind varchar(60) NOT NULL,
  payload jsonb NOT NULL,
  fingerprint varchar(128),
  status content_status NOT NULL DEFAULT 'generated',
  validation_results jsonb NOT NULL DEFAULT '{}'::jsonb,
  canonical_entity_type varchar(60),
  canonical_entity_id uuid,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE content_reviews (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  generated_content_id uuid NOT NULL REFERENCES generated_content(id) ON DELETE CASCADE,
  reviewer_type varchar(30) NOT NULL CHECK (reviewer_type IN ('rule', 'ai', 'human')),
  reviewer_key varchar(120),
  decision varchar(30) NOT NULL CHECK (decision IN ('pass', 'fail', 'needs_revision')),
  score numeric(5,2),
  findings jsonb NOT NULL DEFAULT '[]'::jsonb,
  created_at timestamptz NOT NULL DEFAULT now()
);

CREATE INDEX idx_concepts_cefr ON concepts(cefr_level_id);
CREATE INDEX idx_concept_terms_language ON concept_terms(language_id);
CREATE INDEX idx_concept_terms_term ON concept_terms(language_id, normalized_term);
CREATE INDEX idx_utterances_cefr_topic ON utterances(cefr_level_id, topic_id);
CREATE INDEX idx_utterance_texts_language ON utterance_texts(language_id);
CREATE INDEX idx_dialogues_cefr_topic ON dialogues(cefr_level_id, topic_id);
CREATE INDEX idx_lessons_path ON lessons(target_language_id, cefr_level_id, sort_order);
CREATE INDEX idx_exercises_type_status ON exercises(exercise_type, status);
CREATE INDEX idx_generated_content_status_kind ON generated_content(status, content_kind);
CREATE UNIQUE INDEX idx_generated_content_fingerprint
  ON generated_content(fingerprint)
  WHERE fingerprint IS NOT NULL;

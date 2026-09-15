-- Language Learning App - MySQL Content Schema v1
-- Target: MySQL 9.0.1
-- Purpose: source-backed, CEFR-aligned, conversation-first language learning content.
-- Notes:
--   * Lesson length and activity count are intentionally dynamic.
--   * Activity #1 must be conversation_speaking.
--   * Audio rows are optional until a whole language is final.
--   * User/account/progress tables are intentionally outside this content schema for now.

SET NAMES utf8mb4;
SET time_zone = '+00:00';

CREATE TABLE IF NOT EXISTS schema_migrations (
  version VARCHAR(64) NOT NULL PRIMARY KEY,
  applied_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS languages (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  public_id VARCHAR(64) NOT NULL,
  code VARCHAR(16) NOT NULL,
  name_fa VARCHAR(120) NOT NULL,
  name_native VARCHAR(120) NOT NULL,
  text_direction ENUM('ltr','rtl') NOT NULL DEFAULT 'ltr',
  status ENUM('planned','building','review','final','audio_ready') NOT NULL DEFAULT 'planned',
  audio_status ENUM('blocked_until_language_final','pending','ready') NOT NULL DEFAULT 'blocked_until_language_final',
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  UNIQUE KEY uq_languages_public_id (public_id),
  UNIQUE KEY uq_languages_code (code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS cefr_levels (
  id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  code VARCHAR(16) NOT NULL,
  sort_order TINYINT UNSIGNED NOT NULL,
  label_fa VARCHAR(64) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY uq_cefr_levels_code (code),
  UNIQUE KEY uq_cefr_levels_sort_order (sort_order)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS language_levels (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  language_id BIGINT UNSIGNED NOT NULL,
  cefr_level_id TINYINT UNSIGNED NOT NULL,
  status ENUM('unassessed','planning','building','review','final') NOT NULL DEFAULT 'unassessed',
  planned_lesson_count INT UNSIGNED NULL,
  lesson_count_status ENUM('unassessed','provisional','final') NOT NULL DEFAULT 'unassessed',
  coverage JSON NULL,
  notes TEXT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  UNIQUE KEY uq_language_levels_language_cefr (language_id, cefr_level_id),
  CONSTRAINT fk_language_levels_language
    FOREIGN KEY (language_id) REFERENCES languages(id)
    ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_language_levels_cefr
    FOREIGN KEY (cefr_level_id) REFERENCES cefr_levels(id)
    ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS sources (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  public_id VARCHAR(96) NOT NULL,
  title VARCHAR(500) NOT NULL,
  organization_or_author VARCHAR(500) NULL,
  source_language_code VARCHAR(16) NULL,
  source_type ENUM('course','book','website','corpus','dictionary','grammar_reference','audio_course','other') NOT NULL,
  base_url TEXT NULL,
  license_name VARCHAR(255) NULL,
  license_url TEXT NULL,
  attribution_text TEXT NULL,
  reuse_status ENUM('direct_reuse_allowed','reuse_with_attribution','analysis_only','needs_review') NOT NULL DEFAULT 'needs_review',
  retrieved_at DATE NULL,
  notes TEXT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  UNIQUE KEY uq_sources_public_id (public_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS source_items (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  source_id BIGINT UNSIGNED NOT NULL,
  public_id VARCHAR(128) NOT NULL,
  title VARCHAR(500) NULL,
  locator VARCHAR(500) NULL,
  item_url TEXT NULL,
  content_sha256 CHAR(64) NULL,
  notes TEXT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  UNIQUE KEY uq_source_items_public_id (public_id),
  KEY idx_source_items_source (source_id),
  CONSTRAINT fk_source_items_source
    FOREIGN KEY (source_id) REFERENCES sources(id)
    ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS audio_files (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  public_id VARCHAR(128) NOT NULL,
  language_id BIGINT UNSIGNED NOT NULL,
  provider VARCHAR(64) NOT NULL DEFAULT 'elevenlabs',
  purpose VARCHAR(64) NOT NULL,
  voice_name VARCHAR(120) NULL,
  provider_voice_id VARCHAR(255) NULL,
  file_url TEXT NULL,
  file_format VARCHAR(32) NULL,
  checksum_sha256 CHAR(64) NULL,
  status ENUM('planned','pending','generated','approved','rejected') NOT NULL DEFAULT 'planned',
  metadata JSON NULL,
  generated_at DATETIME NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  UNIQUE KEY uq_audio_files_public_id (public_id),
  KEY idx_audio_files_language_status (language_id, status),
  CONSTRAINT fk_audio_files_language
    FOREIGN KEY (language_id) REFERENCES languages(id)
    ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS characters (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  public_id VARCHAR(96) NOT NULL,
  language_id BIGINT UNSIGNED NOT NULL,
  name VARCHAR(160) NOT NULL,
  origin ENUM('source','app_created') NOT NULL,
  gender ENUM('female','male','unspecified') NOT NULL DEFAULT 'unspecified',
  age_band ENUM('child','teen','young_adult','adult','middle_aged','older_adult','unspecified') NOT NULL DEFAULT 'unspecified',
  roles JSON NULL,
  relationship_tags JSON NULL,
  context_notes TEXT NULL,
  voice_clarity ENUM('high') NOT NULL DEFAULT 'high',
  voice_stress_level ENUM('low','very_low') NOT NULL DEFAULT 'low',
  voice_aggressiveness ENUM('none') NOT NULL DEFAULT 'none',
  voice_tone_consistency ENUM('high','medium_high') NOT NULL DEFAULT 'high',
  voice_gender_impression ENUM('female','male','neutral') NULL,
  voice_age_impression VARCHAR(120) NULL,
  elevenlabs_voice_id VARCHAR(255) NULL,
  voice_name VARCHAR(120) NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  UNIQUE KEY uq_characters_public_id (public_id),
  KEY idx_characters_language_gender (language_id, gender),
  CONSTRAINT fk_characters_language
    FOREIGN KEY (language_id) REFERENCES languages(id)
    ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS curriculum_targets (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  public_id VARCHAR(128) NOT NULL,
  language_level_id BIGINT UNSIGNED NOT NULL,
  target_type VARCHAR(64) NOT NULL,
  skill_area VARCHAR(64) NULL,
  description TEXT NOT NULL,
  source_item_id BIGINT UNSIGNED NULL,
  is_mandatory TINYINT(1) NOT NULL DEFAULT 1,
  coverage_status ENUM('uncovered','partial','covered','verified') NOT NULL DEFAULT 'uncovered',
  notes TEXT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  UNIQUE KEY uq_curriculum_targets_public_id (public_id),
  KEY idx_curriculum_targets_level_status (language_level_id, coverage_status),
  CONSTRAINT fk_curriculum_targets_level
    FOREIGN KEY (language_level_id) REFERENCES language_levels(id)
    ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_curriculum_targets_source_item
    FOREIGN KEY (source_item_id) REFERENCES source_items(id)
    ON UPDATE CASCADE ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS dialogues (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  public_id VARCHAR(128) NOT NULL,
  language_level_id BIGINT UNSIGNED NOT NULL,
  scenario VARCHAR(500) NOT NULL,
  status ENUM('draft','source_checked','cefr_checked','qa','final') NOT NULL DEFAULT 'draft',
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  UNIQUE KEY uq_dialogues_public_id (public_id),
  KEY idx_dialogues_level_status (language_level_id, status),
  CONSTRAINT fk_dialogues_level
    FOREIGN KEY (language_level_id) REFERENCES language_levels(id)
    ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS dialogue_characters (
  dialogue_id BIGINT UNSIGNED NOT NULL,
  character_id BIGINT UNSIGNED NOT NULL,
  role_label VARCHAR(160) NULL,
  PRIMARY KEY (dialogue_id, character_id),
  CONSTRAINT fk_dialogue_characters_dialogue
    FOREIGN KEY (dialogue_id) REFERENCES dialogues(id)
    ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_dialogue_characters_character
    FOREIGN KEY (character_id) REFERENCES characters(id)
    ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS dialogue_turns (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  dialogue_id BIGINT UNSIGNED NOT NULL,
  position SMALLINT UNSIGNED NOT NULL,
  speaker_character_id BIGINT UNSIGNED NOT NULL,
  speaker_identity_origin ENUM('source','app_assigned') NOT NULL,
  speaker_gender_evidence ENUM('female','male','unspecified','not_applicable') NOT NULL DEFAULT 'unspecified',
  text_target TEXT NOT NULL,
  translation_fa TEXT NOT NULL,
  learner_turn TINYINT(1) NOT NULL DEFAULT 0,
  audio_file_id BIGINT UNSIGNED NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  UNIQUE KEY uq_dialogue_turn_position (dialogue_id, position),
  KEY idx_dialogue_turn_speaker (speaker_character_id),
  CONSTRAINT fk_dialogue_turns_dialogue
    FOREIGN KEY (dialogue_id) REFERENCES dialogues(id)
    ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_dialogue_turns_character
    FOREIGN KEY (speaker_character_id) REFERENCES characters(id)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  CONSTRAINT fk_dialogue_turns_audio
    FOREIGN KEY (audio_file_id) REFERENCES audio_files(id)
    ON UPDATE CASCADE ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS lexemes (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  public_id VARCHAR(128) NOT NULL,
  language_id BIGINT UNSIGNED NOT NULL,
  language_level_id BIGINT UNSIGNED NULL,
  lexeme_type ENUM('word','phrase') NOT NULL,
  surface VARCHAR(500) NOT NULL,
  lemma VARCHAR(500) NULL,
  part_of_speech VARCHAR(120) NULL,
  translation_fa TEXT NOT NULL,
  usage_note_fa TEXT NULL,
  flashcard_eligible TINYINT(1) NOT NULL DEFAULT 1,
  audio_status ENUM('blocked_until_language_final','pending','ready') NOT NULL DEFAULT 'blocked_until_language_final',
  audio_file_id BIGINT UNSIGNED NULL,
  standalone_voice_name VARCHAR(120) NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  UNIQUE KEY uq_lexemes_public_id (public_id),
  KEY idx_lexemes_language_level (language_id, language_level_id),
  KEY idx_lexemes_language_surface (language_id, surface(120)),
  CONSTRAINT fk_lexemes_language
    FOREIGN KEY (language_id) REFERENCES languages(id)
    ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_lexemes_level
    FOREIGN KEY (language_level_id) REFERENCES language_levels(id)
    ON UPDATE CASCADE ON DELETE SET NULL,
  CONSTRAINT fk_lexemes_audio
    FOREIGN KEY (audio_file_id) REFERENCES audio_files(id)
    ON UPDATE CASCADE ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS grammar_notes (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  public_id VARCHAR(128) NOT NULL,
  language_level_id BIGINT UNSIGNED NOT NULL,
  title_fa VARCHAR(500) NOT NULL,
  source_text LONGTEXT NOT NULL,
  translation_fa LONGTEXT NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  UNIQUE KEY uq_grammar_notes_public_id (public_id),
  KEY idx_grammar_notes_level (language_level_id),
  CONSTRAINT fk_grammar_notes_level
    FOREIGN KEY (language_level_id) REFERENCES language_levels(id)
    ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS example_sentences (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  public_id VARCHAR(128) NOT NULL,
  language_id BIGINT UNSIGNED NOT NULL,
  language_level_id BIGINT UNSIGNED NULL,
  text_target TEXT NOT NULL,
  translation_fa TEXT NOT NULL,
  audio_file_id BIGINT UNSIGNED NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  UNIQUE KEY uq_example_sentences_public_id (public_id),
  KEY idx_example_sentences_language_level (language_id, language_level_id),
  CONSTRAINT fk_example_sentences_language
    FOREIGN KEY (language_id) REFERENCES languages(id)
    ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_example_sentences_level
    FOREIGN KEY (language_level_id) REFERENCES language_levels(id)
    ON UPDATE CASCADE ON DELETE SET NULL,
  CONSTRAINT fk_example_sentences_audio
    FOREIGN KEY (audio_file_id) REFERENCES audio_files(id)
    ON UPDATE CASCADE ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS lessons (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  public_id VARCHAR(128) NOT NULL,
  language_level_id BIGINT UNSIGNED NOT NULL,
  sequence_number INT UNSIGNED NOT NULL,
  unit_or_topic VARCHAR(500) NULL,
  title_fa VARCHAR(500) NOT NULL,
  source_title VARCHAR(500) NULL,
  status ENUM('draft','source_checked','cefr_checked','qa','final') NOT NULL DEFAULT 'draft',
  activity_count_rationale TEXT NULL,
  sequence_rationale TEXT NULL,
  template_signature VARCHAR(500) NULL,
  audio_status ENUM('not_started','blocked_until_language_final','ready') NOT NULL DEFAULT 'blocked_until_language_final',
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  UNIQUE KEY uq_lessons_public_id (public_id),
  UNIQUE KEY uq_lessons_level_sequence (language_level_id, sequence_number),
  KEY idx_lessons_level_status (language_level_id, status),
  KEY idx_lessons_template_signature (template_signature(160)),
  CONSTRAINT fk_lessons_level
    FOREIGN KEY (language_level_id) REFERENCES language_levels(id)
    ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS activity_types (
  code VARCHAR(64) NOT NULL,
  name_fa VARCHAR(160) NOT NULL,
  requires_dialogue TINYINT(1) NOT NULL DEFAULT 0,
  is_enabled TINYINT(1) NOT NULL DEFAULT 1,
  description_fa TEXT NULL,
  PRIMARY KEY (code)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS activities (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  public_id VARCHAR(128) NOT NULL,
  lesson_id BIGINT UNSIGNED NOT NULL,
  position SMALLINT UNSIGNED NOT NULL,
  type_code VARCHAR(64) NOT NULL,
  instruction_fa TEXT NULL,
  selection_reason TEXT NULL,
  dialogue_id BIGINT UNSIGNED NULL,
  payload JSON NULL,
  transformations JSON NULL,
  audio_status ENUM('not_planned_yet','pending_final_language','ready') NOT NULL DEFAULT 'pending_final_language',
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  UNIQUE KEY uq_activities_public_id (public_id),
  UNIQUE KEY uq_activities_lesson_position (lesson_id, position),
  KEY idx_activities_type (type_code),
  KEY idx_activities_dialogue (dialogue_id),
  CONSTRAINT chk_activities_position_positive CHECK (position >= 1),
  CONSTRAINT fk_activities_lesson
    FOREIGN KEY (lesson_id) REFERENCES lessons(id)
    ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_activities_type
    FOREIGN KEY (type_code) REFERENCES activity_types(code)
    ON UPDATE CASCADE ON DELETE RESTRICT,
  CONSTRAINT fk_activities_dialogue
    FOREIGN KEY (dialogue_id) REFERENCES dialogues(id)
    ON UPDATE CASCADE ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- MySQL 9.0.1 does not allow type_code to participate in both the former CHECK
-- constraint and an FK with referential actions. Preserve the invariant with triggers.
DROP TRIGGER IF EXISTS trg_activities_first_conversation_insert;
DROP TRIGGER IF EXISTS trg_activities_first_conversation_update;

DELIMITER $$
CREATE TRIGGER trg_activities_first_conversation_insert
BEFORE INSERT ON activities
FOR EACH ROW
BEGIN
  IF NEW.position = 1 AND NEW.type_code <> 'conversation_speaking' THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Activity position 1 must be conversation_speaking';
  END IF;
END$$

CREATE TRIGGER trg_activities_first_conversation_update
BEFORE UPDATE ON activities
FOR EACH ROW
BEGIN
  IF NEW.position = 1 AND NEW.type_code <> 'conversation_speaking' THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Activity position 1 must be conversation_speaking';
  END IF;
END$$
DELIMITER ;

CREATE TABLE IF NOT EXISTS activity_items (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  activity_id BIGINT UNSIGNED NOT NULL,
  position SMALLINT UNSIGNED NOT NULL,
  item_role VARCHAR(64) NOT NULL,
  text_target TEXT NULL,
  text_fa TEXT NULL,
  is_correct TINYINT(1) NULL,
  group_key VARCHAR(128) NULL,
  metadata JSON NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  UNIQUE KEY uq_activity_items_position (activity_id, position),
  KEY idx_activity_items_role (activity_id, item_role),
  CONSTRAINT fk_activity_items_activity
    FOREIGN KEY (activity_id) REFERENCES activities(id)
    ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS lesson_targets (
  lesson_id BIGINT UNSIGNED NOT NULL,
  curriculum_target_id BIGINT UNSIGNED NOT NULL,
  is_primary TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (lesson_id, curriculum_target_id),
  CONSTRAINT fk_lesson_targets_lesson
    FOREIGN KEY (lesson_id) REFERENCES lessons(id)
    ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_lesson_targets_target
    FOREIGN KEY (curriculum_target_id) REFERENCES curriculum_targets(id)
    ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS lesson_lexemes (
  lesson_id BIGINT UNSIGNED NOT NULL,
  lexeme_id BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (lesson_id, lexeme_id),
  CONSTRAINT fk_lesson_lexemes_lesson
    FOREIGN KEY (lesson_id) REFERENCES lessons(id)
    ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_lesson_lexemes_lexeme
    FOREIGN KEY (lexeme_id) REFERENCES lexemes(id)
    ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS lesson_grammar_notes (
  lesson_id BIGINT UNSIGNED NOT NULL,
  grammar_note_id BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (lesson_id, grammar_note_id),
  CONSTRAINT fk_lesson_grammar_lesson
    FOREIGN KEY (lesson_id) REFERENCES lessons(id)
    ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_lesson_grammar_note
    FOREIGN KEY (grammar_note_id) REFERENCES grammar_notes(id)
    ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS activity_lexemes (
  activity_id BIGINT UNSIGNED NOT NULL,
  lexeme_id BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (activity_id, lexeme_id),
  CONSTRAINT fk_activity_lexemes_activity
    FOREIGN KEY (activity_id) REFERENCES activities(id)
    ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_activity_lexemes_lexeme
    FOREIGN KEY (lexeme_id) REFERENCES lexemes(id)
    ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS dialogue_turn_lexemes (
  dialogue_turn_id BIGINT UNSIGNED NOT NULL,
  lexeme_id BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (dialogue_turn_id, lexeme_id),
  CONSTRAINT fk_dialogue_turn_lexemes_turn
    FOREIGN KEY (dialogue_turn_id) REFERENCES dialogue_turns(id)
    ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_dialogue_turn_lexemes_lexeme
    FOREIGN KEY (lexeme_id) REFERENCES lexemes(id)
    ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS lexeme_grammar_notes (
  lexeme_id BIGINT UNSIGNED NOT NULL,
  grammar_note_id BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (lexeme_id, grammar_note_id),
  CONSTRAINT fk_lexeme_grammar_lexeme
    FOREIGN KEY (lexeme_id) REFERENCES lexemes(id)
    ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_lexeme_grammar_note
    FOREIGN KEY (grammar_note_id) REFERENCES grammar_notes(id)
    ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS lexeme_examples (
  lexeme_id BIGINT UNSIGNED NOT NULL,
  example_sentence_id BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (lexeme_id, example_sentence_id),
  CONSTRAINT fk_lexeme_examples_lexeme
    FOREIGN KEY (lexeme_id) REFERENCES lexemes(id)
    ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_lexeme_examples_example
    FOREIGN KEY (example_sentence_id) REFERENCES example_sentences(id)
    ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS grammar_note_examples (
  grammar_note_id BIGINT UNSIGNED NOT NULL,
  example_sentence_id BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (grammar_note_id, example_sentence_id),
  CONSTRAINT fk_grammar_examples_note
    FOREIGN KEY (grammar_note_id) REFERENCES grammar_notes(id)
    ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_grammar_examples_example
    FOREIGN KEY (example_sentence_id) REFERENCES example_sentences(id)
    ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Provenance links. Explicit tables keep foreign-key integrity while allowing a content
-- object to reference one or many exact source locations.
CREATE TABLE IF NOT EXISTS lesson_sources (
  lesson_id BIGINT UNSIGNED NOT NULL,
  source_item_id BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (lesson_id, source_item_id),
  CONSTRAINT fk_lesson_sources_lesson FOREIGN KEY (lesson_id) REFERENCES lessons(id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_lesson_sources_source FOREIGN KEY (source_item_id) REFERENCES source_items(id) ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS activity_sources (
  activity_id BIGINT UNSIGNED NOT NULL,
  source_item_id BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (activity_id, source_item_id),
  CONSTRAINT fk_activity_sources_activity FOREIGN KEY (activity_id) REFERENCES activities(id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_activity_sources_source FOREIGN KEY (source_item_id) REFERENCES source_items(id) ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS activity_item_sources (
  activity_item_id BIGINT UNSIGNED NOT NULL,
  source_item_id BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (activity_item_id, source_item_id),
  CONSTRAINT fk_activity_item_sources_item FOREIGN KEY (activity_item_id) REFERENCES activity_items(id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_activity_item_sources_source FOREIGN KEY (source_item_id) REFERENCES source_items(id) ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS dialogue_sources (
  dialogue_id BIGINT UNSIGNED NOT NULL,
  source_item_id BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (dialogue_id, source_item_id),
  CONSTRAINT fk_dialogue_sources_dialogue FOREIGN KEY (dialogue_id) REFERENCES dialogues(id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_dialogue_sources_source FOREIGN KEY (source_item_id) REFERENCES source_items(id) ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS dialogue_turn_sources (
  dialogue_turn_id BIGINT UNSIGNED NOT NULL,
  source_item_id BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (dialogue_turn_id, source_item_id),
  CONSTRAINT fk_dialogue_turn_sources_turn FOREIGN KEY (dialogue_turn_id) REFERENCES dialogue_turns(id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_dialogue_turn_sources_source FOREIGN KEY (source_item_id) REFERENCES source_items(id) ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS lexeme_sources (
  lexeme_id BIGINT UNSIGNED NOT NULL,
  source_item_id BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (lexeme_id, source_item_id),
  CONSTRAINT fk_lexeme_sources_lexeme FOREIGN KEY (lexeme_id) REFERENCES lexemes(id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_lexeme_sources_source FOREIGN KEY (source_item_id) REFERENCES source_items(id) ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS grammar_note_sources (
  grammar_note_id BIGINT UNSIGNED NOT NULL,
  source_item_id BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (grammar_note_id, source_item_id),
  CONSTRAINT fk_grammar_sources_note FOREIGN KEY (grammar_note_id) REFERENCES grammar_notes(id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_grammar_sources_source FOREIGN KEY (source_item_id) REFERENCES source_items(id) ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS example_sentence_sources (
  example_sentence_id BIGINT UNSIGNED NOT NULL,
  source_item_id BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (example_sentence_id, source_item_id),
  CONSTRAINT fk_example_sources_example FOREIGN KEY (example_sentence_id) REFERENCES example_sentences(id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_example_sources_source FOREIGN KEY (source_item_id) REFERENCES source_items(id) ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- QA / editorial helper views.
CREATE OR REPLACE VIEW v_lesson_activity_counts AS
SELECT
  l.id AS lesson_id,
  l.public_id,
  l.language_level_id,
  l.sequence_number,
  l.status,
  COUNT(a.id) AS activity_count,
  MIN(CASE WHEN a.position = 1 THEN a.type_code END) AS opening_activity_type
FROM lessons l
LEFT JOIN activities a ON a.lesson_id = l.id
GROUP BY l.id, l.public_id, l.language_level_id, l.sequence_number, l.status;

CREATE OR REPLACE VIEW v_language_level_content_status AS
SELECT
  ll.id AS language_level_id,
  lang.code AS language_code,
  c.code AS cefr_level,
  ll.status,
  ll.planned_lesson_count,
  ll.lesson_count_status,
  (SELECT COUNT(*)
     FROM lessons l
    WHERE l.language_level_id = ll.id) AS current_lesson_count,
  (SELECT COUNT(*)
     FROM lessons l
    WHERE l.language_level_id = ll.id
      AND l.status = 'final') AS final_lesson_count,
  (SELECT COUNT(*)
     FROM curriculum_targets ct
    WHERE ct.language_level_id = ll.id) AS curriculum_target_count,
  (SELECT COUNT(*)
     FROM curriculum_targets ct
    WHERE ct.language_level_id = ll.id
      AND ct.coverage_status IN ('covered','verified')) AS covered_target_count
FROM language_levels ll
JOIN languages lang ON lang.id = ll.language_id
JOIN cefr_levels c ON c.id = ll.cefr_level_id;

INSERT INTO schema_migrations (version)
VALUES ('content_schema_v1')
ON DUPLICATE KEY UPDATE applied_at = applied_at;
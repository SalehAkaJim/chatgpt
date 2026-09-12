-- Final level import + audio support
-- MySQL 9.0.1

-- Exercises in production batches are often lesson-level activities rather
-- than drills attached to one specific lesson item. Keep lesson_item_id for
-- item-specific drills and add an explicit lesson link for level imports.
ALTER TABLE exercises
  ADD COLUMN lesson_id BINARY(16) NULL AFTER id,
  ADD KEY idx_exercises_lesson (lesson_id, exercise_type),
  ADD CONSTRAINT fk_exercises_lesson
    FOREIGN KEY (lesson_id) REFERENCES lessons(id) ON DELETE CASCADE;

-- Audio is polymorphic (lexeme, word_form, utterance, dialogue_turn, ...).
-- These columns make generation idempotent and let us detect stale audio when
-- source text changes without putting provider-specific data into content rows.
ALTER TABLE audio_assets
  ADD COLUMN source_text_hash CHAR(64) CHARACTER SET ascii COLLATE ascii_bin NULL AFTER entity_id,
  ADD COLUMN provider_model VARCHAR(120) NULL AFTER provider,
  ADD COLUMN generated_at DATETIME(6) NULL AFTER duration_ms,
  ADD UNIQUE KEY uq_audio_assets_entity_voice (
    entity_type,
    entity_id,
    voice_key,
    source_text_hash
  );

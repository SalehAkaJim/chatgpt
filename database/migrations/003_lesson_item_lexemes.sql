-- Allow lesson items to directly teach lexical units and inflected forms.
-- MySQL 9.0.1

ALTER TABLE lesson_items
  ADD COLUMN lexeme_id BINARY(16) NULL AFTER concept_id,
  ADD COLUMN word_form_id BINARY(16) NULL AFTER lexeme_id,
  ADD KEY idx_lesson_items_lexeme (lexeme_id),
  ADD KEY idx_lesson_items_word_form (word_form_id),
  ADD CONSTRAINT fk_lesson_items_lexeme
    FOREIGN KEY (lexeme_id) REFERENCES lexemes(id),
  ADD CONSTRAINT fk_lesson_items_word_form
    FOREIGN KEY (word_form_id) REFERENCES word_forms(id);

-- The content/application layer enforces that exactly one canonical content
-- reference is populated on a lesson item:
-- concept_id, lexeme_id, word_form_id, utterance_id, dialogue_id, grammar_point_id.

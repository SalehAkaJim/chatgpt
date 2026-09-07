-- NOVA v10.1 RESET (v9 core + sem-prefixed semantic learning layer)
SET FOREIGN_KEY_CHECKS=0;

DROP TRIGGER IF EXISTS trg_turn_audio_url_v3;
DROP TRIGGER IF EXISTS trg_word_audio_url_v3;

DROP VIEW IF EXISTS v_due_reviews;
DROP VIEW IF EXISTS curriculum_outcomes;
DROP VIEW IF EXISTS review_obligations;
DROP VIEW IF EXISTS turn_learning_units;
DROP VIEW IF EXISTS lesson_learning_units;
DROP VIEW IF EXISTS learning_unit_words;
DROP VIEW IF EXISTS learning_units;
DROP VIEW IF EXISTS sem_due_reviews;
DROP VIEW IF EXISTS v_lesson_story;

-- New physical semantic tables.
DROP TABLE IF EXISTS sem_review_obligations;
DROP TABLE IF EXISTS sem_turn_learning_units;
DROP TABLE IF EXISTS sem_lesson_learning_units;
DROP TABLE IF EXISTS sem_learning_unit_words;
DROP TABLE IF EXISTS sem_curriculum_outcomes;
DROP TABLE IF EXISTS sem_learning_units;

-- Defensive cleanup for databases created before the sem_ rename.
DROP TABLE IF EXISTS review_obligations;
DROP TABLE IF EXISTS turn_learning_units;
DROP TABLE IF EXISTS lesson_learning_units;
DROP TABLE IF EXISTS learning_unit_words;
DROP TABLE IF EXISTS curriculum_outcomes;
DROP TABLE IF EXISTS learning_units;

DROP TABLE IF EXISTS activities;
DROP TABLE IF EXISTS lesson_words;
DROP TABLE IF EXISTS turns;
DROP TABLE IF EXISTS words;
DROP TABLE IF EXISTS lessons;
DROP TABLE IF EXISTS characters;
DROP TABLE IF EXISTS chapters;
DROP TABLE IF EXISTS modules;
DROP TABLE IF EXISTS levels;
DROP TABLE IF EXISTS courses;
SET FOREIGN_KEY_CHECKS=1;

-- ===============================================================
-- NOVA CONTENT SYSTEM v1 — CLEAN RESET
-- Drops current and known pre-reset content-engine objects.
-- ===============================================================
SET FOREIGN_KEY_CHECKS=0;

DROP VIEW IF EXISTS sem_open_review_windows;
DROP VIEW IF EXISTS sem_due_reviews;
DROP VIEW IF EXISTS v_lesson_turns;
DROP VIEW IF EXISTS v_lesson_story;
DROP VIEW IF EXISTS v_due_reviews;

DROP TABLE IF EXISTS sem_review_obligations;
DROP TABLE IF EXISTS sem_chapter_outcomes;
DROP TABLE IF EXISTS sem_turn_learning_units;
DROP TABLE IF EXISTS sem_lesson_learning_units;
DROP TABLE IF EXISTS sem_learning_unit_words;
DROP TABLE IF EXISTS sem_curriculum_outcomes;
DROP TABLE IF EXISTS sem_learning_units;

-- Known pre-v1 semantic names, if they exist as tables.
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

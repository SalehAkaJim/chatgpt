-- ===============================================================
-- NOVA LESSON RUNTIME — CLEAN RESET
-- Deployment/test target: MySQL Server 9.0.1.
-- ===============================================================
SET FOREIGN_KEY_CHECKS=0;

-- Current runtime objects.
DROP VIEW IF EXISTS v_lesson_payload;
DROP TABLE IF EXISTS activities;
DROP TABLE IF EXISTS lesson_lexical_items;
DROP TABLE IF EXISTS lesson_turns;
DROP TABLE IF EXISTS lexical_items;
DROP TABLE IF EXISTS lessons;
DROP TABLE IF EXISTS characters;
DROP TABLE IF EXISTS levels;
DROP TABLE IF EXISTS courses;

-- Known previous Nova objects, kept here only so a clean reset also
-- removes an older schema before applying the current foundation.
DROP VIEW IF EXISTS sem_open_review_windows;
DROP VIEW IF EXISTS sem_due_reviews;
DROP VIEW IF EXISTS v_lesson_turns;
DROP VIEW IF EXISTS v_lesson_story;
DROP VIEW IF EXISTS v_due_reviews;
DROP TABLE IF EXISTS sem_review_obligations;
DROP TABLE IF EXISTS sem_chapter_outcomes;
DROP TABLE IF EXISTS sem_turn_learning_units;
DROP TABLE IF EXISTS sem_lesson_learning_units;
DROP TABLE IF EXISTS sem_learning_unit_lexical_items;
DROP TABLE IF EXISTS sem_learning_unit_words;
DROP TABLE IF EXISTS sem_curriculum_outcomes;
DROP TABLE IF EXISTS sem_learning_units;
DROP TABLE IF EXISTS review_obligations;
DROP TABLE IF EXISTS turn_learning_units;
DROP TABLE IF EXISTS lesson_learning_units;
DROP TABLE IF EXISTS learning_unit_lexical_items;
DROP TABLE IF EXISTS learning_unit_words;
DROP TABLE IF EXISTS curriculum_outcomes;
DROP TABLE IF EXISTS learning_units;
DROP TABLE IF EXISTS lesson_words;
DROP TABLE IF EXISTS turn_lexical_items;
DROP TABLE IF EXISTS turns;
DROP TABLE IF EXISTS words;
DROP TABLE IF EXISTS chapters;
DROP TABLE IF EXISTS modules;

SET FOREIGN_KEY_CHECKS=1;

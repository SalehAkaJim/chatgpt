-- NOVA v9.1 RESET (destructive: removes all Nova content and learner progress)
SET FOREIGN_KEY_CHECKS = 0;

DROP VIEW IF EXISTS v_lesson_runtime;
DROP VIEW IF EXISTS v_lesson_dictionary;
DROP VIEW IF EXISTS v_lesson_activities;
DROP VIEW IF EXISTS v_lesson_story;
DROP VIEW IF EXISTS v_lesson_path;

DROP TABLE IF EXISTS activity_attempts;
DROP TABLE IF EXISTS word_progress;
DROP TABLE IF EXISTS lesson_progress;
DROP TABLE IF EXISTS lesson_sessions;
DROP TABLE IF EXISTS course_enrollments;
DROP TABLE IF EXISTS learners;
DROP TABLE IF EXISTS activities;
DROP TABLE IF EXISTS lesson_words;
DROP TABLE IF EXISTS turns;
DROP TABLE IF EXISTS words;
DROP TABLE IF EXISTS lessons;
DROP TABLE IF EXISTS characters;
DROP TABLE IF EXISTS chapters;
DROP TABLE IF EXISTS content_batches;
DROP TABLE IF EXISTS modules;
DROP TABLE IF EXISTS levels;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS schema_versions;

SET FOREIGN_KEY_CHECKS = 1;

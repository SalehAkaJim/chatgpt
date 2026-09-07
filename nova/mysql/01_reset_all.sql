-- NOVA v10.1 RESET (v9 core + sem-prefixed semantic learning layer)
SET FOREIGN_KEY_CHECKS=0;

DROP TRIGGER IF EXISTS trg_turn_audio_url_v3;
DROP TRIGGER IF EXISTS trg_word_audio_url_v3;
DROP PROCEDURE IF EXISTS nova_drop_object_v3;

DELIMITER $$
CREATE PROCEDURE nova_drop_object_v3(IN p_name VARCHAR(128))
BEGIN
  DECLARE v_type VARCHAR(32) DEFAULT NULL;
  SELECT TABLE_TYPE INTO v_type
  FROM information_schema.TABLES
  WHERE TABLE_SCHEMA=DATABASE() AND TABLE_NAME=p_name
  LIMIT 1;

  IF v_type='VIEW' THEN
    SET @nova_drop_sql=CONCAT('DROP VIEW `',REPLACE(p_name,'`','``'),'`');
    PREPARE nova_drop_stmt FROM @nova_drop_sql;
    EXECUTE nova_drop_stmt;
    DEALLOCATE PREPARE nova_drop_stmt;
  ELSEIF v_type='BASE TABLE' THEN
    SET @nova_drop_sql=CONCAT('DROP TABLE `',REPLACE(p_name,'`','``'),'`');
    PREPARE nova_drop_stmt FROM @nova_drop_sql;
    EXECUTE nova_drop_stmt;
    DEALLOCATE PREPARE nova_drop_stmt;
  END IF;
END$$
DELIMITER ;

-- Objects whose type changed during the v3.1 rewrite.
CALL nova_drop_object_v3('v_due_reviews');
CALL nova_drop_object_v3('curriculum_outcomes');
CALL nova_drop_object_v3('review_obligations');
CALL nova_drop_object_v3('turn_learning_units');
CALL nova_drop_object_v3('lesson_learning_units');
CALL nova_drop_object_v3('learning_unit_words');
CALL nova_drop_object_v3('learning_units');

DROP VIEW IF EXISTS sem_due_reviews;
DROP VIEW IF EXISTS v_lesson_story;

DROP TABLE IF EXISTS sem_review_obligations;
DROP TABLE IF EXISTS sem_turn_learning_units;
DROP TABLE IF EXISTS sem_lesson_learning_units;
DROP TABLE IF EXISTS sem_learning_unit_words;
DROP TABLE IF EXISTS sem_curriculum_outcomes;
DROP TABLE IF EXISTS sem_learning_units;

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

DROP PROCEDURE IF EXISTS nova_drop_object_v3;
SET FOREIGN_KEY_CHECKS=1;

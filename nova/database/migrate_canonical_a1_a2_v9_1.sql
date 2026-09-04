-- ============================================================================
-- NOVA v9.1.1 / canonical A1+A2 post-import migration
--
-- Run only after the exact Series 001-080 SQL files have been imported in
-- order AND the database has the v9.1.1 schema. For an existing v9.0 database,
-- first run upgrade_existing_v9_0_to_v9_1_1.sql. This migration backfills
-- stable runtime keys, exact word-history metadata, deterministic dictionary
-- ordering, and ten content-batch records. It is idempotent and aborts unless
-- both the required schema and complete canonical inventory exist.
-- ============================================================================

SET NAMES utf8mb4 COLLATE utf8mb4_unicode_ci;
SET time_zone = '+00:00';

DROP PROCEDURE IF EXISTS assert_nova_v9_1_1_schema;
DELIMITER $$
CREATE PROCEDURE assert_nova_v9_1_1_schema()
BEGIN
  DECLARE v_count INT UNSIGNED DEFAULT 0;

  SELECT COUNT(*) INTO v_count
  FROM information_schema.tables
  WHERE table_schema = DATABASE()
    AND table_name IN ('schema_versions','content_batches');
  IF v_count <> 2 THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Nova v9.1.1 schema is missing. Run upgrade_existing_v9_0_to_v9_1_1.sql first.';
  END IF;

  SELECT COUNT(*) INTO v_count
  FROM information_schema.columns
  WHERE table_schema = DATABASE()
    AND CONCAT(table_name,'.',column_name) IN (
      'courses.course_key',
      'levels.level_key',
      'modules.module_key',
      'chapters.batch_id',
      'chapters.chapter_key',
      'chapters.series_number',
      'chapters.global_sort_order',
      'characters.character_key',
      'lessons.lesson_key',
      'words.word_key',
      'words.sense_key',
      'words.identity_hash',
      'words.introduced_series',
      'words.explicit_target_count',
      'turns.turn_key',
      'lesson_words.sort_order',
      'activities.activity_key'
    );
  IF v_count <> 17 THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Nova v9.1.1 columns are incomplete. Run the in-place schema upgrade before this migration.';
  END IF;
END$$
DELIMITER ;

CALL assert_nova_v9_1_1_schema();
DROP PROCEDURE assert_nova_v9_1_1_schema;

DROP PROCEDURE IF EXISTS migrate_nova_canonical_a1_a2_v9_1;
DELIMITER $$

CREATE PROCEDURE migrate_nova_canonical_a1_a2_v9_1()
BEGIN
  DECLARE v_course BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_count INT UNSIGNED DEFAULT 0;

  DECLARE EXIT HANDLER FOR SQLEXCEPTION
  BEGIN
    ROLLBACK;
    RESIGNAL;
  END;

  START TRANSACTION;

  SELECT id INTO v_course
  FROM courses
  WHERE learning_language = 'de' AND base_language = 'fa'
  ORDER BY id
  LIMIT 1;

  IF v_course IS NULL THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Nova de-fa course is missing.';
  END IF;

  SELECT COUNT(*) INTO v_count
  FROM levels
  WHERE course_id = v_course AND cefr_level IN ('A1','A2');
  IF v_count <> 2 THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Canonical A1/A2 restore requires exactly two levels.';
  END IF;

  SELECT COUNT(*) INTO v_count
  FROM modules m
  JOIN levels lv ON lv.id = m.level_id
  WHERE lv.course_id = v_course AND lv.cefr_level IN ('A1','A2');
  IF v_count <> 16 THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Canonical A1/A2 restore requires exactly 16 modules.';
  END IF;

  SELECT COUNT(*) INTO v_count
  FROM chapters ch
  JOIN modules m ON m.id = ch.module_id
  JOIN levels lv ON lv.id = m.level_id
  WHERE lv.course_id = v_course AND lv.cefr_level IN ('A1','A2');
  IF v_count <> 80 THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Canonical A1/A2 restore requires exactly 80 chapters.';
  END IF;

  SELECT COUNT(*) INTO v_count
  FROM lessons l
  JOIN chapters ch ON ch.id = l.chapter_id
  JOIN modules m ON m.id = ch.module_id
  JOIN levels lv ON lv.id = m.level_id
  WHERE lv.course_id = v_course AND lv.cefr_level IN ('A1','A2');
  IF v_count <> 320 THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Canonical A1/A2 restore requires exactly 320 lessons.';
  END IF;

  SELECT COUNT(*) INTO v_count FROM words WHERE course_id = v_course;
  IF v_count <> 377 THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Canonical A1/A2 restore requires exactly 377 word tuples.';
  END IF;

  SELECT COUNT(*) INTO v_count FROM characters WHERE course_id = v_course;
  IF v_count <> 24 THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'Canonical A1/A2 restore requires exactly 24 characters.';
  END IF;

  UPDATE courses
  SET course_key = 'de-fa',
      learning_locale = 'de-DE',
      base_locale = 'fa-IR',
      learning_direction = 'ltr',
      base_direction = 'rtl'
  WHERE id = v_course;

  UPDATE levels
  SET level_key = COALESCE(level_key,cefr_level)
  WHERE course_id = v_course;

  UPDATE modules m
  JOIN levels lv ON lv.id = m.level_id
  SET m.module_key = COALESCE(
        m.module_key,
        CONCAT(lv.cefr_level,'-M',LPAD(m.sort_order,2,'0'))
      ),
      m.planned_chapter_count = COALESCE(m.planned_chapter_count,5)
  WHERE lv.course_id = v_course;

  UPDATE chapters ch
  JOIN modules m ON m.id = ch.module_id
  JOIN levels lv ON lv.id = m.level_id
  SET ch.chapter_key = COALESCE(
        ch.chapter_key,
        CONCAT(
          lv.cefr_level,'-M',LPAD(m.sort_order,2,'0'),
          '-C',LPAD(ch.sort_order,2,'0')
        )
      ),
      ch.series_number =
        ((lv.sort_order - 1) * 40) + ((m.sort_order - 1) * 5) + ch.sort_order,
      ch.global_sort_order =
        ((lv.sort_order - 1) * 40) + ((m.sort_order - 1) * 5) + ch.sort_order,
      ch.planned_lesson_count = COALESCE(ch.planned_lesson_count,4)
  WHERE lv.course_id = v_course
    AND lv.cefr_level IN ('A1','A2');

  INSERT INTO content_batches
  (
    level_id,
    batch_number,
    chapter_order_from,
    chapter_order_to,
    series_from,
    series_to,
    artifact_name,
    artifact_sha256,
    status,
    qa_report
  )
  SELECT
    lv.id,
    batches.batch_number,
    batches.chapter_from,
    batches.chapter_to,
    batches.series_from,
    batches.series_to,
    CONCAT(
      'nova/archive/nova_v9_production_series_001_080_fixed.zip#',
      lv.cefr_level,
      '-batch-',LPAD(batches.batch_number,2,'0')
    ),
    '11e5b8834dcee6002ccf6981650069309ba9df0bdb10063b82fcc5dfb293e8c2',
    'validated',
    JSON_OBJECT(
      'staticScan','PASS',
      'scanReport','nova/archive/series_001_080_fixed/FULL_SCAN_REPORT.json',
      'manifest','nova/archive/series_001_080_fixed/manifest.json',
      'checksumScope','complete canonical ZIP',
      'seriesFrom',batches.series_from,
      'seriesTo',batches.series_to
    )
  FROM levels lv
  JOIN (
    SELECT 'A1' AS cefr_level,1 AS batch_number,1 AS chapter_from,8 AS chapter_to,1 AS series_from,8 AS series_to
    UNION ALL SELECT 'A1',2,9,16,9,16
    UNION ALL SELECT 'A1',3,17,24,17,24
    UNION ALL SELECT 'A1',4,25,32,25,32
    UNION ALL SELECT 'A1',5,33,40,33,40
    UNION ALL SELECT 'A2',1,1,8,41,48
    UNION ALL SELECT 'A2',2,9,16,49,56
    UNION ALL SELECT 'A2',3,17,24,57,64
    UNION ALL SELECT 'A2',4,25,32,65,72
    UNION ALL SELECT 'A2',5,33,40,73,80
  ) batches ON batches.cefr_level = lv.cefr_level
  WHERE lv.course_id = v_course
  ON DUPLICATE KEY UPDATE
    chapter_order_from = VALUES(chapter_order_from),
    chapter_order_to = VALUES(chapter_order_to),
    series_from = VALUES(series_from),
    series_to = VALUES(series_to),
    artifact_name = VALUES(artifact_name),
    artifact_sha256 = VALUES(artifact_sha256),
    status = VALUES(status),
    qa_report = VALUES(qa_report);

  UPDATE chapters ch
  JOIN modules m ON m.id = ch.module_id
  JOIN levels lv ON lv.id = m.level_id
  JOIN content_batches cb
    ON cb.level_id = lv.id
   AND ch.series_number BETWEEN cb.series_from AND cb.series_to
  SET ch.batch_id = cb.id
  WHERE lv.course_id = v_course;

  UPDATE characters c
  SET c.character_key = COALESCE(
        c.character_key,
        CONCAT('de-fa-character-',LEFT(SHA2(c.name,256),32))
      )
  WHERE c.course_id = v_course;

  UPDATE words w
  SET w.word_key = COALESCE(
        w.word_key,
        CONCAT('de-fa-word-',LEFT(w.identity_hash,32))
      ),
      w.sense_key = COALESCE(w.sense_key,SHA2(w.translation,256))
  WHERE w.course_id = v_course;

  UPDATE lessons l
  JOIN chapters ch ON ch.id = l.chapter_id
  JOIN modules m ON m.id = ch.module_id
  JOIN levels lv ON lv.id = m.level_id
  SET l.lesson_key = COALESCE(
        l.lesson_key,
        CONCAT(ch.chapter_key,'-L',LPAD(l.sort_order,2,'0'))
      )
  WHERE lv.course_id = v_course;

  UPDATE turns t
  JOIN lessons l ON l.id = t.lesson_id
  JOIN chapters ch ON ch.id = l.chapter_id
  JOIN modules m ON m.id = ch.module_id
  JOIN levels lv ON lv.id = m.level_id
  SET t.turn_key = COALESCE(
        t.turn_key,
        CONCAT(l.lesson_key,'-T',LPAD(t.sort_order,2,'0'))
      )
  WHERE lv.course_id = v_course;

  UPDATE activities a
  JOIN lessons l ON l.id = a.lesson_id
  JOIN chapters ch ON ch.id = l.chapter_id
  JOIN modules m ON m.id = ch.module_id
  JOIN levels lv ON lv.id = m.level_id
  SET a.activity_key = COALESCE(
        a.activity_key,
        CONCAT(l.lesson_key,'-A',LPAD(a.sort_order,2,'0'))
      )
  WHERE lv.course_id = v_course;

  UPDATE lesson_words lw
  JOIN (
    SELECT ranked.lesson_id,ranked.word_id,ranked.computed_order
    FROM (
      SELECT
        lesson_id,
        word_id,
        ROW_NUMBER() OVER (PARTITION BY lesson_id ORDER BY word_id) AS computed_order
      FROM lesson_words
    ) ranked
  ) ordering
    ON ordering.lesson_id = lw.lesson_id
   AND ordering.word_id = lw.word_id
  SET lw.sort_order = ordering.computed_order;

  UPDATE words w
  LEFT JOIN (
    SELECT
      lw.word_id,
      MIN(ch.series_number) AS first_used_series,
      SUM(lw.is_target) AS target_count,
      MIN(CASE WHEN lw.is_target = 1 THEN ch.series_number END) AS first_target_series,
      MAX(CASE WHEN lw.is_target = 1 THEN ch.series_number END) AS last_target_series
    FROM lesson_words lw
    JOIN lessons l ON l.id = lw.lesson_id
    JOIN chapters ch ON ch.id = l.chapter_id
    GROUP BY lw.word_id
  ) history ON history.word_id = w.id
  SET w.introduced_series = COALESCE(w.introduced_series,history.first_used_series),
      w.explicit_target_count = COALESCE(history.target_count,0),
      w.first_target_series = history.first_target_series,
      w.last_target_series = history.last_target_series
  WHERE w.course_id = v_course;

  -- Six proper-name tuples are introduced before their first lesson_words use,
  -- or exist as clickable tokens without a lesson_words row. These exact values
  -- come from the canonical Series SQL and GitHub word-state snapshot.
  UPDATE words
  SET introduced_series = CASE
    WHEN lemma IN ('Lena','Ben') THEN 1
    WHEN lemma = 'Nina' THEN 6
    WHEN lemma = 'Tom' THEN 8
    WHEN lemma = 'Felix' THEN 16
    WHEN lemma = 'Nora' THEN 18
    ELSE introduced_series
  END
  WHERE course_id = v_course
    AND part_of_speech = 'proper_noun'
    AND lemma IN ('Lena','Ben','Nina','Tom','Felix','Nora');

  INSERT INTO schema_versions(version,description)
  VALUES (
    'v9.1.1',
    'Canonical A1/A2 lineage, stable-key and exact history backfill'
  )
  ON DUPLICATE KEY UPDATE description = VALUES(description);

  COMMIT;
END$$

DELIMITER ;

CALL migrate_nova_canonical_a1_a2_v9_1();
DROP PROCEDURE migrate_nova_canonical_a1_a2_v9_1;

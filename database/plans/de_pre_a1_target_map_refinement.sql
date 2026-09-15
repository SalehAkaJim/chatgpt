-- German Pre-A1 semantic lesson-to-curriculum-target mapping
-- Target: MySQL 9.0.1
-- Replaces the original provisional 1:1 numeric mapping with meaning-based many-to-many links.
-- Safe to run repeatedly after de_pre_a1_lesson_map.sql.

SET NAMES utf8mb4;

-- Remove all previous German Pre-A1 lesson-target links so the map below is authoritative.
DELETE lt
FROM lesson_targets lt
JOIN lessons l ON l.id=lt.lesson_id
JOIN language_levels ll ON ll.id=l.language_level_id
JOIN languages lang ON lang.id=ll.language_id AND lang.code='de'
JOIN cefr_levels c ON c.id=ll.cefr_level_id AND c.code='Pre-A1';

-- Primary target per lesson.
INSERT INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT l.id,ct.id,1
FROM lessons l
JOIN language_levels ll ON ll.id=l.language_level_id
JOIN languages lang ON lang.id=ll.language_id AND lang.code='de'
JOIN cefr_levels c ON c.id=ll.cefr_level_id AND c.code='Pre-A1'
JOIN (
  SELECT 1 seq,'de_pre_a1_ct_001' target_id UNION ALL
  SELECT 2,'de_pre_a1_ct_001' UNION ALL
  SELECT 3,'de_pre_a1_ct_002' UNION ALL
  SELECT 4,'de_pre_a1_ct_027' UNION ALL
  SELECT 5,'de_pre_a1_ct_005' UNION ALL
  SELECT 6,'de_pre_a1_ct_005' UNION ALL
  SELECT 7,'de_pre_a1_ct_007' UNION ALL
  SELECT 8,'de_pre_a1_ct_008' UNION ALL
  SELECT 9,'de_pre_a1_ct_009' UNION ALL
  SELECT 10,'de_pre_a1_ct_006' UNION ALL
  SELECT 11,'de_pre_a1_ct_010' UNION ALL
  SELECT 12,'de_pre_a1_ct_010' UNION ALL
  SELECT 13,'de_pre_a1_ct_011' UNION ALL
  SELECT 14,'de_pre_a1_ct_012' UNION ALL
  SELECT 15,'de_pre_a1_ct_012' UNION ALL
  SELECT 16,'de_pre_a1_ct_012' UNION ALL
  SELECT 17,'de_pre_a1_ct_013' UNION ALL
  SELECT 18,'de_pre_a1_ct_019' UNION ALL
  SELECT 19,'de_pre_a1_ct_015' UNION ALL
  SELECT 20,'de_pre_a1_ct_017' UNION ALL
  SELECT 21,'de_pre_a1_ct_016' UNION ALL
  SELECT 22,'de_pre_a1_ct_017' UNION ALL
  SELECT 23,'de_pre_a1_ct_022' UNION ALL
  SELECT 24,'de_pre_a1_ct_024' UNION ALL
  SELECT 25,'de_pre_a1_ct_025' UNION ALL
  SELECT 26,'de_pre_a1_ct_022' UNION ALL
  SELECT 27,'de_pre_a1_ct_021' UNION ALL
  SELECT 28,'de_pre_a1_ct_029' UNION ALL
  SELECT 29,'de_pre_a1_ct_028' UNION ALL
  SELECT 30,'de_pre_a1_ct_030'
) m ON m.seq=l.sequence_number
JOIN curriculum_targets ct ON ct.language_level_id=ll.id AND ct.public_id=m.target_id
WHERE l.sequence_number BETWEEN 1 AND 30;

-- Secondary targets where a lesson materially contributes to more than its primary objective.
INSERT IGNORE INTO lesson_targets (lesson_id,curriculum_target_id,is_primary)
SELECT l.id,ct.id,0
FROM lessons l
JOIN language_levels ll ON ll.id=l.language_level_id
JOIN languages lang ON lang.id=ll.language_id AND lang.code='de'
JOIN cefr_levels c ON c.id=ll.cefr_level_id AND c.code='Pre-A1'
JOIN (
  SELECT 1 seq,'de_pre_a1_ct_003' target_id UNION ALL
  SELECT 1,'de_pre_a1_ct_014' UNION ALL
  SELECT 2,'de_pre_a1_ct_014' UNION ALL
  SELECT 4,'de_pre_a1_ct_003' UNION ALL
  SELECT 5,'de_pre_a1_ct_026' UNION ALL
  SELECT 6,'de_pre_a1_ct_016' UNION ALL
  SELECT 7,'de_pre_a1_ct_004' UNION ALL
  SELECT 8,'de_pre_a1_ct_004' UNION ALL
  SELECT 9,'de_pre_a1_ct_026' UNION ALL
  SELECT 10,'de_pre_a1_ct_004' UNION ALL
  SELECT 11,'de_pre_a1_ct_018' UNION ALL
  SELECT 12,'de_pre_a1_ct_018' UNION ALL
  SELECT 13,'de_pre_a1_ct_010' UNION ALL
  SELECT 13,'de_pre_a1_ct_018' UNION ALL
  SELECT 14,'de_pre_a1_ct_014' UNION ALL
  SELECT 15,'de_pre_a1_ct_014' UNION ALL
  SELECT 16,'de_pre_a1_ct_014' UNION ALL
  SELECT 17,'de_pre_a1_ct_004' UNION ALL
  SELECT 18,'de_pre_a1_ct_015' UNION ALL
  SELECT 18,'de_pre_a1_ct_022' UNION ALL
  SELECT 19,'de_pre_a1_ct_016' UNION ALL
  SELECT 20,'de_pre_a1_ct_023' UNION ALL
  SELECT 21,'de_pre_a1_ct_019' UNION ALL
  SELECT 23,'de_pre_a1_ct_019' UNION ALL
  SELECT 23,'de_pre_a1_ct_014' UNION ALL
  SELECT 25,'de_pre_a1_ct_024' UNION ALL
  SELECT 25,'de_pre_a1_ct_010' UNION ALL
  SELECT 26,'de_pre_a1_ct_019' UNION ALL
  SELECT 27,'de_pre_a1_ct_020' UNION ALL
  SELECT 28,'de_pre_a1_ct_028' UNION ALL
  SELECT 29,'de_pre_a1_ct_029' UNION ALL
  SELECT 30,'de_pre_a1_ct_003' UNION ALL
  SELECT 30,'de_pre_a1_ct_018' UNION ALL
  SELECT 30,'de_pre_a1_ct_026'
) m ON m.seq=l.sequence_number
JOIN curriculum_targets ct ON ct.language_level_id=ll.id AND ct.public_id=m.target_id
WHERE l.sequence_number BETWEEN 1 AND 30;

-- Assertions: all 30 mandatory targets must be represented somewhere in the lesson map;
-- every lesson must retain exactly one primary target.
SELECT
  COUNT(DISTINCT ct.id) AS mapped_mandatory_targets
FROM curriculum_targets ct
JOIN language_levels ll ON ll.id=ct.language_level_id
JOIN languages lang ON lang.id=ll.language_id AND lang.code='de'
JOIN cefr_levels c ON c.id=ll.cefr_level_id AND c.code='Pre-A1'
JOIN lesson_targets lt ON lt.curriculum_target_id=ct.id
WHERE ct.is_mandatory=1;

SELECT COUNT(*) AS lessons_without_exactly_one_primary
FROM (
  SELECT l.id,SUM(lt.is_primary=1) primary_count
  FROM lessons l
  JOIN language_levels ll ON ll.id=l.language_level_id
  JOIN languages lang ON lang.id=ll.language_id AND lang.code='de'
  JOIN cefr_levels c ON c.id=ll.cefr_level_id AND c.code='Pre-A1'
  LEFT JOIN lesson_targets lt ON lt.lesson_id=l.id
  GROUP BY l.id
  HAVING primary_count<>1
) q;
-- German Pre-A1 numeric coverage cleanup.
-- Target: MySQL 9.0.1
-- Safe to run repeatedly after 006h.
--
-- Lesson 12 already carries source-backed lexemes elf/zwölf and cites the
-- Headstart 0–20 number list, but its matching activity began at 13. Add 11 and
-- 12 to that shuffled matching activity so the practiced sequence is continuous.

SET NAMES utf8mb4;

UPDATE activities
SET instruction_fa='عددهای ۱۱ تا ۲۰ را با شکل آلمانی‌شان تطبیق بده.',
    selection_reason='Headstart explicitly lists 0–20; this lesson practices 11–20 after Lesson 11 covers 0–10.',
    transformations=JSON_OBJECT('sourceTransformation','exact source number-word list; items are shuffled')
WHERE public_id='de_pre_a1_a012_02';

INSERT INTO activity_items
(activity_id,position,item_role,text_target,text_fa,is_correct,group_key,metadata)
SELECT a.id,x.position,'match',x.text_target,x.text_fa,NULL,x.group_key,JSON_OBJECT()
FROM activities a
JOIN (
  SELECT 9 position,'elf' text_target,'یازده' text_fa,'11' group_key
  UNION ALL
  SELECT 10,'zwölf','دوازده','12'
) x ON 1=1
WHERE a.public_id='de_pre_a1_a012_02'
ON DUPLICATE KEY UPDATE
 item_role=VALUES(item_role),text_target=VALUES(text_target),text_fa=VALUES(text_fa),
 is_correct=VALUES(is_correct),group_key=VALUES(group_key),metadata=VALUES(metadata);

INSERT IGNORE INTO activity_item_sources (activity_item_id,source_item_id)
SELECT ai.id,si.id
FROM activity_items ai
JOIN activities a ON a.id=ai.activity_id
JOIN source_items si ON si.public_id='srcitem_headstart_m2_u2_numbers'
WHERE a.public_id='de_pre_a1_a012_02'
  AND ai.position IN (9,10);

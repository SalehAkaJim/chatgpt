-- Refine German Pre-A1 source mappings.
-- Target: MySQL 9.0.1
-- Safe to run repeatedly after de_pre_a1_lesson_map.sql.

SET NAMES utf8mb4;

INSERT INTO source_items (source_id, public_id, title, locator, item_url, notes)
SELECT s.id, 'srcitem_fast_l5_restaurant', 'FSI German FAST Lesson 5 — Restaurant/Meal',
       'Lesson Five, restaurant sample dialogue and exercises, PDF pp.165–168 area',
       'https://www.fsi-language-courses.org/languages/German/FAST/FSI%20-%20German%20FAST%20-%20Student%20Text.pdf',
       'Restaurant source material includes menu items, waiter interaction, ordering, dessert/drinks and asking for the check.'
FROM sources s WHERE s.public_id='src_fsi_de_fast'
ON DUPLICATE KEY UPDATE title=VALUES(title), locator=VALUES(locator), item_url=VALUES(item_url), notes=VALUES(notes);

-- Remove an obsolete fallback accidentally attached to lesson 23 during initial mapping.
DELETE ls
FROM lesson_sources ls
JOIN lessons l ON l.id=ls.lesson_id AND l.public_id='de_pre_a1_l023'
JOIN source_items si ON si.id=ls.source_item_id AND si.public_id='srcitem_fast_l2_registration';

-- Add the actual FAST restaurant fallback to food/menu lessons.
INSERT IGNORE INTO lesson_sources (lesson_id, source_item_id)
SELECT l.id, si.id
FROM lessons l
JOIN source_items si ON si.public_id='srcitem_fast_l5_restaurant'
WHERE l.public_id IN ('de_pre_a1_l023','de_pre_a1_l024','de_pre_a1_l026');
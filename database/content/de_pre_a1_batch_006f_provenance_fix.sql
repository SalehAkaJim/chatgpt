-- German Pre-A1 provenance completion.
-- Target: MySQL 9.0.1
-- Safe to run repeatedly after 006d/006e.
--
-- Lesson 27 activity 03 contains Persian true/false statements derived directly
-- from the modern ZPE birthday invitation card. Because those rows intentionally
-- have no text_target, the older generic provenance INSERT (which required
-- text_target IS NOT NULL) skipped them. Link every item in this activity to the
-- same exact source item already backing the activity.

SET NAMES utf8mb4;

INSERT IGNORE INTO activity_item_sources (activity_item_id, source_item_id)
SELECT ai.id, si.id
FROM activity_items ai
JOIN activities a ON a.id = ai.activity_id
JOIN source_items si ON si.public_id = 'srcitem_zpe_birthday_card'
WHERE a.public_id = 'de_pre_a1_a027_03';

-- Nova word-layer cleanup
--
-- Canonical authoring no longer stores lesson formulas/chunks in lexical_items.
-- Rebuild affected Lessons first so their old formula links disappear, then run
-- this cleanup. It deletes only orphaned legacy rows and never removes a row
-- that is still linked to a Lesson.

START TRANSACTION;

DELETE li
FROM lexical_items AS li
LEFT JOIN lesson_lexical_items AS lli
  ON lli.lexical_item_id = li.id
WHERE lli.lexical_item_id IS NULL
  AND li.item_type IN ('formula', 'other');

COMMIT;

-- Audit leftovers that are still linked. These are not deleted automatically;
-- their canonical Lesson source should be migrated/rebuilt first.
SELECT
  li.id,
  li.lexical_key,
  li.item_type,
  li.display_form,
  COUNT(lli.lesson_id) AS linked_lessons
FROM lexical_items AS li
JOIN lesson_lexical_items AS lli
  ON lli.lexical_item_id = li.id
WHERE li.item_type IN ('formula', 'other')
GROUP BY li.id, li.lexical_key, li.item_type, li.display_form
ORDER BY linked_lessons DESC, li.lexical_key;

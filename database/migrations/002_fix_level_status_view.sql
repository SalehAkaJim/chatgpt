-- Fix aggregate multiplication in v_language_level_content_status.
-- This migration is safe to run after database/schema.sql.

CREATE OR REPLACE VIEW v_language_level_content_status AS
SELECT
  ll.id AS language_level_id,
  lang.code AS language_code,
  c.code AS cefr_level,
  ll.status,
  ll.planned_lesson_count,
  ll.lesson_count_status,
  (SELECT COUNT(*)
     FROM lessons l
    WHERE l.language_level_id = ll.id) AS current_lesson_count,
  (SELECT COUNT(*)
     FROM lessons l
    WHERE l.language_level_id = ll.id
      AND l.status = 'final') AS final_lesson_count,
  (SELECT COUNT(*)
     FROM curriculum_targets ct
    WHERE ct.language_level_id = ll.id) AS curriculum_target_count,
  (SELECT COUNT(*)
     FROM curriculum_targets ct
    WHERE ct.language_level_id = ll.id
      AND ct.coverage_status IN ('covered','verified')) AS covered_target_count
FROM language_levels ll
JOIN languages lang ON lang.id = ll.language_id
JOIN cefr_levels c ON c.id = ll.cefr_level_id;

INSERT INTO schema_migrations (version)
VALUES ('002_fix_level_status_view')
ON DUPLICATE KEY UPDATE applied_at = applied_at;

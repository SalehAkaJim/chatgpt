-- ============================================================================
-- NOVA v9.1: catalog, path and resume queries
-- Replace session variables with bound parameters in application code.
-- ============================================================================

SET @course_key = 'de-fa';
SET @learner_id = NULL;

-- 1) Level cards for the course home screen.
SELECT
  lv.id AS level_id,
  lv.cefr_level,
  lv.title,
  lv.title_translation,
  lv.description,
  lv.description_translation,
  lv.cover_image_url,
  lv.difficulty_min,
  lv.difficulty_max,
  lv.sort_order,
  lv.status,
  COUNT(DISTINCT m.id) AS module_count,
  COUNT(DISTINCT ch.id) AS chapter_count,
  COUNT(DISTINCT CASE WHEN l.status IN ('validated','published') THEN l.id END) AS available_lesson_count,
  COUNT(DISTINCT CASE WHEN lp.status = 'completed' THEN lp.lesson_id END) AS completed_lesson_count
FROM courses c
JOIN levels lv ON lv.course_id = c.id
LEFT JOIN modules m ON m.level_id = lv.id AND m.status <> 'archived'
LEFT JOIN chapters ch ON ch.module_id = m.id AND ch.status <> 'archived'
LEFT JOIN lessons l ON l.chapter_id = ch.id AND l.status <> 'archived'
LEFT JOIN lesson_progress lp
  ON @learner_id IS NOT NULL
 AND lp.learner_id = @learner_id
 AND lp.lesson_id = l.id
WHERE c.course_key = @course_key
  AND c.status <> 'archived'
GROUP BY
  lv.id,
  lv.cefr_level,
  lv.title,
  lv.title_translation,
  lv.description,
  lv.description_translation,
  lv.cover_image_url,
  lv.difficulty_min,
  lv.difficulty_max,
  lv.sort_order,
  lv.status
ORDER BY lv.sort_order;

-- 2) Complete ordered learning path for level/module/chapter screens.
SELECT
  p.*,
  COALESCE(lp.status,'not_started') AS progress_status,
  COALESCE(lp.completion_percent,0.00) AS completion_percent,
  lp.best_score_percent,
  lp.attempt_count,
  lp.updated_at AS progress_updated_at
FROM v_lesson_path p
LEFT JOIN lesson_progress lp
  ON @learner_id IS NOT NULL
 AND lp.learner_id = @learner_id
 AND lp.lesson_id = p.lesson_id
WHERE p.course_key = @course_key
  AND p.lesson_status IN ('validated','published')
ORDER BY
  p.level_order,
  p.module_order,
  COALESCE(p.chapter_global_order,p.chapter_order),
  p.lesson_order;

-- 3) Resume target. If no learner is supplied, returns the first available
-- lesson. If every available lesson is complete, returns no row.
SELECT p.lesson_id
FROM v_lesson_path p
LEFT JOIN lesson_progress lp
  ON @learner_id IS NOT NULL
 AND lp.learner_id = @learner_id
 AND lp.lesson_id = p.lesson_id
WHERE p.course_key = @course_key
  AND p.lesson_status IN ('validated','published')
  AND (@learner_id IS NULL OR lp.status IS NULL OR lp.status <> 'completed')
ORDER BY
  CASE WHEN lp.status = 'in_progress' THEN 0 ELSE 1 END,
  p.level_order,
  p.module_order,
  COALESCE(p.chapter_global_order,p.chapter_order),
  p.lesson_order
LIMIT 1;

-- 4) Dictionary drawer for one clicked token.
SET @word_id = NULL;

SELECT
  w.id,
  w.word_key,
  w.sense_key,
  w.lemma,
  w.display_form,
  w.part_of_speech,
  w.translation,
  w.pronunciation_hint,
  w.romanization,
  w.difficulty,
  w.grammar,
  w.distractors,
  w.related_words,
  w.example_text,
  w.example_translation,
  w.audio_url,
  w.audio_duration_ms
FROM words w
WHERE w.id = @word_id
  AND w.is_active = 1;

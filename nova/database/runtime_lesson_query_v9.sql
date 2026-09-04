-- ============================================================================
-- NOVA v9.1: one-row lesson runtime payload
--
-- Production usage:
--   SELECT * FROM v_lesson_runtime WHERE lesson_id = ?;
--
-- The variables below are an executable development example. Set @lesson_id to
-- a concrete ID, or leave it NULL to resolve a lesson by its ordered path.
-- ============================================================================

SET @lesson_id = NULL;
SET @course_key = 'de-fa';
SET @level_order = 1;
SET @module_order = 1;
SET @chapter_order = 1;
SET @lesson_order = 1;

SET @resolved_lesson_id = COALESCE(
  @lesson_id,
  (
    SELECT p.lesson_id
    FROM v_lesson_path p
    WHERE p.course_key = @course_key
      AND p.level_order = @level_order
      AND p.module_order = @module_order
      AND p.chapter_order = @chapter_order
      AND p.lesson_order = @lesson_order
      AND p.lesson_status IN ('validated','published')
    ORDER BY p.lesson_id
    LIMIT 1
  )
);

SELECT
  course_id,
  course_key,
  learning_language,
  base_language,
  level_id,
  cefr_level,
  level_title,
  level_title_translation,
  level_order,
  module_id,
  module_title,
  module_title_translation,
  module_emoji,
  module_order,
  chapter_id,
  series_number,
  chapter_title,
  chapter_title_translation,
  chapter_order,
  chapter_global_order,
  lesson_id,
  lesson_key,
  title,
  title_translation,
  description,
  description_translation,
  learning_objective,
  learning_objective_translation,
  lesson_type,
  storyline_key,
  storyline_order,
  difficulty,
  estimated_duration_sec,
  full_audio_url,
  full_audio_duration_ms,
  sort_order,
  status,
  content_version,
  prompt_character,
  learner_character,
  story,
  activities,
  dictionary
FROM v_lesson_runtime
WHERE lesson_id = @resolved_lesson_id;

-- Optional learner state; execute with the same request when the screen needs
-- resume/progress data. Missing row means the lesson has not been started.
SET @learner_id = NULL;

SELECT
  lp.learner_id,
  lp.lesson_id,
  lp.status,
  lp.completion_percent,
  lp.best_score_percent,
  lp.attempt_count,
  lp.last_session_id,
  ls.session_key,
  ls.current_activity_id,
  ls.status AS session_status,
  ls.client_state,
  ls.last_activity_at
FROM lesson_progress lp
LEFT JOIN lesson_sessions ls ON ls.id = lp.last_session_id
WHERE @learner_id IS NOT NULL
  AND lp.learner_id = @learner_id
  AND lp.lesson_id = @resolved_lesson_id;

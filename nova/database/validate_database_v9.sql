-- ============================================================================
-- NOVA v9.1 repository/content validation
-- Expected result: every `violations` value is 0.
-- Run after schema + base seed + all canonical content batches are imported.
-- ============================================================================

SET NAMES utf8mb4 COLLATE utf8mb4_unicode_ci;

SELECT 'schema_version_v9_1' AS check_name,
       CASE WHEN EXISTS (
         SELECT 1 FROM schema_versions WHERE version = 'v9.1.0'
       ) THEN 0 ELSE 1 END AS violations

UNION ALL

SELECT 'hierarchy_difficulty_bounds',COUNT(*)
FROM (
  SELECT m.id
  FROM modules m
  JOIN levels lv ON lv.id = m.level_id
  WHERE m.difficulty_min < lv.difficulty_min OR m.difficulty_max > lv.difficulty_max
  UNION ALL
  SELECT ch.id
  FROM chapters ch
  JOIN modules m ON m.id = ch.module_id
  WHERE ch.difficulty_min < m.difficulty_min OR ch.difficulty_max > m.difficulty_max
  UNION ALL
  SELECT l.id
  FROM lessons l
  JOIN chapters ch ON ch.id = l.chapter_id
  WHERE l.difficulty < ch.difficulty_min OR l.difficulty > ch.difficulty_max
) hierarchy_difficulty_violations

UNION ALL

SELECT 'complete_level_has_40_chapters',COUNT(*)
FROM (
  SELECT lv.id
  FROM levels lv
  LEFT JOIN modules m ON m.level_id = lv.id AND m.status <> 'archived'
  LEFT JOIN chapters ch ON ch.module_id = m.id AND ch.status <> 'archived'
  WHERE lv.status = 'complete'
  GROUP BY lv.id
  HAVING COUNT(DISTINCT ch.id) <> 40
) bad_complete_levels

UNION ALL

SELECT 'complete_module_has_5_chapters',COUNT(*)
FROM (
  SELECT m.id
  FROM modules m
  LEFT JOIN chapters ch ON ch.module_id = m.id AND ch.status <> 'archived'
  WHERE m.status = 'complete'
  GROUP BY m.id
  HAVING COUNT(DISTINCT ch.id) <> 5
) bad_complete_modules

UNION ALL

SELECT 'validated_or_complete_chapter_has_4_lessons',COUNT(*)
FROM (
  SELECT ch.id
  FROM chapters ch
  LEFT JOIN lessons l ON l.chapter_id = ch.id AND l.status <> 'archived'
  WHERE ch.status IN ('validated','complete')
  GROUP BY ch.id
  HAVING COUNT(DISTINCT l.id) <> 4
) bad_complete_chapters

UNION ALL

SELECT 'validated_batch_has_8_chapters',COUNT(*)
FROM (
  SELECT cb.id
  FROM content_batches cb
  LEFT JOIN chapters ch ON ch.batch_id = cb.id AND ch.status <> 'archived'
  WHERE cb.status IN ('validated','published')
  GROUP BY cb.id
  HAVING COUNT(DISTINCT ch.id) <> 8
     OR MAX(cb.chapter_order_to - cb.chapter_order_from + 1) <> 8
     OR MAX(cb.series_to - cb.series_from + 1) <> 8
) bad_validated_batches

UNION ALL

SELECT 'lesson_uses_two_declared_characters',COUNT(*)
FROM (
  SELECT
    l.id
  FROM lessons l
  LEFT JOIN turns t ON t.lesson_id = l.id
  WHERE l.status IN ('validated','published')
  GROUP BY l.id,l.prompt_character_id,l.learner_character_id
  HAVING COUNT(DISTINCT t.character_id) <> 2
     OR SUM(t.character_id = l.prompt_character_id) = 0
     OR SUM(t.character_id = l.learner_character_id) = 0
) bad_lesson_characters

UNION ALL

SELECT 'turn_role_matches_declared_character',COUNT(*)
FROM turns t
JOIN lessons l ON l.id = t.lesson_id
WHERE (t.role = 'character' AND t.character_id <> l.prompt_character_id)
   OR (t.role = 'learner' AND t.character_id <> l.learner_character_id)

UNION ALL

SELECT 'turn_roles_alternate',COUNT(*)
FROM (
  SELECT
    t.lesson_id,
    t.sort_order,
    t.role,
    LAG(t.role) OVER (PARTITION BY t.lesson_id ORDER BY t.sort_order) AS previous_role
  FROM turns t
) ordered_turns
WHERE role = previous_role

UNION ALL

SELECT 'validated_lesson_has_turns_and_activities',COUNT(*)
FROM (
  SELECT
    l.id,
    COUNT(DISTINCT t.id) AS turn_count,
    COUNT(DISTINCT a.id) AS activity_count
  FROM lessons l
  LEFT JOIN turns t ON t.lesson_id = l.id
  LEFT JOIN activities a ON a.lesson_id = l.id
  WHERE l.status IN ('validated','published')
  GROUP BY l.id
  HAVING turn_count = 0 OR activity_count = 0
) empty_validated_lessons

UNION ALL

SELECT 'activity_source_integrity',COUNT(*)
FROM activities a
WHERE (a.activity_type IN ('listen','speak','word_order') AND a.turn_id IS NULL)
   OR (a.activity_type IN ('new_word','meaning_choice') AND a.word_id IS NULL)

UNION ALL

SELECT 'activity_turn_belongs_to_lesson',COUNT(*)
FROM activities a
JOIN turns t ON t.id = a.turn_id
WHERE t.lesson_id <> a.lesson_id

UNION ALL

SELECT 'activity_word_belongs_to_lesson_dictionary',COUNT(*)
FROM activities a
LEFT JOIN lesson_words lw
  ON lw.lesson_id = a.lesson_id
 AND lw.word_id = a.word_id
WHERE a.word_id IS NOT NULL
  AND lw.word_id IS NULL

UNION ALL

SELECT 'speak_activity_uses_learner_turn',COUNT(*)
FROM activities a
JOIN turns t ON t.id = a.turn_id
WHERE a.activity_type = 'speak'
  AND t.role <> 'learner'

UNION ALL

SELECT 'reading_has_learner_task',COUNT(*)
FROM activities a
WHERE a.activity_type = 'reading_comprehension'
  AND (
    a.prompt IS NULL OR CHAR_LENGTH(TRIM(a.prompt)) = 0
    OR a.instruction IS NULL OR CHAR_LENGTH(TRIM(a.instruction)) = 0
  )

UNION ALL

SELECT 'meaning_choice_has_distractors',COUNT(*)
FROM activities a
JOIN words w ON w.id = a.word_id
WHERE a.activity_type = 'meaning_choice'
  AND JSON_LENGTH(w.distractors) < 2

UNION ALL

SELECT 'token_word_reference_is_valid',COUNT(*)
FROM turns t
JOIN lessons l ON l.id = t.lesson_id
JOIN chapters ch ON ch.id = l.chapter_id
JOIN modules m ON m.id = ch.module_id
JOIN levels lv ON lv.id = m.level_id
JOIN JSON_TABLE(
  t.tokens,
  '$[*]' COLUMNS (
    token_text VARCHAR(255) PATH '$.text' NULL ON EMPTY NULL ON ERROR,
    word_id BIGINT UNSIGNED PATH '$.wordId' NULL ON EMPTY NULL ON ERROR,
    is_punctuation TINYINT PATH '$.isPunctuation' DEFAULT '0' ON EMPTY DEFAULT '0' ON ERROR
  )
) token_rows
LEFT JOIN words w ON w.id = token_rows.word_id
WHERE token_rows.token_text IS NULL
   OR CHAR_LENGTH(token_rows.token_text) = 0
   OR (
     token_rows.is_punctuation = 0
     AND (token_rows.word_id IS NULL OR w.id IS NULL OR w.course_id <> lv.course_id)
   )

UNION ALL

SELECT 'lesson_dictionary_course_matches',COUNT(*)
FROM lesson_words lw
JOIN lessons l ON l.id = lw.lesson_id
JOIN chapters ch ON ch.id = l.chapter_id
JOIN modules m ON m.id = ch.module_id
JOIN levels lv ON lv.id = m.level_id
JOIN words w ON w.id = lw.word_id
WHERE w.course_id <> lv.course_id

UNION ALL

SELECT 'storyline_order_is_contiguous',COUNT(*)
FROM (
  SELECT storyline_key
  FROM lessons
  WHERE storyline_key IS NOT NULL
    AND status <> 'archived'
  GROUP BY storyline_key
  HAVING COUNT(DISTINCT storyline_order) <> MAX(storyline_order) - MIN(storyline_order) + 1
) broken_storylines

UNION ALL

SELECT 'word_sense_collision_requires_key',COUNT(*)
FROM (
  SELECT course_id,lemma,part_of_speech
  FROM words
  WHERE is_active = 1
  GROUP BY course_id,lemma,part_of_speech
  HAVING COUNT(*) > 1
     AND SUM(sense_key IS NULL) > 1
) unresolved_word_senses

UNION ALL

SELECT 'related_words_has_exactly_5_when_present',COUNT(*)
FROM words
WHERE related_words IS NOT NULL
  AND JSON_LENGTH(related_words) <> 5

UNION ALL

SELECT 'enrollment_current_lesson_matches_course',COUNT(*)
FROM course_enrollments ce
JOIN v_lesson_path p ON p.lesson_id = ce.current_lesson_id
WHERE p.course_id <> ce.course_id

UNION ALL

SELECT 'lesson_progress_session_matches_owner_and_lesson',COUNT(*)
FROM lesson_progress lp
JOIN lesson_sessions ls ON ls.id = lp.last_session_id
WHERE ls.learner_id <> lp.learner_id
   OR ls.lesson_id <> lp.lesson_id

ORDER BY check_name;

-- Informational inventory. These values are not pass/fail assertions.
SELECT
  (SELECT COUNT(*) FROM courses) AS courses,
  (SELECT COUNT(*) FROM levels) AS levels,
  (SELECT COUNT(*) FROM modules) AS modules,
  (SELECT COUNT(*) FROM chapters) AS chapters,
  (SELECT COUNT(*) FROM lessons) AS lessons,
  (SELECT COUNT(*) FROM turns) AS turns,
  (SELECT COUNT(*) FROM activities) AS activities,
  (SELECT COUNT(*) FROM words) AS words,
  (SELECT COUNT(*) FROM characters) AS characters,
  (SELECT COUNT(*) FROM content_batches) AS content_batches;

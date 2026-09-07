-- ===============================================================
-- NOVA LESSON RUNTIME — EXAMPLE RETRIEVAL
-- Run after Course/Lesson content has been imported.
-- ===============================================================
SET @lesson_id=(
  SELECT l.id
  FROM lessons l
  JOIN courses c ON c.id=l.course_id
  WHERE c.course_key='en-fa'
  ORDER BY l.sort_order
  LIMIT 1
);

-- Lesson header.
SELECT
  c.course_key,
  l.id AS lesson_id,
  l.lesson_key,
  l.sort_order,
  l.title,
  l.title_translation,
  l.description,
  l.cefr_level,
  l.primary_outcome_key,
  l.estimated_duration_sec,
  l.status
FROM lessons l
JOIN courses c ON c.id=l.course_id
WHERE l.id=@lesson_id;

-- Activities in presentation order.
SELECT
  id,activity_key,sort_order,activity_type,instruction,prompt,config,metadata
FROM activities
WHERE lesson_id=@lesson_id
ORDER BY sort_order;

-- Dialogue / speaking turns.
SELECT
  t.id,t.turn_key,t.sort_order,t.role,
  c.character_key,c.name AS character_name,c.gender,
  t.text,t.translation,t.audio_url,t.audio_duration_ms,
  t.speech_target,t.accepted_speech,t.tokens,t.metadata
FROM lesson_turns t
LEFT JOIN characters c ON c.id=t.character_id
WHERE t.lesson_id=@lesson_id
ORDER BY t.sort_order;

-- Vocabulary/expression data used by this Lesson.
SELECT
  li.id,li.lexical_key,li.item_type,li.display_form,li.lemma,
  li.part_of_speech,li.sense_key,li.translation,
  li.audio_url,li.audio_duration_ms,
  lli.learning_role,lli.sort_order,li.metadata
FROM lesson_lexical_items lli
JOIN lexical_items li ON li.id=lli.lexical_item_id
WHERE lli.lesson_id=@lesson_id
ORDER BY lli.sort_order,li.id;

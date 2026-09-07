-- ===============================================================
-- NOVA CONTENT SYSTEM v1 — EXAMPLE LESSON PAYLOAD QUERY
-- Deployment/test target: MySQL Server 9.0.1.
-- English -> Persian pilot. Returns ordered activity rows and linked data.
-- ===============================================================
SET @lesson_id=(
  SELECT l.id
  FROM lessons l
  JOIN chapters ch ON ch.id=l.chapter_id
  JOIN modules m ON m.id=ch.module_id
  JOIN levels lv ON lv.id=m.level_id
  JOIN courses c ON c.id=lv.course_id
  WHERE c.course_key='en-fa' AND lv.cefr_level='A1'
  ORDER BY ch.course_sequence,l.sort_order
  LIMIT 1
);

SELECT
  c.course_key,lv.cefr_level,ch.chapter_key,ch.course_sequence,
  ch.primary_outcome_key,ch.source_hash,

  l.id AS lesson_id,l.lesson_key,l.title,l.title_translation,
  l.description,l.description_translation,l.lesson_type,l.estimated_duration_sec,

  ic.id AS interlocutor_character_id,
  ic.character_key AS interlocutor_character_key,
  ic.name AS interlocutor_character_name,
  ic.gender AS interlocutor_character_gender,

  a.id AS activity_id,a.activity_key,a.sort_order AS step_order,
  a.activity_type,a.purpose AS activity_purpose,
  a.prompt,a.instruction,a.config AS activity_config,

  t.id AS turn_id,t.turn_key,t.role AS turn_role,
  t.text AS turn_text,t.translation AS turn_translation,
  t.audio_url AS turn_audio_url,t.speech_target,t.speech_alternatives,
  t.tokens AS clickable_tokens,

  li.id AS lexical_item_id,
  li.lexical_key,
  li.item_type AS lexical_item_type,
  li.display_form AS lexical_text,
  li.lemma AS lexical_lemma,
  li.part_of_speech,
  li.sense_key,
  li.translation AS lexical_translation,
  li.audio_url AS lexical_audio_url

FROM lessons l
JOIN chapters ch ON ch.id=l.chapter_id
JOIN modules m ON m.id=ch.module_id
JOIN levels lv ON lv.id=m.level_id
JOIN courses c ON c.id=lv.course_id
LEFT JOIN characters ic ON ic.id=l.interlocutor_character_id
JOIN activities a ON a.lesson_id=l.id
LEFT JOIN turns t ON t.id=a.turn_id
LEFT JOIN lexical_items li ON li.id=a.lexical_item_id
WHERE l.id=@lesson_id
ORDER BY a.sort_order;

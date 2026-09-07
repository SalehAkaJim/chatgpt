-- NOVA v9: one-query lesson payload
SET @lesson_id=(
  SELECT l.id
  FROM lessons l
  JOIN chapters ch ON ch.id=l.chapter_id
  JOIN modules m ON m.id=ch.module_id
  JOIN levels lv ON lv.id=m.level_id
  JOIN courses c ON c.id=lv.course_id
  WHERE c.learning_language='de' AND c.base_language='fa'
    AND lv.sort_order=1 AND m.sort_order=1 AND ch.sort_order=1 AND l.sort_order=1
  ORDER BY l.id LIMIT 1
);

SELECT
  l.id AS lesson_id,l.title,l.title_translation,l.description,l.description_translation,
  l.lesson_type,l.storyline_key,l.storyline_order,l.difficulty,

  pc.id AS prompt_character_id,pc.name AS prompt_character_name,pc.gender AS prompt_character_gender,
  lc.id AS learner_character_id,lc.name AS learner_character_name,lc.gender AS learner_character_gender,

  story.story AS canonical_story,

  a.id AS activity_id,a.sort_order AS step_order,a.activity_type,a.prompt,a.instruction,a.config AS activity_config,

  t.id AS turn_id,t.role AS turn_role,t.text AS turn_text,t.translation AS turn_translation,
  t.audio_url AS turn_audio_url,t.speech_target,t.tokens AS clickable_tokens,t.grammar_title,t.grammar_note,

  w.id AS word_id,w.display_form AS word_text,w.lemma AS word_lemma,w.translation AS word_translation,
  w.part_of_speech,w.grammar AS word_grammar,w.distractors AS word_distractors,w.audio_url AS word_audio_url

FROM lessons l
JOIN characters pc ON pc.id=l.prompt_character_id
JOIN characters lc ON lc.id=l.learner_character_id
JOIN v_lesson_story story ON story.lesson_id=l.id
JOIN activities a ON a.lesson_id=l.id
LEFT JOIN turns t ON t.id=a.turn_id
LEFT JOIN words w ON w.id=a.word_id
WHERE l.id=@lesson_id
ORDER BY a.sort_order;

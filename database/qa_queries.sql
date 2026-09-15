-- Content QA queries for MySQL Content Schema v1
-- These queries are editorial checks; they do not modify content data.

-- 1) Every lesson must have an opening conversation_speaking activity at position 1.
SELECT
  l.public_id AS lesson_public_id,
  l.sequence_number,
  a.type_code AS opening_type
FROM lessons l
LEFT JOIN activities a
  ON a.lesson_id = l.id AND a.position = 1
WHERE a.id IS NULL OR a.type_code <> 'conversation_speaking';

-- 2) Lessons with zero activities.
SELECT l.public_id, l.sequence_number
FROM lessons l
LEFT JOIN activities a ON a.lesson_id = l.id
GROUP BY l.id, l.public_id, l.sequence_number
HAVING COUNT(a.id) = 0;

-- 3) Activity counts. There is intentionally no required fixed count.
SELECT
  lang.code AS language_code,
  c.code AS cefr_level,
  l.sequence_number,
  l.public_id,
  COUNT(a.id) AS activity_count
FROM lessons l
JOIN language_levels ll ON ll.id = l.language_level_id
JOIN languages lang ON lang.id = ll.language_id
JOIN cefr_levels c ON c.id = ll.cefr_level_id
LEFT JOIN activities a ON a.lesson_id = l.id
GROUP BY lang.code, c.code, l.id, l.sequence_number, l.public_id
ORDER BY lang.code, c.sort_order, l.sequence_number;

-- 4) Neighboring lessons with identical template signatures.
-- Repetition is not automatically an error, but consecutive repetition should be reviewed.
WITH ordered_lessons AS (
  SELECT
    l.id,
    l.public_id,
    l.language_level_id,
    l.sequence_number,
    l.template_signature,
    LAG(l.template_signature) OVER (
      PARTITION BY l.language_level_id
      ORDER BY l.sequence_number
    ) AS previous_signature,
    LAG(l.public_id) OVER (
      PARTITION BY l.language_level_id
      ORDER BY l.sequence_number
    ) AS previous_lesson
  FROM lessons l
)
SELECT public_id, previous_lesson, template_signature
FROM ordered_lessons
WHERE template_signature IS NOT NULL
  AND template_signature = previous_signature;

-- 5) Speaker gender evidence contradicts the assigned character.
SELECT
  d.public_id AS dialogue_public_id,
  dt.position,
  c.name AS character_name,
  c.gender AS character_gender,
  dt.speaker_gender_evidence
FROM dialogue_turns dt
JOIN dialogues d ON d.id = dt.dialogue_id
JOIN characters c ON c.id = dt.speaker_character_id
WHERE dt.speaker_gender_evidence IN ('female','male')
  AND c.gender IN ('female','male')
  AND dt.speaker_gender_evidence <> c.gender;

-- 6) Dialogues that do not contain any learner turn.
SELECT d.public_id
FROM dialogues d
LEFT JOIN dialogue_turns dt ON dt.dialogue_id = d.id
GROUP BY d.id, d.public_id
HAVING SUM(CASE WHEN dt.learner_turn = 1 THEN 1 ELSE 0 END) = 0;

-- 7) Final lessons with no source provenance.
SELECT l.public_id
FROM lessons l
LEFT JOIN lesson_sources ls ON ls.lesson_id = l.id
WHERE l.status = 'final'
GROUP BY l.id, l.public_id
HAVING COUNT(ls.source_item_id) = 0;

-- 8) Activities without source provenance.
SELECT a.public_id, a.type_code
FROM activities a
LEFT JOIN activity_sources s ON s.activity_id = a.id
GROUP BY a.id, a.public_id, a.type_code
HAVING COUNT(s.source_item_id) = 0;

-- 9) Dialogue turns without exact source provenance.
SELECT d.public_id, dt.position, dt.text_target
FROM dialogue_turns dt
JOIN dialogues d ON d.id = dt.dialogue_id
LEFT JOIN dialogue_turn_sources s ON s.dialogue_turn_id = dt.id
GROUP BY dt.id, d.public_id, dt.position, dt.text_target
HAVING COUNT(s.source_item_id) = 0;

-- 10) Lexemes without source provenance.
SELECT lx.public_id, lx.surface
FROM lexemes lx
LEFT JOIN lexeme_sources s ON s.lexeme_id = lx.id
GROUP BY lx.id, lx.public_id, lx.surface
HAVING COUNT(s.source_item_id) = 0;

-- 11) Grammar notes without source provenance.
SELECT gn.public_id, gn.title_fa
FROM grammar_notes gn
LEFT JOIN grammar_note_sources s ON s.grammar_note_id = gn.id
GROUP BY gn.id, gn.public_id, gn.title_fa
HAVING COUNT(s.source_item_id) = 0;

-- 12) Mandatory CEFR/curriculum targets that are still not adequately covered.
SELECT
  lang.code AS language_code,
  c.code AS cefr_level,
  ct.public_id,
  ct.target_type,
  ct.skill_area,
  ct.description,
  ct.coverage_status
FROM curriculum_targets ct
JOIN language_levels ll ON ll.id = ct.language_level_id
JOIN languages lang ON lang.id = ll.language_id
JOIN cefr_levels c ON c.id = ll.cefr_level_id
WHERE ct.is_mandatory = 1
  AND ct.coverage_status NOT IN ('covered','verified')
ORDER BY lang.code, c.sort_order, ct.id;

-- 13) Curriculum targets not linked to any lesson.
SELECT ct.public_id, ct.description
FROM curriculum_targets ct
LEFT JOIN lesson_targets lt ON lt.curriculum_target_id = ct.id
WHERE ct.is_mandatory = 1
GROUP BY ct.id, ct.public_id, ct.description
HAVING COUNT(lt.lesson_id) = 0;

-- 14) Audio created before the language reached final/audio_ready.
SELECT
  af.public_id AS audio_public_id,
  lang.code AS language_code,
  lang.status AS language_status,
  af.status AS audio_status
FROM audio_files af
JOIN languages lang ON lang.id = af.language_id
WHERE af.status IN ('generated','approved')
  AND lang.status NOT IN ('final','audio_ready');

-- 15) Lexeme audio uses more than one standalone voice in a language.
-- The product rule prefers one consistent voice (e.g. Hope or Lori) per language.
SELECT
  lang.code,
  COUNT(DISTINCT lx.standalone_voice_name) AS voice_count,
  GROUP_CONCAT(DISTINCT lx.standalone_voice_name ORDER BY lx.standalone_voice_name SEPARATOR ', ') AS voices
FROM lexemes lx
JOIN languages lang ON lang.id = lx.language_id
WHERE lx.standalone_voice_name IS NOT NULL
GROUP BY lang.id, lang.code
HAVING COUNT(DISTINCT lx.standalone_voice_name) > 1;

-- 16) Level readiness summary without join multiplication.
SELECT
  ll.id AS language_level_id,
  lang.code AS language_code,
  c.code AS cefr_level,
  ll.status,
  ll.planned_lesson_count,
  ll.lesson_count_status,
  (SELECT COUNT(*) FROM lessons l WHERE l.language_level_id = ll.id) AS current_lesson_count,
  (SELECT COUNT(*) FROM lessons l WHERE l.language_level_id = ll.id AND l.status = 'final') AS final_lesson_count,
  (SELECT COUNT(*) FROM curriculum_targets ct WHERE ct.language_level_id = ll.id) AS curriculum_target_count,
  (SELECT COUNT(*) FROM curriculum_targets ct WHERE ct.language_level_id = ll.id AND ct.coverage_status IN ('covered','verified')) AS covered_target_count,
  (SELECT COUNT(*) FROM curriculum_targets ct WHERE ct.language_level_id = ll.id AND ct.is_mandatory = 1 AND ct.coverage_status NOT IN ('covered','verified')) AS mandatory_gap_count
FROM language_levels ll
JOIN languages lang ON lang.id = ll.language_id
JOIN cefr_levels c ON c.id = ll.cefr_level_id
ORDER BY lang.code, c.sort_order;

-- 17) Hard source-reuse gate for user-facing teaching content.
-- Analysis-only sources such as CEFR may support curriculum_targets, but they must
-- never become provenance for lesson text, activities, dialogue, lexemes, grammar
-- notes or examples shown to learners. This gate is intentionally global so every
-- future language inherits the same rule.
DROP PROCEDURE IF EXISTS assert_active_source_reuse_policy;
DELIMITER $$
CREATE PROCEDURE assert_active_source_reuse_policy()
BEGIN
  DECLARE blocked_source_count INT DEFAULT 0;
  DECLARE attribution_gap_count INT DEFAULT 0;
  DECLARE source_metadata_gap_count INT DEFAULT 0;

  SELECT COUNT(DISTINCT s.id) INTO blocked_source_count
  FROM sources s
  JOIN source_items si ON si.source_id = s.id
  JOIN (
    SELECT ls.source_item_id
      FROM lesson_sources ls
      JOIN lessons l ON l.id = ls.lesson_id
    UNION
    SELECT aus.source_item_id
      FROM activity_sources aus
      JOIN activities a ON a.id = aus.activity_id
      JOIN lessons l ON l.id = a.lesson_id
    UNION
    SELECT ais.source_item_id
      FROM activity_item_sources ais
      JOIN activity_items ai ON ai.id = ais.activity_item_id
      JOIN activities a ON a.id = ai.activity_id
      JOIN lessons l ON l.id = a.lesson_id
    UNION
    SELECT ds.source_item_id
      FROM dialogue_sources ds
      JOIN dialogues d ON d.id = ds.dialogue_id
      JOIN activities a ON a.dialogue_id = d.id
      JOIN lessons l ON l.id = a.lesson_id
    UNION
    SELECT dts.source_item_id
      FROM dialogue_turn_sources dts
      JOIN dialogue_turns dt ON dt.id = dts.dialogue_turn_id
      JOIN dialogues d ON d.id = dt.dialogue_id
      JOIN activities a ON a.dialogue_id = d.id
      JOIN lessons l ON l.id = a.lesson_id
    UNION
    SELECT lxs.source_item_id
      FROM lexeme_sources lxs
      JOIN lesson_lexemes llx ON llx.lexeme_id = lxs.lexeme_id
      JOIN lessons l ON l.id = llx.lesson_id
    UNION
    SELECT gns.source_item_id
      FROM grammar_note_sources gns
      JOIN lesson_grammar_notes lgn ON lgn.grammar_note_id = gns.grammar_note_id
      JOIN lessons l ON l.id = lgn.lesson_id
    UNION
    SELECT ess.source_item_id
      FROM example_sentence_sources ess
      JOIN lexeme_examples le ON le.example_sentence_id = ess.example_sentence_id
      JOIN lesson_lexemes llx ON llx.lexeme_id = le.lexeme_id
      JOIN lessons l ON l.id = llx.lesson_id
    UNION
    SELECT ess.source_item_id
      FROM example_sentence_sources ess
      JOIN grammar_note_examples gne ON gne.example_sentence_id = ess.example_sentence_id
      JOIN lesson_grammar_notes lgn ON lgn.grammar_note_id = gne.grammar_note_id
      JOIN lessons l ON l.id = lgn.lesson_id
  ) active_source_items ON active_source_items.source_item_id = si.id
  WHERE s.reuse_status IN ('analysis_only','needs_review');

  IF blocked_source_count <> 0 THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'QA failed: analysis_only/needs_review source is linked to active teaching content';
  END IF;

  SELECT COUNT(DISTINCT s.id) INTO attribution_gap_count
  FROM sources s
  JOIN source_items si ON si.source_id = s.id
  JOIN (
    SELECT ls.source_item_id FROM lesson_sources ls JOIN lessons l ON l.id=ls.lesson_id
    UNION SELECT aus.source_item_id FROM activity_sources aus JOIN activities a ON a.id=aus.activity_id JOIN lessons l ON l.id=a.lesson_id
    UNION SELECT ais.source_item_id FROM activity_item_sources ais JOIN activity_items ai ON ai.id=ais.activity_item_id JOIN activities a ON a.id=ai.activity_id JOIN lessons l ON l.id=a.lesson_id
    UNION SELECT ds.source_item_id FROM dialogue_sources ds JOIN dialogues d ON d.id=ds.dialogue_id JOIN activities a ON a.dialogue_id=d.id JOIN lessons l ON l.id=a.lesson_id
    UNION SELECT dts.source_item_id FROM dialogue_turn_sources dts JOIN dialogue_turns dt ON dt.id=dts.dialogue_turn_id JOIN dialogues d ON d.id=dt.dialogue_id JOIN activities a ON a.dialogue_id=d.id JOIN lessons l ON l.id=a.lesson_id
    UNION SELECT lxs.source_item_id FROM lexeme_sources lxs JOIN lesson_lexemes llx ON llx.lexeme_id=lxs.lexeme_id JOIN lessons l ON l.id=llx.lesson_id
    UNION SELECT gns.source_item_id FROM grammar_note_sources gns JOIN lesson_grammar_notes lgn ON lgn.grammar_note_id=gns.grammar_note_id JOIN lessons l ON l.id=lgn.lesson_id
    UNION SELECT ess.source_item_id FROM example_sentence_sources ess JOIN lexeme_examples le ON le.example_sentence_id=ess.example_sentence_id JOIN lesson_lexemes llx ON llx.lexeme_id=le.lexeme_id JOIN lessons l ON l.id=llx.lesson_id
    UNION SELECT ess.source_item_id FROM example_sentence_sources ess JOIN grammar_note_examples gne ON gne.example_sentence_id=ess.example_sentence_id JOIN lesson_grammar_notes lgn ON lgn.grammar_note_id=gne.grammar_note_id JOIN lessons l ON l.id=lgn.lesson_id
  ) active_source_items ON active_source_items.source_item_id = si.id
  WHERE s.reuse_status='reuse_with_attribution'
    AND (s.attribution_text IS NULL OR TRIM(s.attribution_text)='');

  IF attribution_gap_count <> 0 THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'QA failed: attribution-required active source has no attribution text';
  END IF;

  SELECT COUNT(DISTINCT s.id) INTO source_metadata_gap_count
  FROM sources s
  JOIN source_items si ON si.source_id = s.id
  JOIN (
    SELECT ls.source_item_id FROM lesson_sources ls JOIN lessons l ON l.id=ls.lesson_id
    UNION SELECT aus.source_item_id FROM activity_sources aus JOIN activities a ON a.id=aus.activity_id JOIN lessons l ON l.id=a.lesson_id
    UNION SELECT ais.source_item_id FROM activity_item_sources ais JOIN activity_items ai ON ai.id=ais.activity_item_id JOIN activities a ON a.id=ai.activity_id JOIN lessons l ON l.id=a.lesson_id
    UNION SELECT ds.source_item_id FROM dialogue_sources ds JOIN dialogues d ON d.id=ds.dialogue_id JOIN activities a ON a.dialogue_id=d.id JOIN lessons l ON l.id=a.lesson_id
    UNION SELECT dts.source_item_id FROM dialogue_turn_sources dts JOIN dialogue_turns dt ON dt.id=dts.dialogue_turn_id JOIN dialogues d ON d.id=dt.dialogue_id JOIN activities a ON a.dialogue_id=d.id JOIN lessons l ON l.id=a.lesson_id
    UNION SELECT lxs.source_item_id FROM lexeme_sources lxs JOIN lesson_lexemes llx ON llx.lexeme_id=lxs.lexeme_id JOIN lessons l ON l.id=llx.lesson_id
    UNION SELECT gns.source_item_id FROM grammar_note_sources gns JOIN lesson_grammar_notes lgn ON lgn.grammar_note_id=gns.grammar_note_id JOIN lessons l ON l.id=lgn.lesson_id
    UNION SELECT ess.source_item_id FROM example_sentence_sources ess JOIN lexeme_examples le ON le.example_sentence_id=ess.example_sentence_id JOIN lesson_lexemes llx ON llx.lexeme_id=le.lexeme_id JOIN lessons l ON l.id=llx.lesson_id
    UNION SELECT ess.source_item_id FROM example_sentence_sources ess JOIN grammar_note_examples gne ON gne.example_sentence_id=ess.example_sentence_id JOIN lesson_grammar_notes lgn ON lgn.grammar_note_id=gne.grammar_note_id JOIN lessons l ON l.id=lgn.lesson_id
  ) active_source_items ON active_source_items.source_item_id = si.id
  WHERE s.base_url IS NULL OR TRIM(s.base_url)=''
     OR s.license_name IS NULL OR TRIM(s.license_name)=''
     OR (s.reuse_status='reuse_with_attribution' AND (s.license_url IS NULL OR TRIM(s.license_url)=''));

  IF source_metadata_gap_count <> 0 THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'QA failed: active teaching source is missing required URL/license metadata';
  END IF;
END$$
DELIMITER ;

CALL assert_active_source_reuse_policy();
DROP PROCEDURE assert_active_source_reuse_policy;

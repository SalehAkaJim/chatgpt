-- Permanent German Pre-A1 regression guard.
-- Target: MySQL 9.0.1
--
-- Keep this file lexicographically last in database/content so it runs after every
-- content batch. These source items remain in the historical inventory, but their
-- teaching paths were explicitly replaced by newer/modern sources. They must not
-- reappear anywhere in active German Pre-A1 learner-facing provenance.

SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS assert_de_pre_a1_retired_sources_inactive;
DELIMITER $$
CREATE PROCEDURE assert_de_pre_a1_retired_sources_inactive()
BEGIN
  DECLARE retired_link_count INT DEFAULT 0;

  SELECT COUNT(*) INTO retired_link_count
  FROM (
    SELECT ls.source_item_id
    FROM lesson_sources ls
    JOIN lessons l ON l.id=ls.lesson_id
    WHERE l.public_id LIKE 'de_pre_a1_l%'

    UNION ALL

    SELECT acs.source_item_id
    FROM activity_sources acs
    JOIN activities a ON a.id=acs.activity_id
    JOIN lessons l ON l.id=a.lesson_id
    WHERE l.public_id LIKE 'de_pre_a1_l%'

    UNION ALL

    SELECT ais.source_item_id
    FROM activity_item_sources ais
    JOIN activity_items ai ON ai.id=ais.activity_item_id
    JOIN activities a ON a.id=ai.activity_id
    JOIN lessons l ON l.id=a.lesson_id
    WHERE l.public_id LIKE 'de_pre_a1_l%'

    UNION ALL

    SELECT ds.source_item_id
    FROM dialogue_sources ds
    JOIN dialogues d ON d.id=ds.dialogue_id
    JOIN activities a ON a.dialogue_id=d.id
    JOIN lessons l ON l.id=a.lesson_id
    WHERE l.public_id LIKE 'de_pre_a1_l%'

    UNION ALL

    SELECT dts.source_item_id
    FROM dialogue_turn_sources dts
    JOIN dialogue_turns dt ON dt.id=dts.dialogue_turn_id
    JOIN dialogues d ON d.id=dt.dialogue_id
    JOIN activities a ON a.dialogue_id=d.id
    JOIN lessons l ON l.id=a.lesson_id
    WHERE l.public_id LIKE 'de_pre_a1_l%'

    UNION ALL

    SELECT lxs.source_item_id
    FROM lexeme_sources lxs
    JOIN lesson_lexemes llx ON llx.lexeme_id=lxs.lexeme_id
    JOIN lessons l ON l.id=llx.lesson_id
    WHERE l.public_id LIKE 'de_pre_a1_l%'

    UNION ALL

    SELECT gns.source_item_id
    FROM grammar_note_sources gns
    JOIN lesson_grammar_notes lgn ON lgn.grammar_note_id=gns.grammar_note_id
    JOIN lessons l ON l.id=lgn.lesson_id
    WHERE l.public_id LIKE 'de_pre_a1_l%'

    UNION ALL

    SELECT ess.source_item_id
    FROM example_sentence_sources ess
    JOIN lexeme_examples le ON le.example_sentence_id=ess.example_sentence_id
    JOIN lesson_lexemes llx ON llx.lexeme_id=le.lexeme_id
    JOIN lessons l ON l.id=llx.lesson_id
    WHERE l.public_id LIKE 'de_pre_a1_l%'

    UNION ALL

    SELECT ess.source_item_id
    FROM example_sentence_sources ess
    JOIN grammar_note_examples gne ON gne.example_sentence_id=ess.example_sentence_id
    JOIN lesson_grammar_notes lgn ON lgn.grammar_note_id=gne.grammar_note_id
    JOIN lessons l ON l.id=lgn.lesson_id
    WHERE l.public_id LIKE 'de_pre_a1_l%'
  ) active_links
  JOIN source_items si ON si.id=active_links.source_item_id
  WHERE si.public_id IN (
    'srcitem_headstart_m3_u1_restaurant',
    'srcitem_headstart_m6_u1_purchase',
    'srcitem_headstart_m3_u1_menu_visual',
    'srcitem_solt_m2_l1_age',
    'srcitem_fast_l9_invitation'
  );

  IF retired_link_count <> 0 THEN
    SIGNAL SQLSTATE '45000'
      SET MESSAGE_TEXT = 'QA failed: retired German Pre-A1 source reappeared in active learner-facing provenance';
  END IF;
END$$
DELIMITER ;

CALL assert_de_pre_a1_retired_sources_inactive();
DROP PROCEDURE assert_de_pre_a1_retired_sources_inactive;

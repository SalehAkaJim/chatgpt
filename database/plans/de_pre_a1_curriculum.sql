-- German Pre-A1 planning data
-- Target: MySQL 9.0.1
-- This file creates source inventory records + CEFR-aligned curriculum targets.
-- It does NOT create lesson content.

SET NAMES utf8mb4;

-- -----------------------------------------------------------------------------
-- Source inventory
-- -----------------------------------------------------------------------------

INSERT IGNORE INTO sources
  (public_id, title, organization_or_author, source_language_code, source_type, base_url, license_name, license_url, attribution_text, reuse_status, notes)
VALUES
  ('src_cefr_2020', 'CEFR Companion Volume 2020', 'Council of Europe', 'en', 'grammar_reference', 'https://www.coe.int/en/web/common-european-framework-reference-languages/cefr-companion-volume-and-its-language-versions', NULL, NULL, 'Council of Europe CEFR Companion Volume (2020)', 'analysis_only', 'Used to define level coverage and curriculum targets; not a source of German lesson text.'),
  ('src_fsi_de_programmed_intro', 'FSI German Programmed Introduction', 'Foreign Service Institute', 'de', 'course', 'https://www.fsi-language-courses.org/fsi-german-programmed-introduction-course/', 'Public Domain', NULL, 'Foreign Service Institute German Programmed Introduction', 'direct_reuse_allowed', 'Primary beginner source. 25 units; dialogue-led; includes phonology, comprehension, pronunciation, fluency, application and participation work.'),
  ('src_dli_de_headstart', 'German Headstart', 'Defense Language Institute / U.S. Government', 'de', 'course', 'https://www.fsi-language-courses.org/german/courses/dli-german-headstart-course/', 'Public Domain', NULL, 'German Headstart (Defense Language Institute)', 'direct_reuse_allowed', 'Primary survival-language source: directions, numbers, greetings, courtesy, meals, money, time, dates, shopping, telephone and other basic situations.'),
  ('src_fsi_de_basic', 'FSI German Basic Course', 'Foreign Service Institute', 'de', 'course', 'https://www.fsi-language-courses.org/fsi-german-basic-course/', 'Public Domain', NULL, 'Foreign Service Institute German Basic Course', 'direct_reuse_allowed', 'Backup source for dialogues, vocabulary and structural notes.'),
  ('src_tatoeba_de', 'Tatoeba German Corpus', 'Tatoeba community', 'de', 'corpus', 'https://tatoeba.org/', 'CC BY 2.0 FR (default text corpus; item-level exceptions/CC0 possible)', 'https://creativecommons.org/licenses/by/2.0/fr/', 'Sentence attribution must retain Tatoeba contributor/license metadata.', 'reuse_with_attribution', 'Supplemental only. Individual sentence provenance/author/license must be stored when a sentence is selected.');

INSERT IGNORE INTO source_items (source_id, public_id, title, locator, item_url, notes)
SELECT s.id, 'srcitem_cefr_pre_a1_overview', 'CEFR Pre-A1 overview', 'Companion Volume 2020: Pre-A1 band', s.base_url, 'Pre-A1 is a milestone below A1; learners rely mainly on a repertoire of words and formulaic expressions.'
FROM sources s WHERE s.public_id = 'src_cefr_2020';

INSERT IGNORE INTO source_items (source_id, public_id, title, locator, item_url, notes)
SELECT s.id, 'srcitem_cefr_pre_a1_listening', 'CEFR Pre-A1 listening/understanding', 'Pre-A1 listening and understanding-an-interlocutor descriptor scales', s.base_url, 'Slow, clear, very short input; familiar words/greetings; basic personal information; numbers/prices/dates/days.'
FROM sources s WHERE s.public_id = 'src_cefr_2020';

INSERT IGNORE INTO source_items (source_id, public_id, title, locator, item_url, notes)
SELECT s.id, 'srcitem_cefr_pre_a1_interaction', 'CEFR Pre-A1 spoken interaction', 'Pre-A1 conversation, information exchange, goods/services descriptor scales', s.base_url, 'Greetings/courtesy, name, numbers, day/time/date, date of birth, phone number, age, very simple questions, simple purchase/order.'
FROM sources s WHERE s.public_id = 'src_cefr_2020';

INSERT IGNORE INTO source_items (source_id, public_id, title, locator, item_url, notes)
SELECT s.id, 'srcitem_cefr_pre_a1_reading', 'CEFR Pre-A1 reading', 'Pre-A1 reading comprehension/correspondence/instructions descriptor scales', s.base_url, 'Familiar words with pictures, simple notes/invitations, simplest informational materials and short everyday instructions.'
FROM sources s WHERE s.public_id = 'src_cefr_2020';

INSERT IGNORE INTO source_items (source_id, public_id, title, locator, item_url, notes)
SELECT s.id, 'srcitem_cefr_pre_a1_writing', 'CEFR Pre-A1 writing', 'Pre-A1 written production/interaction/forms descriptor scales', s.base_url, 'Basic personal information, short phrases, very simple registration forms.'
FROM sources s WHERE s.public_id = 'src_cefr_2020';

INSERT IGNORE INTO source_items (source_id, public_id, title, locator, item_url, notes)
SELECT s.id, 'srcitem_cefr_pre_a1_linguistic', 'CEFR Pre-A1 linguistic competence', 'Pre-A1 linguistic range / grammatical accuracy / fluency descriptor scales', s.base_url, 'Isolated words/basic expressions, very simple word order, very short rehearsed utterances.'
FROM sources s WHERE s.public_id = 'src_cefr_2020';

INSERT IGNORE INTO source_items (source_id, public_id, title, locator, item_url, notes)
SELECT s.id, 'srcitem_fsi_de_programmed_overview', 'FSI German Programmed Introduction course', '25 units; first six Basic-course units expanded for beginners', s.base_url, 'Dialogue-led primary source for source extraction.'
FROM sources s WHERE s.public_id = 'src_fsi_de_programmed_intro';

INSERT IGNORE INTO source_items (source_id, public_id, title, locator, item_url, notes)
SELECT s.id, 'srcitem_dli_de_headstart_overview', 'German Headstart course', 'Modules I-X', s.base_url, 'Survival-topic dialogue source; candidate material will be selected at exact module/unit level during lesson extraction.'
FROM sources s WHERE s.public_id = 'src_dli_de_headstart';

INSERT IGNORE INTO source_items (source_id, public_id, title, locator, item_url, notes)
SELECT s.id, 'srcitem_fsi_de_basic_overview', 'FSI German Basic Course', 'Units 1-24', s.base_url, 'Backup dialogue/grammar/vocabulary source; exact unit locators added when used.'
FROM sources s WHERE s.public_id = 'src_fsi_de_basic';

INSERT IGNORE INTO source_items (source_id, public_id, title, locator, item_url, notes)
SELECT s.id, 'srcitem_tatoeba_de_corpus', 'Tatoeba German corpus', 'German sentence corpus', s.base_url, 'Supplemental gap-filling source only. Selected sentence records must get exact contributor/license provenance.'
FROM sources s WHERE s.public_id = 'src_tatoeba_de';

-- -----------------------------------------------------------------------------
-- German Pre-A1 level state
-- -----------------------------------------------------------------------------

UPDATE language_levels ll
JOIN languages l ON l.id = ll.language_id AND l.code = 'de'
JOIN cefr_levels c ON c.id = ll.cefr_level_id AND c.code = 'Pre-A1'
SET ll.status = 'planning',
    ll.planned_lesson_count = 30,
    ll.lesson_count_status = 'provisional',
    ll.coverage = JSON_OBJECT(
      'planningVersion', 1,
      'mandatoryTargetCount', 30,
      'provisionalLessonCount', 30,
      'principle', 'Lesson count is derived from coverage and may change after exact source-to-lesson mapping.'
    );

-- -----------------------------------------------------------------------------
-- Mandatory curriculum targets
-- Descriptions are internal paraphrases of CEFR coverage; not lesson text.
-- -----------------------------------------------------------------------------

INSERT IGNORE INTO curriculum_targets
  (public_id, language_level_id, target_type, skill_area, description, source_item_id, is_mandatory, coverage_status)
SELECT x.public_id, ll.id, x.target_type, x.skill_area, x.description, si.id, 1, 'uncovered'
FROM languages l
JOIN language_levels ll ON ll.language_id = l.id
JOIN cefr_levels c ON c.id = ll.cefr_level_id AND c.code = 'Pre-A1'
JOIN (
  SELECT 'de_pre_a1_ct_001' public_id, 'communicative_function' target_type, 'spoken_interaction' skill_area, 'Recognise and use basic greetings and leave-taking formulas.' description, 'srcitem_cefr_pre_a1_interaction' source_public_id UNION ALL
  SELECT 'de_pre_a1_ct_002','communicative_function','spoken_interaction','Recognise and use a small fixed set of courtesy formulas such as yes/no/please/thanks/sorry/excuse-me.','srcitem_cefr_pre_a1_interaction' UNION ALL
  SELECT 'de_pre_a1_ct_003','reception','listening','Understand very short, very simple questions/statements when delivered slowly and clearly with contextual or visual support.','srcitem_cefr_pre_a1_listening' UNION ALL
  SELECT 'de_pre_a1_ct_004','reception','listening','Understand basic personal information such as name, age, residence and origin when spoken slowly and clearly.','srcitem_cefr_pre_a1_listening' UNION ALL
  SELECT 'de_pre_a1_ct_005','information_exchange','spoken_interaction','Give own name and ask another person for their name.','srcitem_cefr_pre_a1_interaction' UNION ALL
  SELECT 'de_pre_a1_ct_006','information_exchange','spoken_interaction','Give and understand age in a highly predictable exchange.','srcitem_cefr_pre_a1_interaction' UNION ALL
  SELECT 'de_pre_a1_ct_007','personal_information','spoken_production','Give minimal rehearsed information about origin/nationality.','srcitem_cefr_pre_a1_linguistic' UNION ALL
  SELECT 'de_pre_a1_ct_008','personal_information','spoken_production','Give minimal rehearsed information about where one lives.','srcitem_cefr_pre_a1_linguistic' UNION ALL
  SELECT 'de_pre_a1_ct_009','personal_information','spoken_production','Recognise immediate family labels and give minimal rehearsed family information.','srcitem_cefr_pre_a1_linguistic' UNION ALL
  SELECT 'de_pre_a1_ct_010','numbers','spoken_interaction','Understand and use simple numbers in everyday conversations.','srcitem_cefr_pre_a1_interaction' UNION ALL
  SELECT 'de_pre_a1_ct_011','information_exchange','spoken_interaction','Give and understand a phone number.','srcitem_cefr_pre_a1_interaction' UNION ALL
  SELECT 'de_pre_a1_ct_012','time_date','spoken_interaction','Ask for and give day, time of day and date in very simple exchanges.','srcitem_cefr_pre_a1_interaction' UNION ALL
  SELECT 'de_pre_a1_ct_013','time_date','spoken_interaction','Ask for and give a date of birth.','srcitem_cefr_pre_a1_interaction' UNION ALL
  SELECT 'de_pre_a1_ct_014','reception','listening','Recognise familiar words/greetings and key information such as numbers, prices, dates and days in very slow clear speech.','srcitem_cefr_pre_a1_listening' UNION ALL
  SELECT 'de_pre_a1_ct_015','location','listening','Understand very simple information about where a familiar object/place is when delivered slowly and clearly with support.','srcitem_cefr_pre_a1_listening' UNION ALL
  SELECT 'de_pre_a1_ct_016','information_exchange','spoken_interaction','Ask a very simple question for concrete information and understand a one- or two-word answer.','srcitem_cefr_pre_a1_interaction' UNION ALL
  SELECT 'de_pre_a1_ct_017','instructions','listening','Understand very short familiar action instructions when spoken slowly with visual/gesture support.','srcitem_cefr_pre_a1_listening' UNION ALL
  SELECT 'de_pre_a1_ct_018','reception','listening','Recognise already-known words, names and numbers in short recordings delivered very slowly and clearly.','srcitem_cefr_pre_a1_listening' UNION ALL
  SELECT 'de_pre_a1_ct_019','reading','reading','Recognise familiar words when supported by pictures or other strong visual context.','srcitem_cefr_pre_a1_reading' UNION ALL
  SELECT 'de_pre_a1_ct_020','reading','reading','Recognise time and place information in a very simple note/message.','srcitem_cefr_pre_a1_reading' UNION ALL
  SELECT 'de_pre_a1_ct_021','reading','reading','Extract event, day, time and location from a very simple invitation/card/message.','srcitem_cefr_pre_a1_reading' UNION ALL
  SELECT 'de_pre_a1_ct_022','reading','reading','Understand the simplest informational material built from familiar words plus pictures.','srcitem_cefr_pre_a1_reading' UNION ALL
  SELECT 'de_pre_a1_ct_023','instructions','reading','Understand extremely short familiar everyday signs/instructions, especially with visual support.','srcitem_cefr_pre_a1_reading' UNION ALL
  SELECT 'de_pre_a1_ct_024','transaction','spoken_interaction','Make a very simple purchase or order food/drink when pointing/gesture can support the spoken reference.','srcitem_cefr_pre_a1_interaction' UNION ALL
  SELECT 'de_pre_a1_ct_025','transaction','spoken_interaction','Recognise and use prices/simple transactional numbers in a highly predictable purchase context.','srcitem_cefr_pre_a1_interaction' UNION ALL
  SELECT 'de_pre_a1_ct_026','personal_information','spoken_production','Describe self with a very small rehearsed repertoire such as name, age and family.','srcitem_cefr_pre_a1_linguistic' UNION ALL
  SELECT 'de_pre_a1_ct_027','personal_state','spoken_production','State a simple feeling using a small fixed repertoire.','srcitem_cefr_pre_a1_linguistic' UNION ALL
  SELECT 'de_pre_a1_ct_028','writing','written_production','Write basic personal information such as name, address and nationality, with reference support if needed.','srcitem_cefr_pre_a1_writing' UNION ALL
  SELECT 'de_pre_a1_ct_029','writing','written_interaction','Write short phrases containing basic personal information and complete a very simple registration form.','srcitem_cefr_pre_a1_writing' UNION ALL
  SELECT 'de_pre_a1_ct_030','linguistic_competence','grammar','Use very simple word order in short rehearsed statements; pronunciation work is distributed through source-backed German material.','srcitem_cefr_pre_a1_linguistic'
) x
JOIN source_items si ON si.public_id = x.source_public_id
WHERE l.code = 'de';

-- Planning sanity checks.
SELECT
  l.code AS language_code,
  c.code AS cefr_level,
  ll.status,
  ll.planned_lesson_count,
  ll.lesson_count_status,
  COUNT(ct.id) AS mandatory_target_count
FROM language_levels ll
JOIN languages l ON l.id = ll.language_id
JOIN cefr_levels c ON c.id = ll.cefr_level_id
LEFT JOIN curriculum_targets ct ON ct.language_level_id = ll.id AND ct.is_mandatory = 1
WHERE l.code = 'de' AND c.code = 'Pre-A1'
GROUP BY l.code, c.code, ll.status, ll.planned_lesson_count, ll.lesson_count_status;

-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 085
-- B1 > Entscheidungen & Gründe > Ich habe mich entschieden
-- Requires canonical Nova v9.0 and QA-passed staged Series 081-084.
-- Uses the unchanged Nova v9.0 schema; contains no schema DDL.
-- ===============================================================
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_series_085_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_085_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_level BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_mia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_sara BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_001 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_002 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_003 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_004 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_005 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_006 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_007 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_008 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_009 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_010 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_011 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_012 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_013 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_014 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_015 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_016 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_017 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_018 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_019 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_020 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_021 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_022 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_023 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_024 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_025 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_026 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_027 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_028 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_029 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_030 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_031 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_032 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_033 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_034 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_035 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_036 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_037 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_038 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_039 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_040 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_041 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_042 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_043 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_044 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_045 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_046 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_047 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_048 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_049 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_050 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_051 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_052 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_053 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_054 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_055 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_056 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_057 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_058 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_059 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_060 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_061 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_062 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_063 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_064 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_065 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_066 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_067 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_068 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_069 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_070 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_071 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_072 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_073 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_l_1 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_l_2 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_l_3 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_l_4 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_1 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_2 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_3 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_4 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_5 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_6 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_7 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_8 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_9 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_10 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_11 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_12 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_13 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_14 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_15 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_16 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_17 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_18 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_19 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_20 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_21 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_22 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_23 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_24 BIGINT UNSIGNED DEFAULT NULL;

  DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN ROLLBACK; RESIGNAL; END;
  START TRANSACTION;
  SELECT id INTO v_course FROM courses WHERE learning_language='de' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='B1' AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Level from Series 081 not found.'; END IF;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 01 from Series 081 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE module_id=v_module AND sort_order IN (1,2,3,4) AND status IN ('validated','complete');
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 081-084 Chapters must be validated before Series 085.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons l JOIN chapters c ON c.id=l.chapter_id WHERE c.module_id=v_module AND c.sort_order IN (1,2,3,4) AND l.storyline_key='mia-sara-b1-decisions' AND l.storyline_order BETWEEN 1 AND 16;
  IF v_count<>16 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 081-084 storyline orders 1-16 are required.'; END IF;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=5 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 01 Chapter 05 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='Ich habe mich entschieden' AND title_translation='تصمیمم رو گرفتم';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 085 canonical Chapter title mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 01 Chapter 05 must be empty before Series 085 import.'; END IF;
  SELECT id INTO v_c_mia FROM characters WHERE course_id=v_course AND name='Mia' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_mia IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Mia not found.'; END IF;
  SELECT id INTO v_c_sara FROM characters WHERE course_id=v_course AND name='Sara' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_sara IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Sara not found.'; END IF;
  IF v_c_mia=v_c_sara THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Mia and Sara must be distinct Characters.'; END IF;

  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: haben | verb'; END IF;

  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: du | pronoun'; END IF;

  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='beide' AND part_of_speech='pronoun' AND translation='هر دو' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: beide | pronoun'; END IF;

  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='Wohnung' AND part_of_speech='noun' AND translation='خانه / آپارتمان' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Wohnung | noun'; END IF;

  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='vergleichen' AND part_of_speech='verb' AND translation='مقایسه کردن' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: vergleichen | verb'; END IF;

  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ja | interjection'; END IF;

  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ich | pronoun'; END IF;

  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='sich entscheiden' AND part_of_speech='verb' AND translation='تصمیم گرفتن' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sich entscheiden | verb'; END IF;

  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='welche' AND part_of_speech='pronoun' AND translation='کدام / چه' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: welche | pronoun'; END IF;

  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='wählen' AND part_of_speech='verb' AND translation='انتخاب کردن' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'wählen','wählen','verb','انتخاب کردن',43,'{"participle":"gewählt","type":"regular_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"wohnen","translation":"ساکن بودن"},{"text":"ändern","translation":"تغییر دادن"},{"text":"suchen","translation":"جست و جو کردن"}]','Welche Wohnung hast du gewählt?','کدوم خونه رو انتخاب کردی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":85}');
    SET v_w_010=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: der | article'; END IF;

  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='zweite' AND part_of_speech='adjective' AND translation='دومین' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zweite | adjective'; END IF;

  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='passen' AND part_of_speech='verb' AND translation='اندازه بودن / مناسب بودن' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: passen | verb'; END IF;

  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='besser' AND part_of_speech='adverb' AND translation='بهتر' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: besser | adverb'; END IF;

  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='zu' AND part_of_speech='preposition' AND translation='به / به سمت' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zu | preposition'; END IF;

  SELECT id INTO v_w_016 FROM words WHERE course_id=v_course AND lemma='mein' AND part_of_speech='determiner' AND translation='مال من / من' ORDER BY id LIMIT 1;
  IF v_w_016 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: mein | determiner'; END IF;

  SELECT id INTO v_w_017 FROM words WHERE course_id=v_course AND lemma='Alltag' AND part_of_speech='noun' AND translation='زندگی روزمره' ORDER BY id LIMIT 1;
  IF v_w_017 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Alltag | noun'; END IF;

  SELECT id INTO v_w_018 FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_018 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sein | verb'; END IF;

  SELECT id INTO v_w_019 FROM words WHERE course_id=v_course AND lemma='jetzt' AND part_of_speech='adverb' AND translation='حالا / اکنون' ORDER BY id LIMIT 1;
  IF v_w_019 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: jetzt | adverb'; END IF;

  SELECT id INTO v_w_020 FROM words WHERE course_id=v_course AND lemma='sicher' AND part_of_speech='adjective' AND translation='مطمئن' ORDER BY id LIMIT 1;
  IF v_w_020 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sicher | adjective'; END IF;

  SELECT id INTO v_w_021 FROM words WHERE course_id=v_course AND lemma='warum' AND part_of_speech='adverb' AND translation='چرا' ORDER BY id LIMIT 1;
  IF v_w_021 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: warum | adverb'; END IF;

  SELECT id INTO v_w_022 FROM words WHERE course_id=v_course AND lemma='weil' AND part_of_speech='conjunction' AND translation='چون / زیرا' ORDER BY id LIMIT 1;
  IF v_w_022 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: weil | conjunction'; END IF;

  SELECT id INTO v_w_023 FROM words WHERE course_id=v_course AND lemma='sie' AND part_of_speech='pronoun' AND translation='او / آن ها' ORDER BY id LIMIT 1;
  IF v_w_023 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sie | pronoun'; END IF;

  SELECT id INTO v_w_024 FROM words WHERE course_id=v_course AND lemma='ruhig' AND part_of_speech='adjective' AND translation='آرام' ORDER BY id LIMIT 1;
  IF v_w_024 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ruhig | adjective'; END IF;

  SELECT id INTO v_w_025 FROM words WHERE course_id=v_course AND lemma='und' AND part_of_speech='conjunction' AND translation='و' ORDER BY id LIMIT 1;
  IF v_w_025 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: und | conjunction'; END IF;

  SELECT id INTO v_w_026 FROM words WHERE course_id=v_course AND lemma='nah' AND part_of_speech='adjective' AND translation='نزدیک' ORDER BY id LIMIT 1;
  IF v_w_026 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: nah | adjective'; END IF;

  SELECT id INTO v_w_027 FROM words WHERE course_id=v_course AND lemma='an' AND part_of_speech='preposition' AND translation='در / در روز' ORDER BY id LIMIT 1;
  IF v_w_027 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: an | preposition'; END IF;

  SELECT id INTO v_w_028 FROM words WHERE course_id=v_course AND lemma='Arbeit' AND part_of_speech='noun' AND translation='کار' ORDER BY id LIMIT 1;
  IF v_w_028 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Arbeit | noun'; END IF;

  SELECT id INTO v_w_029 FROM words WHERE course_id=v_course AND lemma='klein' AND part_of_speech='adjective' AND translation='کوچک' ORDER BY id LIMIT 1;
  IF v_w_029 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: klein | adjective'; END IF;

  SELECT id INTO v_w_030 FROM words WHERE course_id=v_course AND lemma='Raum' AND part_of_speech='noun' AND translation='فضا / اتاق' ORDER BY id LIMIT 1;
  IF v_w_030 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Raum','Raum','noun','فضا / اتاق',43,'{"gender":"masculine","plural":"Räume"}','[{"text":"Wohnung","translation":"خانه"},{"text":"Arbeit","translation":"کار"},{"text":"Ruhe","translation":"آرامش"},{"text":"Platz","translation":"فضا"},{"text":"Straße","translation":"خیابان"}]','Und der kleinere Raum?','و فضای کوچک تر چی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":85}');
    SET v_w_030=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_031 FROM words WHERE course_id=v_course AND lemma='damit' AND part_of_speech='adverb' AND translation='با آن / با این موضوع' ORDER BY id LIMIT 1;
  IF v_w_031 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'damit','damit','adverb','با آن / با این موضوع',43,NULL,'[{"text":"noch","translation":"هنوز"},{"text":"genau","translation":"دقیقا"},{"text":"besser","translation":"بهتر"},{"text":"dort","translation":"آنجا"},{"text":"morgen","translation":"فردا"}]','Damit kann ich leben.','می تونم باهاش کنار بیام.',NULL,NULL,'{"cefr":"B1","introducedInSeries":85}');
    SET v_w_031=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_032 FROM words WHERE course_id=v_course AND lemma='können' AND part_of_speech='verb' AND translation='توانستن / بتوان' ORDER BY id LIMIT 1;
  IF v_w_032 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: können | verb'; END IF;

  SELECT id INTO v_w_033 FROM words WHERE course_id=v_course AND lemma='leben' AND part_of_speech='verb' AND translation='زندگی کردن' ORDER BY id LIMIT 1;
  IF v_w_033 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'leben','leben','verb','زندگی کردن',43,'{"type":"regular_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"wohnen","translation":"ساکن بودن"},{"text":"ändern","translation":"تغییر دادن"},{"text":"suchen","translation":"جست و جو کردن"}]','Damit kann ich leben.','می تونم باهاش کنار بیام.',NULL,NULL,'{"cefr":"B1","introducedInSeries":85}');
    SET v_w_033=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_034 FROM words WHERE course_id=v_course AND lemma='was' AND part_of_speech='pronoun' AND translation='چی / چه' ORDER BY id LIMIT 1;
  IF v_w_034 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: was | pronoun'; END IF;

  SELECT id INTO v_w_035 FROM words WHERE course_id=v_course AND lemma='mit' AND part_of_speech='preposition' AND translation='با' ORDER BY id LIMIT 1;
  IF v_w_035 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: mit | preposition'; END IF;

  SELECT id INTO v_w_036 FROM words WHERE course_id=v_course AND lemma='Balkon' AND part_of_speech='noun' AND translation='بالکن' ORDER BY id LIMIT 1;
  IF v_w_036 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Balkon | noun'; END IF;

  SELECT id INTO v_w_037 FROM words WHERE course_id=v_course AND lemma='er' AND part_of_speech='pronoun' AND translation='او (مذکر)' ORDER BY id LIMIT 1;
  IF v_w_037 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: er | pronoun'; END IF;

  SELECT id INTO v_w_038 FROM words WHERE course_id=v_course AND lemma='aber' AND part_of_speech='conjunction' AND translation='اما' ORDER BY id LIMIT 1;
  IF v_w_038 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: aber | conjunction'; END IF;

  SELECT id INTO v_w_039 FROM words WHERE course_id=v_course AND lemma='reichen' AND part_of_speech='verb' AND translation='کافی بودن' ORDER BY id LIMIT 1;
  IF v_w_039 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'reichen','reichen','verb','کافی بودن',43,'{"type":"regular_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"wohnen","translation":"ساکن بودن"},{"text":"ändern","translation":"تغییر دادن"},{"text":"suchen","translation":"جست و جو کردن"}]','Er ist klein, aber er reicht mir.','کوچیکه، اما برای من کافیه.',NULL,NULL,'{"cefr":"B1","introducedInSeries":85}');
    SET v_w_039=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_040 FROM words WHERE course_id=v_course AND lemma='machen' AND part_of_speech='verb' AND translation='انجام دادن' ORDER BY id LIMIT 1;
  IF v_w_040 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: machen | verb'; END IF;

  SELECT id INTO v_w_041 FROM words WHERE course_id=v_course AND lemma='anrufen' AND part_of_speech='verb' AND translation='زنگ زدن / تماس گرفتن' ORDER BY id LIMIT 1;
  IF v_w_041 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: anrufen | verb'; END IF;

  SELECT id INTO v_w_042 FROM words WHERE course_id=v_course AND lemma='Vermieterin' AND part_of_speech='noun' AND translation='صاحبخانه زن' ORDER BY id LIMIT 1;
  IF v_w_042 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Vermieterin','Vermieterin','noun','صاحبخانه زن',43,'{"gender":"feminine","plural":"Vermieterinnen"}','[{"text":"Wohnung","translation":"خانه"},{"text":"Arbeit","translation":"کار"},{"text":"Ruhe","translation":"آرامش"},{"text":"Platz","translation":"فضا"},{"text":"Straße","translation":"خیابان"}]','Ich rufe die Vermieterin an.','به صاحبخانه زنگ می زنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":85}');
    SET v_w_042=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_043 FROM words WHERE course_id=v_course AND lemma='möchten' AND part_of_speech='verb' AND translation='خواستن / مایل بودن' ORDER BY id LIMIT 1;
  IF v_w_043 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: möchten | verb'; END IF;

  SELECT id INTO v_w_044 FROM words WHERE course_id=v_course AND lemma='sagen' AND part_of_speech='verb' AND translation='گفتن' ORDER BY id LIMIT 1;
  IF v_w_044 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sagen | verb'; END IF;

  SELECT id INTO v_w_045 FROM words WHERE course_id=v_course AND lemma='nehmen' AND part_of_speech='verb' AND translation='گرفتن / مصرف کردن' ORDER BY id LIMIT 1;
  IF v_w_045 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: nehmen | verb'; END IF;

  SELECT id INTO v_w_046 FROM words WHERE course_id=v_course AND lemma='müssen' AND part_of_speech='verb' AND translation='مجبور بودن / باید' ORDER BY id LIMIT 1;
  IF v_w_046 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: müssen | verb'; END IF;

  SELECT id INTO v_w_047 FROM words WHERE course_id=v_course AND lemma='noch' AND part_of_speech='adverb' AND translation='هنوز' ORDER BY id LIMIT 1;
  IF v_w_047 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: noch | adverb'; END IF;

  SELECT id INTO v_w_048 FROM words WHERE course_id=v_course AND lemma='etwas' AND part_of_speech='pronoun' AND translation='چیزی / یک چیزی' ORDER BY id LIMIT 1;
  IF v_w_048 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: etwas | pronoun'; END IF;

  SELECT id INTO v_w_049 FROM words WHERE course_id=v_course AND lemma='prüfen' AND part_of_speech='verb' AND translation='بررسی کردن' ORDER BY id LIMIT 1;
  IF v_w_049 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'prüfen','prüfen','verb','بررسی کردن',43,'{"type":"regular_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"wohnen","translation":"ساکن بودن"},{"text":"ändern","translation":"تغییر دادن"},{"text":"suchen","translation":"جست و جو کردن"}]','Musst du noch etwas prüfen?','هنوز باید چیزی رو بررسی کنی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":85}');
    SET v_w_049=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_050 FROM words WHERE course_id=v_course AND lemma='lesen' AND part_of_speech='verb' AND translation='خواندن' ORDER BY id LIMIT 1;
  IF v_w_050 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: lesen | verb'; END IF;

  SELECT id INTO v_w_051 FROM words WHERE course_id=v_course AND lemma='Mietvertrag' AND part_of_speech='noun' AND translation='قرارداد اجاره' ORDER BY id LIMIT 1;
  IF v_w_051 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Mietvertrag','Mietvertrag','noun','قرارداد اجاره',43,'{"gender":"masculine","plural":"Mietverträge"}','[{"text":"Wohnung","translation":"خانه"},{"text":"Arbeit","translation":"کار"},{"text":"Ruhe","translation":"آرامش"},{"text":"Platz","translation":"فضا"},{"text":"Straße","translation":"خیابان"}]','Ja, ich lese den Mietvertrag genau.','آره، قرارداد اجاره رو دقیق می خونم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":85}');
    SET v_w_051=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_052 FROM words WHERE course_id=v_course AND lemma='genau' AND part_of_speech='adverb' AND translation='دقیقا' ORDER BY id LIMIT 1;
  IF v_w_052 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: genau | adverb'; END IF;

  SELECT id INTO v_w_053 FROM words WHERE course_id=v_course AND lemma='sich freuen' AND part_of_speech='verb' AND translation='خوشحال بودن / خوشحال شدن' ORDER BY id LIMIT 1;
  IF v_w_053 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'sich freuen','sich freuen','verb','خوشحال بودن / خوشحال شدن',43,'{"preposition":"auf","type":"reflexive_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"wohnen","translation":"ساکن بودن"},{"text":"ändern","translation":"تغییر دادن"},{"text":"suchen","translation":"جست و جو کردن"}]','Freust du dich auf den Umzug?','برای اسباب کشی خوشحالی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":85}');
    SET v_w_053=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_054 FROM words WHERE course_id=v_course AND lemma='auf' AND part_of_speech='preposition' AND translation='روی / برای' ORDER BY id LIMIT 1;
  IF v_w_054 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'auf','auf','preposition','روی / برای',43,NULL,'[{"text":"in","translation":"در"},{"text":"mit","translation":"با"},{"text":"zu","translation":"به"},{"text":"an","translation":"در"},{"text":"vor","translation":"از"}]','Freust du dich auf den Umzug?','برای اسباب کشی خوشحالی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":85}');
    SET v_w_054=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_055 FROM words WHERE course_id=v_course AND lemma='Umzug' AND part_of_speech='noun' AND translation='اسباب کشی' ORDER BY id LIMIT 1;
  IF v_w_055 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Umzug | noun'; END IF;

  SELECT id INTO v_w_056 FROM words WHERE course_id=v_course AND lemma='beginnen' AND part_of_speech='verb' AND translation='شروع شدن / آغاز کردن' ORDER BY id LIMIT 1;
  IF v_w_056 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'beginnen','beginnen','verb','شروع شدن / آغاز کردن',43,'{"type":"irregular_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"wohnen","translation":"ساکن بودن"},{"text":"ändern","translation":"تغییر دادن"},{"text":"suchen","translation":"جست و جو کردن"}]','Ja, jetzt beginnt etwas Neues.','آره، حالا یک چیز تازه شروع می شه.',NULL,NULL,'{"cefr":"B1","introducedInSeries":85}');
    SET v_w_056=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_057 FROM words WHERE course_id=v_course AND lemma='neu' AND part_of_speech='adjective' AND translation='جدید / تازه' ORDER BY id LIMIT 1;
  IF v_w_057 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: neu | adjective'; END IF;

  SELECT id INTO v_w_058 FROM words WHERE course_id=v_course AND lemma='verändern' AND part_of_speech='verb' AND translation='تغییر دادن' ORDER BY id LIMIT 1;
  IF v_w_058 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: verändern | verb'; END IF;

  SELECT id INTO v_w_059 FROM words WHERE course_id=v_course AND lemma='sich' AND part_of_speech='pronoun' AND translation='خود / خودش' ORDER BY id LIMIT 1;
  IF v_w_059 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sich | pronoun'; END IF;

  SELECT id INTO v_w_060 FROM words WHERE course_id=v_course AND lemma='zuerst' AND part_of_speech='adverb' AND translation='اول / ابتدا' ORDER BY id LIMIT 1;
  IF v_w_060 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zuerst | adverb'; END IF;

  SELECT id INTO v_w_061 FROM words WHERE course_id=v_course AND lemma='einrichten' AND part_of_speech='verb' AND translation='چیدن / آماده کردن' ORDER BY id LIMIT 1;
  IF v_w_061 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'einrichten','einrichten','verb','چیدن / آماده کردن',43,'{"prefix":"ein","type":"separable_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"wohnen","translation":"ساکن بودن"},{"text":"ändern","translation":"تغییر دادن"},{"text":"suchen","translation":"جست و جو کردن"}]','Ich richte mein Arbeitszimmer ein.','اتاق کارم رو می چینم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":85}');
    SET v_w_061=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_062 FROM words WHERE course_id=v_course AND lemma='Arbeitszimmer' AND part_of_speech='noun' AND translation='اتاق کار' ORDER BY id LIMIT 1;
  IF v_w_062 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Arbeitszimmer | noun'; END IF;

  SELECT id INTO v_w_063 FROM words WHERE course_id=v_course AND lemma='das' AND part_of_speech='pronoun' AND translation='این / آن' ORDER BY id LIMIT 1;
  IF v_w_063 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: das | pronoun'; END IF;

  SELECT id INTO v_w_064 FROM words WHERE course_id=v_course AND lemma='ein' AND part_of_speech='article' AND translation='یک / حرف تعریف نامعین' ORDER BY id LIMIT 1;
  IF v_w_064 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ein | article'; END IF;

  SELECT id INTO v_w_065 FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_065 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: gut | adjective'; END IF;

  SELECT id INTO v_w_066 FROM words WHERE course_id=v_course AND lemma='Entscheidung' AND part_of_speech='noun' AND translation='تصمیم' ORDER BY id LIMIT 1;
  IF v_w_066 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Entscheidung | noun'; END IF;

  SELECT id INTO v_w_067 FROM words WHERE course_id=v_course AND lemma='danke' AND part_of_speech='interjection' AND translation='ممنون' ORDER BY id LIMIT 1;
  IF v_w_067 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: danke | interjection'; END IF;

  SELECT id INTO v_w_068 FROM words WHERE course_id=v_course AND lemma='sich fühlen' AND part_of_speech='verb' AND translation='احساس کردن' ORDER BY id LIMIT 1;
  IF v_w_068 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'sich fühlen','sich fühlen','verb','احساس کردن',43,'{"type":"reflexive_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"wohnen","translation":"ساکن بودن"},{"text":"ändern","translation":"تغییر دادن"},{"text":"suchen","translation":"جست و جو کردن"}]','Danke. Jetzt fühle ich mich erleichtert.','ممنون. حالا احساس آسودگی می کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":85}');
    SET v_w_068=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_069 FROM words WHERE course_id=v_course AND lemma='erleichtert' AND part_of_speech='adjective' AND translation='آسوده / سبک شده' ORDER BY id LIMIT 1;
  IF v_w_069 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'erleichtert','erleichtert','adjective','آسوده / سبک شده',43,'{"type":"adjective"}','[{"text":"ruhig","translation":"آرام"},{"text":"wichtig","translation":"مهم"},{"text":"laut","translation":"پرسروصدا"},{"text":"klein","translation":"کوچک"},{"text":"neu","translation":"جدید"}]','Danke. Jetzt fühle ich mich erleichtert.','ممنون. حالا احساس آسودگی می کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":85}');
    SET v_w_069=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_070 FROM words WHERE course_id=v_course AND lemma='Ich habe mich entschieden.' AND part_of_speech='phrase' AND translation='تصمیمم رو گرفتم.' ORDER BY id LIMIT 1;
  IF v_w_070 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich habe mich entschieden.','Ich habe mich entschieden.','phrase','تصمیمم رو گرفتم.',43,'{"type":"sentence_pattern"}','[{"text":"Ich kann mich noch nicht entscheiden.","translation":"هنوز نمی تونم تصمیم بگیرم."},{"text":"Ich brauche noch mehr Zeit.","translation":"هنوز زمان بیشتری لازم دارم."},{"text":"Ich vergleiche beide Wohnungen.","translation":"هر دو خونه رو مقایسه می کنم."},{"text":"Ich bin mir nicht sicher.","translation":"مطمئن نیستم."},{"text":"Morgen sehe ich die Wohnung an.","translation":"فردا خونه رو می بینم."}]','Ich habe mich entschieden.','تصمیمم رو گرفتم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":85}');
    SET v_w_070=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_071 FROM words WHERE course_id=v_course AND lemma='Weil sie ruhiger und näher an der Arbeit ist.' AND part_of_speech='phrase' AND translation='چون آروم تره و به محل کار نزدیک تره.' ORDER BY id LIMIT 1;
  IF v_w_071 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Weil sie ruhiger und näher an der Arbeit ist.','Weil sie ruhiger und näher an der Arbeit ist.','phrase','چون آروم تره و به محل کار نزدیک تره.',43,'{"type":"sentence_pattern"}','[{"text":"Weil die erste Wohnung größer ist.","translation":"چون خونه اول بزرگ تره."},{"text":"Weil der Balkon größer ist.","translation":"چون بالکن بزرگ تره."},{"text":"Weil sie näher an der Straße ist.","translation":"چون به خیابون نزدیک تره."},{"text":"Die Wohnung ist ruhig.","translation":"خونه آرومه."},{"text":"Die Arbeit ist näher.","translation":"محل کار نزدیک تره."}]','Weil sie ruhiger und näher an der Arbeit ist.','چون آروم تره و به محل کار نزدیک تره.',NULL,NULL,'{"cefr":"B1","introducedInSeries":85}');
    SET v_w_071=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_072 FROM words WHERE course_id=v_course AND lemma='Ich möchte die Wohnung nehmen.' AND part_of_speech='phrase' AND translation='می خوام این خونه رو بگیرم.' ORDER BY id LIMIT 1;
  IF v_w_072 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich möchte die Wohnung nehmen.','Ich möchte die Wohnung nehmen.','phrase','می خوام این خونه رو بگیرم.',43,'{"type":"sentence_pattern"}','[{"text":"Ich möchte die Wohnung noch ansehen.","translation":"می خوام دوباره خونه رو ببینم."},{"text":"Ich möchte den Mietvertrag lesen.","translation":"می خوام قرارداد اجاره رو بخونم."},{"text":"Ich rufe die Vermieterin an.","translation":"به صاحبخانه زنگ می زنم."},{"text":"Ich möchte noch warten.","translation":"هنوز می خوام صبر کنم."},{"text":"Ich nehme die erste Wohnung.","translation":"خونه اول رو می گیرم."}]','Ich möchte die Wohnung nehmen.','می خوام این خونه رو بگیرم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":85}');
    SET v_w_072=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_073 FROM words WHERE course_id=v_course AND lemma='Jetzt beginnt etwas Neues.' AND part_of_speech='phrase' AND translation='حالا یک چیز تازه شروع می شه.' ORDER BY id LIMIT 1;
  IF v_w_073 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Jetzt beginnt etwas Neues.','Jetzt beginnt etwas Neues.','phrase','حالا یک چیز تازه شروع می شه.',43,'{"type":"sentence_pattern"}','[{"text":"Jetzt suche ich etwas Neues.","translation":"حالا دنبال یک چیز تازه می گردم."},{"text":"Morgen beginnt der Umzug.","translation":"فردا اسباب کشی شروع می شه."},{"text":"Ich richte mein Zimmer ein.","translation":"اتاقم رو می چینم."},{"text":"Jetzt bin ich mir sicher.","translation":"حالا مطمئنم."},{"text":"Die Entscheidung war gut.","translation":"تصمیم خوبی بود."}]','Jetzt beginnt etwas Neues.','حالا یک چیز تازه شروع می شه.',NULL,NULL,'{"cefr":"B1","introducedInSeries":85}');
    SET v_w_073=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Die Entscheidung','تصمیم نهایی','Mia hat beide Wohnungen verglichen und teilt Sara ihre endgültige Entscheidung mit.','میا هر دو خانه را مقایسه کرده و تصمیم نهایی اش را به سارا می گوید.','story','mia-sara-b1-decisions',17,43,150,1,'validated','{"relationship":"friends","context":"final-apartment-decision","cefr":"B1","storyArc":"decision-reasons-contract-new-start"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,1,'character','Hast du beide Wohnungen verglichen?','هر دو خونه رو مقایسه کردی؟',43,NULL,NULL,NULL,NULL,'[{"form":"present_2sg","lemma":"haben","partOfSpeech":"verb","surface":"Hast","translation":"داشتن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"beide","partOfSpeech":"pronoun","surface":"beide","translation":"هر دو"},{"form":"plural","lemma":"Wohnung","partOfSpeech":"noun","surface":"Wohnungen","translation":"خانه / آپارتمان"},{"form":"past_participle","lemma":"vergleichen","partOfSpeech":"verb","suffix":"?","surface":"verglichen","translation":"مقایسه کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,2,'learner','Ja, ich habe mich entschieden.','آره، تصمیمم رو گرفتم.',43,NULL,NULL,'ja ich habe mich entschieden',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"present_1sg","lemma":"haben","partOfSpeech":"verb","surface":"habe","translation":"داشتن"},{"form":"reflexive_accusative_1sg","lemma":"ich","meaning":"خودم","partOfSpeech":"pronoun","surface":"mich","translation":"من"},{"form":"past_participle","lemma":"sich entscheiden","partOfSpeech":"verb","suffix":".","surface":"entschieden","translation":"تصمیم گرفتن"}]','Perfekt با sich entscheiden','در زمان Perfekt می گوییم: Ich habe mich entschieden.','{"pattern":"subject + haben + reflexive pronoun + entschieden"}','{"cefr":"B1"}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,3,'character','Welche Wohnung hast du gewählt?','کدوم خونه رو انتخاب کردی؟',43,NULL,NULL,NULL,NULL,'[{"lemma":"welche","partOfSpeech":"pronoun","surface":"Welche","translation":"کدام / چه"},{"lemma":"Wohnung","partOfSpeech":"noun","surface":"Wohnung","translation":"خانه / آپارتمان"},{"form":"present_2sg","lemma":"haben","partOfSpeech":"verb","surface":"hast","translation":"داشتن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"past_participle","lemma":"wählen","partOfSpeech":"verb","suffix":"?","surface":"gewählt","translation":"انتخاب کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,4,'learner','Die zweite Wohnung passt besser zu meinem Alltag.','خونه دوم بیشتر با زندگی روزمره ام جور درمیاد.',43,NULL,NULL,'die zweite wohnung passt besser zu meinem alltag',NULL,'[{"form":"nominative_feminine","lemma":"der","partOfSpeech":"article","surface":"Die","translation":"حرف تعریف"},{"form":"nominative_feminine","lemma":"zweite","partOfSpeech":"adjective","surface":"zweite","translation":"دومین"},{"lemma":"Wohnung","partOfSpeech":"noun","surface":"Wohnung","translation":"خانه / آپارتمان"},{"form":"present_3sg","lemma":"passen","partOfSpeech":"verb","surface":"passt","translation":"اندازه بودن / مناسب بودن"},{"lemma":"besser","partOfSpeech":"adverb","surface":"besser","translation":"بهتر"},{"lemma":"zu","partOfSpeech":"preposition","surface":"zu","translation":"به / به سمت"},{"form":"dative_masculine","lemma":"mein","partOfSpeech":"determiner","surface":"meinem","translation":"مال من / من"},{"lemma":"Alltag","partOfSpeech":"noun","suffix":".","surface":"Alltag","translation":"زندگی روزمره"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,5,'character','Bist du dir jetzt sicher?','حالا مطمئنی؟',43,NULL,NULL,NULL,NULL,'[{"form":"present_2sg","lemma":"sein","partOfSpeech":"verb","surface":"Bist","translation":"بودن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"dative_2sg","lemma":"du","meaning":"برای خودت","partOfSpeech":"pronoun","surface":"dir","translation":"تو"},{"lemma":"jetzt","partOfSpeech":"adverb","surface":"jetzt","translation":"حالا / اکنون"},{"lemma":"sicher","partOfSpeech":"adjective","suffix":"?","surface":"sicher","translation":"مطمئن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,6,'learner','Ja, ich bin mir jetzt sicher.','آره، حالا مطمئنم.',43,NULL,NULL,'ja ich bin mir jetzt sicher',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"present_1sg","lemma":"sein","partOfSpeech":"verb","surface":"bin","translation":"بودن"},{"form":"dative_1sg","lemma":"ich","meaning":"برای خودم","partOfSpeech":"pronoun","surface":"mir","translation":"من"},{"lemma":"jetzt","partOfSpeech":"adverb","surface":"jetzt","translation":"حالا / اکنون"},{"lemma":"sicher","partOfSpeech":"adjective","suffix":".","surface":"sicher","translation":"مطمئن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_6=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Warum diese Wohnung?','چرا این خانه؟','Mia begründet ihre Wahl und akzeptiert bewusst den kleineren Raum als Kompromiss.','میا دلیل انتخابش را می گوید و فضای کوچک تر را آگاهانه به عنوان یک مصالحه می پذیرد.','story','mia-sara-b1-decisions',18,43,150,2,'validated','{"relationship":"friends","context":"final-apartment-decision","cefr":"B1","storyArc":"decision-reasons-contract-new-start"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,1,'character','Warum hast du die zweite Wohnung gewählt?','چرا خونه دوم رو انتخاب کردی؟',43,NULL,NULL,NULL,NULL,'[{"lemma":"warum","partOfSpeech":"adverb","surface":"Warum","translation":"چرا"},{"form":"present_2sg","lemma":"haben","partOfSpeech":"verb","surface":"hast","translation":"داشتن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"accusative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"accusative_feminine","lemma":"zweite","partOfSpeech":"adjective","surface":"zweite","translation":"دومین"},{"lemma":"Wohnung","partOfSpeech":"noun","surface":"Wohnung","translation":"خانه / آپارتمان"},{"form":"past_participle","lemma":"wählen","partOfSpeech":"verb","suffix":"?","surface":"gewählt","translation":"انتخاب کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,2,'learner','Weil sie ruhiger und näher an der Arbeit ist.','چون آروم تره و به محل کار نزدیک تره.',43,NULL,NULL,'weil sie ruhiger und näher an der arbeit ist',NULL,'[{"lemma":"weil","partOfSpeech":"conjunction","surface":"Weil","translation":"چون / زیرا"},{"lemma":"sie","partOfSpeech":"pronoun","surface":"sie","translation":"او / آن ها"},{"form":"comparative","lemma":"ruhig","partOfSpeech":"adjective","surface":"ruhiger","translation":"آرام"},{"lemma":"und","partOfSpeech":"conjunction","surface":"und","translation":"و"},{"form":"comparative","lemma":"nah","partOfSpeech":"adjective","surface":"näher","translation":"نزدیک"},{"lemma":"an","partOfSpeech":"preposition","surface":"an","translation":"در / در روز"},{"form":"dative_feminine","lemma":"der","partOfSpeech":"article","surface":"der","translation":"حرف تعریف"},{"lemma":"Arbeit","partOfSpeech":"noun","surface":"Arbeit","translation":"کار"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","suffix":".","surface":"ist","translation":"بودن"}]','دلیل در گذشته','حتی وقتی تصمیم در گذشته گرفته شده، دلیل فعلی با weil و فعل در پایان بیان می شود.','{"pattern":"weil + subject + predicates + finite verb"}','{"cefr":"B1"}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,3,'character','Und der kleinere Raum?','و فضای کوچک تر چی؟',43,NULL,NULL,NULL,NULL,'[{"lemma":"und","partOfSpeech":"conjunction","surface":"Und","translation":"و"},{"form":"nominative_masculine","lemma":"der","partOfSpeech":"article","surface":"der","translation":"حرف تعریف"},{"form":"nominative_masculine_comparative","lemma":"klein","partOfSpeech":"adjective","surface":"kleinere","translation":"کوچک"},{"lemma":"Raum","partOfSpeech":"noun","suffix":"?","surface":"Raum","translation":"فضا / اتاق"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,4,'learner','Damit kann ich leben.','می تونم باهاش کنار بیام.',43,NULL,NULL,'damit kann ich leben',NULL,'[{"lemma":"damit","partOfSpeech":"adverb","surface":"Damit","translation":"با آن / با این موضوع"},{"form":"present_1sg","lemma":"können","partOfSpeech":"verb","surface":"kann","translation":"توانستن / بتوان"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"leben","partOfSpeech":"verb","suffix":".","surface":"leben","translation":"زندگی کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,5,'character','Was ist mit dem Balkon?','بالکن چی؟',43,NULL,NULL,NULL,NULL,'[{"lemma":"was","partOfSpeech":"pronoun","surface":"Was","translation":"چی / چه"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"ist","translation":"بودن"},{"lemma":"mit","partOfSpeech":"preposition","surface":"mit","translation":"با"},{"form":"dative_masculine","lemma":"der","partOfSpeech":"article","surface":"dem","translation":"حرف تعریف"},{"lemma":"Balkon","partOfSpeech":"noun","suffix":"?","surface":"Balkon","translation":"بالکن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,6,'learner','Er ist klein, aber er reicht mir.','کوچیکه، اما برای من کافیه.',43,NULL,NULL,'er ist klein aber er reicht mir',NULL,'[{"lemma":"er","partOfSpeech":"pronoun","surface":"Er","translation":"او (مذکر)"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"ist","translation":"بودن"},{"lemma":"klein","partOfSpeech":"adjective","suffix":",","surface":"klein","translation":"کوچک"},{"lemma":"aber","partOfSpeech":"conjunction","surface":"aber","translation":"اما"},{"lemma":"er","partOfSpeech":"pronoun","surface":"er","translation":"او (مذکر)"},{"form":"present_3sg","lemma":"reichen","partOfSpeech":"verb","surface":"reicht","translation":"کافی بودن"},{"form":"dative_1sg","lemma":"ich","meaning":"برای من","partOfSpeech":"pronoun","suffix":".","surface":"mir","translation":"من"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_12=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Der nächste Schritt','قدم بعدی','Mia kontaktiert die Vermieterin, sagt verbindlich zu und prüft anschließend den Mietvertrag.','میا با صاحبخانه تماس می گیرد، موافقتش را اعلام می کند و بعد قرارداد اجاره را بررسی می کند.','story','mia-sara-b1-decisions',19,43,150,3,'validated','{"relationship":"friends","context":"final-apartment-decision","cefr":"B1","storyArc":"decision-reasons-contract-new-start"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,1,'character','Was machst du jetzt?','حالا چه کار می کنی؟',43,NULL,NULL,NULL,NULL,'[{"lemma":"was","partOfSpeech":"pronoun","surface":"Was","translation":"چی / چه"},{"form":"present_2sg","lemma":"machen","partOfSpeech":"verb","surface":"machst","translation":"انجام دادن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"jetzt","partOfSpeech":"adverb","suffix":"?","surface":"jetzt","translation":"حالا / اکنون"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,2,'learner','Ich rufe die Vermieterin an.','به صاحبخانه زنگ می زنم.',43,NULL,NULL,'ich rufe die vermieterin an',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg_stem","lemma":"anrufen","partOfSpeech":"verb","surface":"rufe","translation":"زنگ زدن / تماس گرفتن"},{"form":"accusative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Vermieterin","partOfSpeech":"noun","surface":"Vermieterin","translation":"صاحبخانه زن"},{"form":"separated_prefix","lemma":"anrufen","partOfSpeech":"verb","suffix":".","surface":"an","translation":"زنگ زدن / تماس گرفتن"}]','فعل جداشدنی anrufen','در جمله اصلی، پیشوند an در پایان می آید: Ich rufe ... an.','{"pattern":"subject + rufen + object + an"}','{"cefr":"B1"}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,3,'character','Was möchtest du sagen?','چی می خوای بگی؟',43,NULL,NULL,NULL,NULL,'[{"lemma":"was","partOfSpeech":"pronoun","surface":"Was","translation":"چی / چه"},{"form":"present_2sg","lemma":"möchten","partOfSpeech":"verb","surface":"möchtest","translation":"خواستن / مایل بودن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"sagen","partOfSpeech":"verb","suffix":"?","surface":"sagen","translation":"گفتن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,4,'learner','Ich möchte die Wohnung nehmen.','می خوام این خونه رو بگیرم.',43,NULL,NULL,'ich möchte die wohnung nehmen',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"möchten","partOfSpeech":"verb","surface":"möchte","translation":"خواستن / مایل بودن"},{"form":"accusative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Wohnung","partOfSpeech":"noun","surface":"Wohnung","translation":"خانه / آپارتمان"},{"lemma":"nehmen","partOfSpeech":"verb","suffix":".","surface":"nehmen","translation":"گرفتن / مصرف کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,5,'character','Musst du noch etwas prüfen?','هنوز باید چیزی رو بررسی کنی؟',43,NULL,NULL,NULL,NULL,'[{"form":"present_2sg","lemma":"müssen","partOfSpeech":"verb","surface":"Musst","translation":"مجبور بودن / باید"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"noch","partOfSpeech":"adverb","surface":"noch","translation":"هنوز"},{"lemma":"etwas","partOfSpeech":"pronoun","surface":"etwas","translation":"چیزی / یک چیزی"},{"lemma":"prüfen","partOfSpeech":"verb","suffix":"?","surface":"prüfen","translation":"بررسی کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,6,'learner','Ja, ich lese den Mietvertrag genau.','آره، قرارداد اجاره رو دقیق می خونم.',43,NULL,NULL,'ja ich lese den mietvertrag genau',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"present_1sg","lemma":"lesen","partOfSpeech":"verb","surface":"lese","translation":"خواندن"},{"form":"accusative_masculine","lemma":"der","partOfSpeech":"article","surface":"den","translation":"حرف تعریف"},{"lemma":"Mietvertrag","partOfSpeech":"noun","surface":"Mietvertrag","translation":"قرارداد اجاره"},{"lemma":"genau","partOfSpeech":"adverb","suffix":".","surface":"genau","translation":"دقیقا"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_18=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Etwas Neues beginnt','شروع یک چیز تازه','Mia blickt erleichtert auf den Umzug und plant als Erstes ihr neues Arbeitszimmer.','میا با خیال آسوده به اسباب کشی فکر می کند و اول از همه برای اتاق کار جدیدش برنامه دارد.','story','mia-sara-b1-decisions',20,43,150,4,'validated','{"relationship":"friends","context":"final-apartment-decision","cefr":"B1","storyArc":"decision-reasons-contract-new-start"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,1,'character','Freust du dich auf den Umzug?','برای اسباب کشی خوشحالی؟',43,NULL,NULL,NULL,NULL,'[{"form":"present_2sg","lemma":"sich freuen","partOfSpeech":"verb","surface":"Freust","translation":"خوشحال بودن / خوشحال شدن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"reflexive_accusative_2sg","lemma":"du","meaning":"خودت","partOfSpeech":"pronoun","surface":"dich","translation":"تو"},{"lemma":"auf","partOfSpeech":"preposition","surface":"auf","translation":"روی / برای"},{"form":"accusative_masculine","lemma":"der","partOfSpeech":"article","surface":"den","translation":"حرف تعریف"},{"lemma":"Umzug","partOfSpeech":"noun","suffix":"?","surface":"Umzug","translation":"اسباب کشی"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,2,'learner','Ja, jetzt beginnt etwas Neues.','آره، حالا یک چیز تازه شروع می شه.',43,NULL,NULL,'ja jetzt beginnt etwas neues',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"jetzt","partOfSpeech":"adverb","surface":"jetzt","translation":"حالا / اکنون"},{"form":"present_3sg","lemma":"beginnen","partOfSpeech":"verb","surface":"beginnt","translation":"شروع شدن / آغاز کردن"},{"lemma":"etwas","partOfSpeech":"pronoun","surface":"etwas","translation":"چیزی / یک چیزی"},{"form":"nominalized_neuter","lemma":"neu","partOfSpeech":"adjective","suffix":".","surface":"Neues","translation":"جدید / تازه"}]','صفت اسمی شده','در etwas Neues، صفت neu مثل اسم استفاده می شود و با حرف بزرگ نوشته می شود.','{"pattern":"etwas + nominalized adjective"}','{"cefr":"B1"}');
  SET v_t_20=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,3,'character','Was verändert sich zuerst?','اول چی تغییر می کنه؟',43,NULL,NULL,NULL,NULL,'[{"lemma":"was","partOfSpeech":"pronoun","surface":"Was","translation":"چی / چه"},{"form":"present_3sg","lemma":"verändern","partOfSpeech":"verb","surface":"verändert","translation":"تغییر دادن"},{"form":"reflexive_accusative_3sg","lemma":"sich","partOfSpeech":"pronoun","surface":"sich","translation":"خود / خودش"},{"lemma":"zuerst","partOfSpeech":"adverb","suffix":"?","surface":"zuerst","translation":"اول / ابتدا"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_21=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,4,'learner','Ich richte mein Arbeitszimmer ein.','اتاق کارم رو می چینم.',43,NULL,NULL,'ich richte mein arbeitszimmer ein',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg_stem","lemma":"einrichten","partOfSpeech":"verb","surface":"richte","translation":"چیدن / آماده کردن"},{"form":"accusative_neuter","lemma":"mein","partOfSpeech":"determiner","surface":"mein","translation":"مال من / من"},{"lemma":"Arbeitszimmer","partOfSpeech":"noun","surface":"Arbeitszimmer","translation":"اتاق کار"},{"form":"separated_prefix","lemma":"einrichten","partOfSpeech":"verb","suffix":".","surface":"ein","translation":"چیدن / آماده کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_22=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,5,'character','Das war eine gute Entscheidung.','تصمیم خوبی بود.',43,NULL,NULL,NULL,NULL,'[{"lemma":"das","partOfSpeech":"pronoun","surface":"Das","translation":"این / آن"},{"form":"preterite_3sg","lemma":"sein","partOfSpeech":"verb","surface":"war","translation":"بودن"},{"form":"nominative_feminine","lemma":"ein","partOfSpeech":"article","surface":"eine","translation":"یک / حرف تعریف نامعین"},{"form":"nominative_feminine","lemma":"gut","partOfSpeech":"adjective","surface":"gute","translation":"خوب"},{"lemma":"Entscheidung","partOfSpeech":"noun","suffix":".","surface":"Entscheidung","translation":"تصمیم"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_23=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,6,'learner','Danke. Jetzt fühle ich mich erleichtert.','ممنون. حالا احساس آسودگی می کنم.',43,NULL,NULL,'danke jetzt fühle ich mich erleichtert',NULL,'[{"lemma":"danke","partOfSpeech":"interjection","suffix":".","surface":"Danke","translation":"ممنون"},{"lemma":"jetzt","partOfSpeech":"adverb","surface":"Jetzt","translation":"حالا / اکنون"},{"form":"present_1sg","lemma":"sich fühlen","partOfSpeech":"verb","surface":"fühle","translation":"احساس کردن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"reflexive_accusative_1sg","lemma":"ich","meaning":"خودم","partOfSpeech":"pronoun","surface":"mich","translation":"من"},{"lemma":"erleichtert","partOfSpeech":"adjective","suffix":".","surface":"erleichtert","translation":"آسوده / سبک شده"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_24=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_001,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_002,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_004,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_006,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_007,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_010,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_011,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_014,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_015,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_016,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_017,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_018,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_019,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_020,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_070,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_021,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_011,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_010,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_022,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_023,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_024,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_025,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_026,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_027,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_028,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_018,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_029,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_030,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_031,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_032,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_007,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_033,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_034,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_035,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_036,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_037,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_038,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_039,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_071,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_034,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_040,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_002,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_019,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_007,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_041,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_011,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_042,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_043,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_044,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_045,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_046,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_047,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_048,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_049,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_050,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_051,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_052,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_072,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_053,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_002,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_054,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_011,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_055,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_019,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_056,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_048,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_057,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_034,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_058,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_059,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_060,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_007,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_061,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_016,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_062,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_063,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_018,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_064,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_065,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_066,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_067,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_068,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_069,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_073,'new',1,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_070,'عبارت کلیدی درس',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',2,NULL,v_w_008,'واژه کلیدی درس',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',3,v_t_1,NULL,'به پرسش سارا گوش کن',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',4,v_t_2,NULL,'پاسخ میا را با صدای بلند بگو',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',5,v_t_3,NULL,'به پرسش بعدی گوش کن',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',6,v_t_4,NULL,'پاسخ را با صدای بلند بگو',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',7,NULL,v_w_008,'معنی واژه کلیدی را انتخاب کن',NULL,43,'{"mode":"word_translation","question":"entschieden در این درس چه معنی دارد؟","choices":["تصمیم گرفتن","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,43,'{"source":"lesson_story","question":"میا کدام خانه را انتخاب کرده است؟","choices":["خانه دوم","خانه اول","هیچ کدام"],"correctIndex":0}','{"cefr":"B1","series":85}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_071,'عبارت کلیدی درس',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',2,NULL,v_w_010,'واژه کلیدی درس',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',3,v_t_7,NULL,'به پرسش سارا گوش کن',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',4,v_t_8,NULL,'پاسخ میا را با صدای بلند بگو',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',5,v_t_9,NULL,'به پرسش بعدی گوش کن',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',6,v_t_10,NULL,'پاسخ را با صدای بلند بگو',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',7,NULL,v_w_010,'معنی واژه کلیدی را انتخاب کن',NULL,43,'{"mode":"word_translation","question":"gewählt در این درس چه معنی دارد؟","choices":["انتخاب کردن","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,43,'{"source":"lesson_story","question":"میا درباره فضای کوچک تر چه نظری دارد؟","choices":["می تواند با آن کنار بیاید","به همین دلیل منصرف شده","می خواهد آن را بزرگ کند"],"correctIndex":0}','{"cefr":"B1","series":85}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_072,'عبارت کلیدی درس',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',2,NULL,v_w_051,'واژه کلیدی درس',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',3,v_t_13,NULL,'به پرسش سارا گوش کن',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',4,v_t_14,NULL,'پاسخ میا را با صدای بلند بگو',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',5,v_t_15,NULL,'به پرسش بعدی گوش کن',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',6,v_t_16,NULL,'پاسخ را با صدای بلند بگو',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',7,NULL,v_w_051,'معنی واژه کلیدی را انتخاب کن',NULL,43,'{"mode":"word_translation","question":"Mietvertrag در این درس چه معنی دارد؟","choices":["قرارداد اجاره","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,43,'{"source":"lesson_story","question":"میا بعد از تماس با صاحبخانه چه چیزی را بررسی می کند؟","choices":["قرارداد اجاره","زمان حرکت قطار","فهرست خرید"],"correctIndex":0}','{"cefr":"B1","series":85}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',1,NULL,v_w_073,'عبارت کلیدی درس',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',2,NULL,v_w_056,'واژه کلیدی درس',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_19,NULL,'به پرسش سارا گوش کن',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_20,NULL,'پاسخ میا را با صدای بلند بگو',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_21,NULL,'به پرسش بعدی گوش کن',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_22,NULL,'پاسخ را با صدای بلند بگو',NULL,43,NULL,'{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',7,NULL,v_w_056,'معنی واژه کلیدی را انتخاب کن',NULL,43,'{"mode":"word_translation","question":"beginnt در این درس چه معنی دارد؟","choices":["شروع شدن / آغاز کردن","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":85}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,43,'{"source":"lesson_story","question":"میا ابتدا کدام بخش خانه جدید را آماده می کند؟","choices":["اتاق کار","بالکن","آشپزخانه"],"correctIndex":0}','{"cefr":"B1","series":85}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 085 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND storyline_key='mia-sara-b1-decisions' AND storyline_order BETWEEN 17 AND 20;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 085 storyline continuity.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>24 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 085 turn count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>32 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 085 activity count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (ac.config IS NULL OR JSON_EXTRACT(ac.config,'$.question') IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without task.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter AND lw.is_target=1;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 085 explicit-target count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) AS n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) duplicate_pairs;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple detected.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  UPDATE modules SET status='complete' WHERE id=v_module;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_series_085_v9();
DROP PROCEDURE IF EXISTS import_nova_series_085_v9;

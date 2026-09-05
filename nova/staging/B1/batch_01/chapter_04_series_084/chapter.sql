-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 084
-- B1 > Entscheidungen & Gründe > Ich bin mir noch nicht sicher
-- Requires canonical Nova v9.0 and QA-passed staged Series 081-083.
-- Uses the unchanged Nova v9.0 schema; contains no schema DDL.
-- ===============================================================
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_series_084_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_084_v9()
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
  SELECT COUNT(*) INTO v_count FROM chapters WHERE module_id=v_module AND sort_order IN (1,2,3) AND status IN ('validated','complete');
  IF v_count<>3 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 081-083 Chapters must be validated before Series 084.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons l JOIN chapters c ON c.id=l.chapter_id WHERE c.module_id=v_module AND c.sort_order IN (1,2,3) AND l.storyline_key='mia-sara-b1-decisions' AND l.storyline_order BETWEEN 1 AND 12;
  IF v_count<>12 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 081-083 storyline orders 1-12 are required.'; END IF;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=4 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 01 Chapter 04 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='Ich bin mir noch nicht sicher' AND title_translation='هنوز مطمئن نیستم';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 084 canonical Chapter title mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 01 Chapter 04 must be empty before Series 084 import.'; END IF;
  SELECT id INTO v_c_mia FROM characters WHERE course_id=v_course AND name='Mia' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_mia IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Mia not found.'; END IF;
  SELECT id INTO v_c_sara FROM characters WHERE course_id=v_course AND name='Sara' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_sara IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Sara not found.'; END IF;
  IF v_c_mia=v_c_sara THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Mia and Sara must be distinct Characters.'; END IF;

  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: haben | verb'; END IF;

  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: du | pronoun'; END IF;

  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='schon' AND part_of_speech='adverb' AND translation='قبلا / تا حالا' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'schon','schon','adverb','قبلا / تا حالا',42,NULL,'[{"text":"noch","translation":"هنوز"},{"text":"genau","translation":"دقیقا"},{"text":"besser","translation":"بهتر"},{"text":"dort","translation":"آنجا"},{"text":"morgen","translation":"فردا"}]','Hast du schon eine passende Wohnung gefunden?','تا حالا یک خونه مناسب پیدا کردی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_003=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='ein' AND part_of_speech='article' AND translation='یک / حرف تعریف نامعین' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ein | article'; END IF;

  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='passend' AND part_of_speech='adjective' AND translation='مناسب' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'passend','passend','adjective','مناسب',42,'{"type":"adjective"}','[{"text":"ruhig","translation":"آرام"},{"text":"wichtig","translation":"مهم"},{"text":"laut","translation":"پرسروصدا"},{"text":"klein","translation":"کوچک"},{"text":"neu","translation":"جدید"}]','Hast du schon eine passende Wohnung gefunden?','تا حالا یک خونه مناسب پیدا کردی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_005=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='Wohnung' AND part_of_speech='noun' AND translation='خانه / آپارتمان' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Wohnung | noun'; END IF;

  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='finden' AND part_of_speech='verb' AND translation='پیدا کردن' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'finden','finden','verb','پیدا کردن',42,'{"participle":"gefunden","type":"irregular_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"wohnen","translation":"ساکن بودن"},{"text":"ändern","translation":"تغییر دادن"},{"text":"suchen","translation":"جست و جو کردن"}]','Hast du schon eine passende Wohnung gefunden?','تا حالا یک خونه مناسب پیدا کردی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_007=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ja | interjection'; END IF;

  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='aber' AND part_of_speech='conjunction' AND translation='اما' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'aber','aber','conjunction','اما',42,NULL,'[{"text":"und","translation":"و"},{"text":"oder","translation":"یا"},{"text":"weil","translation":"چون"},{"text":"deshalb","translation":"بنابراین"},{"text":"dann","translation":"بعد"}]','Ja, aber ich bin mir noch nicht sicher.','آره، اما هنوز مطمئن نیستم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_009=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ich | pronoun'; END IF;

  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sein | verb'; END IF;

  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='noch' AND part_of_speech='adverb' AND translation='هنوز' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: noch | adverb'; END IF;

  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='nicht' AND part_of_speech='particle' AND translation='نه / نیست' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: nicht | particle'; END IF;

  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='sicher' AND part_of_speech='adjective' AND translation='مطمئن' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'sicher','sicher','adjective','مطمئن',42,'{"comparison":"sicherer, am sichersten","type":"adjective"}','[{"text":"ruhig","translation":"آرام"},{"text":"wichtig","translation":"مهم"},{"text":"laut","translation":"پرسروصدا"},{"text":"klein","translation":"کوچک"},{"text":"neu","translation":"جدید"}]','Ja, aber ich bin mir noch nicht sicher.','آره، اما هنوز مطمئن نیستم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_014=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='warum' AND part_of_speech='adverb' AND translation='چرا' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: warum | adverb'; END IF;

  SELECT id INTO v_w_016 FROM words WHERE course_id=v_course AND lemma='unsicher' AND part_of_speech='adjective' AND translation='نامطمئن / مردد' ORDER BY id LIMIT 1;
  IF v_w_016 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'unsicher','unsicher','adjective','نامطمئن / مردد',42,'{"type":"adjective"}','[{"text":"ruhig","translation":"آرام"},{"text":"wichtig","translation":"مهم"},{"text":"laut","translation":"پرسروصدا"},{"text":"klein","translation":"کوچک"},{"text":"neu","translation":"جدید"}]','Warum bist du noch unsicher?','چرا هنوز مرددی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_016=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_017 FROM words WHERE course_id=v_course AND lemma='zwei' AND part_of_speech='number' AND translation='دو' ORDER BY id LIMIT 1;
  IF v_w_017 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zwei | number'; END IF;

  SELECT id INTO v_w_018 FROM words WHERE course_id=v_course AND lemma='beide' AND part_of_speech='pronoun' AND translation='هر دو' ORDER BY id LIMIT 1;
  IF v_w_018 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'beide','beide','pronoun','هر دو',42,NULL,'[{"text":"ich","translation":"من"},{"text":"du","translation":"تو"},{"text":"das","translation":"این"},{"text":"etwas","translation":"چیزی"},{"text":"viel","translation":"خیلی"}]','Sind beide Wohnungen gut?','هر دو خونه خوب هستند؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_018=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_019 FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_019 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: gut | adjective'; END IF;

  SELECT id INTO v_w_020 FROM words WHERE course_id=v_course AND lemma='sie' AND part_of_speech='pronoun' AND translation='او / آن ها' ORDER BY id LIMIT 1;
  IF v_w_020 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'sie','sie','pronoun','او / آن ها',42,NULL,'[{"text":"ich","translation":"من"},{"text":"du","translation":"تو"},{"text":"das","translation":"این"},{"text":"etwas","translation":"چیزی"},{"text":"beide","translation":"هر دو"}]','Ja, sie haben unterschiedliche Vorteile.','آره، هر کدوم مزیت های متفاوتی دارند.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_020=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_021 FROM words WHERE course_id=v_course AND lemma='unterschiedlich' AND part_of_speech='adjective' AND translation='متفاوت' ORDER BY id LIMIT 1;
  IF v_w_021 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'unterschiedlich','unterschiedlich','adjective','متفاوت',42,'{"type":"adjective"}','[{"text":"ruhig","translation":"آرام"},{"text":"wichtig","translation":"مهم"},{"text":"laut","translation":"پرسروصدا"},{"text":"klein","translation":"کوچک"},{"text":"neu","translation":"جدید"}]','Ja, sie haben unterschiedliche Vorteile.','آره، هر کدوم مزیت های متفاوتی دارند.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_021=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_022 FROM words WHERE course_id=v_course AND lemma='Vorteil' AND part_of_speech='noun' AND translation='مزیت' ORDER BY id LIMIT 1;
  IF v_w_022 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Vorteil','Vorteil','noun','مزیت',42,'{"gender":"masculine","plural":"Vorteile"}','[{"text":"Wohnung","translation":"خانه"},{"text":"Arbeit","translation":"کار"},{"text":"Ruhe","translation":"آرامش"},{"text":"Platz","translation":"فضا"},{"text":"Straße","translation":"خیابان"}]','Ja, sie haben unterschiedliche Vorteile.','آره، هر کدوم مزیت های متفاوتی دارند.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_022=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_023 FROM words WHERE course_id=v_course AND lemma='welche' AND part_of_speech='pronoun' AND translation='کدام / چه' ORDER BY id LIMIT 1;
  IF v_w_023 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'welche','welche','pronoun','کدام / چه',43,'{"type":"interrogative_pronoun"}','[{"text":"was","translation":"چه"},{"text":"wer","translation":"چه کسی"},{"text":"wie","translation":"چطور"},{"text":"wo","translation":"کجا"},{"text":"wann","translation":"چه زمانی"}]','Welche Wohnung findest du besser?','به نظرت کدوم خونه بهتره؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_023=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_024 FROM words WHERE course_id=v_course AND lemma='besser' AND part_of_speech='adverb' AND translation='بهتر' ORDER BY id LIMIT 1;
  IF v_w_024 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: besser | adverb'; END IF;

  SELECT id INTO v_w_025 FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_025 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: der | article'; END IF;

  SELECT id INTO v_w_026 FROM words WHERE course_id=v_course AND lemma='erste' AND part_of_speech='adjective' AND translation='اولین' ORDER BY id LIMIT 1;
  IF v_w_026 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'erste','erste','adjective','اولین',43,'{"type":"ordinal_adjective"}','[{"text":"ruhig","translation":"آرام"},{"text":"wichtig","translation":"مهم"},{"text":"laut","translation":"پرسروصدا"},{"text":"klein","translation":"کوچک"},{"text":"neu","translation":"جدید"}]','Die erste Wohnung ist größer.','خونه اول بزرگ تره.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_026=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_027 FROM words WHERE course_id=v_course AND lemma='groß' AND part_of_speech='adjective' AND translation='بزرگ' ORDER BY id LIMIT 1;
  IF v_w_027 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'groß','groß','adjective','بزرگ',43,'{"comparison":"größer, am größten","type":"adjective"}','[{"text":"ruhig","translation":"آرام"},{"text":"wichtig","translation":"مهم"},{"text":"laut","translation":"پرسروصدا"},{"text":"klein","translation":"کوچک"},{"text":"neu","translation":"جدید"}]','Die erste Wohnung ist größer.','خونه اول بزرگ تره.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_027=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_028 FROM words WHERE course_id=v_course AND lemma='und' AND part_of_speech='conjunction' AND translation='و' ORDER BY id LIMIT 1;
  IF v_w_028 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: und | conjunction'; END IF;

  SELECT id INTO v_w_029 FROM words WHERE course_id=v_course AND lemma='zweite' AND part_of_speech='adjective' AND translation='دومین' ORDER BY id LIMIT 1;
  IF v_w_029 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'zweite','zweite','adjective','دومین',43,'{"type":"ordinal_adjective"}','[{"text":"ruhig","translation":"آرام"},{"text":"wichtig","translation":"مهم"},{"text":"laut","translation":"پرسروصدا"},{"text":"klein","translation":"کوچک"},{"text":"neu","translation":"جدید"}]','Und die zweite Wohnung?','و خونه دوم؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_029=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_030 FROM words WHERE course_id=v_course AND lemma='ruhig' AND part_of_speech='adjective' AND translation='آرام' ORDER BY id LIMIT 1;
  IF v_w_030 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ruhig | adjective'; END IF;

  SELECT id INTO v_w_031 FROM words WHERE course_id=v_course AND lemma='nah' AND part_of_speech='adjective' AND translation='نزدیک' ORDER BY id LIMIT 1;
  IF v_w_031 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'nah','nah','adjective','نزدیک',43,'{"comparison":"näher, am nächsten","type":"adjective"}','[{"text":"ruhig","translation":"آرام"},{"text":"wichtig","translation":"مهم"},{"text":"laut","translation":"پرسروصدا"},{"text":"klein","translation":"کوچک"},{"text":"neu","translation":"جدید"}]','Sie ist ruhiger und näher an der Arbeit.','آروم تره و به محل کار نزدیک تره.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_031=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_032 FROM words WHERE course_id=v_course AND lemma='an' AND part_of_speech='preposition' AND translation='در / در روز' ORDER BY id LIMIT 1;
  IF v_w_032 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: an | preposition'; END IF;

  SELECT id INTO v_w_033 FROM words WHERE course_id=v_course AND lemma='Arbeit' AND part_of_speech='noun' AND translation='کار' ORDER BY id LIMIT 1;
  IF v_w_033 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Arbeit | noun'; END IF;

  SELECT id INTO v_w_034 FROM words WHERE course_id=v_course AND lemma='was' AND part_of_speech='pronoun' AND translation='چی / چه' ORDER BY id LIMIT 1;
  IF v_w_034 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: was | pronoun'; END IF;

  SELECT id INTO v_w_035 FROM words WHERE course_id=v_course AND lemma='wichtig' AND part_of_speech='adjective' AND translation='مهم' ORDER BY id LIMIT 1;
  IF v_w_035 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wichtig | adjective'; END IF;

  SELECT id INTO v_w_036 FROM words WHERE course_id=v_course AND lemma='das' AND part_of_speech='pronoun' AND translation='این / آن' ORDER BY id LIMIT 1;
  IF v_w_036 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: das | pronoun'; END IF;

  SELECT id INTO v_w_037 FROM words WHERE course_id=v_course AND lemma='wissen' AND part_of_speech='verb' AND translation='دانستن' ORDER BY id LIMIT 1;
  IF v_w_037 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wissen | verb'; END IF;

  SELECT id INTO v_w_038 FROM words WHERE course_id=v_course AND lemma='genau' AND part_of_speech='adverb' AND translation='دقیقا' ORDER BY id LIMIT 1;
  IF v_w_038 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: genau | adverb'; END IF;

  SELECT id INTO v_w_039 FROM words WHERE course_id=v_course AND lemma='Angst' AND part_of_speech='noun' AND translation='ترس' ORDER BY id LIMIT 1;
  IF v_w_039 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Angst','Angst','noun','ترس',43,'{"gender":"feminine","plural":"Ängste"}','[{"text":"Wohnung","translation":"خانه"},{"text":"Arbeit","translation":"کار"},{"text":"Ruhe","translation":"آرامش"},{"text":"Platz","translation":"فضا"},{"text":"Straße","translation":"خیابان"}]','Hast du Angst vor einer falschen Entscheidung?','از یک تصمیم اشتباه می ترسی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_039=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_040 FROM words WHERE course_id=v_course AND lemma='vor' AND part_of_speech='preposition' AND translation='از / جلوی' ORDER BY id LIMIT 1;
  IF v_w_040 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'vor','vor','preposition','از / جلوی',43,NULL,'[{"text":"in","translation":"در"},{"text":"mit","translation":"با"},{"text":"zu","translation":"به"},{"text":"an","translation":"در"},{"text":"bis","translation":"تا"}]','Hast du Angst vor einer falschen Entscheidung?','از یک تصمیم اشتباه می ترسی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_040=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_041 FROM words WHERE course_id=v_course AND lemma='falsch' AND part_of_speech='adjective' AND translation='اشتباه / نادرست' ORDER BY id LIMIT 1;
  IF v_w_041 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'falsch','falsch','adjective','اشتباه / نادرست',43,'{"type":"adjective"}','[{"text":"ruhig","translation":"آرام"},{"text":"wichtig","translation":"مهم"},{"text":"laut","translation":"پرسروصدا"},{"text":"klein","translation":"کوچک"},{"text":"neu","translation":"جدید"}]','Hast du Angst vor einer falschen Entscheidung?','از یک تصمیم اشتباه می ترسی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_041=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_042 FROM words WHERE course_id=v_course AND lemma='Entscheidung' AND part_of_speech='noun' AND translation='تصمیم' ORDER BY id LIMIT 1;
  IF v_w_042 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Entscheidung','Entscheidung','noun','تصمیم',43,'{"gender":"feminine","plural":"Entscheidungen"}','[{"text":"Wohnung","translation":"خانه"},{"text":"Arbeit","translation":"کار"},{"text":"Ruhe","translation":"آرامش"},{"text":"Platz","translation":"فضا"},{"text":"Straße","translation":"خیابان"}]','Hast du Angst vor einer falschen Entscheidung?','از یک تصمیم اشتباه می ترسی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_042=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_043 FROM words WHERE course_id=v_course AND lemma='bisschen' AND part_of_speech='adverb' AND translation='کمی' ORDER BY id LIMIT 1;
  IF v_w_043 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'bisschen','bisschen','adverb','کمی',43,NULL,'[{"text":"noch","translation":"هنوز"},{"text":"genau","translation":"دقیقا"},{"text":"besser","translation":"بهتر"},{"text":"dort","translation":"آنجا"},{"text":"morgen","translation":"فردا"}]','Ein bisschen. Ein Umzug verändert viel.','یک کم. اسباب کشی خیلی چیزها رو تغییر می ده.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_043=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_044 FROM words WHERE course_id=v_course AND lemma='Umzug' AND part_of_speech='noun' AND translation='اسباب کشی' ORDER BY id LIMIT 1;
  IF v_w_044 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Umzug','Umzug','noun','اسباب کشی',43,'{"gender":"masculine","plural":"Umzüge"}','[{"text":"Wohnung","translation":"خانه"},{"text":"Arbeit","translation":"کار"},{"text":"Ruhe","translation":"آرامش"},{"text":"Platz","translation":"فضا"},{"text":"Straße","translation":"خیابان"}]','Ein bisschen. Ein Umzug verändert viel.','یک کم. اسباب کشی خیلی چیزها رو تغییر می ده.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_044=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_045 FROM words WHERE course_id=v_course AND lemma='verändern' AND part_of_speech='verb' AND translation='تغییر دادن' ORDER BY id LIMIT 1;
  IF v_w_045 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'verändern','verändern','verb','تغییر دادن',43,'{"type":"regular_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"wohnen","translation":"ساکن بودن"},{"text":"ändern","translation":"تغییر دادن"},{"text":"suchen","translation":"جست و جو کردن"}]','Ein bisschen. Ein Umzug verändert viel.','یک کم. اسباب کشی خیلی چیزها رو تغییر می ده.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_045=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_046 FROM words WHERE course_id=v_course AND lemma='viel' AND part_of_speech='pronoun' AND translation='مقدار زیاد / خیلی' ORDER BY id LIMIT 1;
  IF v_w_046 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'viel','viel','pronoun','مقدار زیاد / خیلی',43,NULL,'[{"text":"ich","translation":"من"},{"text":"du","translation":"تو"},{"text":"das","translation":"این"},{"text":"etwas","translation":"چیزی"},{"text":"beide","translation":"هر دو"}]','Ein bisschen. Ein Umzug verändert viel.','یک کم. اسباب کشی خیلی چیزها رو تغییر می ده.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_046=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_047 FROM words WHERE course_id=v_course AND lemma='können' AND part_of_speech='verb' AND translation='توانستن / بتوان' ORDER BY id LIMIT 1;
  IF v_w_047 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: können | verb'; END IF;

  SELECT id INTO v_w_048 FROM words WHERE course_id=v_course AND lemma='machen' AND part_of_speech='verb' AND translation='انجام دادن' ORDER BY id LIMIT 1;
  IF v_w_048 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: machen | verb'; END IF;

  SELECT id INTO v_w_049 FROM words WHERE course_id=v_course AND lemma='einmal' AND part_of_speech='adverb' AND translation='یک بار' ORDER BY id LIMIT 1;
  IF v_w_049 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'einmal','einmal','adverb','یک بار',43,NULL,'[{"text":"noch","translation":"هنوز"},{"text":"genau","translation":"دقیقا"},{"text":"besser","translation":"بهتر"},{"text":"dort","translation":"آنجا"},{"text":"morgen","translation":"فردا"}]','Ich kann beide Wohnungen noch einmal ansehen.','می تونم هر دو خونه رو یک بار دیگه ببینم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_049=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_050 FROM words WHERE course_id=v_course AND lemma='ansehen' AND part_of_speech='verb' AND translation='دیدن / بازدید کردن' ORDER BY id LIMIT 1;
  IF v_w_050 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'ansehen','ansehen','verb','دیدن / بازدید کردن',43,'{"prefix":"an","type":"separable_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"wohnen","translation":"ساکن بودن"},{"text":"ändern","translation":"تغییر دادن"},{"text":"suchen","translation":"جست و جو کردن"}]','Ich kann beide Wohnungen noch einmal ansehen.','می تونم هر دو خونه رو یک بار دیگه ببینم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_050=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_051 FROM words WHERE course_id=v_course AND lemma='helfen' AND part_of_speech='verb' AND translation='کمک کردن' ORDER BY id LIMIT 1;
  IF v_w_051 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: helfen | verb'; END IF;

  SELECT id INTO v_w_052 FROM words WHERE course_id=v_course AND lemma='dann' AND part_of_speech='adverb' AND translation='بعد / سپس' ORDER BY id LIMIT 1;
  IF v_w_052 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dann | adverb'; END IF;

  SELECT id INTO v_w_053 FROM words WHERE course_id=v_course AND lemma='vergleichen' AND part_of_speech='verb' AND translation='مقایسه کردن' ORDER BY id LIMIT 1;
  IF v_w_053 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'vergleichen','vergleichen','verb','مقایسه کردن',43,'{"type":"irregular_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"wohnen","translation":"ساکن بودن"},{"text":"ändern","translation":"تغییر دادن"},{"text":"suchen","translation":"جست و جو کردن"}]','Ja, dann kann ich sie besser vergleichen.','آره، اون وقت می تونم بهتر مقایسه شون کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_053=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_054 FROM words WHERE course_id=v_course AND lemma='wann' AND part_of_speech='adverb' AND translation='کی / چه زمانی' ORDER BY id LIMIT 1;
  IF v_w_054 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wann | adverb'; END IF;

  SELECT id INTO v_w_055 FROM words WHERE course_id=v_course AND lemma='möchten' AND part_of_speech='verb' AND translation='خواستن / مایل بودن' ORDER BY id LIMIT 1;
  IF v_w_055 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: möchten | verb'; END IF;

  SELECT id INTO v_w_056 FROM words WHERE course_id=v_course AND lemma='sich entscheiden' AND part_of_speech='verb' AND translation='تصمیم گرفتن' ORDER BY id LIMIT 1;
  IF v_w_056 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sich entscheiden | verb'; END IF;

  SELECT id INTO v_w_057 FROM words WHERE course_id=v_course AND lemma='Nacht' AND part_of_speech='noun' AND translation='شب' ORDER BY id LIMIT 1;
  IF v_w_057 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Nacht | noun'; END IF;

  SELECT id INTO v_w_058 FROM words WHERE course_id=v_course AND lemma='darüber' AND part_of_speech='adverb' AND translation='درباره آن' ORDER BY id LIMIT 1;
  IF v_w_058 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'darüber','darüber','adverb','درباره آن',43,NULL,'[{"text":"noch","translation":"هنوز"},{"text":"genau","translation":"دقیقا"},{"text":"besser","translation":"بهتر"},{"text":"dort","translation":"آنجا"},{"text":"morgen","translation":"فردا"}]','Ich möchte noch eine Nacht darüber schlafen.','می خوام یک شب دیگه درباره اش فکر کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_058=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_059 FROM words WHERE course_id=v_course AND lemma='schlafen' AND part_of_speech='verb' AND translation='خوابیدن' ORDER BY id LIMIT 1;
  IF v_w_059 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: schlafen | verb'; END IF;

  SELECT id INTO v_w_060 FROM words WHERE course_id=v_course AND lemma='klingen' AND part_of_speech='verb' AND translation='به نظر رسیدن' ORDER BY id LIMIT 1;
  IF v_w_060 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'klingen','klingen','verb','به نظر رسیدن',43,'{"type":"irregular_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"wohnen","translation":"ساکن بودن"},{"text":"ändern","translation":"تغییر دادن"},{"text":"suchen","translation":"جست و جو کردن"}]','Das klingt vernünftig.','این منطقی به نظر می رسه.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_060=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_061 FROM words WHERE course_id=v_course AND lemma='vernünftig' AND part_of_speech='adjective' AND translation='منطقی' ORDER BY id LIMIT 1;
  IF v_w_061 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'vernünftig','vernünftig','adjective','منطقی',43,'{"type":"adjective"}','[{"text":"ruhig","translation":"آرام"},{"text":"wichtig","translation":"مهم"},{"text":"laut","translation":"پرسروصدا"},{"text":"klein","translation":"کوچک"},{"text":"neu","translation":"جدید"}]','Das klingt vernünftig.','این منطقی به نظر می رسه.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_061=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_062 FROM words WHERE course_id=v_course AND lemma='morgen' AND part_of_speech='adverb' AND translation='فردا' ORDER BY id LIMIT 1;
  IF v_w_062 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: morgen | adverb'; END IF;

  SELECT id INTO v_w_063 FROM words WHERE course_id=v_course AND lemma='Liste' AND part_of_speech='noun' AND translation='فهرست' ORDER BY id LIMIT 1;
  IF v_w_063 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Liste','Liste','noun','فهرست',43,'{"gender":"feminine","plural":"Listen"}','[{"text":"Wohnung","translation":"خانه"},{"text":"Arbeit","translation":"کار"},{"text":"Ruhe","translation":"آرامش"},{"text":"Platz","translation":"فضا"},{"text":"Straße","translation":"خیابان"}]','Morgen mache ich eine Liste.','فردا یک فهرست درست می کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_063=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_064 FROM words WHERE course_id=v_course AND lemma='hoffentlich' AND part_of_speech='adverb' AND translation='امیدوارم / با امید' ORDER BY id LIMIT 1;
  IF v_w_064 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'hoffentlich','hoffentlich','adverb','امیدوارم / با امید',43,NULL,'[{"text":"noch","translation":"هنوز"},{"text":"genau","translation":"دقیقا"},{"text":"besser","translation":"بهتر"},{"text":"dort","translation":"آنجا"},{"text":"morgen","translation":"فردا"}]','Ja, dann bin ich hoffentlich sicherer.','آره، اون وقت امیدوارم مطمئن تر باشم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_064=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_065 FROM words WHERE course_id=v_course AND lemma='Ich bin mir noch nicht sicher.' AND part_of_speech='phrase' AND translation='هنوز مطمئن نیستم.' ORDER BY id LIMIT 1;
  IF v_w_065 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich bin mir noch nicht sicher.','Ich bin mir noch nicht sicher.','phrase','هنوز مطمئن نیستم.',42,'{"type":"sentence_pattern"}','[{"text":"Ich bin mir ganz sicher.","translation":"کاملا مطمئنم."},{"text":"Ich habe mich entschieden.","translation":"تصمیمم رو گرفتم."},{"text":"Ich suche noch eine Wohnung.","translation":"هنوز دنبال خونه می گردم."},{"text":"Ich möchte heute umziehen.","translation":"می خوام امروز اسباب کشی کنم."},{"text":"Die Wohnung ist sicher.","translation":"این خونه امنه."}]','Ich bin mir noch nicht sicher.','هنوز مطمئن نیستم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_065=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_066 FROM words WHERE course_id=v_course AND lemma='Das weiß ich noch nicht genau.' AND part_of_speech='phrase' AND translation='هنوز دقیقا نمی دونم.' ORDER BY id LIMIT 1;
  IF v_w_066 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Das weiß ich noch nicht genau.','Das weiß ich noch nicht genau.','phrase','هنوز دقیقا نمی دونم.',43,'{"type":"sentence_pattern"}','[{"text":"Das weiß ich schon genau.","translation":"این رو کاملا می دونم."},{"text":"Die erste Wohnung ist größer.","translation":"خونه اول بزرگ تره."},{"text":"Die zweite Wohnung ist ruhiger.","translation":"خونه دوم آروم تره."},{"text":"Beide Wohnungen sind gleich.","translation":"هر دو خونه یکسان هستند."},{"text":"Ich finde die erste besser.","translation":"به نظرم خونه اول بهتره."}]','Das weiß ich noch nicht genau.','هنوز دقیقا نمی دونم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_066=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_067 FROM words WHERE course_id=v_course AND lemma='Ich kann beide Wohnungen noch einmal ansehen.' AND part_of_speech='phrase' AND translation='می تونم هر دو خونه رو یک بار دیگه ببینم.' ORDER BY id LIMIT 1;
  IF v_w_067 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich kann beide Wohnungen noch einmal ansehen.','Ich kann beide Wohnungen noch einmal ansehen.','phrase','می تونم هر دو خونه رو یک بار دیگه ببینم.',43,'{"type":"sentence_pattern"}','[{"text":"Ich kann nur eine Wohnung ansehen.","translation":"فقط می تونم یک خونه رو ببینم."},{"text":"Ich habe beide Wohnungen gefunden.","translation":"هر دو خونه رو پیدا کردم."},{"text":"Ich möchte morgen umziehen.","translation":"می خوام فردا اسباب کشی کنم."},{"text":"Ich kann die Wohnungen vergleichen.","translation":"می تونم خونه ها رو مقایسه کنم."},{"text":"Ich sehe die erste Wohnung heute.","translation":"امروز خونه اول رو می بینم."}]','Ich kann beide Wohnungen noch einmal ansehen.','می تونم هر دو خونه رو یک بار دیگه ببینم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_067=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_068 FROM words WHERE course_id=v_course AND lemma='Ich möchte noch eine Nacht darüber schlafen.' AND part_of_speech='phrase' AND translation='می خوام یک شب دیگه درباره اش فکر کنم.' ORDER BY id LIMIT 1;
  IF v_w_068 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich möchte noch eine Nacht darüber schlafen.','Ich möchte noch eine Nacht darüber schlafen.','phrase','می خوام یک شب دیگه درباره اش فکر کنم.',43,'{"type":"sentence_pattern"}','[{"text":"Ich entscheide mich heute.","translation":"امروز تصمیم می گیرم."},{"text":"Ich brauche noch eine Woche.","translation":"هنوز یک هفته وقت لازم دارم."},{"text":"Ich möchte die Wohnung wieder ansehen.","translation":"می خوام خونه رو دوباره ببینم."},{"text":"Morgen mache ich eine Liste.","translation":"فردا یک فهرست درست می کنم."},{"text":"Ich bin mir jetzt sicher.","translation":"حالا مطمئنم."}]','Ich möchte noch eine Nacht darüber schlafen.','می خوام یک شب دیگه درباره اش فکر کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":84}');
    SET v_w_068=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Noch nicht sicher','هنوز مطمئن نیستم','Sara fragt nach der Wohnungssuche. Mia hat zwei passende Möglichkeiten gefunden, ist aber noch unsicher.','سارا درباره جست و جوی خانه می پرسد. میا دو گزینه مناسب پیدا کرده، اما هنوز مردد است.','story','mia-sara-b1-decisions',13,42,150,1,'validated','{"relationship":"friends","context":"comparing-apartments-and-uncertainty","cefr":"B1","storyArc":"options-comparison-concern-reflection"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,1,'character','Hast du schon eine passende Wohnung gefunden?','تا حالا یک خونه مناسب پیدا کردی؟',42,NULL,NULL,NULL,NULL,'[{"form":"present_2sg","lemma":"haben","partOfSpeech":"verb","surface":"Hast","translation":"داشتن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"schon","partOfSpeech":"adverb","surface":"schon","translation":"قبلا / تا حالا"},{"form":"accusative_feminine","lemma":"ein","partOfSpeech":"article","surface":"eine","translation":"یک / حرف تعریف نامعین"},{"form":"accusative_feminine","lemma":"passend","partOfSpeech":"adjective","surface":"passende","translation":"مناسب"},{"lemma":"Wohnung","partOfSpeech":"noun","surface":"Wohnung","translation":"خانه / آپارتمان"},{"form":"past_participle","lemma":"finden","partOfSpeech":"verb","suffix":"?","surface":"gefunden","translation":"پیدا کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,2,'learner','Ja, aber ich bin mir noch nicht sicher.','آره، اما هنوز مطمئن نیستم.',42,NULL,NULL,'ja aber ich bin mir noch nicht sicher',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"aber","partOfSpeech":"conjunction","surface":"aber","translation":"اما"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"present_1sg","lemma":"sein","partOfSpeech":"verb","surface":"bin","translation":"بودن"},{"form":"dative_1sg","lemma":"ich","meaning":"برای خودم","partOfSpeech":"pronoun","surface":"mir","translation":"من"},{"lemma":"noch","partOfSpeech":"adverb","surface":"noch","translation":"هنوز"},{"lemma":"nicht","partOfSpeech":"particle","surface":"nicht","translation":"نه / نیست"},{"lemma":"sicher","partOfSpeech":"adjective","suffix":".","surface":"sicher","translation":"مطمئن"}]','sich sicher sein','برای بیان اطمینان یا تردید می گوییم: Ich bin mir sicher یا Ich bin mir nicht sicher.','{"pattern":"subject + sein + dative reflexive pronoun + (nicht) sicher"}','{"cefr":"B1"}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,3,'character','Warum bist du noch unsicher?','چرا هنوز مرددی؟',42,NULL,NULL,NULL,NULL,'[{"lemma":"warum","partOfSpeech":"adverb","surface":"Warum","translation":"چرا"},{"form":"present_2sg","lemma":"sein","partOfSpeech":"verb","surface":"bist","translation":"بودن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"noch","partOfSpeech":"adverb","surface":"noch","translation":"هنوز"},{"lemma":"unsicher","partOfSpeech":"adjective","suffix":"?","surface":"unsicher","translation":"نامطمئن / مردد"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,4,'learner','Ich habe zwei passende Wohnungen gefunden.','دو خونه مناسب پیدا کردم.',42,NULL,NULL,'ich habe zwei passende wohnungen gefunden',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"haben","partOfSpeech":"verb","surface":"habe","translation":"داشتن"},{"lemma":"zwei","partOfSpeech":"number","surface":"zwei","translation":"دو"},{"form":"accusative_plural","lemma":"passend","partOfSpeech":"adjective","surface":"passende","translation":"مناسب"},{"form":"plural","lemma":"Wohnung","partOfSpeech":"noun","surface":"Wohnungen","translation":"خانه / آپارتمان"},{"form":"past_participle","lemma":"finden","partOfSpeech":"verb","suffix":".","surface":"gefunden","translation":"پیدا کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,5,'character','Sind beide Wohnungen gut?','هر دو خونه خوب هستند؟',42,NULL,NULL,NULL,NULL,'[{"form":"present_plural","lemma":"sein","partOfSpeech":"verb","surface":"Sind","translation":"بودن"},{"lemma":"beide","partOfSpeech":"pronoun","surface":"beide","translation":"هر دو"},{"form":"plural","lemma":"Wohnung","partOfSpeech":"noun","surface":"Wohnungen","translation":"خانه / آپارتمان"},{"lemma":"gut","partOfSpeech":"adjective","suffix":"?","surface":"gut","translation":"خوب"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,6,'learner','Ja, sie haben unterschiedliche Vorteile.','آره، هر کدوم مزیت های متفاوتی دارند.',42,NULL,NULL,'ja sie haben unterschiedliche vorteile',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"sie","partOfSpeech":"pronoun","surface":"sie","translation":"او / آن ها"},{"form":"present_plural","lemma":"haben","partOfSpeech":"verb","surface":"haben","translation":"داشتن"},{"form":"accusative_plural","lemma":"unterschiedlich","partOfSpeech":"adjective","surface":"unterschiedliche","translation":"متفاوت"},{"form":"plural","lemma":"Vorteil","partOfSpeech":"noun","suffix":".","surface":"Vorteile","translation":"مزیت"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_6=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Zwei Wohnungen vergleichen','مقایسه دو خانه','Mia vergleicht Größe, Ruhe und Lage der beiden Wohnungen, ohne schon eine Priorität festzulegen.','میا اندازه، آرامش و موقعیت دو خانه را مقایسه می کند، بدون اینکه هنوز اولویتش را مشخص کند.','story','mia-sara-b1-decisions',14,43,150,2,'validated','{"relationship":"friends","context":"comparing-apartments-and-uncertainty","cefr":"B1","storyArc":"options-comparison-concern-reflection"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,1,'character','Welche Wohnung findest du besser?','به نظرت کدوم خونه بهتره؟',43,NULL,NULL,NULL,NULL,'[{"lemma":"welche","partOfSpeech":"pronoun","surface":"Welche","translation":"کدام / چه"},{"lemma":"Wohnung","partOfSpeech":"noun","surface":"Wohnung","translation":"خانه / آپارتمان"},{"form":"present_2sg","lemma":"finden","partOfSpeech":"verb","surface":"findest","translation":"پیدا کردن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"besser","partOfSpeech":"adverb","suffix":"?","surface":"besser","translation":"بهتر"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,2,'learner','Die erste Wohnung ist größer.','خونه اول بزرگ تره.',43,NULL,NULL,'die erste wohnung ist größer',NULL,'[{"form":"nominative_feminine","lemma":"der","partOfSpeech":"article","surface":"Die","translation":"حرف تعریف"},{"form":"nominative_feminine","lemma":"erste","partOfSpeech":"adjective","surface":"erste","translation":"اولین"},{"lemma":"Wohnung","partOfSpeech":"noun","surface":"Wohnung","translation":"خانه / آپارتمان"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"ist","translation":"بودن"},{"form":"comparative","lemma":"groß","partOfSpeech":"adjective","suffix":".","surface":"größer","translation":"بزرگ"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,3,'character','Und die zweite Wohnung?','و خونه دوم؟',43,NULL,NULL,NULL,NULL,'[{"lemma":"und","partOfSpeech":"conjunction","surface":"Und","translation":"و"},{"form":"nominative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"nominative_feminine","lemma":"zweite","partOfSpeech":"adjective","surface":"zweite","translation":"دومین"},{"lemma":"Wohnung","partOfSpeech":"noun","suffix":"?","surface":"Wohnung","translation":"خانه / آپارتمان"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,4,'learner','Sie ist ruhiger und näher an der Arbeit.','آروم تره و به محل کار نزدیک تره.',43,NULL,NULL,'sie ist ruhiger und näher an der arbeit',NULL,'[{"lemma":"sie","partOfSpeech":"pronoun","surface":"Sie","translation":"او / آن ها"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"ist","translation":"بودن"},{"form":"comparative","lemma":"ruhig","partOfSpeech":"adjective","surface":"ruhiger","translation":"آرام"},{"lemma":"und","partOfSpeech":"conjunction","surface":"und","translation":"و"},{"form":"comparative","lemma":"nah","partOfSpeech":"adjective","surface":"näher","translation":"نزدیک"},{"lemma":"an","partOfSpeech":"preposition","surface":"an","translation":"در / در روز"},{"form":"dative_feminine","lemma":"der","partOfSpeech":"article","surface":"der","translation":"حرف تعریف"},{"lemma":"Arbeit","partOfSpeech":"noun","suffix":".","surface":"Arbeit","translation":"کار"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,5,'character','Was ist dir wichtiger?','کدوم مورد برات مهم تره؟',43,NULL,NULL,NULL,NULL,'[{"lemma":"was","partOfSpeech":"pronoun","surface":"Was","translation":"چی / چه"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"ist","translation":"بودن"},{"form":"dative_2sg","lemma":"du","meaning":"برای تو","partOfSpeech":"pronoun","surface":"dir","translation":"تو"},{"form":"comparative","lemma":"wichtig","partOfSpeech":"adjective","suffix":"?","surface":"wichtiger","translation":"مهم"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,6,'learner','Das weiß ich noch nicht genau.','هنوز دقیقا نمی دونم.',43,NULL,NULL,'das weiß ich noch nicht genau',NULL,'[{"lemma":"das","partOfSpeech":"pronoun","surface":"Das","translation":"این / آن"},{"form":"present_1sg","lemma":"wissen","partOfSpeech":"verb","surface":"weiß","translation":"دانستن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"noch","partOfSpeech":"adverb","surface":"noch","translation":"هنوز"},{"lemma":"nicht","partOfSpeech":"particle","surface":"nicht","translation":"نه / نیست"},{"lemma":"genau","partOfSpeech":"adverb","suffix":".","surface":"genau","translation":"دقیقا"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_12=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Angst vor der falschen Wahl','ترس از انتخاب اشتباه','Mia benennt ihre Sorge und plant, beide Wohnungen noch einmal bewusst zu vergleichen.','میا نگرانی اش را بیان می کند و تصمیم می گیرد هر دو خانه را یک بار دیگر با دقت مقایسه کند.','story','mia-sara-b1-decisions',15,43,150,3,'validated','{"relationship":"friends","context":"comparing-apartments-and-uncertainty","cefr":"B1","storyArc":"options-comparison-concern-reflection"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,1,'character','Hast du Angst vor einer falschen Entscheidung?','از یک تصمیم اشتباه می ترسی؟',43,NULL,NULL,NULL,NULL,'[{"form":"present_2sg","lemma":"haben","partOfSpeech":"verb","surface":"Hast","translation":"داشتن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"Angst","partOfSpeech":"noun","surface":"Angst","translation":"ترس"},{"lemma":"vor","partOfSpeech":"preposition","surface":"vor","translation":"از / جلوی"},{"form":"dative_feminine","lemma":"ein","partOfSpeech":"article","surface":"einer","translation":"یک / حرف تعریف نامعین"},{"form":"dative_feminine","lemma":"falsch","partOfSpeech":"adjective","surface":"falschen","translation":"اشتباه / نادرست"},{"lemma":"Entscheidung","partOfSpeech":"noun","suffix":"?","surface":"Entscheidung","translation":"تصمیم"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,2,'learner','Ein bisschen. Ein Umzug verändert viel.','یک کم. اسباب کشی خیلی چیزها رو تغییر می ده.',43,NULL,NULL,'ein bisschen ein umzug verändert viel',NULL,'[{"lemma":"ein","partOfSpeech":"article","surface":"Ein","translation":"یک / حرف تعریف نامعین"},{"lemma":"bisschen","partOfSpeech":"adverb","suffix":".","surface":"bisschen","translation":"کمی"},{"lemma":"ein","partOfSpeech":"article","surface":"Ein","translation":"یک / حرف تعریف نامعین"},{"lemma":"Umzug","partOfSpeech":"noun","surface":"Umzug","translation":"اسباب کشی"},{"form":"present_3sg","lemma":"verändern","partOfSpeech":"verb","surface":"verändert","translation":"تغییر دادن"},{"lemma":"viel","partOfSpeech":"pronoun","suffix":".","surface":"viel","translation":"مقدار زیاد / خیلی"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,3,'character','Was kannst du machen?','چه کاری می تونی انجام بدی؟',43,NULL,NULL,NULL,NULL,'[{"lemma":"was","partOfSpeech":"pronoun","surface":"Was","translation":"چی / چه"},{"form":"present_2sg","lemma":"können","partOfSpeech":"verb","surface":"kannst","translation":"توانستن / بتوان"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"machen","partOfSpeech":"verb","suffix":"?","surface":"machen","translation":"انجام دادن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,4,'learner','Ich kann beide Wohnungen noch einmal ansehen.','می تونم هر دو خونه رو یک بار دیگه ببینم.',43,NULL,NULL,'ich kann beide wohnungen noch einmal ansehen',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"können","partOfSpeech":"verb","surface":"kann","translation":"توانستن / بتوان"},{"lemma":"beide","partOfSpeech":"pronoun","surface":"beide","translation":"هر دو"},{"form":"plural","lemma":"Wohnung","partOfSpeech":"noun","surface":"Wohnungen","translation":"خانه / آپارتمان"},{"lemma":"noch","partOfSpeech":"adverb","surface":"noch","translation":"هنوز"},{"lemma":"einmal","partOfSpeech":"adverb","surface":"einmal","translation":"یک بار"},{"form":"infinitive","lemma":"ansehen","partOfSpeech":"verb","suffix":".","surface":"ansehen","translation":"دیدن / بازدید کردن"}]','فعل جداشدنی با können','بعد از können، مصدر ansehen به صورت کامل در پایان جمله می آید.','{"pattern":"subject + können + ... + separable infinitive"}','{"cefr":"B1"}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,5,'character','Hilft dir das?','این کمکت می کنه؟',43,NULL,NULL,NULL,NULL,'[{"form":"present_3sg","lemma":"helfen","partOfSpeech":"verb","surface":"Hilft","translation":"کمک کردن"},{"form":"dative_2sg","lemma":"du","meaning":"به تو","partOfSpeech":"pronoun","surface":"dir","translation":"تو"},{"lemma":"das","partOfSpeech":"pronoun","suffix":"?","surface":"das","translation":"این / آن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,6,'learner','Ja, dann kann ich sie besser vergleichen.','آره، اون وقت می تونم بهتر مقایسه شون کنم.',43,NULL,NULL,'ja dann kann ich sie besser vergleichen',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"dann","partOfSpeech":"adverb","surface":"dann","translation":"بعد / سپس"},{"form":"present_1sg","lemma":"können","partOfSpeech":"verb","surface":"kann","translation":"توانستن / بتوان"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"sie","meaning":"آن ها","partOfSpeech":"pronoun","surface":"sie","translation":"او / آن ها"},{"lemma":"besser","partOfSpeech":"adverb","surface":"besser","translation":"بهتر"},{"lemma":"vergleichen","partOfSpeech":"verb","suffix":".","surface":"vergleichen","translation":"مقایسه کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_18=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Eine Nacht darüber schlafen','یک شب درباره اش فکر کردن','Mia nimmt sich bis morgen Zeit, hält die Vorteile fest und erwartet danach mehr Sicherheit.','میا تا فردا به خودش فرصت می دهد، مزیت ها را یادداشت می کند و انتظار دارد بعد از آن مطمئن تر باشد.','story','mia-sara-b1-decisions',16,43,150,4,'validated','{"relationship":"friends","context":"comparing-apartments-and-uncertainty","cefr":"B1","storyArc":"options-comparison-concern-reflection"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,1,'character','Wann möchtest du dich entscheiden?','کی می خوای تصمیم بگیری؟',43,NULL,NULL,NULL,NULL,'[{"lemma":"wann","partOfSpeech":"adverb","surface":"Wann","translation":"کی / چه زمانی"},{"form":"present_2sg","lemma":"möchten","partOfSpeech":"verb","surface":"möchtest","translation":"خواستن / مایل بودن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"reflexive_accusative_2sg","lemma":"du","meaning":"خودت","partOfSpeech":"pronoun","surface":"dich","translation":"تو"},{"form":"infinitive","lemma":"sich entscheiden","partOfSpeech":"verb","suffix":"?","surface":"entscheiden","translation":"تصمیم گرفتن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,2,'learner','Ich möchte noch eine Nacht darüber schlafen.','می خوام یک شب دیگه درباره اش فکر کنم.',43,NULL,NULL,'ich möchte noch eine nacht darüber schlafen',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"möchten","partOfSpeech":"verb","surface":"möchte","translation":"خواستن / مایل بودن"},{"lemma":"noch","partOfSpeech":"adverb","surface":"noch","translation":"هنوز"},{"form":"accusative_feminine","lemma":"ein","partOfSpeech":"article","surface":"eine","translation":"یک / حرف تعریف نامعین"},{"lemma":"Nacht","partOfSpeech":"noun","surface":"Nacht","translation":"شب"},{"lemma":"darüber","partOfSpeech":"adverb","surface":"darüber","translation":"درباره آن"},{"lemma":"schlafen","partOfSpeech":"verb","suffix":".","surface":"schlafen","translation":"خوابیدن"}]','über etwas schlafen','عبارت darüber schlafen یعنی پیش از تصمیم گرفتن تا روز بعد فکر کردن.','{"pattern":"über etwas / darüber schlafen"}','{"cefr":"B1"}');
  SET v_t_20=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,3,'character','Das klingt vernünftig.','این منطقی به نظر می رسه.',43,NULL,NULL,NULL,NULL,'[{"lemma":"das","partOfSpeech":"pronoun","surface":"Das","translation":"این / آن"},{"form":"present_3sg","lemma":"klingen","partOfSpeech":"verb","surface":"klingt","translation":"به نظر رسیدن"},{"lemma":"vernünftig","partOfSpeech":"adjective","suffix":".","surface":"vernünftig","translation":"منطقی"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_21=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,4,'learner','Morgen mache ich eine Liste.','فردا یک فهرست درست می کنم.',43,NULL,NULL,'morgen mache ich eine liste',NULL,'[{"lemma":"morgen","partOfSpeech":"adverb","surface":"Morgen","translation":"فردا"},{"form":"present_1sg","lemma":"machen","partOfSpeech":"verb","surface":"mache","translation":"انجام دادن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"accusative_feminine","lemma":"ein","partOfSpeech":"article","surface":"eine","translation":"یک / حرف تعریف نامعین"},{"lemma":"Liste","partOfSpeech":"noun","suffix":".","surface":"Liste","translation":"فهرست"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_22=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,5,'character','Hilft dir die Liste?','این فهرست کمکت می کنه؟',43,NULL,NULL,NULL,NULL,'[{"form":"present_3sg","lemma":"helfen","partOfSpeech":"verb","surface":"Hilft","translation":"کمک کردن"},{"form":"dative_2sg","lemma":"du","meaning":"به تو","partOfSpeech":"pronoun","surface":"dir","translation":"تو"},{"form":"nominative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Liste","partOfSpeech":"noun","suffix":"?","surface":"Liste","translation":"فهرست"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_23=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,6,'learner','Ja, dann bin ich hoffentlich sicherer.','آره، اون وقت امیدوارم مطمئن تر باشم.',43,NULL,NULL,'ja dann bin ich hoffentlich sicherer',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"dann","partOfSpeech":"adverb","surface":"dann","translation":"بعد / سپس"},{"form":"present_1sg","lemma":"sein","partOfSpeech":"verb","surface":"bin","translation":"بودن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"hoffentlich","partOfSpeech":"adverb","surface":"hoffentlich","translation":"امیدوارم / با امید"},{"form":"comparative","lemma":"sicher","partOfSpeech":"adjective","suffix":".","surface":"sicherer","translation":"مطمئن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_24=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_001,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_002,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_003,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_005,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_006,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_007,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_008,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_009,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_010,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_011,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_012,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_014,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_015,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_016,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_017,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_018,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_019,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_020,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_021,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_022,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_065,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_023,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_006,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_007,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_002,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_024,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_025,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_026,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_011,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_027,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_028,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_029,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_020,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_030,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_031,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_032,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_033,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_034,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_035,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_036,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_037,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_010,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_038,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_066,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_002,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_039,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_040,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_004,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_041,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_042,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_043,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_044,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_045,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_046,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_034,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_047,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_048,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_010,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_018,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_049,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_050,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_051,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_036,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_052,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_020,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_024,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_053,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_067,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_054,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_055,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_002,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_056,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_010,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_004,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_057,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_058,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_059,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_036,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_060,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_061,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_062,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_048,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_063,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_051,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_025,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_052,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_011,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_064,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_014,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_068,'new',1,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_065,'عبارت کلیدی درس',NULL,42,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',2,NULL,v_w_014,'واژه کلیدی درس',NULL,42,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',3,v_t_1,NULL,'به پرسش سارا گوش کن',NULL,42,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',4,v_t_2,NULL,'پاسخ میا را با صدای بلند بگو',NULL,42,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',5,v_t_3,NULL,'به پرسش بعدی گوش کن',NULL,42,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',6,v_t_4,NULL,'پاسخ را با صدای بلند بگو',NULL,42,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',7,NULL,v_w_014,'معنی واژه کلیدی را انتخاب کن',NULL,42,'{"mode":"word_translation","question":"sicher در این درس چه معنی دارد؟","choices":["مطمئن","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,42,'{"source":"lesson_story","question":"چرا میا هنوز مطمئن نیست؟","choices":["چون دو خانه مناسب پیدا کرده است","چون هیچ خانه ای پیدا نکرده است","چون دیگر نمی خواهد اسباب کشی کند"],"correctIndex":0}','{"cefr":"B1","series":84}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_066,'عبارت کلیدی درس',NULL,43,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',2,NULL,v_w_024,'واژه کلیدی درس',NULL,43,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',3,v_t_7,NULL,'به پرسش سارا گوش کن',NULL,43,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',4,v_t_8,NULL,'پاسخ میا را با صدای بلند بگو',NULL,43,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',5,v_t_9,NULL,'به پرسش بعدی گوش کن',NULL,43,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',6,v_t_10,NULL,'پاسخ را با صدای بلند بگو',NULL,43,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',7,NULL,v_w_024,'معنی واژه کلیدی را انتخاب کن',NULL,43,'{"mode":"word_translation","question":"besser در این درس چه معنی دارد؟","choices":["بهتر","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,43,'{"source":"lesson_story","question":"خانه دوم چه مزیتی دارد؟","choices":["آرام تر و به محل کار نزدیک تر است","بزرگ تر و گران تر است","اتاق کار ندارد"],"correctIndex":0}','{"cefr":"B1","series":84}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_067,'عبارت کلیدی درس',NULL,43,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',2,NULL,v_w_053,'واژه کلیدی درس',NULL,43,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',3,v_t_13,NULL,'به پرسش سارا گوش کن',NULL,43,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',4,v_t_14,NULL,'پاسخ میا را با صدای بلند بگو',NULL,43,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',5,v_t_15,NULL,'به پرسش بعدی گوش کن',NULL,43,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',6,v_t_16,NULL,'پاسخ را با صدای بلند بگو',NULL,43,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',7,NULL,v_w_053,'معنی واژه کلیدی را انتخاب کن',NULL,43,'{"mode":"word_translation","question":"vergleichen در این درس چه معنی دارد؟","choices":["مقایسه کردن","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,43,'{"source":"lesson_story","question":"میا برای مقایسه بهتر چه کار می کند؟","choices":["هر دو خانه را دوباره می بیند","فقط خانه اول را می خرد","از سارا می خواهد تصمیم بگیرد"],"correctIndex":0}','{"cefr":"B1","series":84}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',1,NULL,v_w_068,'عبارت کلیدی درس',NULL,43,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',2,NULL,v_w_058,'واژه کلیدی درس',NULL,43,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_19,NULL,'به پرسش سارا گوش کن',NULL,43,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_20,NULL,'پاسخ میا را با صدای بلند بگو',NULL,43,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_21,NULL,'به پرسش بعدی گوش کن',NULL,43,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_22,NULL,'پاسخ را با صدای بلند بگو',NULL,43,NULL,'{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',7,NULL,v_w_058,'معنی واژه کلیدی را انتخاب کن',NULL,43,'{"mode":"word_translation","question":"darüber در این درس چه معنی دارد؟","choices":["درباره آن","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":84}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,43,'{"source":"lesson_story","question":"میا چه زمانی دوباره تصمیمش را بررسی می کند؟","choices":["بعد از یک شب فکر کردن","همین لحظه","هفته آینده"],"correctIndex":0}','{"cefr":"B1","series":84}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 084 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND storyline_key='mia-sara-b1-decisions' AND storyline_order BETWEEN 13 AND 16;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 084 storyline continuity.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>24 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 084 turn count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>32 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 084 activity count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (ac.config IS NULL OR JSON_EXTRACT(ac.config,'$.question') IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without task.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter AND lw.is_target=1;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 084 explicit-target count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) AS n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) duplicate_pairs;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple detected.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_series_084_v9();
DROP PROCEDURE IF EXISTS import_nova_series_084_v9;

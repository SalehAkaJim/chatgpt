-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 083
-- B1 > Entscheidungen & Gründe > Weil ich etwas ändern möchte
-- Requires canonical Nova v9.0 and QA-passed staged Series 081-082.
-- Uses the unchanged Nova v9.0 schema; contains no schema DDL.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_083_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_083_v9()
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

  DECLARE EXIT HANDLER FOR SQLEXCEPTION
  BEGIN
    ROLLBACK;
    RESIGNAL;
  END;

  START TRANSACTION;
  SELECT id INTO v_course FROM courses WHERE learning_language='de' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='B1' AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Level from Series 081 not found.'; END IF;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 01 from Series 081 not found.'; END IF;

  SELECT COUNT(*) INTO v_count FROM chapters WHERE module_id=v_module AND sort_order IN (1,2) AND status IN ('validated','complete');
  IF v_count<>2 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 081-082 Chapters must be validated before Series 083.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons l JOIN chapters c ON c.id=l.chapter_id
  WHERE c.module_id=v_module AND c.sort_order IN (1,2) AND l.storyline_key='mia-sara-b1-decisions' AND l.storyline_order BETWEEN 1 AND 8;
  IF v_count<>8 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 081-082 storyline orders 1-8 are required.'; END IF;

  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 01 Chapter 03 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='Weil ich etwas ändern möchte' AND title_translation='چون می خوام یه چیزی رو تغییر بدم';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 083 canonical Chapter title mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 01 Chapter 03 must be empty before Series 083 import.'; END IF;

  SELECT id INTO v_c_mia FROM characters WHERE course_id=v_course AND name='Mia' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_mia IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Mia not found.'; END IF;
  SELECT id INTO v_c_sara FROM characters WHERE course_id=v_course AND name='Sara' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_sara IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Sara not found.'; END IF;
  IF v_c_mia=v_c_sara THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Mia and Sara must be distinct Characters.'; END IF;

  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: du | pronoun'; END IF;

  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: haben | verb'; END IF;

  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='Grund' AND part_of_speech='noun' AND translation='دلیل' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Grund | noun'; END IF;

  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='nennen' AND part_of_speech='verb' AND translation='نام بردن / گفتن' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'nennen','nennen','verb','نام بردن / گفتن',42,'{"participle":"genannt","type":"irregular_verb"}','[{"text":"fragen","translation":"پرسیدن"},{"text":"hören","translation":"شنیدن"},{"text":"suchen","translation":"جست و جو کردن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"wohnen","translation":"ساکن بودن"}]','Du hast Gründe genannt.','دلیل هات رو گفتی.',NULL,NULL,'{"cefr":"B1","introducedInSeries":83}');
    SET v_w_004=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ja | interjection'; END IF;

  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ich | pronoun'; END IF;

  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='möchten' AND part_of_speech='verb' AND translation='خواستن / مایل بودن' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: möchten | verb'; END IF;

  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='etwas' AND part_of_speech='pronoun' AND translation='چیزی / یک چیزی' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: etwas | pronoun'; END IF;

  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='ändern' AND part_of_speech='verb' AND translation='تغییر دادن' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'ändern','ändern','verb','تغییر دادن',42,'{"type":"regular_verb"}','[{"text":"bleiben","translation":"ماندن"},{"text":"suchen","translation":"جست و جو کردن"},{"text":"arbeiten","translation":"کار کردن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"wohnen","translation":"ساکن بودن"}]','Ja, ich möchte etwas ändern.','آره، می خوام یه چیزی رو تغییر بدم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":83}');
    SET v_w_009=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='was' AND part_of_speech='pronoun' AND translation='چی / چه' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: was | pronoun'; END IF;

  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='genau' AND part_of_speech='adverb' AND translation='دقیقا' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'genau','genau','adverb','دقیقا',42,NULL,'[{"text":"vielleicht","translation":"شاید"},{"text":"später","translation":"بعدا"},{"text":"ungefähr","translation":"تقریبا"},{"text":"noch","translation":"هنوز"},{"text":"oft","translation":"اغلب"}]','Was möchtest du genau ändern?','دقیقا چی رو می خوای تغییر بدی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":83}');
    SET v_w_011=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='Arbeit' AND part_of_speech='noun' AND translation='کار' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Arbeit','Arbeit','noun','کار',42,'{"gender":"feminine","plural":"Arbeiten"}','[{"text":"Ruhe","translation":"آرامش"},{"text":"Wohnung","translation":"خانه"},{"text":"Straße","translation":"خیابان"},{"text":"Schlaf","translation":"خواب"},{"text":"Platz","translation":"فضا"}]','Ich möchte Arbeit und Schlaf trennen.','می خوام کار و خواب رو از هم جدا کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":83}');
    SET v_w_012=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='und' AND part_of_speech='conjunction' AND translation='و' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: und | conjunction'; END IF;

  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='Schlaf' AND part_of_speech='noun' AND translation='خواب' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Schlaf','Schlaf','noun','خواب',42,'{"gender":"masculine","plural":null}','[{"text":"Arbeit","translation":"کار"},{"text":"Zeit","translation":"زمان"},{"text":"Ruhe","translation":"آرامش"},{"text":"Platz","translation":"فضا"},{"text":"Straße","translation":"خیابان"}]','Ich möchte Arbeit und Schlaf trennen.','می خوام کار و خواب رو از هم جدا کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":83}');
    SET v_w_014=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='trennen' AND part_of_speech='verb' AND translation='جدا کردن' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'trennen','trennen','verb','جدا کردن',42,'{"type":"regular_verb"}','[{"text":"verbinden","translation":"وصل کردن"},{"text":"ändern","translation":"تغییر دادن"},{"text":"suchen","translation":"جست و جو کردن"},{"text":"arbeiten","translation":"کار کردن"},{"text":"schlafen","translation":"خوابیدن"}]','Ich möchte Arbeit und Schlaf trennen.','می خوام کار و خواب رو از هم جدا کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":83}');
    SET v_w_015=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_016 FROM words WHERE course_id=v_course AND lemma='warum' AND part_of_speech='adverb' AND translation='چرا' ORDER BY id LIMIT 1;
  IF v_w_016 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: warum | adverb'; END IF;

  SELECT id INTO v_w_017 FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_017 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sein | verb'; END IF;

  SELECT id INTO v_w_018 FROM words WHERE course_id=v_course AND lemma='das' AND part_of_speech='pronoun' AND translation='این / آن' ORDER BY id LIMIT 1;
  IF v_w_018 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: das | pronoun'; END IF;

  SELECT id INTO v_w_019 FROM words WHERE course_id=v_course AND lemma='wichtig' AND part_of_speech='adjective' AND translation='مهم' ORDER BY id LIMIT 1;
  IF v_w_019 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wichtig | adjective'; END IF;

  SELECT id INTO v_w_020 FROM words WHERE course_id=v_course AND lemma='weil' AND part_of_speech='conjunction' AND translation='چون / زیرا' ORDER BY id LIMIT 1;
  IF v_w_020 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'weil','weil','conjunction','چون / زیرا',42,'{"type":"subordinating_conjunction","verbPosition":"final"}','[{"text":"denn","translation":"چون"},{"text":"aber","translation":"اما"},{"text":"oder","translation":"یا"},{"text":"deshalb","translation":"بنابراین"},{"text":"und","translation":"و"}]','Weil ich oft in der Wohnung arbeite.','چون اغلب در خانه کار می کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":83}');
    SET v_w_020=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_021 FROM words WHERE course_id=v_course AND lemma='oft' AND part_of_speech='adverb' AND translation='اغلب' ORDER BY id LIMIT 1;
  IF v_w_021 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: oft | adverb'; END IF;

  SELECT id INTO v_w_022 FROM words WHERE course_id=v_course AND lemma='in' AND part_of_speech='preposition' AND translation='در / داخل' ORDER BY id LIMIT 1;
  IF v_w_022 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: in | preposition'; END IF;

  SELECT id INTO v_w_023 FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_023 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: der | article'; END IF;

  SELECT id INTO v_w_024 FROM words WHERE course_id=v_course AND lemma='Wohnung' AND part_of_speech='noun' AND translation='خانه / آپارتمان' ORDER BY id LIMIT 1;
  IF v_w_024 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Wohnung | noun'; END IF;

  SELECT id INTO v_w_025 FROM words WHERE course_id=v_course AND lemma='arbeiten' AND part_of_speech='verb' AND translation='کار کردن' ORDER BY id LIMIT 1;
  IF v_w_025 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: arbeiten | verb'; END IF;

  SELECT id INTO v_w_026 FROM words WHERE course_id=v_course AND lemma='Alltag' AND part_of_speech='noun' AND translation='زندگی روزمره' ORDER BY id LIMIT 1;
  IF v_w_026 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Alltag','Alltag','noun','زندگی روزمره',42,'{"gender":"masculine","plural":"Alltage"}','[{"text":"Arbeit","translation":"کار"},{"text":"Urlaub","translation":"تعطیلات"},{"text":"Wohnung","translation":"خانه"},{"text":"Woche","translation":"هفته"},{"text":"Straße","translation":"خیابان"}]','Was möchtest du im Alltag ändern?','در زندگی روزمره ات چی رو می خوای تغییر بدی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":83}');
    SET v_w_026=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_027 FROM words WHERE course_id=v_course AND lemma='abends' AND part_of_speech='adverb' AND translation='عصرها / شب ها' ORDER BY id LIMIT 1;
  IF v_w_027 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: abends | adverb'; END IF;

  SELECT id INTO v_w_028 FROM words WHERE course_id=v_course AND lemma='mehr' AND part_of_speech='adverb' AND translation='دیگه / بیشتر' ORDER BY id LIMIT 1;
  IF v_w_028 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: mehr | adverb'; END IF;

  SELECT id INTO v_w_029 FROM words WHERE course_id=v_course AND lemma='Ruhe' AND part_of_speech='noun' AND translation='آرامش / سکوت' ORDER BY id LIMIT 1;
  IF v_w_029 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Ruhe | noun'; END IF;

  SELECT id INTO v_w_030 FROM words WHERE course_id=v_course AND lemma='brauchen' AND part_of_speech='verb' AND translation='نیاز داشتن / لازم داشتن' ORDER BY id LIMIT 1;
  IF v_w_030 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: brauchen | verb'; END IF;

  SELECT id INTO v_w_031 FROM words WHERE course_id=v_course AND lemma='dann' AND part_of_speech='adverb' AND translation='بعد / سپس' ORDER BY id LIMIT 1;
  IF v_w_031 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dann | adverb'; END IF;

  SELECT id INTO v_w_032 FROM words WHERE course_id=v_course AND lemma='besser' AND part_of_speech='adverb' AND translation='بهتر' ORDER BY id LIMIT 1;
  IF v_w_032 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'besser','besser','adverb','بهتر',42,'{"base":"gut","type":"comparative_adverb"}','[{"text":"schlechter","translation":"بدتر"},{"text":"gleich","translation":"یکسان"},{"text":"langsam","translation":"آهسته"},{"text":"später","translation":"بعدا"},{"text":"oft","translation":"اغلب"}]','Weil ich dann besser schlafen kann.','چون اون وقت می تونم بهتر بخوابم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":83}');
    SET v_w_032=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_033 FROM words WHERE course_id=v_course AND lemma='schlafen' AND part_of_speech='verb' AND translation='خوابیدن' ORDER BY id LIMIT 1;
  IF v_w_033 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: schlafen | verb'; END IF;

  SELECT id INTO v_w_034 FROM words WHERE course_id=v_course AND lemma='können' AND part_of_speech='verb' AND translation='توانستن / بتوان' ORDER BY id LIMIT 1;
  IF v_w_034 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: können | verb'; END IF;

  SELECT id INTO v_w_035 FROM words WHERE course_id=v_course AND lemma='laut' AND part_of_speech='adjective' AND translation='پر سر و صدا' ORDER BY id LIMIT 1;
  IF v_w_035 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: laut | adjective'; END IF;

  SELECT id INTO v_w_036 FROM words WHERE course_id=v_course AND lemma='Straße' AND part_of_speech='noun' AND translation='خیابان' ORDER BY id LIMIT 1;
  IF v_w_036 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Straße | noun'; END IF;

  SELECT id INTO v_w_037 FROM words WHERE course_id=v_course AND lemma='deshalb' AND part_of_speech='adverb' AND translation='برای همین / بنابراین' ORDER BY id LIMIT 1;
  IF v_w_037 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: deshalb | adverb'; END IF;

  SELECT id INTO v_w_038 FROM words WHERE course_id=v_course AND lemma='umziehen' AND part_of_speech='verb' AND translation='اسباب کشی کردن' ORDER BY id LIMIT 1;
  IF v_w_038 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: umziehen | verb'; END IF;

  SELECT id INTO v_w_039 FROM words WHERE course_id=v_course AND lemma='wie' AND part_of_speech='adverb' AND translation='چطور / چگونه' ORDER BY id LIMIT 1;
  IF v_w_039 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wie | adverb'; END IF;

  SELECT id INTO v_w_040 FROM words WHERE course_id=v_course AND lemma='dein' AND part_of_speech='determiner' AND translation='مال تو / تو' ORDER BY id LIMIT 1;
  IF v_w_040 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dein | determiner'; END IF;

  SELECT id INTO v_w_041 FROM words WHERE course_id=v_course AND lemma='organisieren' AND part_of_speech='verb' AND translation='برنامه ریزی کردن / سامان دادن' ORDER BY id LIMIT 1;
  IF v_w_041 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'organisieren','organisieren','verb','برنامه ریزی کردن / سامان دادن',42,'{"type":"regular_verb"}','[{"text":"vergessen","translation":"فراموش کردن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"warten","translation":"منتظر ماندن"},{"text":"fahren","translation":"رفتن با وسیله"},{"text":"wohnen","translation":"ساکن بودن"}]','Wie möchtest du deine Arbeit organisieren?','می خوای کارت رو چطور برنامه ریزی کنی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":83}');
    SET v_w_041=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_042 FROM words WHERE course_id=v_course AND lemma='ein' AND part_of_speech='article' AND translation='یک / حرف تعریف نامعین' ORDER BY id LIMIT 1;
  IF v_w_042 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ein | article'; END IF;

  SELECT id INTO v_w_043 FROM words WHERE course_id=v_course AND lemma='Arbeitszimmer' AND part_of_speech='noun' AND translation='اتاق کار' ORDER BY id LIMIT 1;
  IF v_w_043 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Arbeitszimmer | noun'; END IF;

  SELECT id INTO v_w_044 FROM words WHERE course_id=v_course AND lemma='nicht' AND part_of_speech='particle' AND translation='نه / نیست' ORDER BY id LIMIT 1;
  IF v_w_044 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: nicht | particle'; END IF;

  SELECT id INTO v_w_045 FROM words WHERE course_id=v_course AND lemma='Schlafzimmer' AND part_of_speech='noun' AND translation='اتاق خواب' ORDER BY id LIMIT 1;
  IF v_w_045 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Schlafzimmer | noun'; END IF;

  SELECT id INTO v_w_046 FROM words WHERE course_id=v_course AND lemma='sich' AND part_of_speech='pronoun' AND translation='خود / خودش' ORDER BY id LIMIT 1;
  IF v_w_046 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'sich','sich','pronoun','خود / خودش',42,'{"type":"reflexive_pronoun"}','[{"text":"mich","translation":"خودم"},{"text":"dich","translation":"خودت"},{"text":"uns","translation":"خودمان"},{"text":"euch","translation":"خودتان"},{"text":"ihn","translation":"او را"}]','Was ändert sich dadurch?','در نتیجه چی تغییر می کنه؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":83}');
    SET v_w_046=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_047 FROM words WHERE course_id=v_course AND lemma='dadurch' AND part_of_speech='adverb' AND translation='از این طریق / در نتیجه' ORDER BY id LIMIT 1;
  IF v_w_047 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'dadurch','dadurch','adverb','از این طریق / در نتیجه',42,NULL,'[{"text":"trotzdem","translation":"با این حال"},{"text":"vielleicht","translation":"شاید"},{"text":"danach","translation":"بعد از آن"},{"text":"deshalb","translation":"بنابراین"},{"text":"dort","translation":"آنجا"}]','Was ändert sich dadurch?','در نتیجه چی تغییر می کنه؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":83}');
    SET v_w_047=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_048 FROM words WHERE course_id=v_course AND lemma='sich konzentrieren' AND part_of_speech='verb' AND translation='تمرکز کردن' ORDER BY id LIMIT 1;
  IF v_w_048 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'sich konzentrieren','sich konzentrieren','verb','تمرکز کردن',42,'{"case":"accusative","type":"reflexive_verb"}','[{"text":"sich entscheiden","translation":"تصمیم گرفتن"},{"text":"arbeiten","translation":"کار کردن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"sprechen","translation":"صحبت کردن"},{"text":"warten","translation":"منتظر ماندن"}]','Dann kann ich mich besser konzentrieren.','اون وقت می تونم بهتر تمرکز کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":83}');
    SET v_w_048=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_049 FROM words WHERE course_id=v_course AND lemma='zuerst' AND part_of_speech='adverb' AND translation='اول / ابتدا' ORDER BY id LIMIT 1;
  IF v_w_049 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zuerst | adverb'; END IF;

  SELECT id INTO v_w_050 FROM words WHERE course_id=v_course AND lemma='suchen' AND part_of_speech='verb' AND translation='جست و جو کردن' ORDER BY id LIMIT 1;
  IF v_w_050 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'suchen','suchen','verb','جست و جو کردن',42,'{"type":"regular_verb"}','[{"text":"finden","translation":"پیدا کردن"},{"text":"ändern","translation":"تغییر دادن"},{"text":"wohnen","translation":"ساکن بودن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"arbeiten","translation":"کار کردن"}]','Zuerst suche ich eine ruhigere Wohnung.','اول دنبال یک خونه آروم تر می گردم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":83}');
    SET v_w_050=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_051 FROM words WHERE course_id=v_course AND lemma='ruhig' AND part_of_speech='adjective' AND translation='آرام' ORDER BY id LIMIT 1;
  IF v_w_051 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ruhig | adjective'; END IF;

  SELECT id INTO v_w_052 FROM words WHERE course_id=v_course AND lemma='passen' AND part_of_speech='verb' AND translation='اندازه بودن / مناسب بودن' ORDER BY id LIMIT 1;
  IF v_w_052 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: passen | verb'; END IF;

  SELECT id INTO v_w_053 FROM words WHERE course_id=v_course AND lemma='zu' AND part_of_speech='preposition' AND translation='به / به سمت' ORDER BY id LIMIT 1;
  IF v_w_053 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zu | preposition'; END IF;

  SELECT id INTO v_w_054 FROM words WHERE course_id=v_course AND lemma='dort' AND part_of_speech='adverb' AND translation='آنجا' ORDER BY id LIMIT 1;
  IF v_w_054 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dort | adverb'; END IF;

  SELECT id INTO v_w_055 FROM words WHERE course_id=v_course AND lemma='Platz' AND part_of_speech='noun' AND translation='جا / فضا' ORDER BY id LIMIT 1;
  IF v_w_055 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Platz | noun'; END IF;

  SELECT id INTO v_w_056 FROM words WHERE course_id=v_course AND lemma='wissen' AND part_of_speech='verb' AND translation='دانستن' ORDER BY id LIMIT 1;
  IF v_w_056 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wissen | verb'; END IF;

  SELECT id INTO v_w_057 FROM words WHERE course_id=v_course AND lemma='jetzt' AND part_of_speech='adverb' AND translation='حالا / اکنون' ORDER BY id LIMIT 1;
  IF v_w_057 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: jetzt | adverb'; END IF;

  SELECT id INTO v_w_058 FROM words WHERE course_id=v_course AND lemma='mein' AND part_of_speech='determiner' AND translation='مال من / من' ORDER BY id LIMIT 1;
  IF v_w_058 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: mein | determiner'; END IF;

  SELECT id INTO v_w_059 FROM words WHERE course_id=v_course AND lemma='Ich möchte etwas ändern.' AND part_of_speech='phrase' AND translation='می خوام یه چیزی رو تغییر بدم.' ORDER BY id LIMIT 1;
  IF v_w_059 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich möchte etwas ändern.','Ich möchte etwas ändern.','phrase','می خوام یه چیزی رو تغییر بدم.',42,'{"type":"sentence_pattern"}','[{"text":"Ich möchte nichts ändern.","translation":"نمی خوام چیزی رو تغییر بدم."},{"text":"Ich möchte nur schlafen.","translation":"فقط می خوام بخوابم."},{"text":"Ich brauche mehr Zeit.","translation":"به زمان بیشتری نیاز دارم."},{"text":"Ich suche eine Wohnung.","translation":"دنبال یک خونه می گردم."},{"text":"Ich arbeite heute.","translation":"امروز کار می کنم."}]','Ich möchte etwas ändern.','می خوام یه چیزی رو تغییر بدم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":83}');
    SET v_w_059=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_060 FROM words WHERE course_id=v_course AND lemma='Weil ich dann besser schlafen kann.' AND part_of_speech='phrase' AND translation='چون اون وقت می تونم بهتر بخوابم.' ORDER BY id LIMIT 1;
  IF v_w_060 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Weil ich dann besser schlafen kann.','Weil ich dann besser schlafen kann.','phrase','چون اون وقت می تونم بهتر بخوابم.',42,'{"type":"sentence_pattern"}','[{"text":"Weil ich dann länger arbeiten kann.","translation":"چون اون وقت می تونم بیشتر کار کنم."},{"text":"Weil ich heute keine Zeit habe.","translation":"چون امروز وقت ندارم."},{"text":"Deshalb schlafe ich schlecht.","translation":"برای همین بد می خوابم."},{"text":"Ich möchte abends arbeiten.","translation":"می خوام شب ها کار کنم."},{"text":"Die Straße ist sehr laut.","translation":"خیابون خیلی پرسروصدا است."}]','Weil ich dann besser schlafen kann.','چون اون وقت می تونم بهتر بخوابم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":83}');
    SET v_w_060=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_061 FROM words WHERE course_id=v_course AND lemma='Weil ich Arbeit und Schlaf trennen möchte.' AND part_of_speech='phrase' AND translation='چون می خوام کار و خواب رو از هم جدا کنم.' ORDER BY id LIMIT 1;
  IF v_w_061 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Weil ich Arbeit und Schlaf trennen möchte.','Weil ich Arbeit und Schlaf trennen möchte.','phrase','چون می خوام کار و خواب رو از هم جدا کنم.',42,'{"type":"sentence_pattern"}','[{"text":"Weil ich im Schlafzimmer arbeiten möchte.","translation":"چون می خوام در اتاق خواب کار کنم."},{"text":"Weil ich mehr Platz brauche.","translation":"چون به فضای بیشتری نیاز دارم."},{"text":"Ich möchte heute nicht arbeiten.","translation":"امروز نمی خوام کار کنم."},{"text":"Arbeit und Schlaf sind wichtig.","translation":"کار و خواب مهم هستند."},{"text":"Ich organisiere meinen Alltag.","translation":"زندگی روزمره ام رو برنامه ریزی می کنم."}]','Weil ich Arbeit und Schlaf trennen möchte.','چون می خوام کار و خواب رو از هم جدا کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":83}');
    SET v_w_061=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_062 FROM words WHERE course_id=v_course AND lemma='Weil ich dort mehr Platz und Ruhe habe.' AND part_of_speech='phrase' AND translation='چون اونجا فضا و آرامش بیشتری دارم.' ORDER BY id LIMIT 1;
  IF v_w_062 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Weil ich dort mehr Platz und Ruhe habe.','Weil ich dort mehr Platz und Ruhe habe.','phrase','چون اونجا فضا و آرامش بیشتری دارم.',42,'{"type":"sentence_pattern"}','[{"text":"Weil ich dort weniger Platz habe.","translation":"چون اونجا فضای کمتری دارم."},{"text":"Weil die Straße dort lauter ist.","translation":"چون خیابون اونجا پرسروصداتر است."},{"text":"Ich suche ein kleines Schlafzimmer.","translation":"دنبال یک اتاق خواب کوچک می گردم."},{"text":"Ich möchte in dieser Wohnung bleiben.","translation":"می خوام در همین خونه بمونم."},{"text":"Dort kann ich nicht arbeiten.","translation":"اونجا نمی تونم کار کنم."}]','Weil ich dort mehr Platz und Ruhe habe.','چون اونجا فضا و آرامش بیشتری دارم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":83}');
    SET v_w_062=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Etwas ändern','تغییر دادن یک چیز','Sara greift Mias Gründe auf. Mia erklärt, welche Veränderung sie in ihrem Alltag braucht.','سارا به دلیل های میا برمی گردد. میا توضیح می دهد که در زندگی روزمره اش به چه تغییری نیاز دارد.','story','mia-sara-b1-decisions',9,42,150,1,'validated','{"relationship":"friends","context":"explaining-change-with-weil","cefr":"B1","storyArc":"reasons-change-routine-work-rest-plan"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,1,'character','Du hast Gründe genannt.','دلیل هات رو گفتی.',42,NULL,NULL,NULL,NULL,'[{"lemma":"du","partOfSpeech":"pronoun","surface":"Du","translation":"تو"},{"form":"present_2sg","lemma":"haben","partOfSpeech":"verb","surface":"hast","translation":"داشتن"},{"form":"plural","lemma":"Grund","partOfSpeech":"noun","surface":"Gründe","translation":"دلیل"},{"form":"past_participle","lemma":"nennen","partOfSpeech":"verb","suffix":".","surface":"genannt","translation":"نام بردن / گفتن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,2,'learner','Ja, ich möchte etwas ändern.','آره، می خوام یه چیزی رو تغییر بدم.',42,NULL,NULL,'ja ich möchte etwas ändern',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"present_1sg","lemma":"möchten","partOfSpeech":"verb","surface":"möchte","translation":"خواستن / مایل بودن"},{"lemma":"etwas","partOfSpeech":"pronoun","surface":"etwas","translation":"چیزی / یک چیزی"},{"lemma":"ändern","partOfSpeech":"verb","suffix":".","surface":"ändern","translation":"تغییر دادن"}]','جمله با möchten','برای بیان یک تغییر دلخواه از möchten و مصدر در پایان استفاده می کنیم.','{"pattern":"subject + möchten + object + infinitive"}','{"cefr":"B1"}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,3,'character','Was möchtest du genau ändern?','دقیقا چی رو می خوای تغییر بدی؟',42,NULL,NULL,NULL,NULL,'[{"lemma":"was","partOfSpeech":"pronoun","surface":"Was","translation":"چی / چه"},{"form":"present_2sg","lemma":"möchten","partOfSpeech":"verb","surface":"möchtest","translation":"خواستن / مایل بودن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"genau","partOfSpeech":"adverb","surface":"genau","translation":"دقیقا"},{"lemma":"ändern","partOfSpeech":"verb","suffix":"?","surface":"ändern","translation":"تغییر دادن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,4,'learner','Ich möchte Arbeit und Schlaf trennen.','می خوام کار و خواب رو از هم جدا کنم.',42,NULL,NULL,'ich möchte arbeit und schlaf trennen',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"möchten","partOfSpeech":"verb","surface":"möchte","translation":"خواستن / مایل بودن"},{"lemma":"Arbeit","partOfSpeech":"noun","surface":"Arbeit","translation":"کار"},{"lemma":"und","partOfSpeech":"conjunction","surface":"und","translation":"و"},{"lemma":"Schlaf","partOfSpeech":"noun","surface":"Schlaf","translation":"خواب"},{"lemma":"trennen","partOfSpeech":"verb","suffix":".","surface":"trennen","translation":"جدا کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,5,'character','Warum ist dir das wichtig?','چرا این موضوع برات مهمه؟',42,NULL,NULL,NULL,NULL,'[{"lemma":"warum","partOfSpeech":"adverb","surface":"Warum","translation":"چرا"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"ist","translation":"بودن"},{"form":"dative_2sg","lemma":"du","meaning":"برای تو","partOfSpeech":"pronoun","surface":"dir","translation":"تو"},{"lemma":"das","partOfSpeech":"pronoun","surface":"das","translation":"این / آن"},{"lemma":"wichtig","partOfSpeech":"adjective","suffix":"?","surface":"wichtig","translation":"مهم"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,6,'learner','Weil ich oft in der Wohnung arbeite.','چون اغلب در خانه کار می کنم.',42,NULL,NULL,'weil ich oft in der wohnung arbeite',NULL,'[{"lemma":"weil","partOfSpeech":"conjunction","surface":"Weil","translation":"چون / زیرا"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"oft","partOfSpeech":"adverb","surface":"oft","translation":"اغلب"},{"lemma":"in","partOfSpeech":"preposition","surface":"in","translation":"در / داخل"},{"form":"dative_feminine","lemma":"der","partOfSpeech":"article","surface":"der","translation":"حرف تعریف"},{"lemma":"Wohnung","partOfSpeech":"noun","surface":"Wohnung","translation":"خانه / آپارتمان"},{"form":"present_1sg","lemma":"arbeiten","partOfSpeech":"verb","suffix":".","surface":"arbeite","translation":"کار کردن"}]','دلیل با weil','بعد از weil فعل صرف شده در پایان جمله وابسته قرار می گیرد.','{"pattern":"weil + subject + ... + finite verb"}','{"cefr":"B1"}');
  SET v_t_6=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Mehr Ruhe im Alltag','آرامش بیشتر در زندگی روزمره','Mia verbindet ihren Wunsch nach Ruhe mit einer konkreten Folge: besser schlafen.','میا خواسته اش برای آرامش را به یک نتیجه روشن ربط می دهد: خواب بهتر.','story','mia-sara-b1-decisions',10,42,150,2,'validated','{"relationship":"friends","context":"explaining-change-with-weil","cefr":"B1","storyArc":"reasons-change-routine-work-rest-plan"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,1,'character','Was möchtest du im Alltag ändern?','در زندگی روزمره ات چی رو می خوای تغییر بدی؟',42,NULL,NULL,NULL,NULL,'[{"lemma":"was","partOfSpeech":"pronoun","surface":"Was","translation":"چی / چه"},{"form":"present_2sg","lemma":"möchten","partOfSpeech":"verb","surface":"möchtest","translation":"خواستن / مایل بودن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"contraction_in_dem","lemma":"in","partOfSpeech":"preposition","surface":"im","translation":"در / داخل"},{"lemma":"Alltag","partOfSpeech":"noun","surface":"Alltag","translation":"زندگی روزمره"},{"lemma":"ändern","partOfSpeech":"verb","suffix":"?","surface":"ändern","translation":"تغییر دادن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,2,'learner','Ich möchte abends mehr Ruhe haben.','می خوام شب ها آرامش بیشتری داشته باشم.',42,NULL,NULL,'ich möchte abends mehr ruhe haben',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"möchten","partOfSpeech":"verb","surface":"möchte","translation":"خواستن / مایل بودن"},{"lemma":"abends","partOfSpeech":"adverb","surface":"abends","translation":"عصرها / شب ها"},{"lemma":"mehr","partOfSpeech":"adverb","surface":"mehr","translation":"دیگه / بیشتر"},{"lemma":"Ruhe","partOfSpeech":"noun","surface":"Ruhe","translation":"آرامش / سکوت"},{"lemma":"haben","partOfSpeech":"verb","suffix":".","surface":"haben","translation":"داشتن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,3,'character','Warum brauchst du mehr Ruhe?','چرا به آرامش بیشتری نیاز داری؟',42,NULL,NULL,NULL,NULL,'[{"lemma":"warum","partOfSpeech":"adverb","surface":"Warum","translation":"چرا"},{"form":"present_2sg","lemma":"brauchen","partOfSpeech":"verb","surface":"brauchst","translation":"نیاز داشتن / لازم داشتن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"mehr","partOfSpeech":"adverb","surface":"mehr","translation":"دیگه / بیشتر"},{"lemma":"Ruhe","partOfSpeech":"noun","suffix":"?","surface":"Ruhe","translation":"آرامش / سکوت"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,4,'learner','Weil ich dann besser schlafen kann.','چون اون وقت می تونم بهتر بخوابم.',42,NULL,NULL,'weil ich dann besser schlafen kann',NULL,'[{"lemma":"weil","partOfSpeech":"conjunction","surface":"Weil","translation":"چون / زیرا"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"dann","partOfSpeech":"adverb","surface":"dann","translation":"بعد / سپس"},{"lemma":"besser","partOfSpeech":"adverb","surface":"besser","translation":"بهتر"},{"lemma":"schlafen","partOfSpeech":"verb","surface":"schlafen","translation":"خوابیدن"},{"form":"present_1sg","lemma":"können","partOfSpeech":"verb","suffix":".","surface":"kann","translation":"توانستن / بتوان"}]','فعل کمکی در جمله weil','وقتی جمله weil فعل کمکی دارد، فعل صرف شده در پایان می آید.','{"pattern":"weil + subject + infinitive + modal"}','{"cefr":"B1"}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,5,'character','Und die laute Straße?','و خیابون پرسروصدا چی؟',42,NULL,NULL,NULL,NULL,'[{"lemma":"und","partOfSpeech":"conjunction","surface":"Und","translation":"و"},{"form":"nominative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"nominative_feminine","lemma":"laut","partOfSpeech":"adjective","surface":"laute","translation":"پر سر و صدا"},{"lemma":"Straße","partOfSpeech":"noun","suffix":"?","surface":"Straße","translation":"خیابان"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,6,'learner','Deshalb möchte ich umziehen.','برای همین می خوام اسباب کشی کنم.',42,NULL,NULL,'deshalb möchte ich umziehen',NULL,'[{"lemma":"deshalb","partOfSpeech":"adverb","surface":"Deshalb","translation":"برای همین / بنابراین"},{"form":"present_1sg","lemma":"möchten","partOfSpeech":"verb","surface":"möchte","translation":"خواستن / مایل بودن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"umziehen","partOfSpeech":"verb","suffix":".","surface":"umziehen","translation":"اسباب کشی کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_12=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Arbeit und Schlaf trennen','جدا کردن کار و خواب','Mia plant ein eigenes Arbeitszimmer, damit Schlafen und Arbeiten nicht mehr am selben Ort stattfinden.','میا برای یک اتاق کار جدا برنامه دارد تا خواب و کار دیگر در یک جا نباشند.','story','mia-sara-b1-decisions',11,42,150,3,'validated','{"relationship":"friends","context":"explaining-change-with-weil","cefr":"B1","storyArc":"reasons-change-routine-work-rest-plan"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,1,'character','Wie möchtest du deine Arbeit organisieren?','می خوای کارت رو چطور برنامه ریزی کنی؟',42,NULL,NULL,NULL,NULL,'[{"lemma":"wie","partOfSpeech":"adverb","surface":"Wie","translation":"چطور / چگونه"},{"form":"present_2sg","lemma":"möchten","partOfSpeech":"verb","surface":"möchtest","translation":"خواستن / مایل بودن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"accusative_feminine","lemma":"dein","partOfSpeech":"determiner","surface":"deine","translation":"مال تو / تو"},{"lemma":"Arbeit","partOfSpeech":"noun","surface":"Arbeit","translation":"کار"},{"lemma":"organisieren","partOfSpeech":"verb","suffix":"?","surface":"organisieren","translation":"برنامه ریزی کردن / سامان دادن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,2,'learner','Ich möchte in einem Arbeitszimmer arbeiten.','می خوام در یک اتاق کار، کار کنم.',42,NULL,NULL,'ich möchte in einem arbeitszimmer arbeiten',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"möchten","partOfSpeech":"verb","surface":"möchte","translation":"خواستن / مایل بودن"},{"lemma":"in","partOfSpeech":"preposition","surface":"in","translation":"در / داخل"},{"form":"dative_neuter","lemma":"ein","partOfSpeech":"article","surface":"einem","translation":"یک / حرف تعریف نامعین"},{"lemma":"Arbeitszimmer","partOfSpeech":"noun","surface":"Arbeitszimmer","translation":"اتاق کار"},{"lemma":"arbeiten","partOfSpeech":"verb","suffix":".","surface":"arbeiten","translation":"کار کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,3,'character','Warum nicht mehr im Schlafzimmer?','چرا دیگه در اتاق خواب نه؟',42,NULL,NULL,NULL,NULL,'[{"lemma":"warum","partOfSpeech":"adverb","surface":"Warum","translation":"چرا"},{"lemma":"nicht","partOfSpeech":"particle","surface":"nicht","translation":"نه / نیست"},{"lemma":"mehr","partOfSpeech":"adverb","surface":"mehr","translation":"دیگه / بیشتر"},{"form":"contraction_in_dem","lemma":"in","partOfSpeech":"preposition","surface":"im","translation":"در / داخل"},{"lemma":"Schlafzimmer","partOfSpeech":"noun","suffix":"?","surface":"Schlafzimmer","translation":"اتاق خواب"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,4,'learner','Weil ich Arbeit und Schlaf trennen möchte.','چون می خوام کار و خواب رو از هم جدا کنم.',42,NULL,NULL,'weil ich arbeit und schlaf trennen möchte',NULL,'[{"lemma":"weil","partOfSpeech":"conjunction","surface":"Weil","translation":"چون / زیرا"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"Arbeit","partOfSpeech":"noun","surface":"Arbeit","translation":"کار"},{"lemma":"und","partOfSpeech":"conjunction","surface":"und","translation":"و"},{"lemma":"Schlaf","partOfSpeech":"noun","surface":"Schlaf","translation":"خواب"},{"lemma":"trennen","partOfSpeech":"verb","surface":"trennen","translation":"جدا کردن"},{"form":"present_1sg","lemma":"möchten","partOfSpeech":"verb","suffix":".","surface":"möchte","translation":"خواستن / مایل بودن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,5,'character','Was ändert sich dadurch?','در نتیجه چی تغییر می کنه؟',42,NULL,NULL,NULL,NULL,'[{"lemma":"was","partOfSpeech":"pronoun","surface":"Was","translation":"چی / چه"},{"form":"present_3sg","lemma":"ändern","partOfSpeech":"verb","surface":"ändert","translation":"تغییر دادن"},{"form":"reflexive_accusative_3sg","lemma":"sich","partOfSpeech":"pronoun","surface":"sich","translation":"خود / خودش"},{"lemma":"dadurch","partOfSpeech":"adverb","suffix":"?","surface":"dadurch","translation":"از این طریق / در نتیجه"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,6,'learner','Dann kann ich mich besser konzentrieren.','اون وقت می تونم بهتر تمرکز کنم.',42,NULL,NULL,'dann kann ich mich besser konzentrieren',NULL,'[{"lemma":"dann","partOfSpeech":"adverb","surface":"Dann","translation":"بعد / سپس"},{"form":"present_1sg","lemma":"können","partOfSpeech":"verb","surface":"kann","translation":"توانستن / بتوان"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"reflexive_accusative_1sg","lemma":"ich","meaning":"خودم","partOfSpeech":"pronoun","surface":"mich","translation":"من"},{"lemma":"besser","partOfSpeech":"adverb","surface":"besser","translation":"بهتر"},{"form":"infinitive","lemma":"sich konzentrieren","partOfSpeech":"verb","suffix":".","surface":"konzentrieren","translation":"تمرکز کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_18=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Ein klarer Plan','یک برنامه روشن','Mia fasst ihre Gründe zusammen und nennt den ersten konkreten Schritt für die Wohnungssuche.','میا دلیل هایش را جمع بندی می کند و اولین قدم مشخص برای پیدا کردن خانه را می گوید.','story','mia-sara-b1-decisions',12,42,150,4,'validated','{"relationship":"friends","context":"explaining-change-with-weil","cefr":"B1","storyArc":"reasons-change-routine-work-rest-plan"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,1,'character','Was möchtest du zuerst ändern?','اول چی رو می خوای تغییر بدی؟',42,NULL,NULL,NULL,NULL,'[{"lemma":"was","partOfSpeech":"pronoun","surface":"Was","translation":"چی / چه"},{"form":"present_2sg","lemma":"möchten","partOfSpeech":"verb","surface":"möchtest","translation":"خواستن / مایل بودن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"zuerst","partOfSpeech":"adverb","surface":"zuerst","translation":"اول / ابتدا"},{"lemma":"ändern","partOfSpeech":"verb","suffix":"?","surface":"ändern","translation":"تغییر دادن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,2,'learner','Zuerst suche ich eine ruhigere Wohnung.','اول دنبال یک خونه آروم تر می گردم.',42,NULL,NULL,'zuerst suche ich eine ruhigere wohnung',NULL,'[{"lemma":"zuerst","partOfSpeech":"adverb","surface":"Zuerst","translation":"اول / ابتدا"},{"form":"present_1sg","lemma":"suchen","partOfSpeech":"verb","surface":"suche","translation":"جست و جو کردن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"accusative_feminine","lemma":"ein","partOfSpeech":"article","surface":"eine","translation":"یک / حرف تعریف نامعین"},{"form":"accusative_feminine_comparative","lemma":"ruhig","partOfSpeech":"adjective","surface":"ruhigere","translation":"آرام"},{"lemma":"Wohnung","partOfSpeech":"noun","suffix":".","surface":"Wohnung","translation":"خانه / آپارتمان"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_20=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,3,'character','Warum passt das zu deinen Gründen?','چرا این با دلیل هات جور درمیاد؟',42,NULL,NULL,NULL,NULL,'[{"lemma":"warum","partOfSpeech":"adverb","surface":"Warum","translation":"چرا"},{"form":"present_3sg","lemma":"passen","partOfSpeech":"verb","surface":"passt","translation":"اندازه بودن / مناسب بودن"},{"lemma":"das","partOfSpeech":"pronoun","surface":"das","translation":"این / آن"},{"lemma":"zu","partOfSpeech":"preposition","surface":"zu","translation":"به / به سمت"},{"form":"dative_plural","lemma":"dein","partOfSpeech":"determiner","surface":"deinen","translation":"مال تو / تو"},{"form":"dative_plural","lemma":"Grund","partOfSpeech":"noun","suffix":"?","surface":"Gründen","translation":"دلیل"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_21=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,4,'learner','Weil ich dort mehr Platz und Ruhe habe.','چون اونجا فضا و آرامش بیشتری دارم.',42,NULL,NULL,'weil ich dort mehr platz und ruhe habe',NULL,'[{"lemma":"weil","partOfSpeech":"conjunction","surface":"Weil","translation":"چون / زیرا"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"dort","partOfSpeech":"adverb","surface":"dort","translation":"آنجا"},{"lemma":"mehr","partOfSpeech":"adverb","surface":"mehr","translation":"دیگه / بیشتر"},{"lemma":"Platz","partOfSpeech":"noun","surface":"Platz","translation":"جا / فضا"},{"lemma":"und","partOfSpeech":"conjunction","surface":"und","translation":"و"},{"lemma":"Ruhe","partOfSpeech":"noun","surface":"Ruhe","translation":"آرامش / سکوت"},{"form":"present_1sg","lemma":"haben","partOfSpeech":"verb","suffix":".","surface":"habe","translation":"داشتن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_22=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,5,'character','Weißt du jetzt, was du möchtest?','حالا می دونی چی می خوای؟',42,NULL,NULL,NULL,NULL,'[{"form":"present_2sg","lemma":"wissen","partOfSpeech":"verb","surface":"Weißt","translation":"دانستن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"jetzt","partOfSpeech":"adverb","suffix":",","surface":"jetzt","translation":"حالا / اکنون"},{"lemma":"was","partOfSpeech":"pronoun","surface":"was","translation":"چی / چه"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"present_2sg","lemma":"möchten","partOfSpeech":"verb","suffix":"?","surface":"möchtest","translation":"خواستن / مایل بودن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_23=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,6,'learner','Ja, ich möchte umziehen und meinen Alltag ändern.','آره، می خوام اسباب کشی کنم و زندگی روزمره ام رو تغییر بدم.',42,NULL,NULL,'ja ich möchte umziehen und meinen alltag ändern',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"present_1sg","lemma":"möchten","partOfSpeech":"verb","surface":"möchte","translation":"خواستن / مایل بودن"},{"lemma":"umziehen","partOfSpeech":"verb","surface":"umziehen","translation":"اسباب کشی کردن"},{"lemma":"und","partOfSpeech":"conjunction","surface":"und","translation":"و"},{"form":"accusative_masculine","lemma":"mein","partOfSpeech":"determiner","surface":"meinen","translation":"مال من / من"},{"lemma":"Alltag","partOfSpeech":"noun","surface":"Alltag","translation":"زندگی روزمره"},{"lemma":"ändern","partOfSpeech":"verb","suffix":".","surface":"ändern","translation":"تغییر دادن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_24=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_001,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_004,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_006,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_007,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_009,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_010,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_011,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_012,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_014,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_015,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_016,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_017,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_018,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_019,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_020,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_021,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_022,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_023,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_024,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_025,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_059,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_010,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_007,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_001,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_022,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_026,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_006,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_027,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_028,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_029,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_016,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_030,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_020,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_031,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_032,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_033,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_034,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_023,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_035,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_036,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_037,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_038,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_060,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_039,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_007,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_040,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_012,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_041,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_006,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_022,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_042,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_043,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_025,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_016,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_044,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_028,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_045,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_020,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_014,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_015,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_010,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_046,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_047,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_031,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_034,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_032,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_048,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_061,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_010,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_007,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_001,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_049,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_009,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_050,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_006,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_042,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_051,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_024,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_016,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_052,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_018,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_053,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_040,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_020,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_054,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_028,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_055,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_013,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_029,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_056,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_057,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_038,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_058,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_026,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_062,'new',1,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_059,'عبارت کلیدی درس',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',2,NULL,v_w_020,'واژه کلیدی درس',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',3,v_t_1,NULL,'به پرسش سارا گوش کن',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',4,v_t_2,NULL,'پاسخ میا را با صدای بلند بگو',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',5,v_t_3,NULL,'به پرسش بعدی گوش کن',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',6,v_t_4,NULL,'دلیل را با صدای بلند بگو',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',7,NULL,v_w_020,'معنی واژه کلیدی را انتخاب کن',NULL,42,'{"mode":"word_translation","question":"Weil در این درس چه معنی دارد؟","choices":["چون / زیرا","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,42,'{"source":"lesson_story","question":"میا می خواهد چه چیزهایی را از هم جدا کند؟","choices":["کار و خواب","خانه و خیابان","امروز و فردا"],"correctIndex":0}','{"cefr":"B1","series":83}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_060,'عبارت کلیدی درس',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',2,NULL,v_w_026,'واژه کلیدی درس',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',3,v_t_7,NULL,'به پرسش سارا گوش کن',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',4,v_t_8,NULL,'پاسخ میا را با صدای بلند بگو',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',5,v_t_9,NULL,'به پرسش بعدی گوش کن',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',6,v_t_10,NULL,'دلیل را با صدای بلند بگو',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',7,NULL,v_w_026,'معنی واژه کلیدی را انتخاب کن',NULL,42,'{"mode":"word_translation","question":"Alltag در این درس چه معنی دارد؟","choices":["زندگی روزمره","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,42,'{"source":"lesson_story","question":"چرا میا آرامش بیشتری می خواهد؟","choices":["تا بهتر بخوابد","تا بیشتر سفر کند","تا خانه را بفروشد"],"correctIndex":0}','{"cefr":"B1","series":83}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_061,'عبارت کلیدی درس',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',2,NULL,v_w_015,'واژه کلیدی درس',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',3,v_t_13,NULL,'به پرسش سارا گوش کن',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',4,v_t_14,NULL,'پاسخ میا را با صدای بلند بگو',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',5,v_t_15,NULL,'به پرسش بعدی گوش کن',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',6,v_t_16,NULL,'دلیل را با صدای بلند بگو',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',7,NULL,v_w_015,'معنی واژه کلیدی را انتخاب کن',NULL,42,'{"mode":"word_translation","question":"trennen در این درس چه معنی دارد؟","choices":["جدا کردن","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,42,'{"source":"lesson_story","question":"میا می خواهد کجا کار کند؟","choices":["در یک اتاق کار","در خیابان","در ایستگاه قطار"],"correctIndex":0}','{"cefr":"B1","series":83}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',1,NULL,v_w_062,'عبارت کلیدی درس',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',2,NULL,v_w_050,'واژه کلیدی درس',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_19,NULL,'به پرسش سارا گوش کن',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_20,NULL,'پاسخ میا را با صدای بلند بگو',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_21,NULL,'به پرسش بعدی گوش کن',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_22,NULL,'دلیل را با صدای بلند بگو',NULL,42,NULL,'{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',7,NULL,v_w_050,'معنی واژه کلیدی را انتخاب کن',NULL,42,'{"mode":"word_translation","question":"suche در این درس چه معنی دارد؟","choices":["جست و جو کردن","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":83}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,42,'{"source":"lesson_story","question":"اولین قدم میا چیست؟","choices":["دنبال یک خانه آرام تر بگردد","شغلش را عوض کند","همان خانه را نگه دارد"],"correctIndex":0}','{"cefr":"B1","series":83}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 083 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND storyline_key='mia-sara-b1-decisions' AND storyline_order BETWEEN 9 AND 12;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 083 storyline continuity.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>24 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 083 turn count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>32 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 083 activity count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (ac.config IS NULL OR JSON_EXTRACT(ac.config,'$.question') IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without task.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter AND lw.is_target=1;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 083 explicit-target count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) AS n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) duplicate_pairs;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple detected.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;

CALL import_nova_series_083_v9();
DROP PROCEDURE IF EXISTS import_nova_series_083_v9;

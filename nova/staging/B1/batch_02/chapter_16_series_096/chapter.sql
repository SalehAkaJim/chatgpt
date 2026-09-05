-- NOVA v9.0 / B1 SERIES 096 / Unser Zug ist ausgefallen
-- Requires canonical v9.0 and validated Series 095. No schema DDL.
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_series_096_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_096_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_level BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_previous_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_ben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_lena BIGINT UNSIGNED DEFAULT NULL;
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
  DECLARE v_w_074 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_075 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_076 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_077 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_078 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_079 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_080 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_081 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_082 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_083 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_084 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_085 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_086 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_087 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_088 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_089 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_090 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_091 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_092 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_093 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_094 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_095 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_096 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_097 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_098 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_099 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_100 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_101 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_102 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_103 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_104 BIGINT UNSIGNED DEFAULT NULL;
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
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Canonical de-fa Course missing.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='B1' AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Level missing.'; END IF;
  SELECT id INTO v_previous_module FROM modules WHERE level_id=v_level AND sort_order=3 ORDER BY id LIMIT 1;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=4 ORDER BY id LIMIT 1;
  IF v_previous_module IS NULL OR v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module dependency missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE module_id=v_previous_module AND sort_order=5 AND status IN ('validated','complete');
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 095 must be validated.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE storyline_key='lena-ben-b1-travel-problems';
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='New B1 travel storyline must start empty.'; END IF;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 04 Chapter 01 missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='Unser Zug ist ausgefallen' AND title_translation='قطارمون لغو شده';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 096 canonical title mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 04 Chapter 01 must be empty before Series 096 import.'; END IF;
  SELECT id INTO v_c_ben FROM characters WHERE course_id=v_course AND name='Ben' AND gender='male' ORDER BY id LIMIT 1;
  SELECT id INTO v_c_lena FROM characters WHERE course_id=v_course AND name='Lena' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_ben IS NULL OR v_c_lena IS NULL OR v_c_ben=v_c_lena THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required distinct Characters Ben and Lena missing.'; END IF;
  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='auf' AND part_of_speech='preposition' AND translation='روی / برای' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: auf | preposition'; END IF;
  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: der | article'; END IF;
  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='Anzeige' AND part_of_speech='noun' AND translation='تابلو / نمایشگر' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Anzeige','Anzeige','noun','تابلو / نمایشگر',50,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Kaffee","translation":"قهوه"},{"text":"Wasser","translation":"آب"}]','Unser Zug ist ausgefallen','قطارمون لغو شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":96}');
    SET v_w_003=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='stehen' AND part_of_speech='verb' AND translation='قرار داشتن / ایستادن' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: stehen | verb'; END IF;
  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='plötzlich' AND part_of_speech='adverb' AND translation='ناگهان' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'plötzlich','plötzlich','adverb','ناگهان',50,'{"type":"adverb"}','[{"text":"gestern","translation":"دیروز"},{"text":"dort","translation":"آنجا"},{"text":"langsam","translation":"آهسته"},{"text":"selten","translation":"به‌ندرت"},{"text":"später","translation":"بعداً"}]','Unser Zug ist ausgefallen','قطارمون لغو شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":96}');
    SET v_w_005=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='ein' AND part_of_speech='article' AND translation='یک / حرف تعریف نامعین' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ein | article'; END IF;
  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='Störung' AND part_of_speech='noun' AND translation='اختلال' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Störung','Störung','noun','اختلال',50,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Kaffee","translation":"قهوه"},{"text":"Wasser","translation":"آب"}]','Unser Zug ist ausgefallen','قطارمون لغو شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":96}');
    SET v_w_007=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='unser' AND part_of_speech='determiner' AND translation='مال ما / ما' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: unser | determiner'; END IF;
  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='Zug' AND part_of_speech='noun' AND translation='قطار' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Zug | noun'; END IF;
  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sein | verb'; END IF;
  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='ausfallen' AND part_of_speech='verb' AND translation='لغو شدن / از کار افتادن' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'ausfallen','ausfallen','verb','لغو شدن / از کار افتادن',50,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"kommen","translation":"آمدن"},{"text":"sehen","translation":"دیدن"},{"text":"bleiben","translation":"ماندن"},{"text":"schreiben","translation":"نوشتن"}]','Unser Zug ist ausgefallen','قطارمون لغو شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":96}');
    SET v_w_011=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='wissen' AND part_of_speech='verb' AND translation='دانستن' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wissen | verb'; END IF;
  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: du | pronoun'; END IF;
  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='warum' AND part_of_speech='adverb' AND translation='چرا' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: warum | adverb'; END IF;
  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='Verbindung' AND part_of_speech='noun' AND translation='مسیر / ارتباط' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Verbindung','Verbindung','noun','مسیر / ارتباط',50,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Kaffee","translation":"قهوه"},{"text":"Wasser","translation":"آب"}]','Unser Zug ist ausgefallen','قطارمون لغو شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":96}');
    SET v_w_015=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_016 FROM words WHERE course_id=v_course AND lemma='streichen' AND part_of_speech='verb' AND translation='لغو کردن / خط زدن' ORDER BY id LIMIT 1;
  IF v_w_016 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'streichen','streichen','verb','لغو کردن / خط زدن',50,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"kommen","translation":"آمدن"},{"text":"sehen","translation":"دیدن"},{"text":"bleiben","translation":"ماندن"},{"text":"schreiben","translation":"نوشتن"}]','Unser Zug ist ausgefallen','قطارمون لغو شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":96}');
    SET v_w_016=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_017 FROM words WHERE course_id=v_course AND lemma='werden' AND part_of_speech='verb' AND translation='شدن / خواهد' ORDER BY id LIMIT 1;
  IF v_w_017 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: werden | verb'; END IF;
  SELECT id INTO v_w_018 FROM words WHERE course_id=v_course AND lemma='wegen' AND part_of_speech='preposition' AND translation='به‌دلیل' ORDER BY id LIMIT 1;
  IF v_w_018 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'wegen','wegen','preposition','به‌دلیل',50,'{"type":"preposition"}','[{"text":"vor","translation":"پیش از"},{"text":"unter","translation":"زیر"},{"text":"neben","translation":"کنار"},{"text":"ohne","translation":"بدون"},{"text":"gegen","translation":"علیه"}]','Unser Zug ist ausgefallen','قطارمون لغو شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":96}');
    SET v_w_018=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_019 FROM words WHERE course_id=v_course AND lemma='technisch' AND part_of_speech='adjective' AND translation='فنی' ORDER BY id LIMIT 1;
  IF v_w_019 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'technisch','technisch','adjective','فنی',50,'{"type":"adjective"}','[{"text":"klein","translation":"کوچک"},{"text":"teuer","translation":"گران"},{"text":"dunkel","translation":"تاریک"},{"text":"ruhig","translation":"آرام"},{"text":"sicher","translation":"مطمئن"}]','Unser Zug ist ausgefallen','قطارمون لغو شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":96}');
    SET v_w_019=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_020 FROM words WHERE course_id=v_course AND lemma='Problem' AND part_of_speech='noun' AND translation='مشکل' ORDER BY id LIMIT 1;
  IF v_w_020 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Problem | noun'; END IF;
  SELECT id INTO v_w_021 FROM words WHERE course_id=v_course AND lemma='fahren' AND part_of_speech='verb' AND translation='رفتن با وسیله / راندن' ORDER BY id LIMIT 1;
  IF v_w_021 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: fahren | verb'; END IF;
  SELECT id INTO v_w_022 FROM words WHERE course_id=v_course AND lemma='heute' AND part_of_speech='adverb' AND translation='امروز' ORDER BY id LIMIT 1;
  IF v_w_022 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: heute | adverb'; END IF;
  SELECT id INTO v_w_023 FROM words WHERE course_id=v_course AND lemma='nicht' AND part_of_speech='particle' AND translation='نه / نیست' ORDER BY id LIMIT 1;
  IF v_w_023 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: nicht | particle'; END IF;
  SELECT id INTO v_w_024 FROM words WHERE course_id=v_course AND lemma='dann' AND part_of_speech='adverb' AND translation='بعد / سپس' ORDER BY id LIMIT 1;
  IF v_w_024 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dann | adverb'; END IF;
  SELECT id INTO v_w_025 FROM words WHERE course_id=v_course AND lemma='verpassen' AND part_of_speech='verb' AND translation='از دست دادن' ORDER BY id LIMIT 1;
  IF v_w_025 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: verpassen | verb'; END IF;
  SELECT id INTO v_w_026 FROM words WHERE course_id=v_course AND lemma='wir' AND part_of_speech='pronoun' AND translation='ما' ORDER BY id LIMIT 1;
  IF v_w_026 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wir | pronoun'; END IF;
  SELECT id INTO v_w_027 FROM words WHERE course_id=v_course AND lemma='Anschluss' AND part_of_speech='noun' AND translation='قطار بعدی / اتصال' ORDER BY id LIMIT 1;
  IF v_w_027 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Anschluss','Anschluss','noun','قطار بعدی / اتصال',50,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Kaffee","translation":"قهوه"},{"text":"Wasser","translation":"آب"}]','Unser Zug ist ausgefallen','قطارمون لغو شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":96}');
    SET v_w_027=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_028 FROM words WHERE course_id=v_course AND lemma='in' AND part_of_speech='preposition' AND translation='در / داخل' ORDER BY id LIMIT 1;
  IF v_w_028 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: in | preposition'; END IF;
  SELECT id INTO v_w_029 FROM words WHERE course_id=v_course AND lemma='Köln' AND part_of_speech='noun' AND translation='کلن' ORDER BY id LIMIT 1;
  IF v_w_029 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Köln','Köln','noun','کلن',50,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Kaffee","translation":"قهوه"},{"text":"Wasser","translation":"آب"}]','Unser Zug ist ausgefallen','قطارمون لغو شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":96}');
    SET v_w_029=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_030 FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_030 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ich | pronoun'; END IF;
  SELECT id INTO v_w_031 FROM words WHERE course_id=v_course AND lemma='fragen' AND part_of_speech='verb' AND translation='پرسیدن' ORDER BY id LIMIT 1;
  IF v_w_031 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: fragen | verb'; END IF;
  SELECT id INTO v_w_032 FROM words WHERE course_id=v_course AND lemma='sofort' AND part_of_speech='adverb' AND translation='فورا / همین الان' ORDER BY id LIMIT 1;
  IF v_w_032 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sofort | adverb'; END IF;
  SELECT id INTO v_w_033 FROM words WHERE course_id=v_course AND lemma='nach' AND part_of_speech='preposition' AND translation='پس از / به' ORDER BY id LIMIT 1;
  IF v_w_033 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: nach | preposition'; END IF;
  SELECT id INTO v_w_034 FROM words WHERE course_id=v_course AND lemma='andere' AND part_of_speech='adjective' AND translation='دیگر / متفاوت' ORDER BY id LIMIT 1;
  IF v_w_034 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: andere | adjective'; END IF;
  SELECT id INTO v_w_035 FROM words WHERE course_id=v_course AND lemma='an' AND part_of_speech='preposition' AND translation='در / در روز' ORDER BY id LIMIT 1;
  IF v_w_035 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: an | preposition'; END IF;
  SELECT id INTO v_w_036 FROM words WHERE course_id=v_course AND lemma='Schalter' AND part_of_speech='noun' AND translation='باجه' ORDER BY id LIMIT 1;
  IF v_w_036 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Schalter','Schalter','noun','باجه',50,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Kaffee","translation":"قهوه"},{"text":"Wasser","translation":"آب"}]','Unser Zug ist ausgefallen','قطارمون لغو شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":96}');
    SET v_w_036=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_037 FROM words WHERE course_id=v_course AND lemma='warten' AND part_of_speech='verb' AND translation='منتظر ماندن / صبر کردن' ORDER BY id LIMIT 1;
  IF v_w_037 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: warten | verb'; END IF;
  SELECT id INTO v_w_038 FROM words WHERE course_id=v_course AND lemma='schon' AND part_of_speech='adverb' AND translation='قبلا / تا حالا' ORDER BY id LIMIT 1;
  IF v_w_038 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: schon | adverb'; END IF;
  SELECT id INTO v_w_039 FROM words WHERE course_id=v_course AND lemma='lang' AND part_of_speech='adjective' AND translation='طولانی / بلند' ORDER BY id LIMIT 1;
  IF v_w_039 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: lang | adjective'; END IF;
  SELECT id INTO v_w_040 FROM words WHERE course_id=v_course AND lemma='Schlange' AND part_of_speech='noun' AND translation='صف' ORDER BY id LIMIT 1;
  IF v_w_040 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Schlange','Schlange','noun','صف',50,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Kaffee","translation":"قهوه"},{"text":"Wasser","translation":"آب"}]','Unser Zug ist ausgefallen','قطارمون لغو شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":96}');
    SET v_w_040=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_041 FROM words WHERE course_id=v_course AND lemma='vielleicht' AND part_of_speech='adverb' AND translation='شاید' ORDER BY id LIMIT 1;
  IF v_w_041 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: vielleicht | adverb'; END IF;
  SELECT id INTO v_w_042 FROM words WHERE course_id=v_course AND lemma='können' AND part_of_speech='verb' AND translation='توانستن / بتوان' ORDER BY id LIMIT 1;
  IF v_w_042 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: können | verb'; END IF;
  SELECT id INTO v_w_043 FROM words WHERE course_id=v_course AND lemma='online' AND part_of_speech='adverb' AND translation='آنلاین' ORDER BY id LIMIT 1;
  IF v_w_043 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'online','online','adverb','آنلاین',50,'{"type":"adverb"}','[{"text":"gestern","translation":"دیروز"},{"text":"dort","translation":"آنجا"},{"text":"langsam","translation":"آهسته"},{"text":"selten","translation":"به‌ندرت"},{"text":"später","translation":"بعداً"}]','Unser Zug ist ausgefallen','قطارمون لغو شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":96}');
    SET v_w_043=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_044 FROM words WHERE course_id=v_course AND lemma='neu' AND part_of_speech='adjective' AND translation='جدید / تازه' ORDER BY id LIMIT 1;
  IF v_w_044 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: neu | adjective'; END IF;
  SELECT id INTO v_w_045 FROM words WHERE course_id=v_course AND lemma='finden' AND part_of_speech='verb' AND translation='پیدا کردن' ORDER BY id LIMIT 1;
  IF v_w_045 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: finden | verb'; END IF;
  SELECT id INTO v_w_046 FROM words WHERE course_id=v_course AND lemma='nächste' AND part_of_speech='adjective' AND translation='بعدی' ORDER BY id LIMIT 1;
  IF v_w_046 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: nächste | adjective'; END IF;
  SELECT id INTO v_w_047 FROM words WHERE course_id=v_course AND lemma='erst' AND part_of_speech='adverb' AND translation='undefined' ORDER BY id LIMIT 1;
  IF v_w_047 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'erst','erst','adverb','undefined',50,'{"type":"adverb"}','[{"text":"gestern","translation":"دیروز"},{"text":"dort","translation":"آنجا"},{"text":"langsam","translation":"آهسته"},{"text":"selten","translation":"به‌ندرت"},{"text":"später","translation":"بعداً"}]','Unser Zug ist ausgefallen','قطارمون لغو شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":96}');
    SET v_w_047=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_048 FROM words WHERE course_id=v_course AND lemma='zwei' AND part_of_speech='number' AND translation='دو' ORDER BY id LIMIT 1;
  IF v_w_048 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zwei | number'; END IF;
  SELECT id INTO v_w_049 FROM words WHERE course_id=v_course AND lemma='Stunde' AND part_of_speech='noun' AND translation='ساعت / یک ساعت' ORDER BY id LIMIT 1;
  IF v_w_049 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Stunde | noun'; END IF;
  SELECT id INTO v_w_050 FROM words WHERE course_id=v_course AND lemma='über' AND part_of_speech='preposition' AND translation='بالای / درباره' ORDER BY id LIMIT 1;
  IF v_w_050 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: über | preposition'; END IF;
  SELECT id INTO v_w_051 FROM words WHERE course_id=v_course AND lemma='Frankfurt' AND part_of_speech='noun' AND translation='فرانکفورت' ORDER BY id LIMIT 1;
  IF v_w_051 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Frankfurt','Frankfurt','noun','فرانکفورت',50,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Kaffee","translation":"قهوه"},{"text":"Wasser","translation":"آب"}]','Unser Zug ist ausgefallen','قطارمون لغو شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":96}');
    SET v_w_051=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_052 FROM words WHERE course_id=v_course AND lemma='weiterfahren' AND part_of_speech='verb' AND translation='به مسیر ادامه دادن' ORDER BY id LIMIT 1;
  IF v_w_052 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'weiterfahren','weiterfahren','verb','به مسیر ادامه دادن',50,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"kommen","translation":"آمدن"},{"text":"sehen","translation":"دیدن"},{"text":"bleiben","translation":"ماندن"},{"text":"schreiben","translation":"نوشتن"}]','Unser Zug ist ausgefallen','قطارمون لغو شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":96}');
    SET v_w_052=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_053 FROM words WHERE course_id=v_course AND lemma='dieser' AND part_of_speech='determiner' AND translation='این' ORDER BY id LIMIT 1;
  IF v_w_053 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dieser | determiner'; END IF;
  SELECT id INTO v_w_054 FROM words WHERE course_id=v_course AND lemma='Strecke' AND part_of_speech='noun' AND translation='مسیر' ORDER BY id LIMIT 1;
  IF v_w_054 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Strecke','Strecke','noun','مسیر',50,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Kaffee","translation":"قهوه"},{"text":"Wasser","translation":"آب"}]','Unser Zug ist ausgefallen','قطارمون لغو شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":96}');
    SET v_w_054=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_055 FROM words WHERE course_id=v_course AND lemma='dauern' AND part_of_speech='verb' AND translation='طول کشیدن' ORDER BY id LIMIT 1;
  IF v_w_055 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'dauern','dauern','verb','طول کشیدن',50,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"kommen","translation":"آمدن"},{"text":"sehen","translation":"دیدن"},{"text":"bleiben","translation":"ماندن"},{"text":"schreiben","translation":"نوشتن"}]','Unser Zug ist ausgefallen','قطارمون لغو شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":96}');
    SET v_w_055=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_056 FROM words WHERE course_id=v_course AND lemma='nur' AND part_of_speech='adverb' AND translation='فقط' ORDER BY id LIMIT 1;
  IF v_w_056 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: nur | adverb'; END IF;
  SELECT id INTO v_w_057 FROM words WHERE course_id=v_course AND lemma='dreißig' AND part_of_speech='number' AND translation='سی' ORDER BY id LIMIT 1;
  IF v_w_057 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'dreißig','dreißig','number','سی',50,'{"type":"number"}','[{"text":"eins","translation":"یک"},{"text":"drei","translation":"سه"},{"text":"vier","translation":"چهار"},{"text":"fünf","translation":"پنج"},{"text":"sechs","translation":"شش"}]','Unser Zug ist ausgefallen','قطارمون لغو شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":96}');
    SET v_w_057=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_058 FROM words WHERE course_id=v_course AND lemma='Minute' AND part_of_speech='noun' AND translation='دقیقه' ORDER BY id LIMIT 1;
  IF v_w_058 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Minute | noun'; END IF;
  SELECT id INTO v_w_059 FROM words WHERE course_id=v_course AND lemma='das' AND part_of_speech='pronoun' AND translation='این / آن' ORDER BY id LIMIT 1;
  IF v_w_059 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: das | pronoun'; END IF;
  SELECT id INTO v_w_060 FROM words WHERE course_id=v_course AND lemma='besser' AND part_of_speech='adverb' AND translation='بهتر' ORDER BY id LIMIT 1;
  IF v_w_060 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: besser | adverb'; END IF;
  SELECT id INTO v_w_061 FROM words WHERE course_id=v_course AND lemma='als' AND part_of_speech='conjunction' AND translation='از / نسبت به' ORDER BY id LIMIT 1;
  IF v_w_061 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: als | conjunction'; END IF;
  SELECT id INTO v_w_062 FROM words WHERE course_id=v_course AND lemma='hier' AND part_of_speech='adverb' AND translation='اینجا' ORDER BY id LIMIT 1;
  IF v_w_062 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: hier | adverb'; END IF;
  SELECT id INTO v_w_063 FROM words WHERE course_id=v_course AND lemma='zu' AND part_of_speech='particle' AND translation='بیش از حد / خیلی' ORDER BY id LIMIT 1;
  IF v_w_063 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zu | particle'; END IF;
  SELECT id INTO v_w_064 FROM words WHERE course_id=v_course AND lemma='müssen' AND part_of_speech='verb' AND translation='مجبور بودن / باید' ORDER BY id LIMIT 1;
  IF v_w_064 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: müssen | verb'; END IF;
  SELECT id INTO v_w_065 FROM words WHERE course_id=v_course AND lemma='einmal' AND part_of_speech='adverb' AND translation='یک بار' ORDER BY id LIMIT 1;
  IF v_w_065 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: einmal | adverb'; END IF;
  SELECT id INTO v_w_066 FROM words WHERE course_id=v_course AND lemma='umsteigen' AND part_of_speech='verb' AND translation='قطار عوض کردن / خط عوض کردن' ORDER BY id LIMIT 1;
  IF v_w_066 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: umsteigen | verb'; END IF;
  SELECT id INTO v_w_067 FROM words WHERE course_id=v_course AND lemma='ob' AND part_of_speech='conjunction' AND translation='آیا / اینکه' ORDER BY id LIMIT 1;
  IF v_w_067 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ob | conjunction'; END IF;
  SELECT id INTO v_w_068 FROM words WHERE course_id=v_course AND lemma='pünktlich' AND part_of_speech='adverb' AND translation='سر وقت' ORDER BY id LIMIT 1;
  IF v_w_068 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'pünktlich','pünktlich','adverb','سر وقت',50,'{"type":"adverb"}','[{"text":"gestern","translation":"دیروز"},{"text":"dort","translation":"آنجا"},{"text":"langsam","translation":"آهسته"},{"text":"selten","translation":"به‌ندرت"},{"text":"später","translation":"بعداً"}]','Unser Zug ist ausgefallen','قطارمون لغو شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":96}');
    SET v_w_068=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_069 FROM words WHERE course_id=v_course AND lemma='abfahren' AND part_of_speech='verb' AND translation='حرکت کردن' ORDER BY id LIMIT 1;
  IF v_w_069 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'abfahren','abfahren','verb','حرکت کردن',50,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"kommen","translation":"آمدن"},{"text":"sehen","translation":"دیدن"},{"text":"bleiben","translation":"ماندن"},{"text":"schreiben","translation":"نوشتن"}]','Unser Zug ist ausgefallen','قطارمون لغو شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":96}');
    SET v_w_069=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_070 FROM words WHERE course_id=v_course AND lemma='App' AND part_of_speech='noun' AND translation='برنامه' ORDER BY id LIMIT 1;
  IF v_w_070 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'App','App','noun','برنامه',50,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Kaffee","translation":"قهوه"},{"text":"Wasser","translation":"آب"}]','Unser Zug ist ausgefallen','قطارمون لغو شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":96}');
    SET v_w_070=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_071 FROM words WHERE course_id=v_course AND lemma='zeigen' AND part_of_speech='verb' AND translation='نشان دادن' ORDER BY id LIMIT 1;
  IF v_w_071 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zeigen | verb'; END IF;
  SELECT id INTO v_w_072 FROM words WHERE course_id=v_course AND lemma='zehn' AND part_of_speech='number' AND translation='ده' ORDER BY id LIMIT 1;
  IF v_w_072 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zehn | number'; END IF;
  SELECT id INTO v_w_073 FROM words WHERE course_id=v_course AND lemma='Umsteigezeit' AND part_of_speech='noun' AND translation='زمان تعویض قطار' ORDER BY id LIMIT 1;
  IF v_w_073 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Umsteigezeit','Umsteigezeit','noun','زمان تعویض قطار',50,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Kaffee","translation":"قهوه"},{"text":"Wasser","translation":"آب"}]','Unser Zug ist ausgefallen','قطارمون لغو شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":96}');
    SET v_w_073=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_074 FROM words WHERE course_id=v_course AND lemma='falls' AND part_of_speech='conjunction' AND translation='در صورتی که / اگر' ORDER BY id LIMIT 1;
  IF v_w_074 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: falls | conjunction'; END IF;
  SELECT id INTO v_w_075 FROM words WHERE course_id=v_course AND lemma='er' AND part_of_speech='pronoun' AND translation='او (مذکر)' ORDER BY id LIMIT 1;
  IF v_w_075 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: er | pronoun'; END IF;
  SELECT id INTO v_w_076 FROM words WHERE course_id=v_course AND lemma='nehmen' AND part_of_speech='verb' AND translation='گرفتن / مصرف کردن' ORDER BY id LIMIT 1;
  IF v_w_076 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: nehmen | verb'; END IF;
  SELECT id INTO v_w_077 FROM words WHERE course_id=v_course AND lemma='spät' AND part_of_speech='adjective' AND translation='دیر' ORDER BY id LIMIT 1;
  IF v_w_077 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: spät | adjective'; END IF;
  SELECT id INTO v_w_078 FROM words WHERE course_id=v_course AND lemma='klingen' AND part_of_speech='verb' AND translation='به نظر رسیدن' ORDER BY id LIMIT 1;
  IF v_w_078 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: klingen | verb'; END IF;
  SELECT id INTO v_w_079 FROM words WHERE course_id=v_course AND lemma='etwas' AND part_of_speech='pronoun' AND translation='چیزی / یک چیزی' ORDER BY id LIMIT 1;
  IF v_w_079 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: etwas | pronoun'; END IF;
  SELECT id INTO v_w_080 FROM words WHERE course_id=v_course AND lemma='unsicher' AND part_of_speech='adjective' AND translation='نامطمئن / مردد' ORDER BY id LIMIT 1;
  IF v_w_080 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: unsicher | adjective'; END IF;
  SELECT id INTO v_w_081 FROM words WHERE course_id=v_course AND lemma='trotzdem' AND part_of_speech='adverb' AND translation='با این حال' ORDER BY id LIMIT 1;
  IF v_w_081 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'trotzdem','trotzdem','adverb','با این حال',50,'{"type":"adverb"}','[{"text":"gestern","translation":"دیروز"},{"text":"dort","translation":"آنجا"},{"text":"langsam","translation":"آهسته"},{"text":"selten","translation":"به‌ندرت"},{"text":"später","translation":"بعداً"}]','Unser Zug ist ausgefallen','قطارمون لغو شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":96}');
    SET v_w_081=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_082 FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_082 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: haben | verb'; END IF;
  SELECT id INTO v_w_083 FROM words WHERE course_id=v_course AND lemma='damit' AND part_of_speech='adverb' AND translation='با آن / با این موضوع' ORDER BY id LIMIT 1;
  IF v_w_083 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: damit | adverb'; END IF;
  SELECT id INTO v_w_084 FROM words WHERE course_id=v_course AND lemma='echt' AND part_of_speech='adjective' AND translation='واقعی' ORDER BY id LIMIT 1;
  IF v_w_084 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'echt','echt','adjective','واقعی',50,'{"type":"adjective"}','[{"text":"klein","translation":"کوچک"},{"text":"teuer","translation":"گران"},{"text":"dunkel","translation":"تاریک"},{"text":"ruhig","translation":"آرام"},{"text":"sicher","translation":"مطمئن"}]','Unser Zug ist ausgefallen','قطارمون لغو شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":96}');
    SET v_w_084=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_085 FROM words WHERE course_id=v_course AND lemma='Möglichkeit' AND part_of_speech='noun' AND translation='امکان' ORDER BY id LIMIT 1;
  IF v_w_085 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Möglichkeit','Möglichkeit','noun','امکان',50,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Kaffee","translation":"قهوه"},{"text":"Wasser","translation":"آب"}]','Unser Zug ist ausgefallen','قطارمون لغو شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":96}');
    SET v_w_085=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_086 FROM words WHERE course_id=v_course AND lemma='kommen' AND part_of_speech='verb' AND translation='آمدن' ORDER BY id LIMIT 1;
  IF v_w_086 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: kommen | verb'; END IF;
  SELECT id INTO v_w_087 FROM words WHERE course_id=v_course AND lemma='gerade' AND part_of_speech='adverb' AND translation='همین حالا' ORDER BY id LIMIT 1;
  IF v_w_087 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'gerade','gerade','adverb','همین حالا',50,'{"type":"adverb"}','[{"text":"gestern","translation":"دیروز"},{"text":"dort","translation":"آنجا"},{"text":"langsam","translation":"آهسته"},{"text":"selten","translation":"به‌ندرت"},{"text":"später","translation":"بعداً"}]','Unser Zug ist ausgefallen','قطارمون لغو شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":96}');
    SET v_w_087=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_088 FROM words WHERE course_id=v_course AND lemma='an' AND part_of_speech='particle' AND translation='مطرح / آغاز' ORDER BY id LIMIT 1;
  IF v_w_088 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: an | particle'; END IF;
  SELECT id INTO v_w_089 FROM words WHERE course_id=v_course AND lemma='Platz' AND part_of_speech='noun' AND translation='جا / فضا' ORDER BY id LIMIT 1;
  IF v_w_089 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Platz | noun'; END IF;
  SELECT id INTO v_w_090 FROM words WHERE course_id=v_course AND lemma='reservieren' AND part_of_speech='verb' AND translation='undefined' ORDER BY id LIMIT 1;
  IF v_w_090 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'reservieren','reservieren','verb','undefined',50,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"kommen","translation":"آمدن"},{"text":"sehen","translation":"دیدن"},{"text":"bleiben","translation":"ماندن"},{"text":"schreiben","translation":"نوشتن"}]','Unser Zug ist ausgefallen','قطارمون لغو شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":96}');
    SET v_w_090=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_091 FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_091 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ja | interjection'; END IF;
  SELECT id INTO v_w_092 FROM words WHERE course_id=v_course AND lemma='Bestätigung' AND part_of_speech='noun' AND translation='تأیید' ORDER BY id LIMIT 1;
  IF v_w_092 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Bestätigung | noun'; END IF;
  SELECT id INTO v_w_093 FROM words WHERE course_id=v_course AND lemma='mein' AND part_of_speech='determiner' AND translation='مال من / من' ORDER BY id LIMIT 1;
  IF v_w_093 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: mein | determiner'; END IF;
  SELECT id INTO v_w_094 FROM words WHERE course_id=v_course AND lemma='Handy' AND part_of_speech='noun' AND translation='گوشی' ORDER BY id LIMIT 1;
  IF v_w_094 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Handy','Handy','noun','گوشی',50,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Kaffee","translation":"قهوه"},{"text":"Wasser","translation":"آب"}]','Unser Zug ist ausgefallen','قطارمون لغو شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":96}');
    SET v_w_094=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_095 FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_095 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: gut | adjective'; END IF;
  SELECT id INTO v_w_096 FROM words WHERE course_id=v_course AND lemma='Reise' AND part_of_speech='noun' AND translation='سفر' ORDER BY id LIMIT 1;
  IF v_w_096 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Reise','Reise','noun','سفر',50,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Kaffee","translation":"قهوه"},{"text":"Wasser","translation":"آب"}]','Unser Zug ist ausgefallen','قطارمون لغو شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":96}');
    SET v_w_096=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_097 FROM words WHERE course_id=v_course AND lemma='weitergehen' AND part_of_speech='verb' AND translation='ادامه پیدا کردن' ORDER BY id LIMIT 1;
  IF v_w_097 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'weitergehen','weitergehen','verb','ادامه پیدا کردن',50,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"kommen","translation":"آمدن"},{"text":"sehen","translation":"دیدن"},{"text":"bleiben","translation":"ماندن"},{"text":"schreiben","translation":"نوشتن"}]','Unser Zug ist ausgefallen','قطارمون لغو شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":96}');
    SET v_w_097=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_098 FROM words WHERE course_id=v_course AND lemma='obwohl' AND part_of_speech='conjunction' AND translation='با اینکه' ORDER BY id LIMIT 1;
  IF v_w_098 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'obwohl','obwohl','conjunction','با اینکه',50,'{"type":"conjunction"}','[{"text":"und","translation":"و"},{"text":"aber","translation":"اما"},{"text":"weil","translation":"چون"},{"text":"wenn","translation":"اگر"},{"text":"obwohl","translation":"با اینکه"}]','Unser Zug ist ausgefallen','قطارمون لغو شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":96}');
    SET v_w_098=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_099 FROM words WHERE course_id=v_course AND lemma='erste' AND part_of_speech='adjective' AND translation='اولین' ORDER BY id LIMIT 1;
  IF v_w_099 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: erste | adjective'; END IF;
  SELECT id INTO v_w_100 FROM words WHERE course_id=v_course AND lemma='noch' AND part_of_speech='adverb' AND translation='هنوز' ORDER BY id LIMIT 1;
  IF v_w_100 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: noch | adverb'; END IF;
  SELECT id INTO v_w_101 FROM words WHERE course_id=v_course AND lemma='Unser Zug ist ausgefallen.' AND part_of_speech='phrase' AND translation='قطار ما لغو شده است.' ORDER BY id LIMIT 1;
  IF v_w_101 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Unser Zug ist ausgefallen.','Unser Zug ist ausgefallen.','phrase','قطار ما لغو شده است.',50,'{"type":"phrase"}','[{"text":"Guten Morgen.","translation":"صبح بخیر."},{"text":"Wie geht es dir?","translation":"حالت چطور است؟"},{"text":"Bis später.","translation":"تا بعد."},{"text":"Ich weiß es nicht.","translation":"نمی‌دانم."},{"text":"Das ist eine gute Idee.","translation":"این فکر خوبی است."}]','Unser Zug ist ausgefallen','قطارمون لغو شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":96,"wordAudioEligible":false,"wordAudioEligibilityReason":"sentence_phrase"}');
    SET v_w_101=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_102 FROM words WHERE course_id=v_course AND lemma='Dann könnten wir über Frankfurt weiterfahren.' AND part_of_speech='phrase' AND translation='پس می‌توانیم از مسیر فرانکفورت ادامه بدهیم.' ORDER BY id LIMIT 1;
  IF v_w_102 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Dann könnten wir über Frankfurt weiterfahren.','Dann könnten wir über Frankfurt weiterfahren.','phrase','پس می‌توانیم از مسیر فرانکفورت ادامه بدهیم.',50,'{"type":"phrase"}','[{"text":"Guten Morgen.","translation":"صبح بخیر."},{"text":"Wie geht es dir?","translation":"حالت چطور است؟"},{"text":"Bis später.","translation":"تا بعد."},{"text":"Ich weiß es nicht.","translation":"نمی‌دانم."},{"text":"Das ist eine gute Idee.","translation":"این فکر خوبی است."}]','Unser Zug ist ausgefallen','قطارمون لغو شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":96,"wordAudioEligible":false,"wordAudioEligibilityReason":"sentence_phrase"}');
    SET v_w_102=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_103 FROM words WHERE course_id=v_course AND lemma='Ich weiß nicht, ob der Anschluss pünktlich abfährt.' AND part_of_speech='phrase' AND translation='نمی‌دانم قطار بعدی سر وقت حرکت می‌کند یا نه.' ORDER BY id LIMIT 1;
  IF v_w_103 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich weiß nicht, ob der Anschluss pünktlich abfährt.','Ich weiß nicht, ob der Anschluss pünktlich abfährt.','phrase','نمی‌دانم قطار بعدی سر وقت حرکت می‌کند یا نه.',50,'{"type":"phrase"}','[{"text":"Guten Morgen.","translation":"صبح بخیر."},{"text":"Wie geht es dir?","translation":"حالت چطور است؟"},{"text":"Bis später.","translation":"تا بعد."},{"text":"Ich weiß es nicht.","translation":"نمی‌دانم."},{"text":"Das ist eine gute Idee.","translation":"این فکر خوبی است."}]','Unser Zug ist ausgefallen','قطارمون لغو شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":96,"wordAudioEligible":false,"wordAudioEligibilityReason":"sentence_phrase"}');
    SET v_w_103=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_104 FROM words WHERE course_id=v_course AND lemma='Obwohl unser erster Zug ausgefallen ist, kommen wir heute noch an.' AND part_of_speech='phrase' AND translation='با اینکه قطار اولمان لغو شده، امروز می‌رسیم.' ORDER BY id LIMIT 1;
  IF v_w_104 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Obwohl unser erster Zug ausgefallen ist, kommen wir heute noch an.','Obwohl unser erster Zug ausgefallen ist, kommen wir heute noch an.','phrase','با اینکه قطار اولمان لغو شده، امروز می‌رسیم.',50,'{"type":"phrase"}','[{"text":"Guten Morgen.","translation":"صبح بخیر."},{"text":"Wie geht es dir?","translation":"حالت چطور است؟"},{"text":"Bis später.","translation":"تا بعد."},{"text":"Ich weiß es nicht.","translation":"نمی‌دانم."},{"text":"Das ist eine gute Idee.","translation":"این فکر خوبی است."}]','Unser Zug ist ausgefallen','قطارمون لغو شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":96,"wordAudioEligible":false,"wordAudioEligibilityReason":"sentence_phrase"}');
    SET v_w_104=LAST_INSERT_ID();
  END IF;
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ben,v_c_lena,'Die Anzeige am Bahnhof','تابلوی ایستگاه','Lena und Ben entdecken am Bahnhof, dass ihr Zug nicht fährt.','لنا و بن در ایستگاه متوجه می‌شوند که قطارشان حرکت نمی‌کند.','story','lena-ben-b1-travel-problems',1,50,170,1,'validated','{"relationship":"friends","context":"cancelled-train","cefr":"B1","storyArc":"discover-compare-evaluate-continue"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_ben,1,'character','Auf der Anzeige steht plötzlich eine Störung.','ناگهان یک اختلال روی تابلو نشان داده می‌شود.',50,NULL,NULL,NULL,NULL,'[{"surface":"Auf","lemma":"auf","translation":"روی / برای","partOfSpeech":"preposition"},{"surface":"der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"dative_feminine"},{"surface":"Anzeige","lemma":"Anzeige","translation":"تابلو / نمایشگر","partOfSpeech":"noun"},{"surface":"steht","lemma":"stehen","translation":"قرار داشتن / ایستادن","partOfSpeech":"verb","form":"present_3sg"},{"surface":"plötzlich","lemma":"plötzlich","translation":"ناگهان","partOfSpeech":"adverb"},{"surface":"eine","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","form":"nominative_feminine"},{"surface":"Störung","lemma":"Störung","translation":"اختلال","partOfSpeech":"noun","suffix":"."}]','Reiseprobleme und Ausfall','برای توضیح لغو سفر از Perfekt و برای بررسی گزینه‌ها از ob، falls و obwohl استفاده می‌شود.','{"focus":"travel_problem_narration","structures":["Perfekt with ausfallen","ob clause","falls clause","obwohl clause"]}','{"cefr":"B1","course":"de-fa","series":96}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_lena,2,'learner','Unser Zug ist ausgefallen.','قطار ما لغو شده است.',50,NULL,NULL,'unser zug ist ausgefallen',NULL,'[{"surface":"Unser","lemma":"unser","translation":"مال ما / ما","partOfSpeech":"determiner","form":"nominative_masculine"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","form":"present_3sg"},{"surface":"ausgefallen","lemma":"ausfallen","translation":"لغو شدن / از کار افتادن","partOfSpeech":"verb","form":"participle_II","suffix":"."}]','Reiseprobleme und Ausfall','برای توضیح لغو سفر از Perfekt و برای بررسی گزینه‌ها از ob، falls و obwohl استفاده می‌شود.','{"focus":"travel_problem_narration","structures":["Perfekt with ausfallen","ob clause","falls clause","obwohl clause"]}','{"cefr":"B1","course":"de-fa","series":96}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_ben,3,'character','Weißt du, warum die Verbindung gestrichen wurde?','می‌دانی چرا این مسیر لغو شده است؟',50,NULL,NULL,NULL,NULL,'[{"surface":"Weißt","lemma":"wissen","translation":"دانستن","partOfSpeech":"verb","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun","suffix":","},{"surface":"warum","lemma":"warum","translation":"چرا","partOfSpeech":"adverb"},{"surface":"die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"nominative_feminine"},{"surface":"Verbindung","lemma":"Verbindung","translation":"مسیر / ارتباط","partOfSpeech":"noun"},{"surface":"gestrichen","lemma":"streichen","translation":"لغو کردن / خط زدن","partOfSpeech":"verb","form":"participle_II"},{"surface":"wurde","lemma":"werden","translation":"شدن / خواهد","partOfSpeech":"verb","form":"preterite_3sg","suffix":"?"}]','Reiseprobleme und Ausfall','برای توضیح لغو سفر از Perfekt و برای بررسی گزینه‌ها از ob، falls و obwohl استفاده می‌شود.','{"focus":"travel_problem_narration","structures":["Perfekt with ausfallen","ob clause","falls clause","obwohl clause"]}','{"cefr":"B1","course":"de-fa","series":96}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_lena,4,'learner','Wegen eines technischen Problems fährt der Zug heute nicht.','به‌دلیل یک مشکل فنی، قطار امروز حرکت نمی‌کند.',50,NULL,NULL,'wegen eines technischen problems fährt der zug heute nicht',NULL,'[{"surface":"Wegen","lemma":"wegen","translation":"به‌دلیل","partOfSpeech":"preposition"},{"surface":"eines","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","form":"genitive_neuter"},{"surface":"technischen","lemma":"technisch","translation":"فنی","partOfSpeech":"adjective","form":"genitive_neuter"},{"surface":"Problems","lemma":"Problem","translation":"مشکل","partOfSpeech":"noun","form":"genitive_singular"},{"surface":"fährt","lemma":"fahren","translation":"رفتن با وسیله / راندن","partOfSpeech":"verb","form":"present_3sg"},{"surface":"der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"dative_feminine"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun"},{"surface":"heute","lemma":"heute","translation":"امروز","partOfSpeech":"adverb"},{"surface":"nicht","lemma":"nicht","translation":"نه / نیست","partOfSpeech":"particle","suffix":"."}]','Reiseprobleme und Ausfall','برای توضیح لغو سفر از Perfekt و برای بررسی گزینه‌ها از ob، falls و obwohl استفاده می‌شود.','{"focus":"travel_problem_narration","structures":["Perfekt with ausfallen","ob clause","falls clause","obwohl clause"]}','{"cefr":"B1","course":"de-fa","series":96}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_ben,5,'character','Dann verpassen wir unseren Anschluss in Köln.','پس قطار بعدی‌مان در کلن را از دست می‌دهیم.',50,NULL,NULL,NULL,NULL,'[{"surface":"Dann","lemma":"dann","translation":"بعد / سپس","partOfSpeech":"adverb"},{"surface":"verpassen","lemma":"verpassen","translation":"از دست دادن","partOfSpeech":"verb","form":"present_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"unseren","lemma":"unser","translation":"مال ما / ما","partOfSpeech":"determiner","form":"accusative_masculine"},{"surface":"Anschluss","lemma":"Anschluss","translation":"قطار بعدی / اتصال","partOfSpeech":"noun"},{"surface":"in","lemma":"in","translation":"در / داخل","partOfSpeech":"preposition"},{"surface":"Köln","lemma":"Köln","translation":"کلن","partOfSpeech":"noun","suffix":"."}]','Reiseprobleme und Ausfall','برای توضیح لغو سفر از Perfekt و برای بررسی گزینه‌ها از ob، falls و obwohl استفاده می‌شود.','{"focus":"travel_problem_narration","structures":["Perfekt with ausfallen","ob clause","falls clause","obwohl clause"]}','{"cefr":"B1","course":"de-fa","series":96}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_lena,6,'learner','Ich frage sofort nach einer anderen Verbindung.','فوراً دربارهٔ یک مسیر دیگر می‌پرسم.',50,NULL,NULL,'ich frage sofort nach einer anderen verbindung',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"frage","lemma":"fragen","translation":"پرسیدن","partOfSpeech":"verb","form":"present_1sg"},{"surface":"sofort","lemma":"sofort","translation":"فورا / همین الان","partOfSpeech":"adverb"},{"surface":"nach","lemma":"nach","translation":"پس از / به","partOfSpeech":"preposition"},{"surface":"einer","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","form":"dative_feminine"},{"surface":"anderen","lemma":"andere","translation":"دیگر / متفاوت","partOfSpeech":"adjective","form":"dative_feminine"},{"surface":"Verbindung","lemma":"Verbindung","translation":"مسیر / ارتباط","partOfSpeech":"noun","suffix":"."}]','Reiseprobleme und Ausfall','برای توضیح لغو سفر از Perfekt و برای بررسی گزینه‌ها از ob، falls و obwohl استفاده می‌شود.','{"focus":"travel_problem_narration","structures":["Perfekt with ausfallen","ob clause","falls clause","obwohl clause"]}','{"cefr":"B1","course":"de-fa","series":96}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_002,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_003,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_005,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_006,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_007,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_008,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_009,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_010,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_011,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_014,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_015,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_016,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_017,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_018,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_019,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_020,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_021,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_022,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_023,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_024,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_025,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_026,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_027,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_028,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_029,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_030,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_031,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_032,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_033,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_034,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_101,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'new_word',1,NULL,v_w_101,'عبارت کلیدی درس',NULL,50,NULL,'{"cefr":"B1","series":96}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'new_word',2,NULL,v_w_011,'واژهٔ کلیدی درس',NULL,50,NULL,'{"cefr":"B1","series":96}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',3,v_t_1,NULL,'به جملهٔ بن گوش کن',NULL,50,NULL,'{"cefr":"B1","series":96}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',4,v_t_2,NULL,'پاسخ لنا را با صدای بلند بگو',NULL,50,NULL,'{"cefr":"B1","series":96}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',5,v_t_5,NULL,'به جملهٔ بعدی گوش کن',NULL,50,NULL,'{"cefr":"B1","series":96}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',6,v_t_6,NULL,'پاسخ را با صدای بلند بگو',NULL,50,NULL,'{"cefr":"B1","series":96}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'meaning_choice',7,NULL,v_w_011,'معنی واژهٔ کلیدی را انتخاب کن',NULL,50,'{"mode":"word_translation","question":"ausfallen در این درس چه معنی دارد؟","choices":["لغو شدن / از کار افتادن","تعمیر خانه","خرید غذا"],"correctIndex":0}','{"cefr":"B1","series":96}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و پاسخ بده',NULL,50,'{"source":"lesson_story","question":"چرا قطار امروز حرکت نمی‌کند؟","choices":["به‌خاطر یک مشکل فنی","به‌خاطر هوای گرم","به‌خاطر کمبود مسافر"],"correctIndex":0}','{"cefr":"B1","series":96}');
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ben,v_c_lena,'Eine andere Strecke','یک مسیر دیگر','Lena und Ben vergleichen am Schalter zwei mögliche Verbindungen.','لنا و بن کنار باجه دو مسیر ممکن را مقایسه می‌کنند.','story','lena-ben-b1-travel-problems',2,50,170,2,'validated','{"relationship":"friends","context":"cancelled-train","cefr":"B1","storyArc":"discover-compare-evaluate-continue"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_ben,1,'character','Am Schalter wartet schon eine lange Schlange.','کنار باجه از قبل صف بلندی تشکیل شده است.',50,NULL,NULL,NULL,NULL,'[{"surface":"Am","lemma":"an","translation":"در / در روز","partOfSpeech":"preposition","form":"dative_masculine_contraction"},{"surface":"Schalter","lemma":"Schalter","translation":"باجه","partOfSpeech":"noun"},{"surface":"wartet","lemma":"warten","translation":"منتظر ماندن / صبر کردن","partOfSpeech":"verb","form":"present_3sg"},{"surface":"schon","lemma":"schon","translation":"قبلا / تا حالا","partOfSpeech":"adverb"},{"surface":"eine","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","form":"nominative_feminine"},{"surface":"lange","lemma":"lang","translation":"طولانی / بلند","partOfSpeech":"adjective","form":"nominative_feminine"},{"surface":"Schlange","lemma":"Schlange","translation":"صف","partOfSpeech":"noun","suffix":"."}]','Reiseprobleme und Ausfall','برای توضیح لغو سفر از Perfekt و برای بررسی گزینه‌ها از ob، falls و obwohl استفاده می‌شود.','{"focus":"travel_problem_narration","structures":["Perfekt with ausfallen","ob clause","falls clause","obwohl clause"]}','{"cefr":"B1","course":"de-fa","series":96}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_lena,2,'learner','Vielleicht können wir online eine neue Verbindung finden.','شاید بتوانیم آنلاین یک مسیر جدید پیدا کنیم.',50,NULL,NULL,'vielleicht können wir online eine neue verbindung finden',NULL,'[{"surface":"Vielleicht","lemma":"vielleicht","translation":"شاید","partOfSpeech":"adverb"},{"surface":"können","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","form":"present_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"online","lemma":"online","translation":"آنلاین","partOfSpeech":"adverb"},{"surface":"eine","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","form":"nominative_feminine"},{"surface":"neue","lemma":"neu","translation":"جدید / تازه","partOfSpeech":"adjective","form":"accusative_feminine"},{"surface":"Verbindung","lemma":"Verbindung","translation":"مسیر / ارتباط","partOfSpeech":"noun"},{"surface":"finden","lemma":"finden","translation":"پیدا کردن","partOfSpeech":"verb","form":"infinitive","suffix":"."}]','Reiseprobleme und Ausfall','برای توضیح لغو سفر از Perfekt و برای بررسی گزینه‌ها از ob، falls و obwohl استفاده می‌شود.','{"focus":"travel_problem_narration","structures":["Perfekt with ausfallen","ob clause","falls clause","obwohl clause"]}','{"cefr":"B1","course":"de-fa","series":96}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_ben,3,'character','Der nächste Zug fährt erst in zwei Stunden.','قطار بعدی تازه دو ساعت دیگر حرکت می‌کند.',50,NULL,NULL,NULL,NULL,'[{"surface":"Der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"nominative_masculine"},{"surface":"nächste","lemma":"nächste","translation":"بعدی","partOfSpeech":"adjective","form":"nominative_masculine"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun"},{"surface":"fährt","lemma":"fahren","translation":"رفتن با وسیله / راندن","partOfSpeech":"verb","form":"present_3sg"},{"surface":"erst","lemma":"erst","partOfSpeech":"adverb"},{"surface":"in","lemma":"in","translation":"در / داخل","partOfSpeech":"preposition"},{"surface":"zwei","lemma":"zwei","translation":"دو","partOfSpeech":"number"},{"surface":"Stunden","lemma":"Stunde","translation":"ساعت / یک ساعت","partOfSpeech":"noun","form":"dative_plural","suffix":"."}]','Reiseprobleme und Ausfall','برای توضیح لغو سفر از Perfekt و برای بررسی گزینه‌ها از ob، falls و obwohl استفاده می‌شود.','{"focus":"travel_problem_narration","structures":["Perfekt with ausfallen","ob clause","falls clause","obwohl clause"]}','{"cefr":"B1","course":"de-fa","series":96}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_lena,4,'learner','Dann könnten wir über Frankfurt weiterfahren.','پس می‌توانیم از مسیر فرانکفورت ادامه بدهیم.',50,NULL,NULL,'dann könnten wir über frankfurt weiterfahren',NULL,'[{"surface":"Dann","lemma":"dann","translation":"بعد / سپس","partOfSpeech":"adverb"},{"surface":"könnten","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","form":"konjunktiv_II_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"über","lemma":"über","translation":"بالای / درباره","partOfSpeech":"preposition"},{"surface":"Frankfurt","lemma":"Frankfurt","translation":"فرانکفورت","partOfSpeech":"noun"},{"surface":"weiterfahren","lemma":"weiterfahren","translation":"به مسیر ادامه دادن","partOfSpeech":"verb","form":"infinitive","suffix":"."}]','Reiseprobleme und Ausfall','برای توضیح لغو سفر از Perfekt و برای بررسی گزینه‌ها از ob، falls و obwohl استفاده می‌شود.','{"focus":"travel_problem_narration","structures":["Perfekt with ausfallen","ob clause","falls clause","obwohl clause"]}','{"cefr":"B1","course":"de-fa","series":96}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_ben,5,'character','Diese Strecke dauert nur dreißig Minuten länger.','این مسیر فقط سی دقیقه بیشتر طول می‌کشد.',50,NULL,NULL,NULL,NULL,'[{"surface":"Diese","lemma":"dieser","translation":"این","partOfSpeech":"determiner","form":"nominative_feminine"},{"surface":"Strecke","lemma":"Strecke","translation":"مسیر","partOfSpeech":"noun"},{"surface":"dauert","lemma":"dauern","translation":"طول کشیدن","partOfSpeech":"verb","form":"present_3sg"},{"surface":"nur","lemma":"nur","translation":"فقط","partOfSpeech":"adverb"},{"surface":"dreißig","lemma":"dreißig","translation":"سی","partOfSpeech":"number"},{"surface":"Minuten","lemma":"Minute","translation":"دقیقه","partOfSpeech":"noun","form":"accusative_plural"},{"surface":"länger","lemma":"lang","translation":"طولانی / بلند","partOfSpeech":"adjective","form":"comparative","suffix":"."}]','Reiseprobleme und Ausfall','برای توضیح لغو سفر از Perfekt و برای بررسی گزینه‌ها از ob، falls و obwohl استفاده می‌شود.','{"focus":"travel_problem_narration","structures":["Perfekt with ausfallen","ob clause","falls clause","obwohl clause"]}','{"cefr":"B1","course":"de-fa","series":96}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_lena,6,'learner','Das ist besser, als hier lange zu warten.','این بهتر از آن است که اینجا مدت زیادی منتظر بمانیم.',50,NULL,NULL,'das ist besser als hier lange zu warten',NULL,'[{"surface":"Das","lemma":"das","translation":"این / آن","partOfSpeech":"pronoun"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","form":"present_3sg"},{"surface":"besser","lemma":"besser","translation":"بهتر","partOfSpeech":"adverb","suffix":","},{"surface":"als","lemma":"als","translation":"از / نسبت به","partOfSpeech":"conjunction"},{"surface":"hier","lemma":"hier","translation":"اینجا","partOfSpeech":"adverb"},{"surface":"lange","lemma":"lang","translation":"طولانی / بلند","partOfSpeech":"adjective","form":"nominative_feminine"},{"surface":"zu","lemma":"zu","translation":"بیش از حد / خیلی","partOfSpeech":"particle"},{"surface":"warten","lemma":"warten","translation":"منتظر ماندن / صبر کردن","partOfSpeech":"verb","form":"infinitive","suffix":"."}]','Reiseprobleme und Ausfall','برای توضیح لغو سفر از Perfekt و برای بررسی گزینه‌ها از ob، falls و obwohl استفاده می‌شود.','{"focus":"travel_problem_narration","structures":["Perfekt with ausfallen","ob clause","falls clause","obwohl clause"]}','{"cefr":"B1","course":"de-fa","series":96}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_035,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_036,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_037,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_038,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_006,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_039,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_040,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_041,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_042,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_026,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_043,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_044,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_015,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_045,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_046,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_021,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_047,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_028,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_048,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_049,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_024,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_050,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_051,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_052,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_053,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_054,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_055,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_056,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_057,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_058,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_059,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_010,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_060,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_061,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_062,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_063,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_102,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'new_word',1,NULL,v_w_102,'عبارت کلیدی درس',NULL,50,NULL,'{"cefr":"B1","series":96}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'new_word',2,NULL,v_w_054,'واژهٔ کلیدی درس',NULL,50,NULL,'{"cefr":"B1","series":96}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',3,v_t_7,NULL,'به جملهٔ بن گوش کن',NULL,50,NULL,'{"cefr":"B1","series":96}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',4,v_t_8,NULL,'پاسخ لنا را با صدای بلند بگو',NULL,50,NULL,'{"cefr":"B1","series":96}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',5,v_t_11,NULL,'به جملهٔ بعدی گوش کن',NULL,50,NULL,'{"cefr":"B1","series":96}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',6,v_t_12,NULL,'پاسخ را با صدای بلند بگو',NULL,50,NULL,'{"cefr":"B1","series":96}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'meaning_choice',7,NULL,v_w_054,'معنی واژهٔ کلیدی را انتخاب کن',NULL,50,'{"mode":"word_translation","question":"Strecke در این درس چه معنی دارد؟","choices":["مسیر","تعمیر خانه","خرید غذا"],"correctIndex":0}','{"cefr":"B1","series":96}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و پاسخ بده',NULL,50,'{"source":"lesson_story","question":"مسیر فرانکفورت چه مزیتی دارد؟","choices":["فقط سی دقیقه طولانی‌تر است","نیازی به بلیت ندارد","مستقیم به خانه می‌رود"],"correctIndex":0}','{"cefr":"B1","series":96}');
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ben,v_c_lena,'Reicht die Umsteigezeit?','زمان تعویض قطار کافی است؟','Die neue Route bietet eine Möglichkeit, aber der Anschluss bleibt unsicher.','مسیر جدید یک امکان فراهم می‌کند، اما رسیدن به قطار بعدی هنوز قطعی نیست.','story','lena-ben-b1-travel-problems',3,50,170,3,'validated','{"relationship":"friends","context":"cancelled-train","cefr":"B1","storyArc":"discover-compare-evaluate-continue"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_ben,1,'character','Auf der neuen Strecke müssen wir einmal umsteigen.','در مسیر جدید باید یک بار قطار عوض کنیم.',50,NULL,NULL,NULL,NULL,'[{"surface":"Auf","lemma":"auf","translation":"روی / برای","partOfSpeech":"preposition"},{"surface":"der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"dative_feminine"},{"surface":"neuen","lemma":"neu","translation":"جدید / تازه","partOfSpeech":"adjective","form":"accusative_plural"},{"surface":"Strecke","lemma":"Strecke","translation":"مسیر","partOfSpeech":"noun"},{"surface":"müssen","lemma":"müssen","translation":"مجبور بودن / باید","partOfSpeech":"verb","form":"present_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"einmal","lemma":"einmal","translation":"یک بار","partOfSpeech":"adverb"},{"surface":"umsteigen","lemma":"umsteigen","translation":"قطار عوض کردن / خط عوض کردن","partOfSpeech":"verb","form":"infinitive","suffix":"."}]','Reiseprobleme und Ausfall','برای توضیح لغو سفر از Perfekt و برای بررسی گزینه‌ها از ob، falls و obwohl استفاده می‌شود.','{"focus":"travel_problem_narration","structures":["Perfekt with ausfallen","ob clause","falls clause","obwohl clause"]}','{"cefr":"B1","course":"de-fa","series":96}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_lena,2,'learner','Ich weiß nicht, ob der Anschluss pünktlich abfährt.','نمی‌دانم قطار بعدی سر وقت حرکت می‌کند یا نه.',50,NULL,NULL,'ich weiß nicht ob der anschluss pünktlich abfährt',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"weiß","lemma":"wissen","translation":"دانستن","partOfSpeech":"verb","form":"present_1sg"},{"surface":"nicht","lemma":"nicht","translation":"نه / نیست","partOfSpeech":"particle","suffix":","},{"surface":"ob","lemma":"ob","translation":"آیا / اینکه","partOfSpeech":"conjunction"},{"surface":"der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"dative_feminine"},{"surface":"Anschluss","lemma":"Anschluss","translation":"قطار بعدی / اتصال","partOfSpeech":"noun"},{"surface":"pünktlich","lemma":"pünktlich","translation":"سر وقت","partOfSpeech":"adverb"},{"surface":"abfährt","lemma":"abfahren","translation":"حرکت کردن","partOfSpeech":"verb","form":"present_3sg","suffix":"."}]','Reiseprobleme und Ausfall','برای توضیح لغو سفر از Perfekt و برای بررسی گزینه‌ها از ob، falls و obwohl استفاده می‌شود.','{"focus":"travel_problem_narration","structures":["Perfekt with ausfallen","ob clause","falls clause","obwohl clause"]}','{"cefr":"B1","course":"de-fa","series":96}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_ben,3,'character','Die App zeigt zehn Minuten Umsteigezeit.','برنامه ده دقیقه زمان برای تعویض قطار نشان می‌دهد.',50,NULL,NULL,NULL,NULL,'[{"surface":"Die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"nominative_feminine"},{"surface":"App","lemma":"App","translation":"برنامه","partOfSpeech":"noun"},{"surface":"zeigt","lemma":"zeigen","translation":"نشان دادن","partOfSpeech":"verb","form":"present_3sg"},{"surface":"zehn","lemma":"zehn","translation":"ده","partOfSpeech":"number"},{"surface":"Minuten","lemma":"Minute","translation":"دقیقه","partOfSpeech":"noun","form":"accusative_plural"},{"surface":"Umsteigezeit","lemma":"Umsteigezeit","translation":"زمان تعویض قطار","partOfSpeech":"noun","suffix":"."}]','Reiseprobleme und Ausfall','برای توضیح لغو سفر از Perfekt و برای بررسی گزینه‌ها از ob، falls و obwohl استفاده می‌شود.','{"focus":"travel_problem_narration","structures":["Perfekt with ausfallen","ob clause","falls clause","obwohl clause"]}','{"cefr":"B1","course":"de-fa","series":96}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_lena,4,'learner','Falls wir ihn verpassen, nehmen wir den späteren Zug.','اگر به آن نرسیم، قطار بعدی را می‌گیریم.',50,NULL,NULL,'falls wir ihn verpassen nehmen wir den späteren zug',NULL,'[{"surface":"Falls","lemma":"falls","translation":"در صورتی که / اگر","partOfSpeech":"conjunction"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"ihn","lemma":"er","translation":"او (مذکر)","partOfSpeech":"pronoun","form":"accusative_masculine"},{"surface":"verpassen","lemma":"verpassen","translation":"از دست دادن","partOfSpeech":"verb","form":"present_1pl","suffix":","},{"surface":"nehmen","lemma":"nehmen","translation":"گرفتن / مصرف کردن","partOfSpeech":"verb","form":"present_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"den","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"accusative_masculine"},{"surface":"späteren","lemma":"spät","translation":"دیر","partOfSpeech":"adjective","form":"accusative_masculine"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun","suffix":"."}]','Reiseprobleme und Ausfall','برای توضیح لغو سفر از Perfekt و برای بررسی گزینه‌ها از ob، falls و obwohl استفاده می‌شود.','{"focus":"travel_problem_narration","structures":["Perfekt with ausfallen","ob clause","falls clause","obwohl clause"]}','{"cefr":"B1","course":"de-fa","series":96}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_ben,5,'character','Das klingt etwas unsicher.','این کمی نامطمئن به نظر می‌رسد.',50,NULL,NULL,NULL,NULL,'[{"surface":"Das","lemma":"das","translation":"این / آن","partOfSpeech":"pronoun"},{"surface":"klingt","lemma":"klingen","translation":"به نظر رسیدن","partOfSpeech":"verb","form":"present_3sg"},{"surface":"etwas","lemma":"etwas","translation":"چیزی / یک چیزی","partOfSpeech":"pronoun"},{"surface":"unsicher","lemma":"unsicher","translation":"نامطمئن / مردد","partOfSpeech":"adjective","suffix":"."}]','Reiseprobleme und Ausfall','برای توضیح لغو سفر از Perfekt و برای بررسی گزینه‌ها از ob، falls و obwohl استفاده می‌شود.','{"focus":"travel_problem_narration","structures":["Perfekt with ausfallen","ob clause","falls clause","obwohl clause"]}','{"cefr":"B1","course":"de-fa","series":96}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_lena,6,'learner','Trotzdem haben wir damit eine echte Möglichkeit.','با این حال، این یک امکان واقعی برای ماست.',50,NULL,NULL,'trotzdem haben wir damit eine echte möglichkeit',NULL,'[{"surface":"Trotzdem","lemma":"trotzdem","translation":"با این حال","partOfSpeech":"adverb"},{"surface":"haben","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","form":"present_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"damit","lemma":"damit","translation":"با آن / با این موضوع","partOfSpeech":"adverb"},{"surface":"eine","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","form":"nominative_feminine"},{"surface":"echte","lemma":"echt","translation":"واقعی","partOfSpeech":"adjective","form":"accusative_feminine"},{"surface":"Möglichkeit","lemma":"Möglichkeit","translation":"امکان","partOfSpeech":"noun","suffix":"."}]','Reiseprobleme und Ausfall','برای توضیح لغو سفر از Perfekt و برای بررسی گزینه‌ها از ob، falls و obwohl استفاده می‌شود.','{"focus":"travel_problem_narration","structures":["Perfekt with ausfallen","ob clause","falls clause","obwohl clause"]}','{"cefr":"B1","course":"de-fa","series":96}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_002,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_044,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_054,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_064,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_026,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_065,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_066,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_030,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_023,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_067,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_027,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_068,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_069,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_070,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_071,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_072,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_058,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_073,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_074,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_075,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_025,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_076,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_077,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_059,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_078,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_079,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_080,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_081,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_082,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_083,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_084,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_085,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_103,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'new_word',1,NULL,v_w_103,'عبارت کلیدی درس',NULL,50,NULL,'{"cefr":"B1","series":96}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'new_word',2,NULL,v_w_066,'واژهٔ کلیدی درس',NULL,50,NULL,'{"cefr":"B1","series":96}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',3,v_t_13,NULL,'به جملهٔ بن گوش کن',NULL,50,NULL,'{"cefr":"B1","series":96}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',4,v_t_14,NULL,'پاسخ لنا را با صدای بلند بگو',NULL,50,NULL,'{"cefr":"B1","series":96}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',5,v_t_17,NULL,'به جملهٔ بعدی گوش کن',NULL,50,NULL,'{"cefr":"B1","series":96}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',6,v_t_18,NULL,'پاسخ را با صدای بلند بگو',NULL,50,NULL,'{"cefr":"B1","series":96}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'meaning_choice',7,NULL,v_w_066,'معنی واژهٔ کلیدی را انتخاب کن',NULL,50,'{"mode":"word_translation","question":"umsteigen در این درس چه معنی دارد؟","choices":["قطار عوض کردن / خط عوض کردن","تعمیر خانه","خرید غذا"],"correctIndex":0}','{"cefr":"B1","series":96}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و پاسخ بده',NULL,50,'{"source":"lesson_story","question":"اگر لنا و بن به قطار بعدی نرسند چه می‌کنند؟","choices":["قطار بعدی را می‌گیرند","سفر را برای همیشه لغو می‌کنند","به فرودگاه می‌روند"],"correctIndex":0}','{"cefr":"B1","series":96}');
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ben,v_c_lena,'Wir fahren weiter','به سفر ادامه می‌دهیم','Lena und Ben entscheiden sich für die neue Verbindung und setzen ihre Reise fort.','لنا و بن مسیر جدید را انتخاب می‌کنند و به سفرشان ادامه می‌دهند.','story','lena-ben-b1-travel-problems',4,50,170,4,'validated','{"relationship":"friends","context":"cancelled-train","cefr":"B1","storyArc":"discover-compare-evaluate-continue"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_ben,1,'character','Der Zug nach Frankfurt kommt gerade an.','قطار فرانکفورت همین حالا می‌رسد.',50,NULL,NULL,NULL,NULL,'[{"surface":"Der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"nominative_masculine"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun"},{"surface":"nach","lemma":"nach","translation":"پس از / به","partOfSpeech":"preposition"},{"surface":"Frankfurt","lemma":"Frankfurt","translation":"فرانکفورت","partOfSpeech":"noun"},{"surface":"kommt","lemma":"kommen","translation":"آمدن","partOfSpeech":"verb","form":"present_3sg"},{"surface":"gerade","lemma":"gerade","translation":"همین حالا","partOfSpeech":"adverb"},{"surface":"an","lemma":"an","translation":"مطرح / آغاز","partOfSpeech":"particle","suffix":"."}]','Reiseprobleme und Ausfall','برای توضیح لغو سفر از Perfekt و برای بررسی گزینه‌ها از ob، falls و obwohl استفاده می‌شود.','{"focus":"travel_problem_narration","structures":["Perfekt with ausfallen","ob clause","falls clause","obwohl clause"]}','{"cefr":"B1","course":"de-fa","series":96}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_lena,2,'learner','Dann nehmen wir diese Verbindung.','پس همین مسیر را انتخاب می‌کنیم.',50,NULL,NULL,'dann nehmen wir diese verbindung',NULL,'[{"surface":"Dann","lemma":"dann","translation":"بعد / سپس","partOfSpeech":"adverb"},{"surface":"nehmen","lemma":"nehmen","translation":"گرفتن / مصرف کردن","partOfSpeech":"verb","form":"present_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"diese","lemma":"dieser","translation":"این","partOfSpeech":"determiner","form":"accusative_feminine"},{"surface":"Verbindung","lemma":"Verbindung","translation":"مسیر / ارتباط","partOfSpeech":"noun","suffix":"."}]','Reiseprobleme und Ausfall','برای توضیح لغو سفر از Perfekt و برای بررسی گزینه‌ها از ob، falls و obwohl استفاده می‌شود.','{"focus":"travel_problem_narration","structures":["Perfekt with ausfallen","ob clause","falls clause","obwohl clause"]}','{"cefr":"B1","course":"de-fa","series":96}');
  SET v_t_20=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_ben,3,'character','Hast du die neuen Plätze reserviert?','صندلی‌های جدید را رزرو کرده‌ای؟',50,NULL,NULL,NULL,NULL,'[{"surface":"Hast","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"nominative_feminine"},{"surface":"neuen","lemma":"neu","translation":"جدید / تازه","partOfSpeech":"adjective","form":"accusative_plural"},{"surface":"Plätze","lemma":"Platz","translation":"جا / فضا","partOfSpeech":"noun","form":"accusative_plural"},{"surface":"reserviert","lemma":"reservieren","partOfSpeech":"verb","form":"participle_II","suffix":"?"}]','Reiseprobleme und Ausfall','برای توضیح لغو سفر از Perfekt و برای بررسی گزینه‌ها از ob، falls و obwohl استفاده می‌شود.','{"focus":"travel_problem_narration","structures":["Perfekt with ausfallen","ob clause","falls clause","obwohl clause"]}','{"cefr":"B1","course":"de-fa","series":96}');
  SET v_t_21=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_lena,4,'learner','Ja, die Bestätigung ist schon auf meinem Handy.','بله، تأییدش از قبل روی گوشی من است.',50,NULL,NULL,'ja die bestätigung ist schon auf meinem handy',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"nominative_feminine"},{"surface":"Bestätigung","lemma":"Bestätigung","translation":"تأیید","partOfSpeech":"noun"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","form":"present_3sg"},{"surface":"schon","lemma":"schon","translation":"قبلا / تا حالا","partOfSpeech":"adverb"},{"surface":"auf","lemma":"auf","translation":"روی / برای","partOfSpeech":"preposition"},{"surface":"meinem","lemma":"mein","translation":"مال من / من","partOfSpeech":"determiner","form":"dative_neuter"},{"surface":"Handy","lemma":"Handy","translation":"گوشی","partOfSpeech":"noun","suffix":"."}]','Reiseprobleme und Ausfall','برای توضیح لغو سفر از Perfekt و برای بررسی گزینه‌ها از ob، falls و obwohl استفاده می‌شود.','{"focus":"travel_problem_narration","structures":["Perfekt with ausfallen","ob clause","falls clause","obwohl clause"]}','{"cefr":"B1","course":"de-fa","series":96}');
  SET v_t_22=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_ben,5,'character','Gut, dann kann die Reise weitergehen.','خوب است، پس سفر می‌تواند ادامه پیدا کند.',50,NULL,NULL,NULL,NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","suffix":","},{"surface":"dann","lemma":"dann","translation":"بعد / سپس","partOfSpeech":"adverb"},{"surface":"kann","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","form":"present_3sg"},{"surface":"die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"nominative_feminine"},{"surface":"Reise","lemma":"Reise","translation":"سفر","partOfSpeech":"noun"},{"surface":"weitergehen","lemma":"weitergehen","translation":"ادامه پیدا کردن","partOfSpeech":"verb","form":"infinitive","suffix":"."}]','Reiseprobleme und Ausfall','برای توضیح لغو سفر از Perfekt و برای بررسی گزینه‌ها از ob، falls و obwohl استفاده می‌شود.','{"focus":"travel_problem_narration","structures":["Perfekt with ausfallen","ob clause","falls clause","obwohl clause"]}','{"cefr":"B1","course":"de-fa","series":96}');
  SET v_t_23=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_lena,6,'learner','Obwohl unser erster Zug ausgefallen ist, kommen wir heute noch an.','با اینکه قطار اولمان لغو شده، امروز می‌رسیم.',50,NULL,NULL,'obwohl unser erster zug ausgefallen ist kommen wir heute noch an',NULL,'[{"surface":"Obwohl","lemma":"obwohl","translation":"با اینکه","partOfSpeech":"conjunction"},{"surface":"unser","lemma":"unser","translation":"مال ما / ما","partOfSpeech":"determiner","form":"nominative_masculine"},{"surface":"erster","lemma":"erste","translation":"اولین","partOfSpeech":"adjective","form":"nominative_masculine"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun"},{"surface":"ausgefallen","lemma":"ausfallen","translation":"لغو شدن / از کار افتادن","partOfSpeech":"verb","form":"participle_II"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","form":"present_3sg","suffix":","},{"surface":"kommen","lemma":"kommen","translation":"آمدن","partOfSpeech":"verb","form":"present_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"heute","lemma":"heute","translation":"امروز","partOfSpeech":"adverb"},{"surface":"noch","lemma":"noch","translation":"هنوز","partOfSpeech":"adverb"},{"surface":"an","lemma":"an","translation":"مطرح / آغاز","partOfSpeech":"particle","suffix":"."}]','Reiseprobleme und Ausfall','برای توضیح لغو سفر از Perfekt و برای بررسی گزینه‌ها از ob، falls و obwohl استفاده می‌شود.','{"focus":"travel_problem_narration","structures":["Perfekt with ausfallen","ob clause","falls clause","obwohl clause"]}','{"cefr":"B1","course":"de-fa","series":96}');
  SET v_t_24=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_002,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_009,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_033,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_051,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_086,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_087,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_088,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_024,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_076,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_026,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_053,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_015,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_082,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_044,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_089,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_090,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_091,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_092,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_010,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_038,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_093,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_094,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_095,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_042,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_096,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_097,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_098,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_099,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_011,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_022,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_100,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_104,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'new_word',1,NULL,v_w_104,'عبارت کلیدی درس',NULL,50,NULL,'{"cefr":"B1","series":96}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'new_word',2,NULL,v_w_096,'واژهٔ کلیدی درس',NULL,50,NULL,'{"cefr":"B1","series":96}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',3,v_t_19,NULL,'به جملهٔ بن گوش کن',NULL,50,NULL,'{"cefr":"B1","series":96}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',4,v_t_20,NULL,'پاسخ لنا را با صدای بلند بگو',NULL,50,NULL,'{"cefr":"B1","series":96}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',5,v_t_23,NULL,'به جملهٔ بعدی گوش کن',NULL,50,NULL,'{"cefr":"B1","series":96}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',6,v_t_24,NULL,'پاسخ را با صدای بلند بگو',NULL,50,NULL,'{"cefr":"B1","series":96}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'meaning_choice',7,NULL,v_w_096,'معنی واژهٔ کلیدی را انتخاب کن',NULL,50,'{"mode":"word_translation","question":"Reise در این درس چه معنی دارد؟","choices":["سفر","تعمیر خانه","خرید غذا"],"correctIndex":0}','{"cefr":"B1","series":96}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و پاسخ بده',NULL,50,'{"source":"lesson_story","question":"با وجود لغو قطار اول، آن‌ها چه زمانی می‌رسند؟","choices":["امروز","فردا شب","هفتهٔ بعد"],"correctIndex":0}','{"cefr":"B1","series":96}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 096 requires exactly four lessons.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>24 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 096 requires exactly 24 turns.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR CHAR_LENGTH(TRIM(t.speech_target))=0);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every learner Turn needs speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities a JOIN lessons l ON l.id=a.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>32 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 096 requires exactly 32 activities.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id<>learner_character_id AND storyline_key='lena-ben-b1-travel-problems' AND storyline_order BETWEEN 1 AND 4 AND status='validated';
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Character or storyline continuity failure.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) d;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_series_096_v9();
DROP PROCEDURE IF EXISTS import_nova_series_096_v9;

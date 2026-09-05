-- NOVA v9.0 / B1 SERIES 094 / Die Heizung wird morgen repariert
-- Requires canonical v9.0 and validated Series 093. No schema DDL.
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_series_094_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_094_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_level BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_jonas BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_anna BIGINT UNSIGNED DEFAULT NULL;
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
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 03 missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE module_id=v_module AND sort_order=3 AND status IN ('validated','complete');
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 093 must be validated.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons l JOIN chapters c ON c.id=l.chapter_id WHERE c.module_id=v_module AND c.sort_order=3 AND l.storyline_key='anna-jonas-b1-neighborhood' AND l.storyline_order BETWEEN 9 AND 12;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Storyline orders 9-12 required.'; END IF;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=4 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 03 Chapter 04 missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='Die Heizung wird morgen repariert' AND title_translation='بخاری فردا تعمیر می شه';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 094 canonical title mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 03 Chapter 04 must be empty before Series 094 import.'; END IF;
  SELECT id INTO v_c_jonas FROM characters WHERE course_id=v_course AND name='Jonas' AND gender='male' ORDER BY id LIMIT 1;
  SELECT id INTO v_c_anna FROM characters WHERE course_id=v_course AND name='Anna' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_jonas IS NULL OR v_c_anna IS NULL OR v_c_jonas=v_c_anna THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required distinct Characters Jonas and Anna missing.'; END IF;
  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='in' AND part_of_speech='preposition' AND translation='در / داخل' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: in | preposition'; END IF;
  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='Flur' AND part_of_speech='noun' AND translation='راهرو' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Flur','Flur','noun','راهرو',49,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Kaffee","translation":"قهوه"},{"text":"Zug","translation":"قطار"}]','Die Heizung wird morgen repariert','بخاری فردا تعمیر می شه',NULL,NULL,'{"cefr":"B1","introducedInSeries":94}');
    SET v_w_002=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='hängen' AND part_of_speech='verb' AND translation='آویزان بودن / نصب بودن' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'hängen','hängen','verb','آویزان بودن / نصب بودن',49,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"kommen","translation":"آمدن"},{"text":"sehen","translation":"دیدن"},{"text":"bleiben","translation":"ماندن"},{"text":"schreiben","translation":"نوشتن"}]','Die Heizung wird morgen repariert','بخاری فردا تعمیر می شه',NULL,NULL,'{"cefr":"B1","introducedInSeries":94}');
    SET v_w_003=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='ein' AND part_of_speech='article' AND translation='یک / حرف تعریف نامعین' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ein | article'; END IF;
  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='neu' AND part_of_speech='adjective' AND translation='جدید / تازه' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: neu | adjective'; END IF;
  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='Mitteilung' AND part_of_speech='noun' AND translation='اطلاعیه' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Mitteilung','Mitteilung','noun','اطلاعیه',49,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Kaffee","translation":"قهوه"},{"text":"Zug","translation":"قطار"}]','Die Heizung wird morgen repariert','بخاری فردا تعمیر می شه',NULL,NULL,'{"cefr":"B1","introducedInSeries":94}');
    SET v_w_006=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: der | article'; END IF;
  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='Heizung' AND part_of_speech='noun' AND translation='سیستم گرمایشی / شوفاژ' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Heizung | noun'; END IF;
  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='werden' AND part_of_speech='verb' AND translation='شدن / خواهد' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: werden | verb'; END IF;
  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='morgen' AND part_of_speech='adverb' AND translation='فردا' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: morgen | adverb'; END IF;
  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='reparieren' AND part_of_speech='verb' AND translation='تعمیر کردن' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: reparieren | verb'; END IF;
  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='wissen' AND part_of_speech='verb' AND translation='دانستن' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wissen | verb'; END IF;
  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: du | pronoun'; END IF;
  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='wann' AND part_of_speech='adverb' AND translation='کی / چه زمانی' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wann | adverb'; END IF;
  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='Arbeit' AND part_of_speech='noun' AND translation='کار' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Arbeit | noun'; END IF;
  SELECT id INTO v_w_016 FROM words WHERE course_id=v_course AND lemma='beginnen' AND part_of_speech='verb' AND translation='شروع شدن / آغاز کردن' ORDER BY id LIMIT 1;
  IF v_w_016 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: beginnen | verb'; END IF;
  SELECT id INTO v_w_017 FROM words WHERE course_id=v_course AND lemma='laut' AND part_of_speech='preposition' AND translation='طبق / بنا بر' ORDER BY id LIMIT 1;
  IF v_w_017 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'laut','laut','preposition','طبق / بنا بر',49,'{"type":"preposition"}','[{"text":"vor","translation":"پیش از"},{"text":"unter","translation":"زیر"},{"text":"neben","translation":"کنار"},{"text":"ohne","translation":"بدون"},{"text":"gegen","translation":"علیه"}]','Die Heizung wird morgen repariert','بخاری فردا تعمیر می شه',NULL,NULL,'{"cefr":"B1","introducedInSeries":94}');
    SET v_w_017=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_018 FROM words WHERE course_id=v_course AND lemma='Aushang' AND part_of_speech='noun' AND translation='اطلاعیهٔ نصب‌شده' ORDER BY id LIMIT 1;
  IF v_w_018 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Aushang','Aushang','noun','اطلاعیهٔ نصب‌شده',49,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Kaffee","translation":"قهوه"},{"text":"Zug","translation":"قطار"}]','Die Heizung wird morgen repariert','بخاری فردا تعمیر می شه',NULL,NULL,'{"cefr":"B1","introducedInSeries":94}');
    SET v_w_018=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_019 FROM words WHERE course_id=v_course AND lemma='um' AND part_of_speech='preposition' AND translation='در ساعت / حوالی' ORDER BY id LIMIT 1;
  IF v_w_019 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: um | preposition'; END IF;
  SELECT id INTO v_w_020 FROM words WHERE course_id=v_course AND lemma='acht' AND part_of_speech='number' AND translation='هشت' ORDER BY id LIMIT 1;
  IF v_w_020 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: acht | number'; END IF;
  SELECT id INTO v_w_021 FROM words WHERE course_id=v_course AND lemma='Uhr' AND part_of_speech='noun' AND translation='ساعت' ORDER BY id LIMIT 1;
  IF v_w_021 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Uhr | noun'; END IF;
  SELECT id INTO v_w_022 FROM words WHERE course_id=v_course AND lemma='anfangen' AND part_of_speech='verb' AND translation='شروع کردن' ORDER BY id LIMIT 1;
  IF v_w_022 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: anfangen | verb'; END IF;
  SELECT id INTO v_w_023 FROM words WHERE course_id=v_course AND lemma='dann' AND part_of_speech='adverb' AND translation='بعد / سپس' ORDER BY id LIMIT 1;
  IF v_w_023 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dann | adverb'; END IF;
  SELECT id INTO v_w_024 FROM words WHERE course_id=v_course AND lemma='müssen' AND part_of_speech='verb' AND translation='مجبور بودن / باید' ORDER BY id LIMIT 1;
  IF v_w_024 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: müssen | verb'; END IF;
  SELECT id INTO v_w_025 FROM words WHERE course_id=v_course AND lemma='wir' AND part_of_speech='pronoun' AND translation='ما' ORDER BY id LIMIT 1;
  IF v_w_025 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wir | pronoun'; END IF;
  SELECT id INTO v_w_026 FROM words WHERE course_id=v_course AND lemma='früh' AND part_of_speech='adverb' AND translation='زودتر' ORDER BY id LIMIT 1;
  IF v_w_026 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: früh | adverb'; END IF;
  SELECT id INTO v_w_027 FROM words WHERE course_id=v_course AND lemma='aufstehen' AND part_of_speech='verb' AND translation='از خواب بلند شدن' ORDER BY id LIMIT 1;
  IF v_w_027 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: aufstehen | verb'; END IF;
  SELECT id INTO v_w_028 FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_028 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ich | pronoun'; END IF;
  SELECT id INTO v_w_029 FROM words WHERE course_id=v_course AND lemma='stellen' AND part_of_speech='verb' AND translation='گذاشتن' ORDER BY id LIMIT 1;
  IF v_w_029 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'stellen','stellen','verb','گذاشتن',49,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"kommen","translation":"آمدن"},{"text":"sehen","translation":"دیدن"},{"text":"bleiben","translation":"ماندن"},{"text":"schreiben","translation":"نوشتن"}]','Die Heizung wird morgen repariert','بخاری فردا تعمیر می شه',NULL,NULL,'{"cefr":"B1","introducedInSeries":94}');
    SET v_w_029=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_030 FROM words WHERE course_id=v_course AND lemma='vorher' AND part_of_speech='adverb' AND translation='قبلش / پیش از آن' ORDER BY id LIMIT 1;
  IF v_w_030 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: vorher | adverb'; END IF;
  SELECT id INTO v_w_031 FROM words WHERE course_id=v_course AND lemma='alles' AND part_of_speech='pronoun' AND translation='همه چیز' ORDER BY id LIMIT 1;
  IF v_w_031 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: alles | pronoun'; END IF;
  SELECT id INTO v_w_032 FROM words WHERE course_id=v_course AND lemma='Heizungsraum' AND part_of_speech='noun' AND translation='اتاق تأسیسات گرمایشی' ORDER BY id LIMIT 1;
  IF v_w_032 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Heizungsraum','Heizungsraum','noun','اتاق تأسیسات گرمایشی',49,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Kaffee","translation":"قهوه"},{"text":"Zug","translation":"قطار"}]','Die Heizung wird morgen repariert','بخاری فردا تعمیر می شه',NULL,NULL,'{"cefr":"B1","introducedInSeries":94}');
    SET v_w_032=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_033 FROM words WHERE course_id=v_course AND lemma='frei' AND part_of_speech='adjective' AND translation='خالی / آزاد' ORDER BY id LIMIT 1;
  IF v_w_033 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'frei','frei','adjective','خالی / آزاد',49,'{"type":"adjective"}','[{"text":"klein","translation":"کوچک"},{"text":"teuer","translation":"گران"},{"text":"dunkel","translation":"تاریک"},{"text":"ruhig","translation":"آرام"},{"text":"sicher","translation":"مطمئن"}]','Die Heizung wird morgen repariert','بخاری فردا تعمیر می شه',NULL,NULL,'{"cefr":"B1","introducedInSeries":94}');
    SET v_w_033=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_034 FROM words WHERE course_id=v_course AND lemma='auch' AND part_of_speech='adverb' AND translation='هم / همچنین' ORDER BY id LIMIT 1;
  IF v_w_034 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: auch | adverb'; END IF;
  SELECT id INTO v_w_035 FROM words WHERE course_id=v_course AND lemma='Rohr' AND part_of_speech='noun' AND translation='لوله' ORDER BY id LIMIT 1;
  IF v_w_035 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Rohr','Rohr','noun','لوله',49,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Kaffee","translation":"قهوه"},{"text":"Zug","translation":"قطار"}]','Die Heizung wird morgen repariert','بخاری فردا تعمیر می شه',NULL,NULL,'{"cefr":"B1","introducedInSeries":94}');
    SET v_w_035=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_036 FROM words WHERE course_id=v_course AND lemma='Keller' AND part_of_speech='noun' AND translation='زیرزمین' ORDER BY id LIMIT 1;
  IF v_w_036 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Keller','Keller','noun','زیرزمین',49,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Kaffee","translation":"قهوه"},{"text":"Zug","translation":"قطار"}]','Die Heizung wird morgen repariert','بخاری فردا تعمیر می شه',NULL,NULL,'{"cefr":"B1","introducedInSeries":94}');
    SET v_w_036=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_037 FROM words WHERE course_id=v_course AND lemma='prüfen' AND part_of_speech='verb' AND translation='بررسی کردن' ORDER BY id LIMIT 1;
  IF v_w_037 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: prüfen | verb'; END IF;
  SELECT id INTO v_w_038 FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_038 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ja | interjection'; END IF;
  SELECT id INTO v_w_039 FROM words WHERE course_id=v_course AND lemma='zuerst' AND part_of_speech='adverb' AND translation='اول / ابتدا' ORDER BY id LIMIT 1;
  IF v_w_039 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zuerst | adverb'; END IF;
  SELECT id INTO v_w_040 FROM words WHERE course_id=v_course AND lemma='alt' AND part_of_speech='adjective' AND translation='پیر / دارای سن' ORDER BY id LIMIT 1;
  IF v_w_040 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: alt | adjective'; END IF;
  SELECT id INTO v_w_041 FROM words WHERE course_id=v_course AND lemma='Ventil' AND part_of_speech='noun' AND translation='شیر / دریچه' ORDER BY id LIMIT 1;
  IF v_w_041 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ventil','Ventil','noun','شیر / دریچه',49,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Kaffee","translation":"قهوه"},{"text":"Zug","translation":"قطار"}]','Die Heizung wird morgen repariert','بخاری فردا تعمیر می شه',NULL,NULL,'{"cefr":"B1","introducedInSeries":94}');
    SET v_w_041=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_042 FROM words WHERE course_id=v_course AND lemma='austauschen' AND part_of_speech='verb' AND translation='تعویض کردن' ORDER BY id LIMIT 1;
  IF v_w_042 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'austauschen','austauschen','verb','تعویض کردن',49,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"kommen","translation":"آمدن"},{"text":"sehen","translation":"دیدن"},{"text":"bleiben","translation":"ماندن"},{"text":"schreiben","translation":"نوشتن"}]','Die Heizung wird morgen repariert','بخاری فردا تعمیر می شه',NULL,NULL,'{"cefr":"B1","introducedInSeries":94}');
    SET v_w_042=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_043 FROM words WHERE course_id=v_course AND lemma='und' AND part_of_speech='conjunction' AND translation='و' ORDER BY id LIMIT 1;
  IF v_w_043 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: und | conjunction'; END IF;
  SELECT id INTO v_w_044 FROM words WHERE course_id=v_course AND lemma='wie' AND part_of_speech='adverb' AND translation='چطور / چگونه' ORDER BY id LIMIT 1;
  IF v_w_044 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wie | adverb'; END IF;
  SELECT id INTO v_w_045 FROM words WHERE course_id=v_course AND lemma='lang' AND part_of_speech='adjective' AND translation='طولانی / بلند' ORDER BY id LIMIT 1;
  IF v_w_045 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: lang | adjective'; END IF;
  SELECT id INTO v_w_046 FROM words WHERE course_id=v_course AND lemma='Wasser' AND part_of_speech='noun' AND translation='آب' ORDER BY id LIMIT 1;
  IF v_w_046 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Wasser | noun'; END IF;
  SELECT id INTO v_w_047 FROM words WHERE course_id=v_course AND lemma='abstellen' AND part_of_speech='verb' AND translation='قطع کردن' ORDER BY id LIMIT 1;
  IF v_w_047 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'abstellen','abstellen','verb','قطع کردن',49,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"kommen","translation":"آمدن"},{"text":"sehen","translation":"دیدن"},{"text":"bleiben","translation":"ماندن"},{"text":"schreiben","translation":"نوشتن"}]','Die Heizung wird morgen repariert','بخاری فردا تعمیر می شه',NULL,NULL,'{"cefr":"B1","introducedInSeries":94}');
    SET v_w_047=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_048 FROM words WHERE course_id=v_course AND lemma='es' AND part_of_speech='pronoun' AND translation='آن / این' ORDER BY id LIMIT 1;
  IF v_w_048 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: es | pronoun'; END IF;
  SELECT id INTO v_w_049 FROM words WHERE course_id=v_course AND lemma='ungefähr' AND part_of_speech='adverb' AND translation='حدود / تقریباً' ORDER BY id LIMIT 1;
  IF v_w_049 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'ungefähr','ungefähr','adverb','حدود / تقریباً',49,'{"type":"adverb"}','[{"text":"gestern","translation":"دیروز"},{"text":"dort","translation":"آنجا"},{"text":"langsam","translation":"آهسته"},{"text":"selten","translation":"به‌ندرت"},{"text":"später","translation":"بعداً"}]','Die Heizung wird morgen repariert','بخاری فردا تعمیر می شه',NULL,NULL,'{"cefr":"B1","introducedInSeries":94}');
    SET v_w_049=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_050 FROM words WHERE course_id=v_course AND lemma='zwei' AND part_of_speech='number' AND translation='دو' ORDER BY id LIMIT 1;
  IF v_w_050 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zwei | number'; END IF;
  SELECT id INTO v_w_051 FROM words WHERE course_id=v_course AND lemma='Stunde' AND part_of_speech='noun' AND translation='ساعت / یک ساعت' ORDER BY id LIMIT 1;
  IF v_w_051 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Stunde | noun'; END IF;
  SELECT id INTO v_w_052 FROM words WHERE course_id=v_course AND lemma='füllen' AND part_of_speech='verb' AND translation='پر کردن' ORDER BY id LIMIT 1;
  IF v_w_052 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'füllen','füllen','verb','پر کردن',49,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"kommen","translation":"آمدن"},{"text":"sehen","translation":"دیدن"},{"text":"bleiben","translation":"ماندن"},{"text":"schreiben","translation":"نوشتن"}]','Die Heizung wird morgen repariert','بخاری فردا تعمیر می شه',NULL,NULL,'{"cefr":"B1","introducedInSeries":94}');
    SET v_w_052=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_053 FROM words WHERE course_id=v_course AND lemma='paar' AND part_of_speech='determiner' AND translation='چند' ORDER BY id LIMIT 1;
  IF v_w_053 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'paar','paar','determiner','چند',49,'{"type":"determiner"}','[{"text":"dieser","translation":"این"},{"text":"jeder","translation":"هر"},{"text":"kein","translation":"هیچ"},{"text":"mein","translation":"مال من"},{"text":"dein","translation":"مال تو"}]','Die Heizung wird morgen repariert','بخاری فردا تعمیر می شه',NULL,NULL,'{"cefr":"B1","introducedInSeries":94}');
    SET v_w_053=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_054 FROM words WHERE course_id=v_course AND lemma='Flasche' AND part_of_speech='noun' AND translation='بطری' ORDER BY id LIMIT 1;
  IF v_w_054 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Flasche','Flasche','noun','بطری',49,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Kaffee","translation":"قهوه"},{"text":"Zug","translation":"قطار"}]','Die Heizung wird morgen repariert','بخاری فردا تعمیر می شه',NULL,NULL,'{"cefr":"B1","introducedInSeries":94}');
    SET v_w_054=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_055 FROM words WHERE course_id=v_course AND lemma='danach' AND part_of_speech='adverb' AND translation='بعد از آن / بعدش' ORDER BY id LIMIT 1;
  IF v_w_055 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: danach | adverb'; END IF;
  SELECT id INTO v_w_056 FROM words WHERE course_id=v_course AND lemma='wieder' AND part_of_speech='adverb' AND translation='دوباره' ORDER BY id LIMIT 1;
  IF v_w_056 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wieder | adverb'; END IF;
  SELECT id INTO v_w_057 FROM words WHERE course_id=v_course AND lemma='einschalten' AND part_of_speech='verb' AND translation='وصل / روشن کردن' ORDER BY id LIMIT 1;
  IF v_w_057 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'einschalten','einschalten','verb','وصل / روشن کردن',49,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"kommen","translation":"آمدن"},{"text":"sehen","translation":"دیدن"},{"text":"bleiben","translation":"ماندن"},{"text":"schreiben","translation":"نوشتن"}]','Die Heizung wird morgen repariert','بخاری فردا تعمیر می شه',NULL,NULL,'{"cefr":"B1","introducedInSeries":94}');
    SET v_w_057=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_058 FROM words WHERE course_id=v_course AND lemma='Handwerker' AND part_of_speech='noun' AND translation='تعمیرکار' ORDER BY id LIMIT 1;
  IF v_w_058 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Handwerker','Handwerker','noun','تعمیرکار',49,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Kaffee","translation":"قهوه"},{"text":"Zug","translation":"قطار"}]','Die Heizung wird morgen repariert','بخاری فردا تعمیر می شه',NULL,NULL,'{"cefr":"B1","introducedInSeries":94}');
    SET v_w_058=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_059 FROM words WHERE course_id=v_course AND lemma='brauchen' AND part_of_speech='verb' AND translation='نیاز داشتن / لازم داشتن' ORDER BY id LIMIT 1;
  IF v_w_059 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: brauchen | verb'; END IF;
  SELECT id INTO v_w_060 FROM words WHERE course_id=v_course AND lemma='Zugang' AND part_of_speech='noun' AND translation='دسترسی' ORDER BY id LIMIT 1;
  IF v_w_060 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Zugang','Zugang','noun','دسترسی',49,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Kaffee","translation":"قهوه"},{"text":"Zug","translation":"قطار"}]','Die Heizung wird morgen repariert','بخاری فردا تعمیر می شه',NULL,NULL,'{"cefr":"B1","introducedInSeries":94}');
    SET v_w_060=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_061 FROM words WHERE course_id=v_course AND lemma='zu' AND part_of_speech='preposition' AND translation='به / به سمت' ORDER BY id LIMIT 1;
  IF v_w_061 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zu | preposition'; END IF;
  SELECT id INTO v_w_062 FROM words WHERE course_id=v_course AND lemma='unser' AND part_of_speech='determiner' AND translation='مال ما / ما' ORDER BY id LIMIT 1;
  IF v_w_062 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: unser | determiner'; END IF;
  SELECT id INTO v_w_063 FROM words WHERE course_id=v_course AND lemma='Wohnung' AND part_of_speech='noun' AND translation='خانه / آپارتمان' ORDER BY id LIMIT 1;
  IF v_w_063 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Wohnung | noun'; END IF;
  SELECT id INTO v_w_064 FROM words WHERE course_id=v_course AND lemma='Vormittag' AND part_of_speech='noun' AND translation='صبح / پیش از ظهر' ORDER BY id LIMIT 1;
  IF v_w_064 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Vormittag','Vormittag','noun','صبح / پیش از ظهر',49,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Kaffee","translation":"قهوه"},{"text":"Zug","translation":"قطار"}]','Die Heizung wird morgen repariert','بخاری فردا تعمیر می شه',NULL,NULL,'{"cefr":"B1","introducedInSeries":94}');
    SET v_w_064=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_065 FROM words WHERE course_id=v_course AND lemma='Haus' AND part_of_speech='noun' AND translation='خانه' ORDER BY id LIMIT 1;
  IF v_w_065 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Haus | noun'; END IF;
  SELECT id INTO v_w_066 FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_066 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sein | verb'; END IF;
  SELECT id INTO v_w_067 FROM words WHERE course_id=v_course AND lemma='Termin' AND part_of_speech='noun' AND translation='قرار / وقت' ORDER BY id LIMIT 1;
  IF v_w_067 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Termin | noun'; END IF;
  SELECT id INTO v_w_068 FROM words WHERE course_id=v_course AND lemma='schriftlich' AND part_of_speech='adjective' AND translation='کتبی' ORDER BY id LIMIT 1;
  IF v_w_068 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'schriftlich','schriftlich','adjective','کتبی',49,'{"type":"adjective"}','[{"text":"klein","translation":"کوچک"},{"text":"teuer","translation":"گران"},{"text":"dunkel","translation":"تاریک"},{"text":"ruhig","translation":"آرام"},{"text":"sicher","translation":"مطمئن"}]','Die Heizung wird morgen repariert','بخاری فردا تعمیر می شه',NULL,NULL,'{"cefr":"B1","introducedInSeries":94}');
    SET v_w_068=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_069 FROM words WHERE course_id=v_course AND lemma='bestätigen' AND part_of_speech='verb' AND translation='تأیید کردن' ORDER BY id LIMIT 1;
  IF v_w_069 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'bestätigen','bestätigen','verb','تأیید کردن',49,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"kommen","translation":"آمدن"},{"text":"sehen","translation":"دیدن"},{"text":"bleiben","translation":"ماندن"},{"text":"schreiben","translation":"نوشتن"}]','Die Heizung wird morgen repariert','بخاری فردا تعمیر می شه',NULL,NULL,'{"cefr":"B1","introducedInSeries":94}');
    SET v_w_069=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_070 FROM words WHERE course_id=v_course AND lemma='Bestätigung' AND part_of_speech='noun' AND translation='تأیید' ORDER BY id LIMIT 1;
  IF v_w_070 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Bestätigung','Bestätigung','noun','تأیید',49,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Kaffee","translation":"قهوه"},{"text":"Zug","translation":"قطار"}]','Die Heizung wird morgen repariert','بخاری فردا تعمیر می شه',NULL,NULL,'{"cefr":"B1","introducedInSeries":94}');
    SET v_w_070=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_071 FROM words WHERE course_id=v_course AND lemma='heute' AND part_of_speech='adverb' AND translation='امروز' ORDER BY id LIMIT 1;
  IF v_w_071 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: heute | adverb'; END IF;
  SELECT id INTO v_w_072 FROM words WHERE course_id=v_course AND lemma='per' AND part_of_speech='preposition' AND translation='از طریق' ORDER BY id LIMIT 1;
  IF v_w_072 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'per','per','preposition','از طریق',49,'{"type":"preposition"}','[{"text":"vor","translation":"پیش از"},{"text":"unter","translation":"زیر"},{"text":"neben","translation":"کنار"},{"text":"ohne","translation":"بدون"},{"text":"gegen","translation":"علیه"}]','Die Heizung wird morgen repariert','بخاری فردا تعمیر می شه',NULL,NULL,'{"cefr":"B1","introducedInSeries":94}');
    SET v_w_072=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_073 FROM words WHERE course_id=v_course AND lemma='E-Mail' AND part_of_speech='noun' AND translation='ایمیل' ORDER BY id LIMIT 1;
  IF v_w_073 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'E-Mail','E-Mail','noun','ایمیل',49,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Kaffee","translation":"قهوه"},{"text":"Zug","translation":"قطار"}]','Die Heizung wird morgen repariert','بخاری فردا تعمیر می شه',NULL,NULL,'{"cefr":"B1","introducedInSeries":94}');
    SET v_w_073=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_074 FROM words WHERE course_id=v_course AND lemma='schicken' AND part_of_speech='verb' AND translation='فرستادن' ORDER BY id LIMIT 1;
  IF v_w_074 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: schicken | verb'; END IF;
  SELECT id INTO v_w_075 FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_075 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: gut | adjective'; END IF;
  SELECT id INTO v_w_076 FROM words WHERE course_id=v_course AND lemma='verpassen' AND part_of_speech='verb' AND translation='از دست دادن' ORDER BY id LIMIT 1;
  IF v_w_076 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: verpassen | verb'; END IF;
  SELECT id INTO v_w_077 FROM words WHERE course_id=v_course AND lemma='nichts' AND part_of_speech='pronoun' AND translation='هیچ چیز' ORDER BY id LIMIT 1;
  IF v_w_077 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: nichts | pronoun'; END IF;
  SELECT id INTO v_w_078 FROM words WHERE course_id=v_course AND lemma='falls' AND part_of_speech='conjunction' AND translation='در صورتی که / اگر' ORDER BY id LIMIT 1;
  IF v_w_078 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: falls | conjunction'; END IF;
  SELECT id INTO v_w_079 FROM words WHERE course_id=v_course AND lemma='sich' AND part_of_speech='pronoun' AND translation='خود / خودش' ORDER BY id LIMIT 1;
  IF v_w_079 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sich | pronoun'; END IF;
  SELECT id INTO v_w_080 FROM words WHERE course_id=v_course AND lemma='etwas' AND part_of_speech='pronoun' AND translation='چیزی / یک چیزی' ORDER BY id LIMIT 1;
  IF v_w_080 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: etwas | pronoun'; END IF;
  SELECT id INTO v_w_081 FROM words WHERE course_id=v_course AND lemma='ändern' AND part_of_speech='verb' AND translation='تغییر دادن' ORDER BY id LIMIT 1;
  IF v_w_081 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ändern | verb'; END IF;
  SELECT id INTO v_w_082 FROM words WHERE course_id=v_course AND lemma='sofort' AND part_of_speech='adverb' AND translation='فورا / همین الان' ORDER BY id LIMIT 1;
  IF v_w_082 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sofort | adverb'; END IF;
  SELECT id INTO v_w_083 FROM words WHERE course_id=v_course AND lemma='informieren' AND part_of_speech='verb' AND translation='اطلاع دادن' ORDER BY id LIMIT 1;
  IF v_w_083 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: informieren | verb'; END IF;
  SELECT id INTO v_w_084 FROM words WHERE course_id=v_course AND lemma='Reparatur' AND part_of_speech='noun' AND translation='تعمیر' ORDER BY id LIMIT 1;
  IF v_w_084 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Reparatur','Reparatur','noun','تعمیر',49,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Kaffee","translation":"قهوه"},{"text":"Zug","translation":"قطار"}]','Die Heizung wird morgen repariert','بخاری فردا تعمیر می شه',NULL,NULL,'{"cefr":"B1","introducedInSeries":94}');
    SET v_w_084=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_085 FROM words WHERE course_id=v_course AND lemma='schnell' AND part_of_speech='adjective' AND translation='سریع' ORDER BY id LIMIT 1;
  IF v_w_085 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: schnell | adjective'; END IF;
  SELECT id INTO v_w_086 FROM words WHERE course_id=v_course AND lemma='fertig' AND part_of_speech='adjective' AND translation='تمام / آماده' ORDER BY id LIMIT 1;
  IF v_w_086 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: fertig | adjective'; END IF;
  SELECT id INTO v_w_087 FROM words WHERE course_id=v_course AND lemma='alle' AND part_of_speech='pronoun' AND translation='همه' ORDER BY id LIMIT 1;
  IF v_w_087 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: alle | pronoun'; END IF;
  SELECT id INTO v_w_088 FROM words WHERE course_id=v_course AND lemma='Heizkörper' AND part_of_speech='noun' AND translation='رادیاتور' ORDER BY id LIMIT 1;
  IF v_w_088 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Heizkörper','Heizkörper','noun','رادیاتور',49,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Kaffee","translation":"قهوه"},{"text":"Zug","translation":"قطار"}]','Die Heizung wird morgen repariert','بخاری فردا تعمیر می شه',NULL,NULL,'{"cefr":"B1","introducedInSeries":94}');
    SET v_w_088=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_089 FROM words WHERE course_id=v_course AND lemma='jetzt' AND part_of_speech='adverb' AND translation='حالا / اکنون' ORDER BY id LIMIT 1;
  IF v_w_089 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: jetzt | adverb'; END IF;
  SELECT id INTO v_w_090 FROM words WHERE course_id=v_course AND lemma='gleichmäßig' AND part_of_speech='adverb' AND translation='یکنواخت' ORDER BY id LIMIT 1;
  IF v_w_090 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'gleichmäßig','gleichmäßig','adverb','یکنواخت',49,'{"type":"adverb"}','[{"text":"gestern","translation":"دیروز"},{"text":"dort","translation":"آنجا"},{"text":"langsam","translation":"آهسته"},{"text":"selten","translation":"به‌ندرت"},{"text":"später","translation":"بعداً"}]','Die Heizung wird morgen repariert','بخاری فردا تعمیر می شه',NULL,NULL,'{"cefr":"B1","introducedInSeries":94}');
    SET v_w_090=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_091 FROM words WHERE course_id=v_course AND lemma='warm' AND part_of_speech='adjective' AND translation='گرم' ORDER BY id LIMIT 1;
  IF v_w_091 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'warm','warm','adjective','گرم',49,'{"type":"adjective"}','[{"text":"klein","translation":"کوچک"},{"text":"teuer","translation":"گران"},{"text":"dunkel","translation":"تاریک"},{"text":"ruhig","translation":"آرام"},{"text":"sicher","translation":"مطمئن"}]','Die Heizung wird morgen repariert','بخاری فردا تعمیر می شه',NULL,NULL,'{"cefr":"B1","introducedInSeries":94}');
    SET v_w_091=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_092 FROM words WHERE course_id=v_course AND lemma='Schlafzimmer' AND part_of_speech='noun' AND translation='اتاق خواب' ORDER BY id LIMIT 1;
  IF v_w_092 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Schlafzimmer | noun'; END IF;
  SELECT id INTO v_w_093 FROM words WHERE course_id=v_course AND lemma='einstellen' AND part_of_speech='verb' AND translation='تنظیم کردن' ORDER BY id LIMIT 1;
  IF v_w_093 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'einstellen','einstellen','verb','تنظیم کردن',49,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"kommen","translation":"آمدن"},{"text":"sehen","translation":"دیدن"},{"text":"bleiben","translation":"ماندن"},{"text":"schreiben","translation":"نوشتن"}]','Die Heizung wird morgen repariert','بخاری فردا تعمیر می شه',NULL,NULL,'{"cefr":"B1","introducedInSeries":94}');
    SET v_w_093=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_094 FROM words WHERE course_id=v_course AND lemma='können' AND part_of_speech='verb' AND translation='توانستن / بتوان' ORDER BY id LIMIT 1;
  IF v_w_094 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: können | verb'; END IF;
  SELECT id INTO v_w_095 FROM words WHERE course_id=v_course AND lemma='normal' AND part_of_speech='adverb' AND translation='عادی' ORDER BY id LIMIT 1;
  IF v_w_095 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'normal','normal','adverb','عادی',49,'{"type":"adverb"}','[{"text":"gestern","translation":"دیروز"},{"text":"dort","translation":"آنجا"},{"text":"langsam","translation":"آهسته"},{"text":"selten","translation":"به‌ندرت"},{"text":"später","translation":"بعداً"}]','Die Heizung wird morgen repariert','بخاری فردا تعمیر می شه',NULL,NULL,'{"cefr":"B1","introducedInSeries":94}');
    SET v_w_095=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_096 FROM words WHERE course_id=v_course AND lemma='heizen' AND part_of_speech='verb' AND translation='گرم کردن' ORDER BY id LIMIT 1;
  IF v_w_096 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'heizen','heizen','verb','گرم کردن',49,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"kommen","translation":"آمدن"},{"text":"sehen","translation":"دیدن"},{"text":"bleiben","translation":"ماندن"},{"text":"schreiben","translation":"نوشتن"}]','Die Heizung wird morgen repariert','بخاری فردا تعمیر می شه',NULL,NULL,'{"cefr":"B1","introducedInSeries":94}');
    SET v_w_096=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_097 FROM words WHERE course_id=v_course AND lemma='Glück' AND part_of_speech='noun' AND translation='خوش‌شانسی' ORDER BY id LIMIT 1;
  IF v_w_097 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Glück','Glück','noun','خوش‌شانسی',49,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Kaffee","translation":"قهوه"},{"text":"Zug","translation":"قطار"}]','Die Heizung wird morgen repariert','بخاری فردا تعمیر می شه',NULL,NULL,'{"cefr":"B1","introducedInSeries":94}');
    SET v_w_097=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_098 FROM words WHERE course_id=v_course AND lemma='Abend' AND part_of_speech='noun' AND translation='عصر / شب' ORDER BY id LIMIT 1;
  IF v_w_098 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Abend | noun'; END IF;
  SELECT id INTO v_w_099 FROM words WHERE course_id=v_course AND lemma='Die Heizung wird morgen repariert.' AND part_of_speech='phrase' AND translation='سیستم گرمایشی فردا تعمیر می‌شود.' ORDER BY id LIMIT 1;
  IF v_w_099 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Die Heizung wird morgen repariert.','Die Heizung wird morgen repariert.','phrase','سیستم گرمایشی فردا تعمیر می‌شود.',49,'{"type":"phrase"}','[{"text":"Guten Morgen.","translation":"صبح بخیر."},{"text":"Wie geht es dir?","translation":"حالت چطور است؟"},{"text":"Bis später.","translation":"تا بعد."},{"text":"Ich weiß es nicht.","translation":"نمی‌دانم."},{"text":"Das ist eine gute Idee.","translation":"این فکر خوبی است."}]','Die Heizung wird morgen repariert','بخاری فردا تعمیر می شه',NULL,NULL,'{"cefr":"B1","introducedInSeries":94,"wordAudioEligible":false,"wordAudioEligibilityReason":"sentence_phrase"}');
    SET v_w_099=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_100 FROM words WHERE course_id=v_course AND lemma='Danach wird das Wasser wieder eingeschaltet.' AND part_of_speech='phrase' AND translation='بعد از آن آب دوباره وصل می‌شود.' ORDER BY id LIMIT 1;
  IF v_w_100 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Danach wird das Wasser wieder eingeschaltet.','Danach wird das Wasser wieder eingeschaltet.','phrase','بعد از آن آب دوباره وصل می‌شود.',49,'{"type":"phrase"}','[{"text":"Guten Morgen.","translation":"صبح بخیر."},{"text":"Wie geht es dir?","translation":"حالت چطور است؟"},{"text":"Bis später.","translation":"تا بعد."},{"text":"Ich weiß es nicht.","translation":"نمی‌دانم."},{"text":"Das ist eine gute Idee.","translation":"این فکر خوبی است."}]','Die Heizung wird morgen repariert','بخاری فردا تعمیر می شه',NULL,NULL,'{"cefr":"B1","introducedInSeries":94,"wordAudioEligible":false,"wordAudioEligibilityReason":"sentence_phrase"}');
    SET v_w_100=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_101 FROM words WHERE course_id=v_course AND lemma='Falls sich etwas ändert, werden wir sofort informiert.' AND part_of_speech='phrase' AND translation='اگر چیزی تغییر کند، فوراً به ما اطلاع داده می‌شود.' ORDER BY id LIMIT 1;
  IF v_w_101 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Falls sich etwas ändert, werden wir sofort informiert.','Falls sich etwas ändert, werden wir sofort informiert.','phrase','اگر چیزی تغییر کند، فوراً به ما اطلاع داده می‌شود.',49,'{"type":"phrase"}','[{"text":"Guten Morgen.","translation":"صبح بخیر."},{"text":"Wie geht es dir?","translation":"حالت چطور است؟"},{"text":"Bis später.","translation":"تا بعد."},{"text":"Ich weiß es nicht.","translation":"نمی‌دانم."},{"text":"Das ist eine gute Idee.","translation":"این فکر خوبی است."}]','Die Heizung wird morgen repariert','بخاری فردا تعمیر می شه',NULL,NULL,'{"cefr":"B1","introducedInSeries":94,"wordAudioEligible":false,"wordAudioEligibilityReason":"sentence_phrase"}');
    SET v_w_101=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_102 FROM words WHERE course_id=v_course AND lemma='Alle Heizkörper werden jetzt gleichmäßig warm.' AND part_of_speech='phrase' AND translation='حالا همهٔ رادیاتورها به‌طور یکنواخت گرم می‌شوند.' ORDER BY id LIMIT 1;
  IF v_w_102 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Alle Heizkörper werden jetzt gleichmäßig warm.','Alle Heizkörper werden jetzt gleichmäßig warm.','phrase','حالا همهٔ رادیاتورها به‌طور یکنواخت گرم می‌شوند.',49,'{"type":"phrase"}','[{"text":"Guten Morgen.","translation":"صبح بخیر."},{"text":"Wie geht es dir?","translation":"حالت چطور است؟"},{"text":"Bis später.","translation":"تا بعد."},{"text":"Ich weiß es nicht.","translation":"نمی‌دانم."},{"text":"Das ist eine gute Idee.","translation":"این فکر خوبی است."}]','Die Heizung wird morgen repariert','بخاری فردا تعمیر می شه',NULL,NULL,'{"cefr":"B1","introducedInSeries":94,"wordAudioEligible":false,"wordAudioEligibilityReason":"sentence_phrase"}');
    SET v_w_102=LAST_INSERT_ID();
  END IF;
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_jonas,v_c_anna,'Die Mitteilung im Flur','اطلاعیه در راهرو','Anna und Jonas lesen die Ankündigung zur Reparatur der Heizung.','آنا و یوناس اطلاعیهٔ تعمیر سیستم گرمایشی را می‌خوانند.','story','anna-jonas-b1-neighborhood',13,49,165,1,'validated','{"relationship":"couple","context":"heating-repair","cefr":"B1","storyArc":"announce-plan-coordinate-check"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_jonas,1,'character','Im Flur hängt eine neue Mitteilung.','یک اطلاعیهٔ جدید در راهرو نصب شده است.',49,NULL,NULL,NULL,NULL,'[{"surface":"Im","lemma":"in","translation":"در / داخل","partOfSpeech":"preposition","form":"dative_masculine_contraction"},{"surface":"Flur","lemma":"Flur","translation":"راهرو","partOfSpeech":"noun"},{"surface":"hängt","lemma":"hängen","translation":"آویزان بودن / نصب بودن","partOfSpeech":"verb","form":"present_3sg"},{"surface":"eine","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","form":"nominative_feminine"},{"surface":"neue","lemma":"neu","translation":"جدید / تازه","partOfSpeech":"adjective","form":"nominative_feminine"},{"surface":"Mitteilung","lemma":"Mitteilung","translation":"اطلاعیه","partOfSpeech":"noun","suffix":"."}]','Vorgangspassiv im Präsens','در مجهول فرایندی زمان حال از werden و قسمت سوم فعل استفاده می‌شود.','{"focus":"present_process_passive","pattern":"werden + Partizip II"}','{"cefr":"B1","course":"de-fa","series":94}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,2,'learner','Die Heizung wird morgen repariert.','سیستم گرمایشی فردا تعمیر می‌شود.',49,NULL,NULL,'die heizung wird morgen repariert',NULL,'[{"surface":"Die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"nominative_feminine"},{"surface":"Heizung","lemma":"Heizung","translation":"سیستم گرمایشی / شوفاژ","partOfSpeech":"noun"},{"surface":"wird","lemma":"werden","translation":"شدن / خواهد","partOfSpeech":"verb","form":"present_3sg"},{"surface":"morgen","lemma":"morgen","translation":"فردا","partOfSpeech":"adverb"},{"surface":"repariert","lemma":"reparieren","translation":"تعمیر کردن","partOfSpeech":"verb","form":"participle_II","suffix":"."}]','Vorgangspassiv im Präsens','در مجهول فرایندی زمان حال از werden و قسمت سوم فعل استفاده می‌شود.','{"focus":"present_process_passive","pattern":"werden + Partizip II"}','{"cefr":"B1","course":"de-fa","series":94}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_jonas,3,'character','Weißt du, wann die Arbeiten beginnen?','می‌دانی کارها چه زمانی شروع می‌شوند؟',49,NULL,NULL,NULL,NULL,'[{"surface":"Weißt","lemma":"wissen","translation":"دانستن","partOfSpeech":"verb","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun","suffix":","},{"surface":"wann","lemma":"wann","translation":"کی / چه زمانی","partOfSpeech":"adverb"},{"surface":"die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"nominative_plural"},{"surface":"Arbeiten","lemma":"Arbeit","translation":"کار","partOfSpeech":"noun","form":"nominative_plural"},{"surface":"beginnen","lemma":"beginnen","translation":"شروع شدن / آغاز کردن","partOfSpeech":"verb","form":"infinitive","suffix":"?"}]','Vorgangspassiv im Präsens','در مجهول فرایندی زمان حال از werden و قسمت سوم فعل استفاده می‌شود.','{"focus":"present_process_passive","pattern":"werden + Partizip II"}','{"cefr":"B1","course":"de-fa","series":94}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,4,'learner','Laut Aushang wird um acht Uhr angefangen.','طبق اطلاعیه، کار ساعت هشت شروع می‌شود.',49,NULL,NULL,'laut aushang wird um acht uhr angefangen',NULL,'[{"surface":"Laut","lemma":"laut","translation":"طبق / بنا بر","partOfSpeech":"preposition"},{"surface":"Aushang","lemma":"Aushang","translation":"اطلاعیهٔ نصب‌شده","partOfSpeech":"noun"},{"surface":"wird","lemma":"werden","translation":"شدن / خواهد","partOfSpeech":"verb","form":"present_3sg"},{"surface":"um","lemma":"um","translation":"در ساعت / حوالی","partOfSpeech":"preposition"},{"surface":"acht","lemma":"acht","translation":"هشت","partOfSpeech":"number"},{"surface":"Uhr","lemma":"Uhr","translation":"ساعت","partOfSpeech":"noun"},{"surface":"angefangen","lemma":"anfangen","translation":"شروع کردن","partOfSpeech":"verb","form":"participle_II","suffix":"."}]','Vorgangspassiv im Präsens','در مجهول فرایندی زمان حال از werden و قسمت سوم فعل استفاده می‌شود.','{"focus":"present_process_passive","pattern":"werden + Partizip II"}','{"cefr":"B1","course":"de-fa","series":94}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_jonas,5,'character','Dann müssen wir früh aufstehen.','پس باید زود بیدار شویم.',49,NULL,NULL,NULL,NULL,'[{"surface":"Dann","lemma":"dann","translation":"بعد / سپس","partOfSpeech":"adverb"},{"surface":"müssen","lemma":"müssen","translation":"مجبور بودن / باید","partOfSpeech":"verb","form":"present_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"früh","lemma":"früh","translation":"زودتر","partOfSpeech":"adverb"},{"surface":"aufstehen","lemma":"aufstehen","translation":"از خواب بلند شدن","partOfSpeech":"verb","form":"infinitive","suffix":"."}]','Vorgangspassiv im Präsens','در مجهول فرایندی زمان حال از werden و قسمت سوم فعل استفاده می‌شود.','{"focus":"present_process_passive","pattern":"werden + Partizip II"}','{"cefr":"B1","course":"de-fa","series":94}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,6,'learner','Ich stelle vorher alles im Heizungsraum frei.','من از قبل همه‌چیز را در اتاق تأسیسات کنار می‌گذارم.',49,NULL,NULL,'ich stelle vorher alles im heizungsraum frei',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"stelle","lemma":"stellen","translation":"گذاشتن","partOfSpeech":"verb","form":"present_1sg"},{"surface":"vorher","lemma":"vorher","translation":"قبلش / پیش از آن","partOfSpeech":"adverb"},{"surface":"alles","lemma":"alles","translation":"همه چیز","partOfSpeech":"pronoun"},{"surface":"im","lemma":"in","translation":"در / داخل","partOfSpeech":"preposition","form":"dative_masculine_contraction"},{"surface":"Heizungsraum","lemma":"Heizungsraum","translation":"اتاق تأسیسات گرمایشی","partOfSpeech":"noun"},{"surface":"frei","lemma":"frei","translation":"خالی / آزاد","partOfSpeech":"adjective","suffix":"."}]','Vorgangspassiv im Präsens','در مجهول فرایندی زمان حال از werden و قسمت سوم فعل استفاده می‌شود.','{"focus":"present_process_passive","pattern":"werden + Partizip II"}','{"cefr":"B1","course":"de-fa","series":94}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_001,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_002,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_003,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_006,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_007,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_009,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_010,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_011,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_014,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_015,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_016,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_017,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_018,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_019,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_020,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_021,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_022,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_023,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_024,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_025,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_026,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_027,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_028,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_029,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_030,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_031,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_032,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_033,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_099,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_099,'عبارت کلیدی درس',NULL,49,NULL,'{"cefr":"B1","series":94}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',2,NULL,v_w_008,'واژهٔ کلیدی درس',NULL,49,NULL,'{"cefr":"B1","series":94}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',3,v_t_1,NULL,'به جملهٔ یوناس گوش کن',NULL,49,NULL,'{"cefr":"B1","series":94}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',4,v_t_2,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,49,NULL,'{"cefr":"B1","series":94}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',5,v_t_5,NULL,'به جملهٔ بعدی گوش کن',NULL,49,NULL,'{"cefr":"B1","series":94}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',6,v_t_6,NULL,'پاسخ را با صدای بلند بگو',NULL,49,NULL,'{"cefr":"B1","series":94}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',7,NULL,v_w_008,'معنی واژهٔ کلیدی را انتخاب کن',NULL,49,'{"mode":"word_translation","question":"Heizung در این درس چه معنی دارد؟","choices":["سیستم گرمایشی / شوفاژ","سفر سریع","غذای گرم"],"correctIndex":0}','{"cefr":"B1","series":94}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و پاسخ بده',NULL,49,'{"source":"lesson_story","question":"طبق اطلاعیه چه چیزی فردا تعمیر می‌شود؟","choices":["سیستم گرمایشی","آسانسور","پنجره‌ها"],"correctIndex":0}','{"cefr":"B1","series":94}');
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_jonas,v_c_anna,'Wasser und Ventile','آب و شیرهای گرمایشی','Das Paar plant den Vormittag, während Rohre und Ventile geprüft werden.','این زوج برای زمانی که لوله‌ها و شیرها بررسی می‌شوند برنامه‌ریزی می‌کنند.','story','anna-jonas-b1-neighborhood',14,49,165,2,'validated','{"relationship":"couple","context":"heating-repair","cefr":"B1","storyArc":"announce-plan-coordinate-check"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_jonas,1,'character','Werden auch die Rohre im Keller geprüft?','آیا لوله‌های زیرزمین هم بررسی می‌شوند؟',49,NULL,NULL,NULL,NULL,'[{"surface":"Werden","lemma":"werden","translation":"شدن / خواهد","partOfSpeech":"verb","form":"present_3pl"},{"surface":"auch","lemma":"auch","translation":"هم / همچنین","partOfSpeech":"adverb"},{"surface":"die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"nominative_plural"},{"surface":"Rohre","lemma":"Rohr","translation":"لوله","partOfSpeech":"noun","form":"nominative_plural"},{"surface":"im","lemma":"in","translation":"در / داخل","partOfSpeech":"preposition","form":"dative_masculine_contraction"},{"surface":"Keller","lemma":"Keller","translation":"زیرزمین","partOfSpeech":"noun"},{"surface":"geprüft","lemma":"prüfen","translation":"بررسی کردن","partOfSpeech":"verb","form":"participle_II","suffix":"?"}]','Vorgangspassiv im Präsens','در مجهول فرایندی زمان حال از werden و قسمت سوم فعل استفاده می‌شود.','{"focus":"present_process_passive","pattern":"werden + Partizip II"}','{"cefr":"B1","course":"de-fa","series":94}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,2,'learner','Ja, zuerst werden die alten Ventile ausgetauscht.','بله، اول شیرهای قدیمی تعویض می‌شوند.',49,NULL,NULL,'ja zuerst werden die alten ventile ausgetauscht',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"zuerst","lemma":"zuerst","translation":"اول / ابتدا","partOfSpeech":"adverb"},{"surface":"werden","lemma":"werden","translation":"شدن / خواهد","partOfSpeech":"verb","form":"present_3pl"},{"surface":"die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"nominative_plural"},{"surface":"alten","lemma":"alt","translation":"پیر / دارای سن","partOfSpeech":"adjective","form":"nominative_plural"},{"surface":"Ventile","lemma":"Ventil","translation":"شیر / دریچه","partOfSpeech":"noun","form":"nominative_plural"},{"surface":"ausgetauscht","lemma":"austauschen","translation":"تعویض کردن","partOfSpeech":"verb","form":"participle_II","suffix":"."}]','Vorgangspassiv im Präsens','در مجهول فرایندی زمان حال از werden و قسمت سوم فعل استفاده می‌شود.','{"focus":"present_process_passive","pattern":"werden + Partizip II"}','{"cefr":"B1","course":"de-fa","series":94}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_jonas,3,'character','Und wie lange wird das Wasser abgestellt?','و آب چه مدت قطع می‌شود؟',49,NULL,NULL,NULL,NULL,'[{"surface":"Und","lemma":"und","translation":"و","partOfSpeech":"conjunction"},{"surface":"wie","lemma":"wie","translation":"چطور / چگونه","partOfSpeech":"adverb"},{"surface":"lange","lemma":"lang","translation":"طولانی / بلند","partOfSpeech":"adjective","form":"adverbial"},{"surface":"wird","lemma":"werden","translation":"شدن / خواهد","partOfSpeech":"verb","form":"present_3sg"},{"surface":"das","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"nominative_neuter"},{"surface":"Wasser","lemma":"Wasser","translation":"آب","partOfSpeech":"noun"},{"surface":"abgestellt","lemma":"abstellen","translation":"قطع کردن","partOfSpeech":"verb","form":"participle_II","suffix":"?"}]','Vorgangspassiv im Präsens','در مجهول فرایندی زمان حال از werden و قسمت سوم فعل استفاده می‌شود.','{"focus":"present_process_passive","pattern":"werden + Partizip II"}','{"cefr":"B1","course":"de-fa","series":94}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,4,'learner','Es wird ungefähr zwei Stunden abgestellt.','حدود دو ساعت قطع می‌شود.',49,NULL,NULL,'es wird ungefähr zwei stunden abgestellt',NULL,'[{"surface":"Es","lemma":"es","translation":"آن / این","partOfSpeech":"pronoun"},{"surface":"wird","lemma":"werden","translation":"شدن / خواهد","partOfSpeech":"verb","form":"present_3sg"},{"surface":"ungefähr","lemma":"ungefähr","translation":"حدود / تقریباً","partOfSpeech":"adverb"},{"surface":"zwei","lemma":"zwei","translation":"دو","partOfSpeech":"number"},{"surface":"Stunden","lemma":"Stunde","translation":"ساعت / یک ساعت","partOfSpeech":"noun","form":"accusative_plural"},{"surface":"abgestellt","lemma":"abstellen","translation":"قطع کردن","partOfSpeech":"verb","form":"participle_II","suffix":"."}]','Vorgangspassiv im Präsens','در مجهول فرایندی زمان حال از werden و قسمت سوم فعل استفاده می‌شود.','{"focus":"present_process_passive","pattern":"werden + Partizip II"}','{"cefr":"B1","course":"de-fa","series":94}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_jonas,5,'character','Dann füllen wir vorher ein paar Flaschen.','پس از قبل چند بطری را پر می‌کنیم.',49,NULL,NULL,NULL,NULL,'[{"surface":"Dann","lemma":"dann","translation":"بعد / سپس","partOfSpeech":"adverb"},{"surface":"füllen","lemma":"füllen","translation":"پر کردن","partOfSpeech":"verb","form":"present_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"vorher","lemma":"vorher","translation":"قبلش / پیش از آن","partOfSpeech":"adverb"},{"surface":"ein","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","form":"accusative_neuter"},{"surface":"paar","lemma":"paar","translation":"چند","partOfSpeech":"determiner"},{"surface":"Flaschen","lemma":"Flasche","translation":"بطری","partOfSpeech":"noun","form":"accusative_plural","suffix":"."}]','Vorgangspassiv im Präsens','در مجهول فرایندی زمان حال از werden و قسمت سوم فعل استفاده می‌شود.','{"focus":"present_process_passive","pattern":"werden + Partizip II"}','{"cefr":"B1","course":"de-fa","series":94}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,6,'learner','Danach wird das Wasser wieder eingeschaltet.','بعد از آن آب دوباره وصل می‌شود.',49,NULL,NULL,'danach wird das wasser wieder eingeschaltet',NULL,'[{"surface":"Danach","lemma":"danach","translation":"بعد از آن / بعدش","partOfSpeech":"adverb"},{"surface":"wird","lemma":"werden","translation":"شدن / خواهد","partOfSpeech":"verb","form":"present_3sg"},{"surface":"das","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"nominative_neuter"},{"surface":"Wasser","lemma":"Wasser","translation":"آب","partOfSpeech":"noun"},{"surface":"wieder","lemma":"wieder","translation":"دوباره","partOfSpeech":"adverb"},{"surface":"eingeschaltet","lemma":"einschalten","translation":"وصل / روشن کردن","partOfSpeech":"verb","form":"participle_II","suffix":"."}]','Vorgangspassiv im Präsens','در مجهول فرایندی زمان حال از werden و قسمت سوم فعل استفاده می‌شود.','{"focus":"present_process_passive","pattern":"werden + Partizip II"}','{"cefr":"B1","course":"de-fa","series":94}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_009,'review',0,5);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_034,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_007,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_035,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_036,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_037,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_038,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_039,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_040,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_041,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_042,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_043,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_044,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_045,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_046,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_047,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_048,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_049,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_050,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_051,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_023,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_052,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_025,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_030,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_053,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_054,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_055,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_056,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_057,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_100,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_100,'عبارت کلیدی درس',NULL,49,NULL,'{"cefr":"B1","series":94}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',2,NULL,v_w_041,'واژهٔ کلیدی درس',NULL,49,NULL,'{"cefr":"B1","series":94}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',3,v_t_7,NULL,'به جملهٔ یوناس گوش کن',NULL,49,NULL,'{"cefr":"B1","series":94}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',4,v_t_8,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,49,NULL,'{"cefr":"B1","series":94}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',5,v_t_11,NULL,'به جملهٔ بعدی گوش کن',NULL,49,NULL,'{"cefr":"B1","series":94}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',6,v_t_12,NULL,'پاسخ را با صدای بلند بگو',NULL,49,NULL,'{"cefr":"B1","series":94}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',7,NULL,v_w_041,'معنی واژهٔ کلیدی را انتخاب کن',NULL,49,'{"mode":"word_translation","question":"Ventil در این درس چه معنی دارد؟","choices":["شیر / دریچه","سفر سریع","غذای گرم"],"correctIndex":0}','{"cefr":"B1","series":94}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و پاسخ بده',NULL,49,'{"source":"lesson_story","question":"آب تقریباً چه مدت قطع می‌شود؟","choices":["دو ساعت","تمام روز","ده دقیقه"],"correctIndex":0}','{"cefr":"B1","series":94}');
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_jonas,v_c_anna,'Der Termin mit dem Handwerker','قرار با تعمیرکار','Anna organisiert den Zugang zur Wohnung und wartet auf die Bestätigung.','آنا ورود به خانه را هماهنگ می‌کند و منتظر تأیید می‌ماند.','story','anna-jonas-b1-neighborhood',15,49,165,3,'validated','{"relationship":"couple","context":"heating-repair","cefr":"B1","storyArc":"announce-plan-coordinate-check"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_jonas,1,'character','Der Handwerker braucht Zugang zu unserer Wohnung.','تعمیرکار باید به خانهٔ ما دسترسی داشته باشد.',49,NULL,NULL,NULL,NULL,'[{"surface":"Der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"nominative_masculine"},{"surface":"Handwerker","lemma":"Handwerker","translation":"تعمیرکار","partOfSpeech":"noun"},{"surface":"braucht","lemma":"brauchen","translation":"نیاز داشتن / لازم داشتن","partOfSpeech":"verb","form":"present_3sg"},{"surface":"Zugang","lemma":"Zugang","translation":"دسترسی","partOfSpeech":"noun"},{"surface":"zu","lemma":"zu","translation":"به / به سمت","partOfSpeech":"preposition"},{"surface":"unserer","lemma":"unser","translation":"مال ما / ما","partOfSpeech":"determiner","form":"dative_feminine"},{"surface":"Wohnung","lemma":"Wohnung","translation":"خانه / آپارتمان","partOfSpeech":"noun","suffix":"."}]','Vorgangspassiv im Präsens','در مجهول فرایندی زمان حال از werden و قسمت سوم فعل استفاده می‌شود.','{"focus":"present_process_passive","pattern":"werden + Partizip II"}','{"cefr":"B1","course":"de-fa","series":94}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,2,'learner','Ich werde morgen Vormittag zu Hause sein.','من فردا صبح در خانه خواهم بود.',49,NULL,NULL,'ich werde morgen vormittag zu hause sein',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"werde","lemma":"werden","translation":"شدن / خواهد","partOfSpeech":"verb","form":"present_1sg"},{"surface":"morgen","lemma":"morgen","translation":"فردا","partOfSpeech":"adverb"},{"surface":"Vormittag","lemma":"Vormittag","translation":"صبح / پیش از ظهر","partOfSpeech":"noun"},{"surface":"zu","lemma":"zu","translation":"به / به سمت","partOfSpeech":"preposition"},{"surface":"Hause","lemma":"Haus","translation":"خانه","partOfSpeech":"noun","form":"dative"},{"surface":"sein","lemma":"sein","translation":"بودن","partOfSpeech":"verb","form":"infinitive","suffix":"."}]','Vorgangspassiv im Präsens','در مجهول فرایندی زمان حال از werden و قسمت سوم فعل استفاده می‌شود.','{"focus":"present_process_passive","pattern":"werden + Partizip II"}','{"cefr":"B1","course":"de-fa","series":94}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_jonas,3,'character','Wird der Termin schriftlich bestätigt?','آیا قرار به‌صورت کتبی تأیید می‌شود؟',49,NULL,NULL,NULL,NULL,'[{"surface":"Wird","lemma":"werden","translation":"شدن / خواهد","partOfSpeech":"verb","form":"present_3sg"},{"surface":"der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"nominative_masculine"},{"surface":"Termin","lemma":"Termin","translation":"قرار / وقت","partOfSpeech":"noun"},{"surface":"schriftlich","lemma":"schriftlich","translation":"کتبی","partOfSpeech":"adjective"},{"surface":"bestätigt","lemma":"bestätigen","translation":"تأیید کردن","partOfSpeech":"verb","form":"participle_II","suffix":"?"}]','Vorgangspassiv im Präsens','در مجهول فرایندی زمان حال از werden و قسمت سوم فعل استفاده می‌شود.','{"focus":"present_process_passive","pattern":"werden + Partizip II"}','{"cefr":"B1","course":"de-fa","series":94}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,4,'learner','Ja, die Bestätigung wird heute per E-Mail geschickt.','بله، تأیید امروز با ایمیل فرستاده می‌شود.',49,NULL,NULL,'ja die bestätigung wird heute per e-mail geschickt',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"nominative_plural"},{"surface":"Bestätigung","lemma":"Bestätigung","translation":"تأیید","partOfSpeech":"noun"},{"surface":"wird","lemma":"werden","translation":"شدن / خواهد","partOfSpeech":"verb","form":"present_3sg"},{"surface":"heute","lemma":"heute","translation":"امروز","partOfSpeech":"adverb"},{"surface":"per","lemma":"per","translation":"از طریق","partOfSpeech":"preposition"},{"surface":"E-Mail","lemma":"E-Mail","translation":"ایمیل","partOfSpeech":"noun"},{"surface":"geschickt","lemma":"schicken","translation":"فرستادن","partOfSpeech":"verb","form":"participle_II","suffix":"."}]','Vorgangspassiv im Präsens','در مجهول فرایندی زمان حال از werden و قسمت سوم فعل استفاده می‌شود.','{"focus":"present_process_passive","pattern":"werden + Partizip II"}','{"cefr":"B1","course":"de-fa","series":94}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_jonas,5,'character','Gut, dann verpassen wir nichts.','خوب است، پس چیزی را از دست نمی‌دهیم.',49,NULL,NULL,NULL,NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","suffix":","},{"surface":"dann","lemma":"dann","translation":"بعد / سپس","partOfSpeech":"adverb"},{"surface":"verpassen","lemma":"verpassen","translation":"از دست دادن","partOfSpeech":"verb","form":"present_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"nichts","lemma":"nichts","translation":"هیچ چیز","partOfSpeech":"pronoun","suffix":"."}]','Vorgangspassiv im Präsens','در مجهول فرایندی زمان حال از werden و قسمت سوم فعل استفاده می‌شود.','{"focus":"present_process_passive","pattern":"werden + Partizip II"}','{"cefr":"B1","course":"de-fa","series":94}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,6,'learner','Falls sich etwas ändert, werden wir sofort informiert.','اگر چیزی تغییر کند، فوراً به ما اطلاع داده می‌شود.',49,NULL,NULL,'falls sich etwas ändert werden wir sofort informiert',NULL,'[{"surface":"Falls","lemma":"falls","translation":"در صورتی که / اگر","partOfSpeech":"conjunction"},{"surface":"sich","lemma":"sich","translation":"خود / خودش","partOfSpeech":"pronoun"},{"surface":"etwas","lemma":"etwas","translation":"چیزی / یک چیزی","partOfSpeech":"pronoun"},{"surface":"ändert","lemma":"ändern","translation":"تغییر دادن","partOfSpeech":"verb","form":"present_3sg","suffix":","},{"surface":"werden","lemma":"werden","translation":"شدن / خواهد","partOfSpeech":"verb","form":"present_3pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"sofort","lemma":"sofort","translation":"فورا / همین الان","partOfSpeech":"adverb"},{"surface":"informiert","lemma":"informieren","translation":"اطلاع دادن","partOfSpeech":"verb","form":"participle_II","suffix":"."}]','Vorgangspassiv im Präsens','در مجهول فرایندی زمان حال از werden و قسمت سوم فعل استفاده می‌شود.','{"focus":"present_process_passive","pattern":"werden + Partizip II"}','{"cefr":"B1","course":"de-fa","series":94}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_007,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_058,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_059,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_060,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_061,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_062,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_063,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_028,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_009,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_010,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_064,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_065,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_066,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_067,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_068,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_069,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_038,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_070,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_071,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_072,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_073,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_074,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_075,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_023,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_076,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_025,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_077,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_078,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_079,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_080,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_081,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_082,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_083,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_101,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_101,'عبارت کلیدی درس',NULL,49,NULL,'{"cefr":"B1","series":94}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',2,NULL,v_w_070,'واژهٔ کلیدی درس',NULL,49,NULL,'{"cefr":"B1","series":94}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',3,v_t_13,NULL,'به جملهٔ یوناس گوش کن',NULL,49,NULL,'{"cefr":"B1","series":94}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',4,v_t_14,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,49,NULL,'{"cefr":"B1","series":94}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',5,v_t_17,NULL,'به جملهٔ بعدی گوش کن',NULL,49,NULL,'{"cefr":"B1","series":94}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',6,v_t_18,NULL,'پاسخ را با صدای بلند بگو',NULL,49,NULL,'{"cefr":"B1","series":94}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',7,NULL,v_w_070,'معنی واژهٔ کلیدی را انتخاب کن',NULL,49,'{"mode":"word_translation","question":"Bestätigung در این درس چه معنی دارد؟","choices":["تأیید","سفر سریع","غذای گرم"],"correctIndex":0}','{"cefr":"B1","series":94}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و پاسخ بده',NULL,49,'{"source":"lesson_story","question":"تأیید قرار چگونه برای آنا فرستاده می‌شود؟","choices":["با ایمیل","با نامهٔ کاغذی","با تماس همسایه"],"correctIndex":0}','{"cefr":"B1","series":94}');
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_jonas,v_c_anna,'Nach der Reparatur','بعد از تعمیر','Nach der Reparatur prüfen Anna und Jonas, ob die Heizung wieder gut funktioniert.','بعد از تعمیر، آنا و یوناس بررسی می‌کنند که سیستم گرمایشی دوباره درست کار می‌کند یا نه.','story','anna-jonas-b1-neighborhood',16,49,165,4,'validated','{"relationship":"couple","context":"heating-repair","cefr":"B1","storyArc":"announce-plan-coordinate-check"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_jonas,1,'character','Die Reparatur ist schneller fertig geworden.','تعمیر سریع‌تر تمام شده است.',49,NULL,NULL,NULL,NULL,'[{"surface":"Die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"nominative_feminine"},{"surface":"Reparatur","lemma":"Reparatur","translation":"تعمیر","partOfSpeech":"noun"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","form":"present_3sg"},{"surface":"schneller","lemma":"schnell","translation":"سریع","partOfSpeech":"adjective","form":"comparative"},{"surface":"fertig","lemma":"fertig","translation":"تمام / آماده","partOfSpeech":"adjective"},{"surface":"geworden","lemma":"werden","translation":"شدن / خواهد","partOfSpeech":"verb","form":"participle_II","suffix":"."}]','Vorgangspassiv im Präsens','در مجهول فرایندی زمان حال از werden و قسمت سوم فعل استفاده می‌شود.','{"focus":"present_process_passive","pattern":"werden + Partizip II"}','{"cefr":"B1","course":"de-fa","series":94}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,2,'learner','Alle Heizkörper werden jetzt gleichmäßig warm.','حالا همهٔ رادیاتورها به‌طور یکنواخت گرم می‌شوند.',49,NULL,NULL,'alle heizkörper werden jetzt gleichmäßig warm',NULL,'[{"surface":"Alle","lemma":"alle","translation":"همه","partOfSpeech":"pronoun"},{"surface":"Heizkörper","lemma":"Heizkörper","translation":"رادیاتور","partOfSpeech":"noun"},{"surface":"werden","lemma":"werden","translation":"شدن / خواهد","partOfSpeech":"verb","form":"present_3pl"},{"surface":"jetzt","lemma":"jetzt","translation":"حالا / اکنون","partOfSpeech":"adverb"},{"surface":"gleichmäßig","lemma":"gleichmäßig","translation":"یکنواخت","partOfSpeech":"adverb"},{"surface":"warm","lemma":"warm","translation":"گرم","partOfSpeech":"adjective","suffix":"."}]','Vorgangspassiv im Präsens','در مجهول فرایندی زمان حال از werden و قسمت سوم فعل استفاده می‌شود.','{"focus":"present_process_passive","pattern":"werden + Partizip II"}','{"cefr":"B1","course":"de-fa","series":94}');
  SET v_t_20=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_jonas,3,'character','Wurde auch das Ventil im Schlafzimmer repariert?','آیا شیر اتاق خواب هم تعمیر شد؟',49,NULL,NULL,NULL,NULL,'[{"surface":"Wurde","lemma":"werden","translation":"شدن / خواهد","partOfSpeech":"verb","form":"preterite_3sg"},{"surface":"auch","lemma":"auch","translation":"هم / همچنین","partOfSpeech":"adverb"},{"surface":"das","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"nominative_neuter"},{"surface":"Ventil","lemma":"Ventil","translation":"شیر / دریچه","partOfSpeech":"noun"},{"surface":"im","lemma":"in","translation":"در / داخل","partOfSpeech":"preposition","form":"dative_masculine_contraction"},{"surface":"Schlafzimmer","lemma":"Schlafzimmer","translation":"اتاق خواب","partOfSpeech":"noun"},{"surface":"repariert","lemma":"reparieren","translation":"تعمیر کردن","partOfSpeech":"verb","form":"participle_II","suffix":"?"}]','Vorgangspassiv im Präsens','در مجهول فرایندی زمان حال از werden و قسمت سوم فعل استفاده می‌شود.','{"focus":"present_process_passive","pattern":"werden + Partizip II"}','{"cefr":"B1","course":"de-fa","series":94}');
  SET v_t_21=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,4,'learner','Ja, es wurde geprüft und neu eingestellt.','بله، بررسی و دوباره تنظیم شد.',49,NULL,NULL,'ja es wurde geprüft und neu eingestellt',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"es","lemma":"es","translation":"آن / این","partOfSpeech":"pronoun"},{"surface":"wurde","lemma":"werden","translation":"شدن / خواهد","partOfSpeech":"verb","form":"preterite_3sg"},{"surface":"geprüft","lemma":"prüfen","translation":"بررسی کردن","partOfSpeech":"verb","form":"participle_II"},{"surface":"und","lemma":"und","translation":"و","partOfSpeech":"conjunction"},{"surface":"neu","lemma":"neu","translation":"جدید / تازه","partOfSpeech":"adjective"},{"surface":"eingestellt","lemma":"einstellen","translation":"تنظیم کردن","partOfSpeech":"verb","form":"participle_II","suffix":"."}]','Vorgangspassiv im Präsens','در مجهول فرایندی زمان حال از werden و قسمت سوم فعل استفاده می‌شود.','{"focus":"present_process_passive","pattern":"werden + Partizip II"}','{"cefr":"B1","course":"de-fa","series":94}');
  SET v_t_22=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_jonas,5,'character','Dann können wir wieder normal heizen.','پس دوباره می‌توانیم به‌طور عادی خانه را گرم کنیم.',49,NULL,NULL,NULL,NULL,'[{"surface":"Dann","lemma":"dann","translation":"بعد / سپس","partOfSpeech":"adverb"},{"surface":"können","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","form":"present_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"wieder","lemma":"wieder","translation":"دوباره","partOfSpeech":"adverb"},{"surface":"normal","lemma":"normal","translation":"عادی","partOfSpeech":"adverb"},{"surface":"heizen","lemma":"heizen","translation":"گرم کردن","partOfSpeech":"verb","form":"infinitive","suffix":"."}]','Vorgangspassiv im Präsens','در مجهول فرایندی زمان حال از werden و قسمت سوم فعل استفاده می‌شود.','{"focus":"present_process_passive","pattern":"werden + Partizip II"}','{"cefr":"B1","course":"de-fa","series":94}');
  SET v_t_23=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,6,'learner','Zum Glück ist die Wohnung heute Abend warm.','خوشبختانه خانه امشب گرم است.',49,NULL,NULL,'zum glück ist die wohnung heute abend warm',NULL,'[{"surface":"Zum","lemma":"zu","translation":"به / به سمت","partOfSpeech":"preposition","form":"dative_neuter_contraction"},{"surface":"Glück","lemma":"Glück","translation":"خوش‌شانسی","partOfSpeech":"noun"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","form":"present_3sg"},{"surface":"die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"nominative_plural"},{"surface":"Wohnung","lemma":"Wohnung","translation":"خانه / آپارتمان","partOfSpeech":"noun"},{"surface":"heute","lemma":"heute","translation":"امروز","partOfSpeech":"adverb"},{"surface":"Abend","lemma":"Abend","translation":"عصر / شب","partOfSpeech":"noun"},{"surface":"warm","lemma":"warm","translation":"گرم","partOfSpeech":"adjective","suffix":"."}]','Vorgangspassiv im Präsens','در مجهول فرایندی زمان حال از werden و قسمت سوم فعل استفاده می‌شود.','{"focus":"present_process_passive","pattern":"werden + Partizip II"}','{"cefr":"B1","course":"de-fa","series":94}');
  SET v_t_24=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_007,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_084,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_066,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_085,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_086,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_009,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_087,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_088,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_089,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_090,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_091,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_034,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_041,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_092,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_011,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_038,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_048,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_037,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_043,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_093,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_023,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_094,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_025,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_056,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_095,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_096,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_061,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_097,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_063,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_071,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_098,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_102,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',1,NULL,v_w_102,'عبارت کلیدی درس',NULL,49,NULL,'{"cefr":"B1","series":94}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',2,NULL,v_w_088,'واژهٔ کلیدی درس',NULL,49,NULL,'{"cefr":"B1","series":94}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_19,NULL,'به جملهٔ یوناس گوش کن',NULL,49,NULL,'{"cefr":"B1","series":94}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_20,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,49,NULL,'{"cefr":"B1","series":94}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_23,NULL,'به جملهٔ بعدی گوش کن',NULL,49,NULL,'{"cefr":"B1","series":94}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_24,NULL,'پاسخ را با صدای بلند بگو',NULL,49,NULL,'{"cefr":"B1","series":94}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',7,NULL,v_w_088,'معنی واژهٔ کلیدی را انتخاب کن',NULL,49,'{"mode":"word_translation","question":"Heizkörper در این درس چه معنی دارد؟","choices":["رادیاتور","سفر سریع","غذای گرم"],"correctIndex":0}','{"cefr":"B1","series":94}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و پاسخ بده',NULL,49,'{"source":"lesson_story","question":"بعد از تعمیر، رادیاتورها چه وضعی دارند؟","choices":["یکنواخت گرم می‌شوند","کاملاً سرد می‌مانند","صدای زیادی دارند"],"correctIndex":0}','{"cefr":"B1","series":94}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 094 requires exactly four lessons.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>24 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 094 requires exactly 24 turns.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR CHAR_LENGTH(TRIM(t.speech_target))=0);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every learner Turn needs speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities a JOIN lessons l ON l.id=a.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>32 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 094 requires exactly 32 activities.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id<>learner_character_id AND storyline_key='anna-jonas-b1-neighborhood' AND storyline_order BETWEEN 13 AND 16 AND status='validated';
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Character or storyline continuity failure.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) d;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_series_094_v9();
DROP PROCEDURE IF EXISTS import_nova_series_094_v9;

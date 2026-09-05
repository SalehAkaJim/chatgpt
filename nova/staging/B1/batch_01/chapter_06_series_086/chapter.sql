-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 086
-- B1 > Arbeit & Zusammenarbeit > Wir müssen das heute fertig machen
-- Requires canonical Nova v9.0 and QA-passed staged Series 081-085.
-- Uses the unchanged Nova v9.0 schema; contains no schema DDL.
-- ===============================================================
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_series_086_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_086_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_level BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_prior_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_anna BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_martin BIGINT UNSIGNED DEFAULT NULL;
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
  SELECT id INTO v_prior_module FROM modules WHERE level_id=v_level AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_prior_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 01 from Series 081 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE module_id=v_prior_module AND sort_order BETWEEN 1 AND 5 AND status IN ('validated','complete');
  IF v_count<>5 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 081-085 Chapters must be validated before Series 086.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons l JOIN chapters c ON c.id=l.chapter_id WHERE c.module_id=v_prior_module AND c.sort_order BETWEEN 1 AND 5 AND l.storyline_key='mia-sara-b1-decisions' AND l.storyline_order BETWEEN 1 AND 20;
  IF v_count<>20 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 081-085 storyline orders 1-20 are required.'; END IF;
  UPDATE modules SET status='complete' WHERE id=v_prior_module;

  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN
    INSERT INTO modules(level_id,title,title_translation,description,description_translation,emoji,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES(v_level,'Arbeit & Zusammenarbeit','کار و همکاری','Gemeinsam eine Arbeitsaufgabe planen, Probleme erklären und schrittweise eine Lösung finden.','یک کار را با هم برنامه ریزی کن، مشکلات را توضیح بده و قدم به قدم راه حل پیدا کن.','💼',44,46,2,'active','{"focus":"work-and-collaboration","grammarApproach":"context-first"}');
    SET v_module=LAST_INSERT_ID();
  END IF;

  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Wir müssen das heute fertig machen','باید امروز تمومش کنیم','Eine gemeinsame Aufgabe planen und notwendige Schritte bis zu einem Termin erledigen.','برای انجام یک کار مشترک تا موعد مشخص برنامه ریزی کن و قدم های لازم را پیش ببر.',NULL,44,44,1,'draft' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=1);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Kannst du mir erklären, wie das geht?','می تونی توضیح بدی چطور انجام می شه؟','Um eine verständliche Erklärung für einen Arbeitsablauf bitten.','برای یک روند کاری توضیح روشن بخواه.',NULL,44,45,2,'planned' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=2);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Ich glaube, dass wir mehr Zeit brauchen','فکر می کنم وقت بیشتری لازم داریم','Eine Einschätzung mit dass äußern und den Zeitbedarf begründen.','با dass نظرت را بیان کن و نیاز به زمان بیشتر را توضیح بده.',NULL,45,45,3,'planned' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=3);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Wenn du willst, helfe ich dir','اگه بخوای کمکت می کنم','Hilfe anbieten und eine Bedingung mit wenn formulieren.','پیشنهاد کمک بده و یک شرط را با wenn بیان کن.',NULL,45,46,4,'planned' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=4);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Wir haben das Problem gelöst','مشکل رو حل کردیم','Eine gelöste Aufgabe zusammenfassen und die Zusammenarbeit abschließen.','حل یک کار را جمع بندی کن و همکاری را به پایان برسان.',NULL,46,46,5,'planned' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=5);

  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 02 Chapter 01 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='Wir müssen das heute fertig machen' AND title_translation='باید امروز تمومش کنیم';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 086 canonical Chapter title mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 02 Chapter 01 must be empty before Series 086 import.'; END IF;

  SELECT id INTO v_c_anna FROM characters WHERE course_id=v_course AND name='Anna' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_anna IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Anna not found.'; END IF;
  SELECT id INTO v_c_martin FROM characters WHERE course_id=v_course AND name='Martin' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_martin IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Martin not found.'; END IF;
  IF v_c_anna=v_c_martin THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Anna and Martin must be distinct Characters.'; END IF;

  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='aber' AND part_of_speech='conjunction' AND translation='اما' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: aber | conjunction'; END IF;

  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='Arbeit' AND part_of_speech='noun' AND translation='کار' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Arbeit | noun'; END IF;

  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='auch' AND part_of_speech='adverb' AND translation='هم / همچنین' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: auch | adverb'; END IF;

  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='aufteilen' AND part_of_speech='verb' AND translation='تقسیم کردن' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'aufteilen','aufteilen','verb','تقسیم کردن',44,'{"prefix":"auf","type":"separable_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"machen","translation":"انجام دادن"},{"text":"prüfen","translation":"بررسی کردن"},{"text":"beginnen","translation":"شروع کردن"},{"text":"helfen","translation":"کمک کردن"}]','Dann teilen wir die Arbeit auf.','پس کار رو تقسیم می کنیم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_004=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='beginnen' AND part_of_speech='verb' AND translation='شروع شدن / آغاز کردن' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: beginnen | verb'; END IF;

  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='Besprechung' AND part_of_speech='noun' AND translation='جلسه' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Besprechung','Besprechung','noun','جلسه',44,'{"gender":"feminine","plural":"Besprechungen"}','[{"text":"Arbeit","translation":"کار"},{"text":"Zeit","translation":"زمان"},{"text":"Liste","translation":"فهرست"},{"text":"Entscheidung","translation":"تصمیم"},{"text":"Wohnung","translation":"خانه"}]','Wann beginnt die Besprechung?','جلسه کی شروع می شه؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_006=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='Bild' AND part_of_speech='noun' AND translation='تصویر' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Bild','Bild','noun','تصویر',44,'{"gender":"neuter","plural":"Bilder"}','[{"text":"Arbeit","translation":"کار"},{"text":"Zeit","translation":"زمان"},{"text":"Liste","translation":"فهرست"},{"text":"Entscheidung","translation":"تصمیم"},{"text":"Wohnung","translation":"خانه"}]','Kannst du auch die Bilder prüfen?','می تونی تصویرها رو هم بررسی کنی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_007=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='bis' AND part_of_speech='preposition' AND translation='تا' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: bis | preposition'; END IF;

  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='dann' AND part_of_speech='adverb' AND translation='بعد / سپس' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dann | adverb'; END IF;

  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='Dann fehlt nur noch die letzte Kontrolle.' AND part_of_speech='phrase' AND translation='پس فقط بررسی نهایی مونده.' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Dann fehlt nur noch die letzte Kontrolle.','Dann fehlt nur noch die letzte Kontrolle.','phrase','پس فقط بررسی نهایی مونده.',45,'{"type":"sentence_pattern"}','[{"text":"Dann fehlt nur noch der Text.","translation":"پس فقط متن مونده."},{"text":"Die Kontrolle ist schon fertig.","translation":"بررسی نهایی از قبل تموم شده."},{"text":"Wir prüfen nur die Bilder.","translation":"فقط تصویرها رو بررسی می کنیم."},{"text":"Die Zahlen fehlen noch.","translation":"عددها هنوز آماده نیستند."},{"text":"Dann beginnen wir die Besprechung.","translation":"پس جلسه رو شروع می کنیم."}]','Dann fehlt nur noch die letzte Kontrolle.','پس فقط بررسی نهایی مونده.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_010=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='Dann teilen wir die Arbeit auf.' AND part_of_speech='phrase' AND translation='پس کار رو تقسیم می کنیم.' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Dann teilen wir die Arbeit auf.','Dann teilen wir die Arbeit auf.','phrase','پس کار رو تقسیم می کنیم.',44,'{"type":"sentence_pattern"}','[{"text":"Dann prüfen wir alles zusammen.","translation":"پس همه چیز رو با هم بررسی می کنیم."},{"text":"Ich korrigiere nur den Text.","translation":"فقط متن رو اصلاح می کنم."},{"text":"Du prüfst die Bilder.","translation":"تو تصویرها رو بررسی می کنی."},{"text":"Wir beginnen um vier Uhr.","translation":"ساعت چهار شروع می کنیم."},{"text":"Die Arbeit ist schon fertig.","translation":"کار از قبل آماده است."}]','Dann teilen wir die Arbeit auf.','پس کار رو تقسیم می کنیم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_011=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='das' AND part_of_speech='pronoun' AND translation='این / آن' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: das | pronoun'; END IF;

  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='Datei' AND part_of_speech='noun' AND translation='فایل' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Datei','Datei','noun','فایل',45,'{"gender":"feminine","plural":"Dateien"}','[{"text":"Arbeit","translation":"کار"},{"text":"Zeit","translation":"زمان"},{"text":"Liste","translation":"فهرست"},{"text":"Entscheidung","translation":"تصمیم"},{"text":"Wohnung","translation":"خانه"}]','Die neue Datei lässt sich nicht öffnen.','فایل جدید باز نمی شه.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_013=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: der | article'; END IF;

  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='dort' AND part_of_speech='adverb' AND translation='آنجا' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dort | adverb'; END IF;

  SELECT id INTO v_w_016 FROM words WHERE course_id=v_course AND lemma='drei' AND part_of_speech='number' AND translation='سه' ORDER BY id LIMIT 1;
  IF v_w_016 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: drei | number'; END IF;

  SELECT id INTO v_w_017 FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_017 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: du | pronoun'; END IF;

  SELECT id INTO v_w_018 FROM words WHERE course_id=v_course AND lemma='fehlen' AND part_of_speech='verb' AND translation='کم بودن / وجود نداشتن' ORDER BY id LIMIT 1;
  IF v_w_018 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'fehlen','fehlen','verb','کم بودن / وجود نداشتن',44,'{"type":"regular_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"machen","translation":"انجام دادن"},{"text":"prüfen","translation":"بررسی کردن"},{"text":"beginnen","translation":"شروع کردن"},{"text":"helfen","translation":"کمک کردن"}]','Dann fehlt nur noch die letzte Kontrolle.','پس فقط بررسی نهایی مونده.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_018=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_019 FROM words WHERE course_id=v_course AND lemma='fehlend' AND part_of_speech='adjective' AND translation='ناقص / جاافتاده' ORDER BY id LIMIT 1;
  IF v_w_019 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'fehlend','fehlend','adjective','ناقص / جاافتاده',45,'{"type":"participle_adjective"}','[{"text":"fertig","translation":"آماده"},{"text":"wichtig","translation":"مهم"},{"text":"neu","translation":"جدید"},{"text":"ruhig","translation":"آرام"},{"text":"klein","translation":"کوچک"}]','Dann kopiere ich die fehlenden Seiten.','پس صفحه های جاافتاده رو کپی می کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_019=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_020 FROM words WHERE course_id=v_course AND lemma='fertig' AND part_of_speech='adjective' AND translation='تمام / آماده' ORDER BY id LIMIT 1;
  IF v_w_020 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: fertig | adjective'; END IF;

  SELECT id INTO v_w_021 FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_021 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: haben | verb'; END IF;

  SELECT id INTO v_w_022 FROM words WHERE course_id=v_course AND lemma='heute' AND part_of_speech='adverb' AND translation='امروز' ORDER BY id LIMIT 1;
  IF v_w_022 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: heute | adverb'; END IF;

  SELECT id INTO v_w_023 FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_023 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ich | pronoun'; END IF;

  SELECT id INTO v_w_024 FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_024 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ja | interjection'; END IF;

  SELECT id INTO v_w_025 FROM words WHERE course_id=v_course AND lemma='Ja, wenn nichts Neues passiert.' AND part_of_speech='phrase' AND translation='آره، اگه اتفاق تازه ای نیفته.' ORDER BY id LIMIT 1;
  IF v_w_025 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ja, wenn nichts Neues passiert.','Ja, wenn nichts Neues passiert.','phrase','آره، اگه اتفاق تازه ای نیفته.',45,'{"type":"sentence_pattern"}','[{"text":"Ja, wenn die Datei sich öffnen lässt.","translation":"آره، اگه فایل باز بشه."},{"text":"Nein, die Seiten fehlen noch.","translation":"نه، صفحه ها هنوز نیستند."},{"text":"Ja, ich kopiere die ganze Datei.","translation":"آره، کل فایل رو کپی می کنم."},{"text":"Wenn etwas passiert, rufe ich an.","translation":"اگه چیزی اتفاق بیفته، زنگ می زنم."},{"text":"Die vorherige Version ist fertig.","translation":"نسخه قبلی آماده است."}]','Ja, wenn nichts Neues passiert.','آره، اگه اتفاق تازه ای نیفته.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_025=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_026 FROM words WHERE course_id=v_course AND lemma='können' AND part_of_speech='verb' AND translation='توانستن / بتوان' ORDER BY id LIMIT 1;
  IF v_w_026 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: können | verb'; END IF;

  SELECT id INTO v_w_027 FROM words WHERE course_id=v_course AND lemma='Kontrolle' AND part_of_speech='noun' AND translation='بررسی نهایی' ORDER BY id LIMIT 1;
  IF v_w_027 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Kontrolle','Kontrolle','noun','بررسی نهایی',45,'{"gender":"feminine","plural":"Kontrollen"}','[{"text":"Arbeit","translation":"کار"},{"text":"Zeit","translation":"زمان"},{"text":"Liste","translation":"فهرست"},{"text":"Entscheidung","translation":"تصمیم"},{"text":"Wohnung","translation":"خانه"}]','Dann fehlt nur noch die letzte Kontrolle.','پس فقط بررسی نهایی مونده.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_027=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_028 FROM words WHERE course_id=v_course AND lemma='kopieren' AND part_of_speech='verb' AND translation='کپی کردن' ORDER BY id LIMIT 1;
  IF v_w_028 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'kopieren','kopieren','verb','کپی کردن',45,'{"type":"regular_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"machen","translation":"انجام دادن"},{"text":"prüfen","translation":"بررسی کردن"},{"text":"beginnen","translation":"شروع کردن"},{"text":"helfen","translation":"کمک کردن"}]','Dann kopiere ich die fehlenden Seiten.','پس صفحه های جاافتاده رو کپی می کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_028=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_029 FROM words WHERE course_id=v_course AND lemma='korrigieren' AND part_of_speech='verb' AND translation='اصلاح کردن' ORDER BY id LIMIT 1;
  IF v_w_029 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'korrigieren','korrigieren','verb','اصلاح کردن',44,'{"type":"regular_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"machen","translation":"انجام دادن"},{"text":"prüfen","translation":"بررسی کردن"},{"text":"beginnen","translation":"شروع کردن"},{"text":"helfen","translation":"کمک کردن"}]','Der Text ist auch korrigiert.','متن هم اصلاح شده.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_029=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_030 FROM words WHERE course_id=v_course AND lemma='lassen' AND part_of_speech='verb' AND translation='گذاشتن / امکان دادن' ORDER BY id LIMIT 1;
  IF v_w_030 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'lassen','lassen','verb','گذاشتن / امکان دادن',45,'{"type":"irregular_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"machen","translation":"انجام دادن"},{"text":"prüfen","translation":"بررسی کردن"},{"text":"beginnen","translation":"شروع کردن"},{"text":"helfen","translation":"کمک کردن"}]','Die neue Datei lässt sich nicht öffnen.','فایل جدید باز نمی شه.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_030=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_031 FROM words WHERE course_id=v_course AND lemma='letzte' AND part_of_speech='adjective' AND translation='آخرین' ORDER BY id LIMIT 1;
  IF v_w_031 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'letzte','letzte','adjective','آخرین',44,'{"type":"adjective"}','[{"text":"fertig","translation":"آماده"},{"text":"wichtig","translation":"مهم"},{"text":"neu","translation":"جدید"},{"text":"ruhig","translation":"آرام"},{"text":"klein","translation":"کوچک"}]','Dann fehlt nur noch die letzte Kontrolle.','پس فقط بررسی نهایی مونده.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_031=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_032 FROM words WHERE course_id=v_course AND lemma='machen' AND part_of_speech='verb' AND translation='انجام دادن' ORDER BY id LIMIT 1;
  IF v_w_032 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: machen | verb'; END IF;

  SELECT id INTO v_w_033 FROM words WHERE course_id=v_course AND lemma='müssen' AND part_of_speech='verb' AND translation='مجبور بودن / باید' ORDER BY id LIMIT 1;
  IF v_w_033 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: müssen | verb'; END IF;

  SELECT id INTO v_w_034 FROM words WHERE course_id=v_course AND lemma='neu' AND part_of_speech='adjective' AND translation='جدید / تازه' ORDER BY id LIMIT 1;
  IF v_w_034 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: neu | adjective'; END IF;

  SELECT id INTO v_w_035 FROM words WHERE course_id=v_course AND lemma='nicht' AND part_of_speech='particle' AND translation='نه / نیست' ORDER BY id LIMIT 1;
  IF v_w_035 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: nicht | particle'; END IF;

  SELECT id INTO v_w_036 FROM words WHERE course_id=v_course AND lemma='nichts' AND part_of_speech='pronoun' AND translation='هیچ چیز' ORDER BY id LIMIT 1;
  IF v_w_036 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'nichts','nichts','pronoun','هیچ چیز',45,'{}','[{"text":"ich","translation":"من"},{"text":"du","translation":"تو"},{"text":"das","translation":"این"},{"text":"etwas","translation":"چیزی"},{"text":"beide","translation":"هر دو"}]','Ja, wenn nichts Neues passiert.','آره، اگه اتفاق تازه ای نیفته.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_036=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_037 FROM words WHERE course_id=v_course AND lemma='noch' AND part_of_speech='adverb' AND translation='هنوز' ORDER BY id LIMIT 1;
  IF v_w_037 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: noch | adverb'; END IF;

  SELECT id INTO v_w_038 FROM words WHERE course_id=v_course AND lemma='nur' AND part_of_speech='particle' AND translation='فقط' ORDER BY id LIMIT 1;
  IF v_w_038 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'nur','nur','particle','فقط',45,'{}','[{"text":"nicht","translation":"نه"},{"text":"auch","translation":"هم"},{"text":"noch","translation":"هنوز"},{"text":"zu","translation":"بیش از حد"},{"text":"ja","translation":"بله"}]','Dann fehlt nur noch die letzte Kontrolle.','پس فقط بررسی نهایی مونده.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_038=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_039 FROM words WHERE course_id=v_course AND lemma='öffnen' AND part_of_speech='verb' AND translation='باز کردن' ORDER BY id LIMIT 1;
  IF v_w_039 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'öffnen','öffnen','verb','باز کردن',45,'{"type":"regular_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"machen","translation":"انجام دادن"},{"text":"prüfen","translation":"بررسی کردن"},{"text":"beginnen","translation":"شروع کردن"},{"text":"helfen","translation":"کمک کردن"}]','Die neue Datei lässt sich nicht öffnen.','فایل جدید باز نمی شه.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_039=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_040 FROM words WHERE course_id=v_course AND lemma='passieren' AND part_of_speech='verb' AND translation='اتفاق افتادن' ORDER BY id LIMIT 1;
  IF v_w_040 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'passieren','passieren','verb','اتفاق افتادن',45,'{"type":"regular_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"machen","translation":"انجام دادن"},{"text":"prüfen","translation":"بررسی کردن"},{"text":"beginnen","translation":"شروع کردن"},{"text":"helfen","translation":"کمک کردن"}]','Ja, wenn nichts Neues passiert.','آره، اگه اتفاق تازه ای نیفته.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_040=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_041 FROM words WHERE course_id=v_course AND lemma='Präsentation' AND part_of_speech='noun' AND translation='ارائه' ORDER BY id LIMIT 1;
  IF v_w_041 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Präsentation','Präsentation','noun','ارائه',44,'{"gender":"feminine","plural":"Präsentationen"}','[{"text":"Arbeit","translation":"کار"},{"text":"Zeit","translation":"زمان"},{"text":"Liste","translation":"فهرست"},{"text":"Entscheidung","translation":"تصمیم"},{"text":"Wohnung","translation":"خانه"}]','Ist die Präsentation fertig?','ارائه آماده است؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_041=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_042 FROM words WHERE course_id=v_course AND lemma='prüfen' AND part_of_speech='verb' AND translation='بررسی کردن' ORDER BY id LIMIT 1;
  IF v_w_042 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: prüfen | verb'; END IF;

  SELECT id INTO v_w_043 FROM words WHERE course_id=v_course AND lemma='rechtzeitig' AND part_of_speech='adverb' AND translation='به موقع' ORDER BY id LIMIT 1;
  IF v_w_043 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'rechtzeitig','rechtzeitig','adverb','به موقع',45,'{}','[{"text":"heute","translation":"امروز"},{"text":"morgen","translation":"فردا"},{"text":"noch","translation":"هنوز"},{"text":"genau","translation":"دقیقا"},{"text":"zusammen","translation":"با هم"}]','Ja, dann werden wir rechtzeitig fertig.','آره، اون وقت به موقع تمومش می کنیم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_043=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_044 FROM words WHERE course_id=v_course AND lemma='schaffen' AND part_of_speech='verb' AND translation='از عهده برآمدن' ORDER BY id LIMIT 1;
  IF v_w_044 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'schaffen','schaffen','verb','از عهده برآمدن',44,'{"type":"irregular_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"machen","translation":"انجام دادن"},{"text":"prüfen","translation":"بررسی کردن"},{"text":"beginnen","translation":"شروع کردن"},{"text":"helfen","translation":"کمک کردن"}]','Schaffst du das bis drei Uhr?','تا ساعت سه از پسش برمیای؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_044=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_045 FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_045 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sein | verb'; END IF;

  SELECT id INTO v_w_046 FROM words WHERE course_id=v_course AND lemma='Seite' AND part_of_speech='noun' AND translation='صفحه' ORDER BY id LIMIT 1;
  IF v_w_046 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Seite','Seite','noun','صفحه',45,'{"gender":"feminine","plural":"Seiten"}','[{"text":"Arbeit","translation":"کار"},{"text":"Zeit","translation":"زمان"},{"text":"Liste","translation":"فهرست"},{"text":"Entscheidung","translation":"تصمیم"},{"text":"Wohnung","translation":"خانه"}]','Ja, aber dort fehlen zwei Seiten.','آره، اما دو صفحه اونجا نیست.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_046=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_047 FROM words WHERE course_id=v_course AND lemma='sich' AND part_of_speech='pronoun' AND translation='خود / خودش' ORDER BY id LIMIT 1;
  IF v_w_047 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sich | pronoun'; END IF;

  SELECT id INTO v_w_048 FROM words WHERE course_id=v_course AND lemma='sie' AND part_of_speech='pronoun' AND translation='او / آن ها' ORDER BY id LIMIT 1;
  IF v_w_048 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sie | pronoun'; END IF;

  SELECT id INTO v_w_049 FROM words WHERE course_id=v_course AND lemma='sofort' AND part_of_speech='adverb' AND translation='فورا / همین الان' ORDER BY id LIMIT 1;
  IF v_w_049 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'sofort','sofort','adverb','فورا / همین الان',44,'{}','[{"text":"heute","translation":"امروز"},{"text":"morgen","translation":"فردا"},{"text":"noch","translation":"هنوز"},{"text":"genau","translation":"دقیقا"},{"text":"zusammen","translation":"با هم"}]','Ja, das mache ich sofort.','آره، همین الان انجامش می دم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_049=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_050 FROM words WHERE course_id=v_course AND lemma='Text' AND part_of_speech='noun' AND translation='متن' ORDER BY id LIMIT 1;
  IF v_w_050 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Text','Text','noun','متن',44,'{"gender":"masculine","plural":"Texte"}','[{"text":"Arbeit","translation":"کار"},{"text":"Zeit","translation":"زمان"},{"text":"Liste","translation":"فهرست"},{"text":"Entscheidung","translation":"تصمیم"},{"text":"Wohnung","translation":"خانه"}]','Der Text ist auch korrigiert.','متن هم اصلاح شده.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_050=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_051 FROM words WHERE course_id=v_course AND lemma='Uhr' AND part_of_speech='noun' AND translation='ساعت' ORDER BY id LIMIT 1;
  IF v_w_051 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Uhr | noun'; END IF;

  SELECT id INTO v_w_052 FROM words WHERE course_id=v_course AND lemma='um' AND part_of_speech='preposition' AND translation='در ساعت / حوالی' ORDER BY id LIMIT 1;
  IF v_w_052 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: um | preposition'; END IF;

  SELECT id INTO v_w_053 FROM words WHERE course_id=v_course AND lemma='Version' AND part_of_speech='noun' AND translation='نسخه' ORDER BY id LIMIT 1;
  IF v_w_053 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Version','Version','noun','نسخه',45,'{"gender":"feminine","plural":"Versionen"}','[{"text":"Arbeit","translation":"کار"},{"text":"Zeit","translation":"زمان"},{"text":"Liste","translation":"فهرست"},{"text":"Entscheidung","translation":"تصمیم"},{"text":"Wohnung","translation":"خانه"}]','Hast du die vorherige Version?','نسخه قبلی رو داری؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_053=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_054 FROM words WHERE course_id=v_course AND lemma='vier' AND part_of_speech='number' AND translation='چهار' ORDER BY id LIMIT 1;
  IF v_w_054 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'vier','vier','number','چهار',44,'{}','[{"text":"eins","translation":"یک"},{"text":"zwei","translation":"دو"},{"text":"drei","translation":"سه"},{"text":"fünf","translation":"پنج"},{"text":"sechs","translation":"شش"}]','Um vier Uhr.','ساعت چهار.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_054=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_055 FROM words WHERE course_id=v_course AND lemma='vorherig' AND part_of_speech='adjective' AND translation='قبلی' ORDER BY id LIMIT 1;
  IF v_w_055 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'vorherig','vorherig','adjective','قبلی',45,'{"type":"adjective"}','[{"text":"fertig","translation":"آماده"},{"text":"wichtig","translation":"مهم"},{"text":"neu","translation":"جدید"},{"text":"ruhig","translation":"آرام"},{"text":"klein","translation":"کوچک"}]','Hast du die vorherige Version?','نسخه قبلی رو داری؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_055=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_056 FROM words WHERE course_id=v_course AND lemma='wann' AND part_of_speech='adverb' AND translation='کی / چه زمانی' ORDER BY id LIMIT 1;
  IF v_w_056 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wann | adverb'; END IF;

  SELECT id INTO v_w_057 FROM words WHERE course_id=v_course AND lemma='was' AND part_of_speech='pronoun' AND translation='چی / چه' ORDER BY id LIMIT 1;
  IF v_w_057 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: was | pronoun'; END IF;

  SELECT id INTO v_w_058 FROM words WHERE course_id=v_course AND lemma='weit' AND part_of_speech='adverb' AND translation='تا چه حد / چقدر جلو' ORDER BY id LIMIT 1;
  IF v_w_058 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'weit','weit','adverb','تا چه حد / چقدر جلو',45,'{}','[{"text":"heute","translation":"امروز"},{"text":"morgen","translation":"فردا"},{"text":"noch","translation":"هنوز"},{"text":"genau","translation":"دقیقا"},{"text":"zusammen","translation":"با هم"}]','Wie weit bist du?','چقدر پیش رفتی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_058=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_059 FROM words WHERE course_id=v_course AND lemma='wenn' AND part_of_speech='conjunction' AND translation='اگر / وقتی' ORDER BY id LIMIT 1;
  IF v_w_059 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'wenn','wenn','conjunction','اگر / وقتی',45,'{}','[{"text":"und","translation":"و"},{"text":"aber","translation":"اما"},{"text":"oder","translation":"یا"},{"text":"weil","translation":"چون"},{"text":"dann","translation":"بعد"}]','Ja, wenn nichts Neues passiert.','آره، اگه اتفاق تازه ای نیفته.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_059=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_060 FROM words WHERE course_id=v_course AND lemma='werden' AND part_of_speech='verb' AND translation='شدن / خواهد' ORDER BY id LIMIT 1;
  IF v_w_060 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'werden','werden','verb','شدن / خواهد',45,'{"type":"irregular_verb"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"machen","translation":"انجام دادن"},{"text":"prüfen","translation":"بررسی کردن"},{"text":"beginnen","translation":"شروع کردن"},{"text":"helfen","translation":"کمک کردن"}]','Ja, dann werden wir rechtzeitig fertig.','آره، اون وقت به موقع تمومش می کنیم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_060=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_061 FROM words WHERE course_id=v_course AND lemma='wie' AND part_of_speech='adverb' AND translation='چطور / چگونه' ORDER BY id LIMIT 1;
  IF v_w_061 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wie | adverb'; END IF;

  SELECT id INTO v_w_062 FROM words WHERE course_id=v_course AND lemma='wir' AND part_of_speech='pronoun' AND translation='ما' ORDER BY id LIMIT 1;
  IF v_w_062 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wir | pronoun'; END IF;

  SELECT id INTO v_w_063 FROM words WHERE course_id=v_course AND lemma='Wir müssen das heute fertig machen.' AND part_of_speech='phrase' AND translation='باید امروز تمومش کنیم.' ORDER BY id LIMIT 1;
  IF v_w_063 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Wir müssen das heute fertig machen.','Wir müssen das heute fertig machen.','phrase','باید امروز تمومش کنیم.',44,'{"type":"sentence_pattern"}','[{"text":"Wir können das morgen fertig machen.","translation":"می تونیم فردا تمومش کنیم."},{"text":"Die Präsentation ist schon fertig.","translation":"ارائه از قبل آماده است."},{"text":"Wir haben heute keine Zeit.","translation":"امروز وقت نداریم."},{"text":"Die Besprechung beginnt morgen.","translation":"جلسه فردا شروع می شه."},{"text":"Ich prüfe nur die Zahlen.","translation":"فقط عددها رو بررسی می کنم."}]','Wir müssen das heute fertig machen.','باید امروز تمومش کنیم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_063=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_064 FROM words WHERE course_id=v_course AND lemma='Zahl' AND part_of_speech='noun' AND translation='عدد / رقم' ORDER BY id LIMIT 1;
  IF v_w_064 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Zahl','Zahl','noun','عدد / رقم',44,'{"gender":"feminine","plural":"Zahlen"}','[{"text":"Arbeit","translation":"کار"},{"text":"Zeit","translation":"زمان"},{"text":"Liste","translation":"فهرست"},{"text":"Entscheidung","translation":"تصمیم"},{"text":"Wohnung","translation":"خانه"}]','Die Zahlen sind fertig.','عددها آماده هستند.',NULL,NULL,'{"cefr":"B1","introducedInSeries":86}');
    SET v_w_064=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_065 FROM words WHERE course_id=v_course AND lemma='zusammen' AND part_of_speech='adverb' AND translation='با هم' ORDER BY id LIMIT 1;
  IF v_w_065 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zusammen | adverb'; END IF;

  SELECT id INTO v_w_066 FROM words WHERE course_id=v_course AND lemma='zwei' AND part_of_speech='number' AND translation='دو' ORDER BY id LIMIT 1;
  IF v_w_066 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zwei | number'; END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_anna,v_c_martin,'Heute noch fertig','تمام کردن کار در همین امروز','Anna und Martin prüfen den Stand einer Präsentation und erkennen, dass die letzten Zahlen vor der Besprechung fehlen.','آنا و مارتین وضعیت یک ارائه را بررسی می کنند و می بینند که عددهای نهایی پیش از جلسه آماده نیستند.','story','anna-martin-b1-project',1,44,150,1,'validated','{"relationship":"coworkers","context":"finish-presentation-together","cefr":"B1","storyArc":"plan-divide-fix-check"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,1,'character','Ist die Präsentation fertig?','ارائه آماده است؟',44,NULL,NULL,NULL,NULL,'[{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"Ist","translation":"بودن"},{"form":"nominative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Präsentation","partOfSpeech":"noun","surface":"Präsentation","translation":"ارائه"},{"lemma":"fertig","partOfSpeech":"adjective","suffix":"?","surface":"fertig","translation":"تمام / آماده"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_martin,2,'learner','Noch nicht. Wir müssen das heute fertig machen.','هنوز نه. باید امروز تمومش کنیم.',44,NULL,NULL,'noch nicht wir müssen das heute fertig machen',NULL,'[{"lemma":"noch","partOfSpeech":"adverb","surface":"Noch","translation":"هنوز"},{"lemma":"nicht","partOfSpeech":"particle","suffix":".","surface":"nicht","translation":"نه / نیست"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"Wir","translation":"ما"},{"form":"present_plural","lemma":"müssen","partOfSpeech":"verb","surface":"müssen","translation":"مجبور بودن / باید"},{"lemma":"das","partOfSpeech":"pronoun","surface":"das","translation":"این / آن"},{"lemma":"heute","partOfSpeech":"adverb","surface":"heute","translation":"امروز"},{"lemma":"fertig","partOfSpeech":"adjective","surface":"fertig","translation":"تمام / آماده"},{"lemma":"machen","partOfSpeech":"verb","suffix":".","surface":"machen","translation":"انجام دادن"}]','müssen برای ضرورت','برای کاری که باید حتما انجام شود از müssen و مصدر در پایان استفاده می کنیم.','{"pattern":"subject + müssen + object + infinitive"}','{"cefr":"B1"}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,3,'character','Was fehlt noch?','دیگه چی آماده نیست؟',44,NULL,NULL,NULL,NULL,'[{"lemma":"was","partOfSpeech":"pronoun","surface":"Was","translation":"چی / چه"},{"form":"present_3sg","lemma":"fehlen","partOfSpeech":"verb","surface":"fehlt","translation":"کم بودن / وجود نداشتن"},{"lemma":"noch","partOfSpeech":"adverb","suffix":"?","surface":"noch","translation":"هنوز"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_martin,4,'learner','Die letzten Zahlen fehlen.','عددهای نهایی آماده نیستند.',44,NULL,NULL,'die letzten zahlen fehlen',NULL,'[{"form":"nominative_plural","lemma":"der","partOfSpeech":"article","surface":"Die","translation":"حرف تعریف"},{"form":"nominative_plural","lemma":"letzte","partOfSpeech":"adjective","surface":"letzten","translation":"آخرین"},{"form":"plural","lemma":"Zahl","partOfSpeech":"noun","surface":"Zahlen","translation":"عدد / رقم"},{"form":"present_plural","lemma":"fehlen","partOfSpeech":"verb","suffix":".","surface":"fehlen","translation":"کم بودن / وجود نداشتن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,5,'character','Wann beginnt die Besprechung?','جلسه کی شروع می شه؟',44,NULL,NULL,NULL,NULL,'[{"lemma":"wann","partOfSpeech":"adverb","surface":"Wann","translation":"کی / چه زمانی"},{"form":"present_3sg","lemma":"beginnen","partOfSpeech":"verb","surface":"beginnt","translation":"شروع شدن / آغاز کردن"},{"form":"nominative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Besprechung","partOfSpeech":"noun","suffix":"?","surface":"Besprechung","translation":"جلسه"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_martin,6,'learner','Um vier Uhr.','ساعت چهار.',44,NULL,NULL,'um vier uhr',NULL,'[{"lemma":"um","partOfSpeech":"preposition","surface":"Um","translation":"در ساعت / حوالی"},{"lemma":"vier","partOfSpeech":"number","surface":"vier","translation":"چهار"},{"lemma":"Uhr","partOfSpeech":"noun","suffix":".","surface":"Uhr","translation":"ساعت"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_anna,v_c_martin,'Die Arbeit aufteilen','تقسیم کردن کار','Anna und Martin teilen die offenen Aufgaben auf und legen fest, wer Text, Zahlen und Bilder prüft.','آنا و مارتین کارهای باقی مانده را تقسیم می کنند و مشخص می کنند چه کسی متن، عددها و تصویرها را بررسی کند.','story','anna-martin-b1-project',2,44,150,2,'validated','{"relationship":"coworkers","context":"finish-presentation-together","cefr":"B1","storyArc":"plan-divide-fix-check"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,1,'character','Wie schaffen wir das heute?','چطور امروز از پسش بربیایم؟',44,NULL,NULL,NULL,NULL,'[{"lemma":"wie","partOfSpeech":"adverb","surface":"Wie","translation":"چطور / چگونه"},{"form":"present_plural","lemma":"schaffen","partOfSpeech":"verb","surface":"schaffen","translation":"از عهده برآمدن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"das","partOfSpeech":"pronoun","surface":"das","translation":"این / آن"},{"lemma":"heute","partOfSpeech":"adverb","suffix":"?","surface":"heute","translation":"امروز"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_martin,2,'learner','Dann teilen wir die Arbeit auf.','پس کار رو تقسیم می کنیم.',44,NULL,NULL,'dann teilen wir die arbeit auf',NULL,'[{"lemma":"dann","partOfSpeech":"adverb","surface":"Dann","translation":"بعد / سپس"},{"form":"present_plural_stem","lemma":"aufteilen","partOfSpeech":"verb","surface":"teilen","translation":"تقسیم کردن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"form":"accusative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Arbeit","partOfSpeech":"noun","surface":"Arbeit","translation":"کار"},{"form":"separated_prefix","lemma":"aufteilen","partOfSpeech":"verb","suffix":".","surface":"auf","translation":"تقسیم کردن"}]','فعل جداشدنی aufteilen','در جمله اصلی، پیشوند auf به پایان می رود: Wir teilen die Arbeit auf.','{"pattern":"subject + teilen + object + auf"}','{"cefr":"B1"}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,3,'character','Ich korrigiere den Text.','من متن رو اصلاح می کنم.',44,NULL,NULL,NULL,NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"korrigieren","partOfSpeech":"verb","surface":"korrigiere","translation":"اصلاح کردن"},{"form":"accusative_masculine","lemma":"der","partOfSpeech":"article","surface":"den","translation":"حرف تعریف"},{"lemma":"Text","partOfSpeech":"noun","suffix":".","surface":"Text","translation":"متن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_martin,4,'learner','Ich prüfe die Zahlen.','من عددها رو بررسی می کنم.',44,NULL,NULL,'ich prüfe die zahlen',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"prüfen","partOfSpeech":"verb","surface":"prüfe","translation":"بررسی کردن"},{"form":"accusative_plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"plural","lemma":"Zahl","partOfSpeech":"noun","suffix":".","surface":"Zahlen","translation":"عدد / رقم"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,5,'character','Kannst du auch die Bilder prüfen?','می تونی تصویرها رو هم بررسی کنی؟',44,NULL,NULL,NULL,NULL,'[{"form":"present_2sg","lemma":"können","partOfSpeech":"verb","surface":"Kannst","translation":"توانستن / بتوان"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"auch","partOfSpeech":"adverb","surface":"auch","translation":"هم / همچنین"},{"form":"accusative_plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"plural","lemma":"Bild","partOfSpeech":"noun","surface":"Bilder","translation":"تصویر"},{"lemma":"prüfen","partOfSpeech":"verb","suffix":"?","surface":"prüfen","translation":"بررسی کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_martin,6,'learner','Ja, das mache ich sofort.','آره، همین الان انجامش می دم.',44,NULL,NULL,'ja das mache ich sofort',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"das","partOfSpeech":"pronoun","surface":"das","translation":"این / آن"},{"form":"present_1sg","lemma":"machen","partOfSpeech":"verb","surface":"mache","translation":"انجام دادن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"sofort","partOfSpeech":"adverb","suffix":".","surface":"sofort","translation":"فورا / همین الان"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_anna,v_c_martin,'Ein Problem mit der Datei','مشکل فایل','Eine Datei lässt sich nicht öffnen. Anna und Martin nutzen eine frühere Version und ergänzen die fehlenden Seiten.','یک فایل باز نمی شود. آنا و مارتین از نسخه قبلی استفاده می کنند و صفحه های جاافتاده را اضافه می کنند.','story','anna-martin-b1-project',3,45,150,3,'validated','{"relationship":"coworkers","context":"finish-presentation-together","cefr":"B1","storyArc":"plan-divide-fix-check"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,1,'character','Die neue Datei lässt sich nicht öffnen.','فایل جدید باز نمی شه.',45,NULL,NULL,NULL,NULL,'[{"form":"nominative_feminine","lemma":"der","partOfSpeech":"article","surface":"Die","translation":"حرف تعریف"},{"form":"nominative_feminine","lemma":"neu","partOfSpeech":"adjective","surface":"neue","translation":"جدید / تازه"},{"lemma":"Datei","partOfSpeech":"noun","surface":"Datei","translation":"فایل"},{"form":"present_3sg","lemma":"lassen","partOfSpeech":"verb","surface":"lässt","translation":"گذاشتن / امکان دادن"},{"form":"reflexive_accusative_3sg","lemma":"sich","partOfSpeech":"pronoun","surface":"sich","translation":"خود / خودش"},{"lemma":"nicht","partOfSpeech":"particle","surface":"nicht","translation":"نه / نیست"},{"lemma":"öffnen","partOfSpeech":"verb","suffix":".","surface":"öffnen","translation":"باز کردن"}]','sich lassen + Infinitiv','با sich lassen می گوییم انجام کاری ممکن یا ناممکن است: Die Datei lässt sich öffnen.','{"pattern":"subject + lassen + sich + infinitive"}','{"cefr":"B1"}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_martin,2,'learner','Hast du die vorherige Version?','نسخه قبلی رو داری؟',45,NULL,NULL,'hast du die vorherige version',NULL,'[{"form":"present_2sg","lemma":"haben","partOfSpeech":"verb","surface":"Hast","translation":"داشتن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"accusative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"accusative_feminine","lemma":"vorherig","partOfSpeech":"adjective","surface":"vorherige","translation":"قبلی"},{"lemma":"Version","partOfSpeech":"noun","suffix":"?","surface":"Version","translation":"نسخه"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,3,'character','Ja, aber dort fehlen zwei Seiten.','آره، اما دو صفحه اونجا نیست.',45,NULL,NULL,NULL,NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"aber","partOfSpeech":"conjunction","surface":"aber","translation":"اما"},{"lemma":"dort","partOfSpeech":"adverb","surface":"dort","translation":"آنجا"},{"form":"present_plural","lemma":"fehlen","partOfSpeech":"verb","surface":"fehlen","translation":"کم بودن / وجود نداشتن"},{"lemma":"zwei","partOfSpeech":"number","surface":"zwei","translation":"دو"},{"form":"plural","lemma":"Seite","partOfSpeech":"noun","suffix":".","surface":"Seiten","translation":"صفحه"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_martin,4,'learner','Dann kopiere ich die fehlenden Seiten.','پس صفحه های جاافتاده رو کپی می کنم.',45,NULL,NULL,'dann kopiere ich die fehlenden seiten',NULL,'[{"lemma":"dann","partOfSpeech":"adverb","surface":"Dann","translation":"بعد / سپس"},{"form":"present_1sg","lemma":"kopieren","partOfSpeech":"verb","surface":"kopiere","translation":"کپی کردن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"accusative_plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"accusative_plural","lemma":"fehlend","partOfSpeech":"adjective","surface":"fehlenden","translation":"ناقص / جاافتاده"},{"form":"plural","lemma":"Seite","partOfSpeech":"noun","suffix":".","surface":"Seiten","translation":"صفحه"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,5,'character','Schaffst du das bis drei Uhr?','تا ساعت سه از پسش برمیای؟',45,NULL,NULL,NULL,NULL,'[{"form":"present_2sg","lemma":"schaffen","partOfSpeech":"verb","surface":"Schaffst","translation":"از عهده برآمدن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"das","partOfSpeech":"pronoun","surface":"das","translation":"این / آن"},{"lemma":"bis","partOfSpeech":"preposition","surface":"bis","translation":"تا"},{"lemma":"drei","partOfSpeech":"number","surface":"drei","translation":"سه"},{"lemma":"Uhr","partOfSpeech":"noun","suffix":"?","surface":"Uhr","translation":"ساعت"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_martin,6,'learner','Ja, wenn nichts Neues passiert.','آره، اگه اتفاق تازه ای نیفته.',45,NULL,NULL,'ja wenn nichts neues passiert',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"wenn","partOfSpeech":"conjunction","surface":"wenn","translation":"اگر / وقتی"},{"lemma":"nichts","partOfSpeech":"pronoun","surface":"nichts","translation":"هیچ چیز"},{"form":"nominalized_neuter","lemma":"neu","partOfSpeech":"adjective","surface":"Neues","translation":"جدید / تازه"},{"form":"present_3sg","lemma":"passieren","partOfSpeech":"verb","suffix":".","surface":"passiert","translation":"اتفاق افتادن"}]','جمله شرطی با wenn','بعد از wenn فعل صرف شده در پایان جمله وابسته قرار می گیرد.','{"pattern":"wenn + subject + ... + finite verb"}','{"cefr":"B1"}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_anna,v_c_martin,'Die letzte Kontrolle','بررسی نهایی','Kurz vor der Besprechung kontrollieren Anna und Martin gemeinsam die fertige Präsentation.','کمی پیش از جلسه، آنا و مارتین ارائه آماده را با هم بررسی می کنند.','story','anna-martin-b1-project',4,45,150,4,'validated','{"relationship":"coworkers","context":"finish-presentation-together","cefr":"B1","storyArc":"plan-divide-fix-check"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,1,'character','Wie weit bist du?','چقدر پیش رفتی؟',45,NULL,NULL,NULL,NULL,'[{"lemma":"wie","partOfSpeech":"adverb","surface":"Wie","translation":"چطور / چگونه"},{"lemma":"weit","partOfSpeech":"adverb","surface":"weit","translation":"تا چه حد / چقدر جلو"},{"form":"present_2sg","lemma":"sein","partOfSpeech":"verb","surface":"bist","translation":"بودن"},{"lemma":"du","partOfSpeech":"pronoun","suffix":"?","surface":"du","translation":"تو"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_martin,2,'learner','Die Zahlen sind fertig.','عددها آماده هستند.',45,NULL,NULL,'die zahlen sind fertig',NULL,'[{"form":"nominative_plural","lemma":"der","partOfSpeech":"article","surface":"Die","translation":"حرف تعریف"},{"form":"plural","lemma":"Zahl","partOfSpeech":"noun","surface":"Zahlen","translation":"عدد / رقم"},{"form":"present_plural","lemma":"sein","partOfSpeech":"verb","surface":"sind","translation":"بودن"},{"lemma":"fertig","partOfSpeech":"adjective","suffix":".","surface":"fertig","translation":"تمام / آماده"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_20=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,3,'character','Der Text ist auch korrigiert.','متن هم اصلاح شده.',45,NULL,NULL,NULL,NULL,'[{"form":"nominative_masculine","lemma":"der","partOfSpeech":"article","surface":"Der","translation":"حرف تعریف"},{"lemma":"Text","partOfSpeech":"noun","surface":"Text","translation":"متن"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"ist","translation":"بودن"},{"lemma":"auch","partOfSpeech":"adverb","surface":"auch","translation":"هم / همچنین"},{"form":"past_participle","lemma":"korrigieren","partOfSpeech":"verb","suffix":".","surface":"korrigiert","translation":"اصلاح کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_21=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_martin,4,'learner','Dann fehlt nur noch die letzte Kontrolle.','پس فقط بررسی نهایی مونده.',45,NULL,NULL,'dann fehlt nur noch die letzte kontrolle',NULL,'[{"lemma":"dann","partOfSpeech":"adverb","surface":"Dann","translation":"بعد / سپس"},{"form":"present_3sg","lemma":"fehlen","partOfSpeech":"verb","surface":"fehlt","translation":"کم بودن / وجود نداشتن"},{"lemma":"nur","partOfSpeech":"particle","surface":"nur","translation":"فقط"},{"lemma":"noch","partOfSpeech":"adverb","surface":"noch","translation":"هنوز"},{"form":"nominative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"nominative_feminine","lemma":"letzte","partOfSpeech":"adjective","surface":"letzte","translation":"آخرین"},{"lemma":"Kontrolle","partOfSpeech":"noun","suffix":".","surface":"Kontrolle","translation":"بررسی نهایی"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_22=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,5,'character','Machen wir sie zusammen?','با هم انجامش بدیم؟',45,NULL,NULL,NULL,NULL,'[{"form":"present_plural","lemma":"machen","partOfSpeech":"verb","surface":"Machen","translation":"انجام دادن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"sie","meaning":"آن","partOfSpeech":"pronoun","surface":"sie","translation":"او / آن ها"},{"lemma":"zusammen","partOfSpeech":"adverb","suffix":"?","surface":"zusammen","translation":"با هم"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_23=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_martin,6,'learner','Ja, dann werden wir rechtzeitig fertig.','آره، اون وقت به موقع تمومش می کنیم.',45,NULL,NULL,'ja dann werden wir rechtzeitig fertig',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"dann","partOfSpeech":"adverb","surface":"dann","translation":"بعد / سپس"},{"form":"present_plural","lemma":"werden","partOfSpeech":"verb","surface":"werden","translation":"شدن / خواهد"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"rechtzeitig","partOfSpeech":"adverb","surface":"rechtzeitig","translation":"به موقع"},{"lemma":"fertig","partOfSpeech":"adjective","suffix":".","surface":"fertig","translation":"تمام / آماده"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_24=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_045,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_014,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_041,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_020,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_037,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_035,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_062,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_033,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_022,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_032,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_057,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_018,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_031,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_064,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_056,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_006,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_052,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_054,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_051,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_063,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_061,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_044,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_062,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_012,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_022,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_004,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_014,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_023,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_029,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_050,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_042,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_064,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_026,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_017,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_007,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_024,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_032,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_049,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_011,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_014,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_034,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_013,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_030,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_047,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_035,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_039,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_021,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_017,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_055,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_053,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_024,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_015,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_018,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_066,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_046,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_028,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_023,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_019,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_044,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_016,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_051,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_059,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_036,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_040,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_025,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_061,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_058,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_045,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_017,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_014,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_064,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_020,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_050,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_029,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_009,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_018,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_038,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_037,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_031,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_027,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_032,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_062,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_048,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_065,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_024,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_060,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_043,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_010,'new',1,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_063,'عبارت کلیدی درس',NULL,44,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',2,NULL,v_w_020,'واژه کلیدی درس',NULL,44,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',3,v_t_1,NULL,'به پرسش آنا گوش کن',NULL,44,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',4,v_t_2,NULL,'پاسخ مارتین را با صدای بلند بگو',NULL,44,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',5,v_t_3,NULL,'به پرسش بعدی گوش کن',NULL,44,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',6,v_t_4,NULL,'پاسخ را با صدای بلند بگو',NULL,44,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',7,NULL,v_w_020,'معنی واژه کلیدی را انتخاب کن',NULL,44,'{"mode":"word_translation","question":"fertig در این درس چه معنی دارد؟","choices":["تمام / آماده","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,44,'{"source":"lesson_story","question":"پیش از جلسه چه چیزی آماده نیست؟","choices":["عددهای نهایی","تصویرها","متن"],"correctIndex":0}','{"cefr":"B1","series":86}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_011,'عبارت کلیدی درس',NULL,44,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',2,NULL,v_w_004,'واژه کلیدی درس',NULL,44,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',3,v_t_7,NULL,'به پرسش آنا گوش کن',NULL,44,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',4,v_t_8,NULL,'پاسخ مارتین را با صدای بلند بگو',NULL,44,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',5,v_t_9,NULL,'به پرسش بعدی گوش کن',NULL,44,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',6,v_t_10,NULL,'پاسخ را با صدای بلند بگو',NULL,44,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',7,NULL,v_w_004,'معنی واژه کلیدی را انتخاب کن',NULL,44,'{"mode":"word_translation","question":"auf در این درس چه معنی دارد؟","choices":["تقسیم کردن","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,44,'{"source":"lesson_story","question":"چه کسی عددها را بررسی می کند؟","choices":["مارتین","آنا","هر دو"],"correctIndex":0}','{"cefr":"B1","series":86}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_025,'عبارت کلیدی درس',NULL,45,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',2,NULL,v_w_013,'واژه کلیدی درس',NULL,45,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',3,v_t_13,NULL,'به پرسش آنا گوش کن',NULL,45,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',4,v_t_14,NULL,'پاسخ مارتین را با صدای بلند بگو',NULL,45,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',5,v_t_15,NULL,'به پرسش بعدی گوش کن',NULL,45,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',6,v_t_16,NULL,'پاسخ را با صدای بلند بگو',NULL,45,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',7,NULL,v_w_013,'معنی واژه کلیدی را انتخاب کن',NULL,45,'{"mode":"word_translation","question":"Datei در این درس چه معنی دارد؟","choices":["فایل","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,45,'{"source":"lesson_story","question":"مارتین برای صفحه های ناقص چه کار می کند؟","choices":["آن ها را کپی می کند","فایل را پاک می کند","تا فردا صبر می کند"],"correctIndex":0}','{"cefr":"B1","series":86}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',1,NULL,v_w_010,'عبارت کلیدی درس',NULL,45,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',2,NULL,v_w_027,'واژه کلیدی درس',NULL,45,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_19,NULL,'به پرسش آنا گوش کن',NULL,45,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_20,NULL,'پاسخ مارتین را با صدای بلند بگو',NULL,45,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_21,NULL,'به پرسش بعدی گوش کن',NULL,45,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_22,NULL,'پاسخ را با صدای بلند بگو',NULL,45,NULL,'{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',7,NULL,v_w_027,'معنی واژه کلیدی را انتخاب کن',NULL,45,'{"mode":"word_translation","question":"Kontrolle در این درس چه معنی دارد؟","choices":["بررسی نهایی","زمان","مسیر"],"correctIndex":0}','{"cefr":"B1","series":86}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,45,'{"source":"lesson_story","question":"در پایان فقط چه کاری باقی مانده است؟","choices":["بررسی نهایی","اصلاح متن","آماده کردن عددها"],"correctIndex":0}','{"cefr":"B1","series":86}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 086 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND storyline_key='anna-martin-b1-project' AND storyline_order BETWEEN 1 AND 4;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 086 storyline continuity.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>24 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 086 turn count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>32 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 086 activity count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (ac.config IS NULL OR JSON_EXTRACT(ac.config,'$.question') IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without task.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter AND lw.is_target=1;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 086 explicit-target count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) AS n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) duplicate_pairs;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple detected.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_series_086_v9();
DROP PROCEDURE IF EXISTS import_nova_series_086_v9;

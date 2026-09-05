-- NOVA v9.0 / B1 SERIES 091 / Der Nachbar, der oben wohnt
-- Requires canonical v9.0 and validated Series 086-090. No schema DDL.
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_series_091_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_091_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_level BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_prev_module BIGINT UNSIGNED DEFAULT NULL;
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
  SELECT id INTO v_prev_module FROM modules WHERE level_id=v_level AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_prev_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 02 missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE module_id=v_prev_module AND sort_order BETWEEN 1 AND 5 AND status IN ('validated','complete');
  IF v_count<>5 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 086-090 must be validated in sequence.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons l JOIN chapters c ON c.id=l.chapter_id WHERE c.module_id=v_prev_module AND c.sort_order BETWEEN 1 AND 5 AND l.storyline_key='anna-martin-b1-project' AND l.storyline_order BETWEEN 1 AND 20;
  IF v_count<>20 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Previous storyline orders 1-20 required.'; END IF;
  INSERT INTO modules(level_id,title,title_translation,description,description_translation,emoji,difficulty_min,difficulty_max,sort_order,status,metadata)
  SELECT v_level,'Wohnen & Nachbarschaft','خانه و همسایه ها','Anna und Jonas lösen Probleme in ihrem Wohnhaus.','آنا و یوناس مشکلات ساختمان محل زندگیشان را حل می کنند.','🏠',47,49,3,'active','{"cefr":"B1","seriesRange":[91,95]}'
  WHERE NOT EXISTS(SELECT 1 FROM modules WHERE level_id=v_level AND sort_order=3);
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 03 unavailable.'; END IF;
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status,metadata)
  SELECT v_module,'Der Nachbar, der oben wohnt','همسایه ای که طبقه بالا زندگی می کنه',NULL,NULL,4,47,47,1,'planned','{"cefr":"B1","globalChapter":11,"series":91}'
  WHERE NOT EXISTS(SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=1);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status,metadata)
  SELECT v_module,'Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,4,47,48,2,'planned','{"cefr":"B1","globalChapter":12,"series":92}'
  WHERE NOT EXISTS(SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=2);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status,metadata)
  SELECT v_module,'Könnten Sie bitte leiser sein?','می شه لطفا آروم تر باشید؟',NULL,NULL,4,48,48,3,'planned','{"cefr":"B1","globalChapter":13,"series":93}'
  WHERE NOT EXISTS(SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=3);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status,metadata)
  SELECT v_module,'Die Heizung wird morgen repariert','بخاری فردا تعمیر می شه',NULL,NULL,4,48,49,4,'planned','{"cefr":"B1","globalChapter":14,"series":94}'
  WHERE NOT EXISTS(SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=4);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status,metadata)
  SELECT v_module,'Jetzt ist alles wieder in Ordnung','حالا دوباره همه چی روبراهه',NULL,NULL,4,49,49,5,'planned','{"cefr":"B1","globalChapter":15,"series":95}'
  WHERE NOT EXISTS(SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=5);
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 03 Chapter 01 missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='Der Nachbar, der oben wohnt' AND title_translation='همسایه ای که طبقه بالا زندگی می کنه';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 091 canonical title mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 03 Chapter 01 must be empty before Series 091 import.'; END IF;
  SELECT id INTO v_c_jonas FROM characters WHERE course_id=v_course AND name='Jonas' AND gender='male' ORDER BY id LIMIT 1;
  SELECT id INTO v_c_anna FROM characters WHERE course_id=v_course AND name='Anna' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_jonas IS NULL OR v_c_anna IS NULL OR v_c_jonas=v_c_anna THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required distinct Characters Jonas and Anna missing.'; END IF;
  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='Abend' AND part_of_speech='noun' AND translation='عصر / شب' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Abend','Abend','noun','عصر / شب',47,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Der Nachbar, der oben wohnt','همسایه ای که طبقه بالا زندگی می کنه',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_001=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='aber' AND part_of_speech='conjunction' AND translation='اما' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: aber | conjunction'; END IF;
  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='achten' AND part_of_speech='verb' AND translation='توجه کردن' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'achten','achten','verb','توجه کردن',47,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"heißen","translation":"نام داشتن"},{"text":"freuen","translation":"خوشحال کردن / خوشحال شدن"},{"text":"kommen","translation":"آمدن"},{"text":"sein","translation":"بودن"}]','Der Nachbar, der oben wohnt','همسایه ای که طبقه بالا زندگی می کنه',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_003=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='als' AND part_of_speech='conjunction' AND translation='از / نسبت به' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: als | conjunction'; END IF;
  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='an' AND part_of_speech='preposition' AND translation='در / در روز' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: an | preposition'; END IF;
  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='arbeiten' AND part_of_speech='verb' AND translation='کار کردن' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: arbeiten | verb'; END IF;
  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='auch' AND part_of_speech='adverb' AND translation='هم / همچنین' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: auch | adverb'; END IF;
  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='bellen' AND part_of_speech='verb' AND translation='پارس کردن' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'bellen','bellen','verb','پارس کردن',47,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"heißen","translation":"نام داشتن"},{"text":"freuen","translation":"خوشحال کردن / خوشحال شدن"},{"text":"kommen","translation":"آمدن"},{"text":"sein","translation":"بودن"}]','Der Nachbar, der oben wohnt','همسایه ای که طبقه بالا زندگی می کنه',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_008=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='besonders' AND part_of_speech='adverb' AND translation='مخصوصا' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'besonders','besonders','adverb','مخصوصا',47,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Der Nachbar, der oben wohnt','همسایه ای که طبقه بالا زندگی می کنه',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_009=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='bitte' AND part_of_speech='particle' AND translation='لطفا' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: bitte | particle'; END IF;
  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='Boden' AND part_of_speech='noun' AND translation='زمین / کف' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Boden','Boden','noun','زمین / کف',47,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Der Nachbar, der oben wohnt','همسایه ای که طبقه بالا زندگی می کنه',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_011=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='da' AND part_of_speech='adverb' AND translation='آنجا' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: da | adverb'; END IF;
  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='darauf' AND part_of_speech='adverb' AND translation='به آن' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'darauf','darauf','adverb','به آن',47,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Der Nachbar, der oben wohnt','همسایه ای که طبقه بالا زندگی می کنه',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_013=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='Das ist der Mann, den ich gestern im Treppenhaus gesehen habe.' AND part_of_speech='phrase' AND translation='این همون مردیه که دیروز توی راه پله دیدم.' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Das ist der Mann, den ich gestern im Treppenhaus gesehen habe.','Das ist der Mann, den ich gestern im Treppenhaus gesehen habe.','phrase','این همون مردیه که دیروز توی راه پله دیدم.',47,'{"type":"phrase"}','[{"text":"Guten Morgen","translation":"صبح بخیر"},{"text":"Wie geht es dir?","translation":"حالت چطوره؟"},{"text":"Bis später","translation":"بعدا می بینمت"},{"text":"Ich heiße ...","translation":"اسم من ... است"},{"text":"Wie heißt du?","translation":"اسمت چیه؟"}]','Das ist der Mann, den ich gestern im Treppenhaus gesehen habe.','این همون مردیه که دیروز توی راه پله دیدم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_014=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: der | article'; END IF;
  SELECT id INTO v_w_016 FROM words WHERE course_id=v_course AND lemma='deshalb' AND part_of_speech='adverb' AND translation='برای همین / بنابراین' ORDER BY id LIMIT 1;
  IF v_w_016 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: deshalb | adverb'; END IF;
  SELECT id INTO v_w_017 FROM words WHERE course_id=v_course AND lemma='deutlich' AND part_of_speech='adjective' AND translation='واضح' ORDER BY id LIMIT 1;
  IF v_w_017 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'deutlich','deutlich','adjective','واضح',47,'{"type":"adjective"}','[{"text":"gut","translation":"خوب"},{"text":"super","translation":"عالی"},{"text":"alt","translation":"پیر / دارای سن"},{"text":"spät","translation":"دیر"},{"text":"rot","translation":"قرمز"}]','Der Nachbar, der oben wohnt','همسایه ای که طبقه بالا زندگی می کنه',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_017=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_018 FROM words WHERE course_id=v_course AND lemma='dort' AND part_of_speech='adverb' AND translation='آنجا' ORDER BY id LIMIT 1;
  IF v_w_018 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dort | adverb'; END IF;
  SELECT id INTO v_w_019 FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_019 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: du | pronoun'; END IF;
  SELECT id INTO v_w_020 FROM words WHERE course_id=v_course AND lemma='ein' AND part_of_speech='article' AND translation='یک / حرف تعریف نامعین' ORDER BY id LIMIT 1;
  IF v_w_020 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ein | article'; END IF;
  SELECT id INTO v_w_021 FROM words WHERE course_id=v_course AND lemma='er' AND part_of_speech='pronoun' AND translation='او (مذکر)' ORDER BY id LIMIT 1;
  IF v_w_021 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: er | pronoun'; END IF;
  SELECT id INTO v_w_022 FROM words WHERE course_id=v_course AND lemma='Er will jetzt einen Teppich kaufen, der den Lärm verringert.' AND part_of_speech='phrase' AND translation='حالا می خواد فرشی بخره که سروصدا رو کمتر کنه.' ORDER BY id LIMIT 1;
  IF v_w_022 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Er will jetzt einen Teppich kaufen, der den Lärm verringert.','Er will jetzt einen Teppich kaufen, der den Lärm verringert.','phrase','حالا می خواد فرشی بخره که سروصدا رو کمتر کنه.',47,'{"type":"phrase"}','[{"text":"Guten Morgen","translation":"صبح بخیر"},{"text":"Wie geht es dir?","translation":"حالت چطوره؟"},{"text":"Bis später","translation":"بعدا می بینمت"},{"text":"Ich heiße ...","translation":"اسم من ... است"},{"text":"Wie heißt du?","translation":"اسمت چیه؟"}]','Er will jetzt einen Teppich kaufen, der den Lärm verringert.','حالا می خواد فرشی بخره که سروصدا رو کمتر کنه.',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_022=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_023 FROM words WHERE course_id=v_course AND lemma='erwarten' AND part_of_speech='verb' AND translation='انتظار داشتن' ORDER BY id LIMIT 1;
  IF v_w_023 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'erwarten','erwarten','verb','انتظار داشتن',47,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"heißen","translation":"نام داشتن"},{"text":"freuen","translation":"خوشحال کردن / خوشحال شدن"},{"text":"kommen","translation":"آمدن"},{"text":"sein","translation":"بودن"}]','Der Nachbar, der oben wohnt','همسایه ای که طبقه بالا زندگی می کنه',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_023=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_024 FROM words WHERE course_id=v_course AND lemma='es' AND part_of_speech='pronoun' AND translation='آن / این' ORDER BY id LIMIT 1;
  IF v_w_024 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: es | pronoun'; END IF;
  SELECT id INTO v_w_025 FROM words WHERE course_id=v_course AND lemma='fragen' AND part_of_speech='verb' AND translation='پرسیدن' ORDER BY id LIMIT 1;
  IF v_w_025 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: fragen | verb'; END IF;
  SELECT id INTO v_w_026 FROM words WHERE course_id=v_course AND lemma='freundlich' AND part_of_speech='adjective' AND translation='دوستانه / مهربان' ORDER BY id LIMIT 1;
  IF v_w_026 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'freundlich','freundlich','adjective','دوستانه / مهربان',47,'{"type":"adjective"}','[{"text":"gut","translation":"خوب"},{"text":"super","translation":"عالی"},{"text":"alt","translation":"پیر / دارای سن"},{"text":"spät","translation":"دیر"},{"text":"rot","translation":"قرمز"}]','Der Nachbar, der oben wohnt','همسایه ای که طبقه بالا زندگی می کنه',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_026=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_027 FROM words WHERE course_id=v_course AND lemma='Geräusch' AND part_of_speech='noun' AND translation='صدا' ORDER BY id LIMIT 1;
  IF v_w_027 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Geräusch','Geräusch','noun','صدا',47,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Der Nachbar, der oben wohnt','همسایه ای که طبقه بالا زندگی می کنه',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_027=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_028 FROM words WHERE course_id=v_course AND lemma='Gespräch' AND part_of_speech='noun' AND translation='گفتگو' ORDER BY id LIMIT 1;
  IF v_w_028 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Gespräch','Gespräch','noun','گفتگو',47,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Der Nachbar, der oben wohnt','همسایه ای که طبقه بالا زندگی می کنه',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_028=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_029 FROM words WHERE course_id=v_course AND lemma='gestern' AND part_of_speech='adverb' AND translation='دیروز' ORDER BY id LIMIT 1;
  IF v_w_029 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: gestern | adverb'; END IF;
  SELECT id INTO v_w_030 FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_030 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: gut | adjective'; END IF;
  SELECT id INTO v_w_031 FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_031 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: haben | verb'; END IF;
  SELECT id INTO v_w_032 FROM words WHERE course_id=v_course AND lemma='heißen' AND part_of_speech='verb' AND translation='نام داشتن' ORDER BY id LIMIT 1;
  IF v_w_032 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: heißen | verb'; END IF;
  SELECT id INTO v_w_033 FROM words WHERE course_id=v_course AND lemma='Herr' AND part_of_speech='noun' AND translation='آقا' ORDER BY id LIMIT 1;
  IF v_w_033 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Herr','Herr','noun','آقا',47,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Der Nachbar, der oben wohnt','همسایه ای که طبقه بالا زندگی می کنه',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_033=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_034 FROM words WHERE course_id=v_course AND lemma='hören' AND part_of_speech='verb' AND translation='گوش دادن' ORDER BY id LIMIT 1;
  IF v_w_034 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: hören | verb'; END IF;
  SELECT id INTO v_w_035 FROM words WHERE course_id=v_course AND lemma='Hund' AND part_of_speech='noun' AND translation='سگ' ORDER BY id LIMIT 1;
  IF v_w_035 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Hund','Hund','noun','سگ',47,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Der Nachbar, der oben wohnt','همسایه ای که طبقه بالا زندگی می کنه',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_035=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_036 FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_036 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ich | pronoun'; END IF;
  SELECT id INTO v_w_037 FROM words WHERE course_id=v_course AND lemma='in' AND part_of_speech='preposition' AND translation='در / داخل' ORDER BY id LIMIT 1;
  IF v_w_037 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: in | preposition'; END IF;
  SELECT id INTO v_w_038 FROM words WHERE course_id=v_course AND lemma='isolieren' AND part_of_speech='verb' AND translation='عایق کردن' ORDER BY id LIMIT 1;
  IF v_w_038 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'isolieren','isolieren','verb','عایق کردن',47,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"heißen","translation":"نام داشتن"},{"text":"freuen","translation":"خوشحال کردن / خوشحال شدن"},{"text":"kommen","translation":"آمدن"},{"text":"sein","translation":"بودن"}]','Der Nachbar, der oben wohnt','همسایه ای که طبقه بالا زندگی می کنه',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_038=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_039 FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_039 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ja | interjection'; END IF;
  SELECT id INTO v_w_040 FROM words WHERE course_id=v_course AND lemma='jetzt' AND part_of_speech='adverb' AND translation='حالا / اکنون' ORDER BY id LIMIT 1;
  IF v_w_040 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: jetzt | adverb'; END IF;
  SELECT id INTO v_w_041 FROM words WHERE course_id=v_course AND lemma='kaufen' AND part_of_speech='verb' AND translation='خریدن' ORDER BY id LIMIT 1;
  IF v_w_041 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'kaufen','kaufen','verb','خریدن',47,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"heißen","translation":"نام داشتن"},{"text":"freuen","translation":"خوشحال کردن / خوشحال شدن"},{"text":"kommen","translation":"آمدن"},{"text":"sein","translation":"بودن"}]','Der Nachbar, der oben wohnt','همسایه ای که طبقه بالا زندگی می کنه',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_041=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_042 FROM words WHERE course_id=v_course AND lemma='kennen' AND part_of_speech='verb' AND translation='شناختن' ORDER BY id LIMIT 1;
  IF v_w_042 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'kennen','kennen','verb','شناختن',47,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"heißen","translation":"نام داشتن"},{"text":"freuen","translation":"خوشحال کردن / خوشحال شدن"},{"text":"kommen","translation":"آمدن"},{"text":"sein","translation":"بودن"}]','Der Nachbar, der oben wohnt','همسایه ای که طبقه بالا زندگی می کنه',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_042=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_043 FROM words WHERE course_id=v_course AND lemma='klingen' AND part_of_speech='verb' AND translation='به نظر رسیدن' ORDER BY id LIMIT 1;
  IF v_w_043 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: klingen | verb'; END IF;
  SELECT id INTO v_w_044 FROM words WHERE course_id=v_course AND lemma='kommen' AND part_of_speech='verb' AND translation='آمدن' ORDER BY id LIMIT 1;
  IF v_w_044 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: kommen | verb'; END IF;
  SELECT id INTO v_w_045 FROM words WHERE course_id=v_course AND lemma='können' AND part_of_speech='verb' AND translation='توانستن / بتوان' ORDER BY id LIMIT 1;
  IF v_w_045 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: können | verb'; END IF;
  SELECT id INTO v_w_046 FROM words WHERE course_id=v_course AND lemma='Lärm' AND part_of_speech='noun' AND translation='سروصدا' ORDER BY id LIMIT 1;
  IF v_w_046 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Lärm','Lärm','noun','سروصدا',47,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Der Nachbar, der oben wohnt','همسایه ای که طبقه بالا زندگی می کنه',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_046=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_047 FROM words WHERE course_id=v_course AND lemma='laut' AND part_of_speech='adjective' AND translation='پر سر و صدا' ORDER BY id LIMIT 1;
  IF v_w_047 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: laut | adjective'; END IF;
  SELECT id INTO v_w_048 FROM words WHERE course_id=v_course AND lemma='liegen' AND part_of_speech='verb' AND translation='قرار داشتن' ORDER BY id LIMIT 1;
  IF v_w_048 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'liegen','liegen','verb','قرار داشتن',47,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"heißen","translation":"نام داشتن"},{"text":"freuen","translation":"خوشحال کردن / خوشحال شدن"},{"text":"kommen","translation":"آمدن"},{"text":"sein","translation":"بودن"}]','Der Nachbar, der oben wohnt','همسایه ای که طبقه بالا زندگی می کنه',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_048=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_049 FROM words WHERE course_id=v_course AND lemma='Lösung' AND part_of_speech='noun' AND translation='راه حل' ORDER BY id LIMIT 1;
  IF v_w_049 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Lösung | noun'; END IF;
  SELECT id INTO v_w_050 FROM words WHERE course_id=v_course AND lemma='manchmal' AND part_of_speech='adverb' AND translation='گاهی' ORDER BY id LIMIT 1;
  IF v_w_050 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'manchmal','manchmal','adverb','گاهی',47,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Der Nachbar, der oben wohnt','همسایه ای که طبقه بالا زندگی می کنه',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_050=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_051 FROM words WHERE course_id=v_course AND lemma='Mann' AND part_of_speech='noun' AND translation='مرد' ORDER BY id LIMIT 1;
  IF v_w_051 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Mann','Mann','noun','مرد',47,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Der Nachbar, der oben wohnt','همسایه ای که طبقه بالا زندگی می کنه',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_051=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_052 FROM words WHERE course_id=v_course AND lemma='meistens' AND part_of_speech='adverb' AND translation='بیشتر وقت ها' ORDER BY id LIMIT 1;
  IF v_w_052 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'meistens','meistens','adverb','بیشتر وقت ها',47,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Der Nachbar, der oben wohnt','همسایه ای که طبقه بالا زندگی می کنه',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_052=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_053 FROM words WHERE course_id=v_course AND lemma='mit' AND part_of_speech='preposition' AND translation='با' ORDER BY id LIMIT 1;
  IF v_w_053 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: mit | preposition'; END IF;
  SELECT id INTO v_w_054 FROM words WHERE course_id=v_course AND lemma='Musik' AND part_of_speech='noun' AND translation='موسیقی' ORDER BY id LIMIT 1;
  IF v_w_054 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Musik | noun'; END IF;
  SELECT id INTO v_w_055 FROM words WHERE course_id=v_course AND lemma='Musiker' AND part_of_speech='noun' AND translation='موسیقی دان' ORDER BY id LIMIT 1;
  IF v_w_055 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Musiker','Musiker','noun','موسیقی دان',47,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Der Nachbar, der oben wohnt','همسایه ای که طبقه بالا زندگی می کنه',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_055=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_056 FROM words WHERE course_id=v_course AND lemma='Nachbar' AND part_of_speech='noun' AND translation='همسایه' ORDER BY id LIMIT 1;
  IF v_w_056 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Nachbar','Nachbar','noun','همسایه',47,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Der Nachbar, der oben wohnt','همسایه ای که طبقه بالا زندگی می کنه',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_056=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_057 FROM words WHERE course_id=v_course AND lemma='nein' AND part_of_speech='interjection' AND translation='نه' ORDER BY id LIMIT 1;
  IF v_w_057 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: nein | interjection'; END IF;
  SELECT id INTO v_w_058 FROM words WHERE course_id=v_course AND lemma='oben' AND part_of_speech='adverb' AND translation='بالا / طبقه بالا' ORDER BY id LIMIT 1;
  IF v_w_058 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: oben | adverb'; END IF;
  SELECT id INTO v_w_059 FROM words WHERE course_id=v_course AND lemma='oft' AND part_of_speech='adverb' AND translation='اغلب' ORDER BY id LIMIT 1;
  IF v_w_059 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: oft | adverb'; END IF;
  SELECT id INTO v_w_060 FROM words WHERE course_id=v_course AND lemma='passieren' AND part_of_speech='verb' AND translation='اتفاق افتادن' ORDER BY id LIMIT 1;
  IF v_w_060 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: passieren | verb'; END IF;
  SELECT id INTO v_w_061 FROM words WHERE course_id=v_course AND lemma='praktisch' AND part_of_speech='adjective' AND translation='کاربردی' ORDER BY id LIMIT 1;
  IF v_w_061 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'praktisch','praktisch','adjective','کاربردی',47,'{"type":"adjective"}','[{"text":"gut","translation":"خوب"},{"text":"super","translation":"عالی"},{"text":"alt","translation":"پیر / دارای سن"},{"text":"spät","translation":"دیر"},{"text":"rot","translation":"قرمز"}]','Der Nachbar, der oben wohnt','همسایه ای که طبقه بالا زندگی می کنه',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_061=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_062 FROM words WHERE course_id=v_course AND lemma='reagieren' AND part_of_speech='verb' AND translation='واکنش نشان دادن' ORDER BY id LIMIT 1;
  IF v_w_062 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'reagieren','reagieren','verb','واکنش نشان دادن',47,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"heißen","translation":"نام داشتن"},{"text":"freuen","translation":"خوشحال کردن / خوشحال شدن"},{"text":"kommen","translation":"آمدن"},{"text":"sein","translation":"بودن"}]','Der Nachbar, der oben wohnt','همسایه ای که طبقه بالا زندگی می کنه',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_062=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_063 FROM words WHERE course_id=v_course AND lemma='schieben' AND part_of_speech='verb' AND translation='هل دادن' ORDER BY id LIMIT 1;
  IF v_w_063 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'schieben','schieben','verb','هل دادن',47,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"heißen","translation":"نام داشتن"},{"text":"freuen","translation":"خوشحال کردن / خوشحال شدن"},{"text":"kommen","translation":"آمدن"},{"text":"sein","translation":"بودن"}]','Der Nachbar, der oben wohnt','همسایه ای که طبقه بالا زندگی می کنه',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_063=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_064 FROM words WHERE course_id=v_course AND lemma='Schlafzimmer' AND part_of_speech='noun' AND translation='اتاق خواب' ORDER BY id LIMIT 1;
  IF v_w_064 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Schlafzimmer | noun'; END IF;
  SELECT id INTO v_w_065 FROM words WHERE course_id=v_course AND lemma='schlecht' AND part_of_speech='adjective' AND translation='بد' ORDER BY id LIMIT 1;
  IF v_w_065 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'schlecht','schlecht','adjective','بد',47,'{"type":"adjective"}','[{"text":"gut","translation":"خوب"},{"text":"super","translation":"عالی"},{"text":"alt","translation":"پیر / دارای سن"},{"text":"spät","translation":"دیر"},{"text":"rot","translation":"قرمز"}]','Der Nachbar, der oben wohnt','همسایه ای که طبقه بالا زندگی می کنه',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_065=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_066 FROM words WHERE course_id=v_course AND lemma='sehen' AND part_of_speech='verb' AND translation='دیدن' ORDER BY id LIMIT 1;
  IF v_w_066 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sehen | verb'; END IF;
  SELECT id INTO v_w_067 FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_067 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sein | verb'; END IF;
  SELECT id INTO v_w_068 FROM words WHERE course_id=v_course AND lemma='Sie' AND part_of_speech='pronoun' AND translation='شما' ORDER BY id LIMIT 1;
  IF v_w_068 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Sie | pronoun'; END IF;
  SELECT id INTO v_w_069 FROM words WHERE course_id=v_course AND lemma='so' AND part_of_speech='adverb' AND translation='این طور / آن طور' ORDER BY id LIMIT 1;
  IF v_w_069 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: so | adverb'; END IF;
  SELECT id INTO v_w_070 FROM words WHERE course_id=v_course AND lemma='sollen' AND part_of_speech='verb' AND translation='باید / قرار است' ORDER BY id LIMIT 1;
  IF v_w_070 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sollen | verb'; END IF;
  SELECT id INTO v_w_071 FROM words WHERE course_id=v_course AND lemma='sprechen' AND part_of_speech='verb' AND translation='صحبت کردن / حرف زدن' ORDER BY id LIMIT 1;
  IF v_w_071 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sprechen | verb'; END IF;
  SELECT id INTO v_w_072 FROM words WHERE course_id=v_course AND lemma='stimmen' AND part_of_speech='verb' AND translation='درست بودن' ORDER BY id LIMIT 1;
  IF v_w_072 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: stimmen | verb'; END IF;
  SELECT id INTO v_w_073 FROM words WHERE course_id=v_course AND lemma='Stuhl' AND part_of_speech='noun' AND translation='صندلی' ORDER BY id LIMIT 1;
  IF v_w_073 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Stuhl','Stuhl','noun','صندلی',47,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Der Nachbar, der oben wohnt','همسایه ای که طبقه بالا زندگی می کنه',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_073=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_074 FROM words WHERE course_id=v_course AND lemma='Tag' AND part_of_speech='noun' AND translation='روز' ORDER BY id LIMIT 1;
  IF v_w_074 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Tag','Tag','noun','روز',47,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Der Nachbar, der oben wohnt','همسایه ای که طبقه بالا زندگی می کنه',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_074=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_075 FROM words WHERE course_id=v_course AND lemma='Teppich' AND part_of_speech='noun' AND translation='فرش' ORDER BY id LIMIT 1;
  IF v_w_075 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Teppich','Teppich','noun','فرش',47,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Der Nachbar, der oben wohnt','همسایه ای که طبقه بالا زندگی می کنه',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_075=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_076 FROM words WHERE course_id=v_course AND lemma='Treppenhaus' AND part_of_speech='noun' AND translation='راه پله' ORDER BY id LIMIT 1;
  IF v_w_076 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Treppenhaus','Treppenhaus','noun','راه پله',47,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Der Nachbar, der oben wohnt','همسایه ای که طبقه بالا زندگی می کنه',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_076=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_077 FROM words WHERE course_id=v_course AND lemma='üben' AND part_of_speech='verb' AND translation='تمرین کردن' ORDER BY id LIMIT 1;
  IF v_w_077 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'üben','üben','verb','تمرین کردن',47,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"heißen","translation":"نام داشتن"},{"text":"freuen","translation":"خوشحال کردن / خوشحال شدن"},{"text":"kommen","translation":"آمدن"},{"text":"sein","translation":"بودن"}]','Der Nachbar, der oben wohnt','همسایه ای که طبقه بالا زندگی می کنه',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_077=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_078 FROM words WHERE course_id=v_course AND lemma='über' AND part_of_speech='preposition' AND translation='بالای / درباره' ORDER BY id LIMIT 1;
  IF v_w_078 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'über','über','preposition','بالای / درباره',47,'{"type":"preposition"}','[{"text":"bis","translation":"تا"},{"text":"aus","translation":"از"},{"text":"mit","translation":"با"},{"text":"um","translation":"در ساعت / حوالی"},{"text":"in","translation":"در / داخل"}]','Der Nachbar, der oben wohnt','همسایه ای که طبقه بالا زندگی می کنه',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_078=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_079 FROM words WHERE course_id=v_course AND lemma='und' AND part_of_speech='conjunction' AND translation='و' ORDER BY id LIMIT 1;
  IF v_w_079 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: und | conjunction'; END IF;
  SELECT id INTO v_w_080 FROM words WHERE course_id=v_course AND lemma='unser' AND part_of_speech='determiner' AND translation='مال ما / ما' ORDER BY id LIMIT 1;
  IF v_w_080 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'unser','unser','determiner','مال ما / ما',47,'{"type":"determiner"}','[{"text":"welcher","translation":"کدام / چه"},{"text":"anderer","translation":"دیگر / متفاوت"},{"text":"mein","translation":"مال من / من"},{"text":"dein","translation":"مال تو / تو"},{"text":"kein","translation":"هیچ / نه یک"}]','Der Nachbar, der oben wohnt','همسایه ای که طبقه بالا زندگی می کنه',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_080=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_081 FROM words WHERE course_id=v_course AND lemma='unter' AND part_of_speech='preposition' AND translation='زیر' ORDER BY id LIMIT 1;
  IF v_w_081 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'unter','unter','preposition','زیر',47,'{"type":"preposition"}','[{"text":"bis","translation":"تا"},{"text":"aus","translation":"از"},{"text":"mit","translation":"با"},{"text":"um","translation":"در ساعت / حوالی"},{"text":"in","translation":"در / داخل"}]','Der Nachbar, der oben wohnt','همسایه ای که طبقه بالا زندگی می کنه',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_081=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_082 FROM words WHERE course_id=v_course AND lemma='verringern' AND part_of_speech='verb' AND translation='کم کردن' ORDER BY id LIMIT 1;
  IF v_w_082 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'verringern','verringern','verb','کم کردن',47,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"heißen","translation":"نام داشتن"},{"text":"freuen","translation":"خوشحال کردن / خوشحال شدن"},{"text":"kommen","translation":"آمدن"},{"text":"sein","translation":"بودن"}]','Der Nachbar, der oben wohnt','همسایه ای که طبقه بالا زندگی می کنه',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_082=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_083 FROM words WHERE course_id=v_course AND lemma='vielleicht' AND part_of_speech='adverb' AND translation='شاید' ORDER BY id LIMIT 1;
  IF v_w_083 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: vielleicht | adverb'; END IF;
  SELECT id INTO v_w_084 FROM words WHERE course_id=v_course AND lemma='Vielleicht arbeitet er in dem Zimmer, das über unserem Schlafzimmer liegt.' AND part_of_speech='phrase' AND translation='شاید توی اتاقی کار می کنه که بالای اتاق خواب ماست.' ORDER BY id LIMIT 1;
  IF v_w_084 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Vielleicht arbeitet er in dem Zimmer, das über unserem Schlafzimmer liegt.','Vielleicht arbeitet er in dem Zimmer, das über unserem Schlafzimmer liegt.','phrase','شاید توی اتاقی کار می کنه که بالای اتاق خواب ماست.',47,'{"type":"phrase"}','[{"text":"Guten Morgen","translation":"صبح بخیر"},{"text":"Wie geht es dir?","translation":"حالت چطوره؟"},{"text":"Bis später","translation":"بعدا می بینمت"},{"text":"Ich heiße ...","translation":"اسم من ... است"},{"text":"Wie heißt du?","translation":"اسمت چیه؟"}]','Vielleicht arbeitet er in dem Zimmer, das über unserem Schlafzimmer liegt.','شاید توی اتاقی کار می کنه که بالای اتاق خواب ماست.',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_084=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_085 FROM words WHERE course_id=v_course AND lemma='von' AND part_of_speech='preposition' AND translation='از / از سمت' ORDER BY id LIMIT 1;
  IF v_w_085 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: von | preposition'; END IF;
  SELECT id INTO v_w_086 FROM words WHERE course_id=v_course AND lemma='was' AND part_of_speech='pronoun' AND translation='چی / چه' ORDER BY id LIMIT 1;
  IF v_w_086 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: was | pronoun'; END IF;
  SELECT id INTO v_w_087 FROM words WHERE course_id=v_course AND lemma='Weber' AND part_of_speech='proper_noun' AND translation='وبر' ORDER BY id LIMIT 1;
  IF v_w_087 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Weber','Weber','proper_noun','وبر',47,'{"type":"proper_noun"}','[{"text":"Lena","translation":"لنا (نام زنانه)"},{"text":"Ben","translation":"بن (نام مردانه)"},{"text":"Anna","translation":"آنا (نام زنانه)"},{"text":"Jonas","translation":"یوناس (نام مردانه)"},{"text":"Mia","translation":"میا (نام زنانه)"}]','Der Nachbar, der oben wohnt','همسایه ای که طبقه بالا زندگی می کنه',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_087=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_088 FROM words WHERE course_id=v_course AND lemma='wenn' AND part_of_speech='conjunction' AND translation='اگر / وقتی' ORDER BY id LIMIT 1;
  IF v_w_088 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wenn | conjunction'; END IF;
  SELECT id INTO v_w_089 FROM words WHERE course_id=v_course AND lemma='wer' AND part_of_speech='pronoun' AND translation='چه کسی / کی' ORDER BY id LIMIT 1;
  IF v_w_089 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wer | pronoun'; END IF;
  SELECT id INTO v_w_090 FROM words WHERE course_id=v_course AND lemma='werden' AND part_of_speech='verb' AND translation='شدن / خواهد' ORDER BY id LIMIT 1;
  IF v_w_090 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: werden | verb'; END IF;
  SELECT id INTO v_w_091 FROM words WHERE course_id=v_course AND lemma='wie' AND part_of_speech='adverb' AND translation='چطور / چگونه' ORDER BY id LIMIT 1;
  IF v_w_091 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wie | adverb'; END IF;
  SELECT id INTO v_w_092 FROM words WHERE course_id=v_course AND lemma='wieder' AND part_of_speech='adverb' AND translation='دوباره' ORDER BY id LIMIT 1;
  IF v_w_092 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wieder | adverb'; END IF;
  SELECT id INTO v_w_093 FROM words WHERE course_id=v_course AND lemma='wir' AND part_of_speech='pronoun' AND translation='ما' ORDER BY id LIMIT 1;
  IF v_w_093 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wir | pronoun'; END IF;
  SELECT id INTO v_w_094 FROM words WHERE course_id=v_course AND lemma='Wir wohnen in der Wohnung unter Ihnen.' AND part_of_speech='phrase' AND translation='ما در واحد زیر شما زندگی می کنیم.' ORDER BY id LIMIT 1;
  IF v_w_094 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Wir wohnen in der Wohnung unter Ihnen.','Wir wohnen in der Wohnung unter Ihnen.','phrase','ما در واحد زیر شما زندگی می کنیم.',47,'{"type":"phrase"}','[{"text":"Guten Morgen","translation":"صبح بخیر"},{"text":"Wie geht es dir?","translation":"حالت چطوره؟"},{"text":"Bis später","translation":"بعدا می بینمت"},{"text":"Ich heiße ...","translation":"اسم من ... است"},{"text":"Wie heißt du?","translation":"اسمت چیه؟"}]','Wir wohnen in der Wohnung unter Ihnen.','ما در واحد زیر شما زندگی می کنیم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_094=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_095 FROM words WHERE course_id=v_course AND lemma='wissen' AND part_of_speech='verb' AND translation='دانستن' ORDER BY id LIMIT 1;
  IF v_w_095 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wissen | verb'; END IF;
  SELECT id INTO v_w_096 FROM words WHERE course_id=v_course AND lemma='wohnen' AND part_of_speech='verb' AND translation='زندگی کردن / ساکن بودن' ORDER BY id LIMIT 1;
  IF v_w_096 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wohnen | verb'; END IF;
  SELECT id INTO v_w_097 FROM words WHERE course_id=v_course AND lemma='Wohnung' AND part_of_speech='noun' AND translation='خانه / آپارتمان' ORDER BY id LIMIT 1;
  IF v_w_097 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Wohnung | noun'; END IF;
  SELECT id INTO v_w_098 FROM words WHERE course_id=v_course AND lemma='wollen' AND part_of_speech='verb' AND translation='خواستن' ORDER BY id LIMIT 1;
  IF v_w_098 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wollen | verb'; END IF;
  SELECT id INTO v_w_099 FROM words WHERE course_id=v_course AND lemma='ziemlich' AND part_of_speech='adverb' AND translation='نسبتا / خیلی' ORDER BY id LIMIT 1;
  IF v_w_099 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'ziemlich','ziemlich','adverb','نسبتا / خیلی',47,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Der Nachbar, der oben wohnt','همسایه ای که طبقه بالا زندگی می کنه',NULL,NULL,'{"cefr":"B1","introducedInSeries":91}');
    SET v_w_099=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_100 FROM words WHERE course_id=v_course AND lemma='Zimmer' AND part_of_speech='noun' AND translation='اتاق' ORDER BY id LIMIT 1;
  IF v_w_100 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Zimmer | noun'; END IF;
  SELECT id INTO v_w_101 FROM words WHERE course_id=v_course AND lemma='zuerst' AND part_of_speech='adverb' AND translation='اول / ابتدا' ORDER BY id LIMIT 1;
  IF v_w_101 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zuerst | adverb'; END IF;
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_jonas,v_c_anna,'Den Nachbarn erkennen','شناختن همسایه','Anna und Jonas sprechen über den Nachbarn aus der oberen Wohnung.','آنا و یوناس درباره همسایه طبقه بالا صحبت می کنند.','story','anna-jonas-b1-neighborhood',1,47,155,1,'validated','{"relationship":"couple","context":"meet-upstairs-neighbor","cefr":"B1","storyArc":"identify-understand-speak-resolve"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_jonas,1,'character','Kennst du den Nachbarn, der über uns wohnt?','همسایه ای رو که بالای ما زندگی می کنه می شناسی؟',47,NULL,NULL,NULL,NULL,'[{"form":"present_2sg","lemma":"kennen","partOfSpeech":"verb","surface":"Kennst","translation":"شناختن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"accusative_masculine","lemma":"der","partOfSpeech":"article","surface":"den","translation":"حرف تعریف"},{"form":"accusative","lemma":"Nachbar","partOfSpeech":"noun","suffix":",","surface":"Nachbarn","translation":"همسایه"},{"form":"nominative_masculine","lemma":"der","partOfSpeech":"article","surface":"der","translation":"حرف تعریف"},{"lemma":"über","partOfSpeech":"preposition","surface":"über","translation":"بالای / درباره"},{"form":"dative","lemma":"wir","partOfSpeech":"pronoun","surface":"uns","translation":"ما"},{"form":"present_3sg","lemma":"wohnen","partOfSpeech":"verb","suffix":"?","surface":"wohnt","translation":"زندگی کردن / ساکن بودن"}]','Relativsätze','ضمیر موصولی اطلاعات بیشتری درباره اسم می دهد.','{"focus":"relative_clause","relativePronouns":["der","den","das","die"]}','{"cefr":"B1","course":"de-fa","series":91}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,2,'learner','Ja, das ist der Mann, den ich gestern im Treppenhaus gesehen habe.','آره، این همون مردیه که دیروز توی راه پله دیدم.',47,NULL,NULL,'ja das ist der mann den ich gestern im treppenhaus gesehen habe',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"form":"neuter","lemma":"der","partOfSpeech":"article","surface":"das","translation":"حرف تعریف"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"ist","translation":"بودن"},{"form":"nominative_masculine","lemma":"der","partOfSpeech":"article","surface":"der","translation":"حرف تعریف"},{"lemma":"Mann","partOfSpeech":"noun","suffix":",","surface":"Mann","translation":"مرد"},{"form":"accusative_masculine","lemma":"der","partOfSpeech":"article","surface":"den","translation":"حرف تعریف"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"gestern","partOfSpeech":"adverb","surface":"gestern","translation":"دیروز"},{"form":"in_dem","lemma":"in","partOfSpeech":"preposition","surface":"im","translation":"در / داخل"},{"lemma":"Treppenhaus","partOfSpeech":"noun","surface":"Treppenhaus","translation":"راه پله"},{"form":"participle_II","lemma":"sehen","partOfSpeech":"verb","surface":"gesehen","translation":"دیدن"},{"form":"present_1sg","lemma":"haben","partOfSpeech":"verb","suffix":".","surface":"habe","translation":"داشتن"}]','Relativsätze','ضمیر موصولی اطلاعات بیشتری درباره اسم می دهد.','{"focus":"relative_clause","relativePronouns":["der","den","das","die"]}','{"cefr":"B1","course":"de-fa","series":91}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_jonas,3,'character','Er hat einen Hund, der oft bellt.','اون یک سگ داره که زیاد پارس می کنه.',47,NULL,NULL,NULL,NULL,'[{"lemma":"er","partOfSpeech":"pronoun","surface":"Er","translation":"او (مذکر)"},{"form":"present_3sg","lemma":"haben","partOfSpeech":"verb","surface":"hat","translation":"داشتن"},{"form":"accusative_masculine","lemma":"ein","partOfSpeech":"article","surface":"einen","translation":"یک / حرف تعریف نامعین"},{"lemma":"Hund","partOfSpeech":"noun","suffix":",","surface":"Hund","translation":"سگ"},{"form":"nominative_masculine","lemma":"der","partOfSpeech":"article","surface":"der","translation":"حرف تعریف"},{"lemma":"oft","partOfSpeech":"adverb","surface":"oft","translation":"اغلب"},{"form":"present_3sg","lemma":"bellen","partOfSpeech":"verb","suffix":".","surface":"bellt","translation":"پارس کردن"}]','Relativsätze','ضمیر موصولی اطلاعات بیشتری درباره اسم می دهد.','{"focus":"relative_clause","relativePronouns":["der","den","das","die"]}','{"cefr":"B1","course":"de-fa","series":91}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,4,'learner','Stimmt, aber der Hund ist meistens freundlich.','درسته، ولی سگ بیشتر وقت ها مهربونه.',47,NULL,NULL,'stimmt aber der hund ist meistens freundlich',NULL,'[{"form":"present_3sg","lemma":"stimmen","partOfSpeech":"verb","suffix":",","surface":"Stimmt","translation":"درست بودن"},{"lemma":"aber","partOfSpeech":"conjunction","surface":"aber","translation":"اما"},{"form":"nominative_masculine","lemma":"der","partOfSpeech":"article","surface":"der","translation":"حرف تعریف"},{"lemma":"Hund","partOfSpeech":"noun","surface":"Hund","translation":"سگ"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"ist","translation":"بودن"},{"lemma":"meistens","partOfSpeech":"adverb","surface":"meistens","translation":"بیشتر وقت ها"},{"lemma":"freundlich","partOfSpeech":"adjective","suffix":".","surface":"freundlich","translation":"دوستانه / مهربان"}]','Relativsätze','ضمیر موصولی اطلاعات بیشتری درباره اسم می دهد.','{"focus":"relative_clause","relativePronouns":["der","den","das","die"]}','{"cefr":"B1","course":"de-fa","series":91}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_jonas,5,'character','Weißt du, wie der Nachbar heißt?','می دونی همسایه چه اسمی داره؟',47,NULL,NULL,NULL,NULL,'[{"form":"present_2sg","lemma":"wissen","partOfSpeech":"verb","surface":"Weißt","translation":"دانستن"},{"lemma":"du","partOfSpeech":"pronoun","suffix":",","surface":"du","translation":"تو"},{"lemma":"wie","partOfSpeech":"adverb","surface":"wie","translation":"چطور / چگونه"},{"form":"nominative_masculine","lemma":"der","partOfSpeech":"article","surface":"der","translation":"حرف تعریف"},{"lemma":"Nachbar","partOfSpeech":"noun","surface":"Nachbar","translation":"همسایه"},{"form":"present_3sg","lemma":"heißen","partOfSpeech":"verb","suffix":"?","surface":"heißt","translation":"نام داشتن"}]','Relativsätze','ضمیر موصولی اطلاعات بیشتری درباره اسم می دهد.','{"focus":"relative_clause","relativePronouns":["der","den","das","die"]}','{"cefr":"B1","course":"de-fa","series":91}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,6,'learner','Nein, aber ich frage ihn, wenn ich ihn wieder sehe.','نه، ولی اگه دوباره ببینمش ازش می پرسم.',47,NULL,NULL,'nein aber ich frage ihn wenn ich ihn wieder sehe',NULL,'[{"lemma":"nein","partOfSpeech":"interjection","suffix":",","surface":"Nein","translation":"نه"},{"lemma":"aber","partOfSpeech":"conjunction","surface":"aber","translation":"اما"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"present_1sg","lemma":"fragen","partOfSpeech":"verb","surface":"frage","translation":"پرسیدن"},{"form":"accusative_masculine","lemma":"er","partOfSpeech":"pronoun","suffix":",","surface":"ihn","translation":"او (مذکر)"},{"lemma":"wenn","partOfSpeech":"conjunction","surface":"wenn","translation":"اگر / وقتی"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"accusative_masculine","lemma":"er","partOfSpeech":"pronoun","surface":"ihn","translation":"او (مذکر)"},{"lemma":"wieder","partOfSpeech":"adverb","surface":"wieder","translation":"دوباره"},{"form":"present_1sg","lemma":"sehen","partOfSpeech":"verb","suffix":".","surface":"sehe","translation":"دیدن"}]','Relativsätze','ضمیر موصولی اطلاعات بیشتری درباره اسم می دهد.','{"focus":"relative_clause","relativePronouns":["der","den","das","die"]}','{"cefr":"B1","course":"de-fa","series":91}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_042,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_019,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_015,'review',0,8);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_056,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_078,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_093,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_096,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_039,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_067,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_051,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_036,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_029,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_037,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_076,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_066,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_031,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_021,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_020,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_035,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_059,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_008,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_072,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_002,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_052,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_026,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_095,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_091,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_032,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_057,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_025,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_088,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_092,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_014,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_014,'عبارت کلیدی درس',NULL,47,NULL,'{"cefr":"B1","series":91}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',2,NULL,v_w_042,'واژه کلیدی درس',NULL,47,NULL,'{"cefr":"B1","series":91}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',3,v_t_1,NULL,'به جمله یوناس گوش کن',NULL,47,NULL,'{"cefr":"B1","series":91}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',4,v_t_2,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,47,NULL,'{"cefr":"B1","series":91}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',5,v_t_3,NULL,'به جمله بعدی گوش کن',NULL,47,NULL,'{"cefr":"B1","series":91}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',6,v_t_4,NULL,'پاسخ را با صدای بلند بگو',NULL,47,NULL,'{"cefr":"B1","series":91}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',7,NULL,v_w_042,'معنی واژه کلیدی را انتخاب کن',NULL,47,'{"mode":"word_translation","question":"kennen در این درس چه معنی دارد؟","choices":["شناختن","رفتن","نام داشتن"],"correctIndex":0}','{"cefr":"B1","series":91}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,47,'{"source":"lesson_story","question":"آنا همسایه را کجا دیده بود؟","choices":["در راه پله","در محل کار","در ایستگاه"],"correctIndex":0}','{"cefr":"B1","series":91}');
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_jonas,v_c_anna,'Geräusche von oben','صداهای طبقه بالا','Die beiden versuchen, die Geräusche aus der oberen Wohnung zu verstehen.','آن دو تلاش می کنند دلیل صداهای طبقه بالا را بفهمند.','story','anna-jonas-b1-neighborhood',2,47,155,2,'validated','{"relationship":"couple","context":"meet-upstairs-neighbor","cefr":"B1","storyArc":"identify-understand-speak-resolve"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_jonas,1,'character','Hast du das Geräusch gehört, das von oben kam?','صدایی رو که از بالا اومد شنیدی؟',47,NULL,NULL,NULL,NULL,'[{"form":"present_2sg","lemma":"haben","partOfSpeech":"verb","surface":"Hast","translation":"داشتن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"neuter","lemma":"der","partOfSpeech":"article","surface":"das","translation":"حرف تعریف"},{"lemma":"Geräusch","partOfSpeech":"noun","surface":"Geräusch","translation":"صدا"},{"form":"participle_II","lemma":"hören","partOfSpeech":"verb","suffix":",","surface":"gehört","translation":"گوش دادن"},{"form":"neuter","lemma":"der","partOfSpeech":"article","surface":"das","translation":"حرف تعریف"},{"lemma":"von","partOfSpeech":"preposition","surface":"von","translation":"از / از سمت"},{"lemma":"oben","partOfSpeech":"adverb","surface":"oben","translation":"بالا / طبقه بالا"},{"form":"preterite_3sg","lemma":"kommen","partOfSpeech":"verb","suffix":"?","surface":"kam","translation":"آمدن"}]','Relativsätze','ضمیر موصولی اطلاعات بیشتری درباره اسم می دهد.','{"focus":"relative_clause","relativePronouns":["der","den","das","die"]}','{"cefr":"B1","course":"de-fa","series":91}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,2,'learner','Ja, es klang wie ein Stuhl, der über den Boden geschoben wurde.','آره، مثل صدای صندلی بود که روی زمین کشیده شد.',47,NULL,NULL,'ja es klang wie ein stuhl der über den boden geschoben wurde',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"es","partOfSpeech":"pronoun","surface":"es","translation":"آن / این"},{"form":"preterite_3sg","lemma":"klingen","partOfSpeech":"verb","surface":"klang","translation":"به نظر رسیدن"},{"lemma":"wie","partOfSpeech":"adverb","surface":"wie","translation":"چطور / چگونه"},{"form":"nominative_masculine","lemma":"ein","partOfSpeech":"article","surface":"ein","translation":"یک / حرف تعریف نامعین"},{"lemma":"Stuhl","partOfSpeech":"noun","suffix":",","surface":"Stuhl","translation":"صندلی"},{"form":"nominative_masculine","lemma":"der","partOfSpeech":"article","surface":"der","translation":"حرف تعریف"},{"lemma":"über","partOfSpeech":"preposition","surface":"über","translation":"بالای / درباره"},{"form":"accusative_masculine","lemma":"der","partOfSpeech":"article","surface":"den","translation":"حرف تعریف"},{"lemma":"Boden","partOfSpeech":"noun","surface":"Boden","translation":"زمین / کف"},{"form":"participle_II","lemma":"schieben","partOfSpeech":"verb","surface":"geschoben","translation":"هل دادن"},{"form":"preterite_3sg","lemma":"werden","partOfSpeech":"verb","suffix":".","surface":"wurde","translation":"شدن / خواهد"}]','Relativsätze','ضمیر موصولی اطلاعات بیشتری درباره اسم می دهد.','{"focus":"relative_clause","relativePronouns":["der","den","das","die"]}','{"cefr":"B1","course":"de-fa","series":91}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_jonas,3,'character','Es passiert oft am Abend.','این اتفاق عصرها زیاد می افته.',47,NULL,NULL,NULL,NULL,'[{"lemma":"es","partOfSpeech":"pronoun","surface":"Es","translation":"آن / این"},{"form":"present_3sg","lemma":"passieren","partOfSpeech":"verb","surface":"passiert","translation":"اتفاق افتادن"},{"lemma":"oft","partOfSpeech":"adverb","surface":"oft","translation":"اغلب"},{"form":"an_dem","lemma":"an","partOfSpeech":"preposition","surface":"am","translation":"در / در روز"},{"lemma":"Abend","partOfSpeech":"noun","suffix":".","surface":"Abend","translation":"عصر / شب"}]','Relativsätze','ضمیر موصولی اطلاعات بیشتری درباره اسم می دهد.','{"focus":"relative_clause","relativePronouns":["der","den","das","die"]}','{"cefr":"B1","course":"de-fa","series":91}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,4,'learner','Vielleicht arbeitet er in dem Zimmer, das über unserem Schlafzimmer liegt.','شاید توی اتاقی کار می کنه که بالای اتاق خواب ماست.',47,NULL,NULL,'vielleicht arbeitet er in dem zimmer das über unserem schlafzimmer liegt',NULL,'[{"lemma":"vielleicht","partOfSpeech":"adverb","surface":"Vielleicht","translation":"شاید"},{"form":"present_3sg","lemma":"arbeiten","partOfSpeech":"verb","surface":"arbeitet","translation":"کار کردن"},{"lemma":"er","partOfSpeech":"pronoun","surface":"er","translation":"او (مذکر)"},{"lemma":"in","partOfSpeech":"preposition","surface":"in","translation":"در / داخل"},{"form":"dative_neuter","lemma":"der","partOfSpeech":"article","surface":"dem","translation":"حرف تعریف"},{"lemma":"Zimmer","partOfSpeech":"noun","suffix":",","surface":"Zimmer","translation":"اتاق"},{"form":"neuter","lemma":"der","partOfSpeech":"article","surface":"das","translation":"حرف تعریف"},{"lemma":"über","partOfSpeech":"preposition","surface":"über","translation":"بالای / درباره"},{"form":"dative_neuter","lemma":"unser","partOfSpeech":"determiner","surface":"unserem","translation":"مال ما / ما"},{"lemma":"Schlafzimmer","partOfSpeech":"noun","surface":"Schlafzimmer","translation":"اتاق خواب"},{"form":"present_3sg","lemma":"liegen","partOfSpeech":"verb","suffix":".","surface":"liegt","translation":"قرار داشتن"}]','Relativsätze','ضمیر موصولی اطلاعات بیشتری درباره اسم می دهد.','{"focus":"relative_clause","relativePronouns":["der","den","das","die"]}','{"cefr":"B1","course":"de-fa","series":91}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_jonas,5,'character','Sollen wir zuerst mit ihm sprechen?','اول باهاش صحبت کنیم؟',47,NULL,NULL,NULL,NULL,'[{"form":"present_1pl","lemma":"sollen","partOfSpeech":"verb","surface":"Sollen","translation":"باید / قرار است"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"zuerst","partOfSpeech":"adverb","surface":"zuerst","translation":"اول / ابتدا"},{"lemma":"mit","partOfSpeech":"preposition","surface":"mit","translation":"با"},{"form":"dative_masculine","lemma":"er","partOfSpeech":"pronoun","surface":"ihm","translation":"او (مذکر)"},{"form":"infinitive","lemma":"sprechen","partOfSpeech":"verb","suffix":"?","surface":"sprechen","translation":"صحبت کردن / حرف زدن"}]','Relativsätze','ضمیر موصولی اطلاعات بیشتری درباره اسم می دهد.','{"focus":"relative_clause","relativePronouns":["der","den","das","die"]}','{"cefr":"B1","course":"de-fa","series":91}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,6,'learner','Ja, wir können freundlich fragen, was dort passiert.','آره، می تونیم دوستانه بپرسیم اونجا چه اتفاقی می افته.',47,NULL,NULL,'ja wir können freundlich fragen was dort passiert',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"form":"infinitive","lemma":"können","partOfSpeech":"verb","surface":"können","translation":"توانستن / بتوان"},{"lemma":"freundlich","partOfSpeech":"adjective","surface":"freundlich","translation":"دوستانه / مهربان"},{"form":"infinitive","lemma":"fragen","partOfSpeech":"verb","suffix":",","surface":"fragen","translation":"پرسیدن"},{"lemma":"was","partOfSpeech":"pronoun","surface":"was","translation":"چی / چه"},{"lemma":"dort","partOfSpeech":"adverb","surface":"dort","translation":"آنجا"},{"form":"present_3sg","lemma":"passieren","partOfSpeech":"verb","suffix":".","surface":"passiert","translation":"اتفاق افتادن"}]','Relativsätze','ضمیر موصولی اطلاعات بیشتری درباره اسم می دهد.','{"focus":"relative_clause","relativePronouns":["der","den","das","die"]}','{"cefr":"B1","course":"de-fa","series":91}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_031,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_019,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_015,'review',0,6);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_027,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_034,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_085,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_058,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_044,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_039,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_024,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_043,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_091,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_020,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_073,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_078,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_011,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_063,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_090,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_060,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_059,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_001,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_083,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_021,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_037,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_100,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_080,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_064,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_048,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_070,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_093,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_101,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_053,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_071,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_045,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_026,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_025,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_086,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_018,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_084,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_084,'عبارت کلیدی درس',NULL,47,NULL,'{"cefr":"B1","series":91}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',2,NULL,v_w_027,'واژه کلیدی درس',NULL,47,NULL,'{"cefr":"B1","series":91}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',3,v_t_7,NULL,'به جمله یوناس گوش کن',NULL,47,NULL,'{"cefr":"B1","series":91}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',4,v_t_8,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,47,NULL,'{"cefr":"B1","series":91}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',5,v_t_9,NULL,'به جمله بعدی گوش کن',NULL,47,NULL,'{"cefr":"B1","series":91}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',6,v_t_10,NULL,'پاسخ را با صدای بلند بگو',NULL,47,NULL,'{"cefr":"B1","series":91}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',7,NULL,v_w_027,'معنی واژه کلیدی را انتخاب کن',NULL,47,'{"mode":"word_translation","question":"Geräusch در این درس چه معنی دارد؟","choices":["صدا","صبح","قهوه"],"correctIndex":0}','{"cefr":"B1","series":91}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,47,'{"source":"lesson_story","question":"صدای طبقه بالا شبیه چه چیزی بود؟","choices":["صدای کشیده شدن صندلی","صدای زنگ تلفن","صدای آب"],"correctIndex":0}','{"cefr":"B1","series":91}');
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_jonas,v_c_anna,'Ein ruhiges Gespräch','یک گفتگوی آرام','Anna und Jonas sprechen höflich mit Herrn Weber über den Lärm.','آنا و یوناس مودبانه با آقای وبر درباره سروصدا صحبت می کنند.','story','anna-jonas-b1-neighborhood',3,47,155,3,'validated','{"relationship":"couple","context":"meet-upstairs-neighbor","cefr":"B1","storyArc":"identify-understand-speak-resolve"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_jonas,1,'character','Da kommt der Nachbar, von dem wir gesprochen haben.','همون همسایه ای که درباره اش حرف زدیم داره میاد.',47,NULL,NULL,NULL,NULL,'[{"lemma":"da","partOfSpeech":"adverb","surface":"Da","translation":"آنجا"},{"form":"present_3sg","lemma":"kommen","partOfSpeech":"verb","surface":"kommt","translation":"آمدن"},{"form":"nominative_masculine","lemma":"der","partOfSpeech":"article","surface":"der","translation":"حرف تعریف"},{"lemma":"Nachbar","partOfSpeech":"noun","suffix":",","surface":"Nachbar","translation":"همسایه"},{"lemma":"von","partOfSpeech":"preposition","surface":"von","translation":"از / از سمت"},{"form":"dative_neuter","lemma":"der","partOfSpeech":"article","surface":"dem","translation":"حرف تعریف"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"form":"participle_II","lemma":"sprechen","partOfSpeech":"verb","surface":"gesprochen","translation":"صحبت کردن / حرف زدن"},{"form":"infinitive","lemma":"haben","partOfSpeech":"verb","suffix":".","surface":"haben","translation":"داشتن"}]','Relativsätze','ضمیر موصولی اطلاعات بیشتری درباره اسم می دهد.','{"focus":"relative_clause","relativePronouns":["der","den","das","die"]}','{"cefr":"B1","course":"de-fa","series":91}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,2,'learner','Guten Tag, wir wohnen in der Wohnung unter Ihnen.','روز بخیر، ما در واحد زیر شما زندگی می کنیم.',47,NULL,NULL,'guten tag wir wohnen in der wohnung unter ihnen',NULL,'[{"form":"accusative_masculine","lemma":"gut","partOfSpeech":"adjective","surface":"Guten","translation":"خوب"},{"lemma":"Tag","partOfSpeech":"noun","suffix":",","surface":"Tag","translation":"روز"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"form":"present_1pl","lemma":"wohnen","partOfSpeech":"verb","surface":"wohnen","translation":"زندگی کردن / ساکن بودن"},{"lemma":"in","partOfSpeech":"preposition","surface":"in","translation":"در / داخل"},{"form":"nominative_masculine","lemma":"der","partOfSpeech":"article","surface":"der","translation":"حرف تعریف"},{"lemma":"Wohnung","partOfSpeech":"noun","surface":"Wohnung","translation":"خانه / آپارتمان"},{"lemma":"unter","partOfSpeech":"preposition","surface":"unter","translation":"زیر"},{"form":"dative_formal","lemma":"Sie","partOfSpeech":"pronoun","suffix":".","surface":"Ihnen","translation":"شما"}]','Relativsätze','ضمیر موصولی اطلاعات بیشتری درباره اسم می دهد.','{"focus":"relative_clause","relativePronouns":["der","den","das","die"]}','{"cefr":"B1","course":"de-fa","series":91}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_jonas,3,'character','Wir hören manchmal Geräusche, die ziemlich laut sind.','گاهی صداهایی می شنویم که خیلی بلندند.',47,NULL,NULL,NULL,NULL,'[{"lemma":"wir","partOfSpeech":"pronoun","surface":"Wir","translation":"ما"},{"form":"present_1pl","lemma":"hören","partOfSpeech":"verb","surface":"hören","translation":"گوش دادن"},{"lemma":"manchmal","partOfSpeech":"adverb","surface":"manchmal","translation":"گاهی"},{"form":"plural","lemma":"Geräusch","partOfSpeech":"noun","suffix":",","surface":"Geräusche","translation":"صدا"},{"form":"plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"ziemlich","partOfSpeech":"adverb","surface":"ziemlich","translation":"نسبتا / خیلی"},{"lemma":"laut","partOfSpeech":"adjective","surface":"laut","translation":"پر سر و صدا"},{"form":"present_3pl","lemma":"sein","partOfSpeech":"verb","suffix":".","surface":"sind","translation":"بودن"}]','Relativsätze','ضمیر موصولی اطلاعات بیشتری درباره اسم می دهد.','{"focus":"relative_clause","relativePronouns":["der","den","das","die"]}','{"cefr":"B1","course":"de-fa","series":91}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,4,'learner','Könnten Sie bitte darauf achten, besonders am Abend?','می شه لطفا بهش توجه کنید، مخصوصا عصرها؟',47,NULL,NULL,'könnten sie bitte darauf achten besonders am abend',NULL,'[{"form":"konjunktiv_II_formal","lemma":"können","partOfSpeech":"verb","surface":"Könnten","translation":"توانستن / بتوان"},{"form":"formal","lemma":"Sie","partOfSpeech":"pronoun","surface":"Sie","translation":"شما"},{"lemma":"bitte","partOfSpeech":"particle","surface":"bitte","translation":"لطفا"},{"lemma":"darauf","partOfSpeech":"adverb","surface":"darauf","translation":"به آن"},{"form":"infinitive","lemma":"achten","partOfSpeech":"verb","suffix":",","surface":"achten","translation":"توجه کردن"},{"lemma":"besonders","partOfSpeech":"adverb","surface":"besonders","translation":"مخصوصا"},{"form":"an_dem","lemma":"an","partOfSpeech":"preposition","surface":"am","translation":"در / در روز"},{"lemma":"Abend","partOfSpeech":"noun","suffix":"?","surface":"Abend","translation":"عصر / شب"}]','Relativsätze','ضمیر موصولی اطلاعات بیشتری درباره اسم می دهد.','{"focus":"relative_clause","relativePronouns":["der","den","das","die"]}','{"cefr":"B1","course":"de-fa","series":91}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_jonas,5,'character','Er hat freundlich reagiert.','برخوردش دوستانه بود.',47,NULL,NULL,NULL,NULL,'[{"lemma":"er","partOfSpeech":"pronoun","surface":"Er","translation":"او (مذکر)"},{"form":"present_3sg","lemma":"haben","partOfSpeech":"verb","surface":"hat","translation":"داشتن"},{"lemma":"freundlich","partOfSpeech":"adjective","surface":"freundlich","translation":"دوستانه / مهربان"},{"form":"participle_II","lemma":"reagieren","partOfSpeech":"verb","suffix":".","surface":"reagiert","translation":"واکنش نشان دادن"}]','Relativsätze','ضمیر موصولی اطلاعات بیشتری درباره اسم می دهد.','{"focus":"relative_clause","relativePronouns":["der","den","das","die"]}','{"cefr":"B1","course":"de-fa","series":91}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,6,'learner','Ja, das Gespräch war besser, als ich erwartet hatte.','آره، گفتگو بهتر از چیزی بود که انتظار داشتم.',47,NULL,NULL,'ja das gespräch war besser als ich erwartet hatte',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"form":"neuter","lemma":"der","partOfSpeech":"article","surface":"das","translation":"حرف تعریف"},{"lemma":"Gespräch","partOfSpeech":"noun","surface":"Gespräch","translation":"گفتگو"},{"form":"preterite_3sg","lemma":"sein","partOfSpeech":"verb","surface":"war","translation":"بودن"},{"form":"comparative","lemma":"gut","partOfSpeech":"adjective","suffix":",","surface":"besser","translation":"خوب"},{"lemma":"als","partOfSpeech":"conjunction","surface":"als","translation":"از / نسبت به"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"participle_II","lemma":"erwarten","partOfSpeech":"verb","surface":"erwartet","translation":"انتظار داشتن"},{"form":"preterite_1sg","lemma":"haben","partOfSpeech":"verb","suffix":".","surface":"hatte","translation":"داشتن"}]','Relativsätze','ضمیر موصولی اطلاعات بیشتری درباره اسم می دهد.','{"focus":"relative_clause","relativePronouns":["der","den","das","die"]}','{"cefr":"B1","course":"de-fa","series":91}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_044,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_015,'review',0,5);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_056,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_085,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_093,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_071,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_031,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_030,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_074,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_096,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_037,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_097,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_081,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_068,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_034,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_050,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_027,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_099,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_047,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_067,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_045,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_010,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_013,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_003,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_009,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_001,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_021,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_026,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_062,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_039,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_028,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_036,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_023,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_094,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_094,'عبارت کلیدی درس',NULL,47,NULL,'{"cefr":"B1","series":91}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',2,NULL,v_w_056,'واژه کلیدی درس',NULL,47,NULL,'{"cefr":"B1","series":91}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',3,v_t_13,NULL,'به جمله یوناس گوش کن',NULL,47,NULL,'{"cefr":"B1","series":91}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',4,v_t_14,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,47,NULL,'{"cefr":"B1","series":91}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',5,v_t_15,NULL,'به جمله بعدی گوش کن',NULL,47,NULL,'{"cefr":"B1","series":91}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',6,v_t_16,NULL,'پاسخ را با صدای بلند بگو',NULL,47,NULL,'{"cefr":"B1","series":91}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',7,NULL,v_w_056,'معنی واژه کلیدی را انتخاب کن',NULL,47,'{"mode":"word_translation","question":"Nachbar در این درس چه معنی دارد؟","choices":["همسایه","صبح","قهوه"],"correctIndex":0}','{"cefr":"B1","series":91}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,47,'{"source":"lesson_story","question":"آنا و یوناس درباره چه چیزی با همسایه صحبت کردند؟","choices":["سروصدای عصرها","هزینه اجاره","رنگ ساختمان"],"correctIndex":0}','{"cefr":"B1","series":91}');
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_jonas,v_c_anna,'Herr Weber stellt sich vor','آقای وبر خودش را معرفی می کند','Nach dem Gespräch verstehen Anna und Jonas ihren Nachbarn besser.','بعد از گفتگو آنا و یوناس همسایه شان را بهتر می شناسند.','story','anna-jonas-b1-neighborhood',4,47,155,4,'validated','{"relationship":"couple","context":"meet-upstairs-neighbor","cefr":"B1","storyArc":"identify-understand-speak-resolve"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_jonas,1,'character','Der Nachbar, der oben wohnt, heißt Herr Weber.','همسایه ای که بالا زندگی می کنه آقای وبره.',47,NULL,NULL,NULL,NULL,'[{"form":"nominative_masculine","lemma":"der","partOfSpeech":"article","surface":"Der","translation":"حرف تعریف"},{"lemma":"Nachbar","partOfSpeech":"noun","suffix":",","surface":"Nachbar","translation":"همسایه"},{"form":"nominative_masculine","lemma":"der","partOfSpeech":"article","surface":"der","translation":"حرف تعریف"},{"lemma":"oben","partOfSpeech":"adverb","surface":"oben","translation":"بالا / طبقه بالا"},{"form":"present_3sg","lemma":"wohnen","partOfSpeech":"verb","suffix":",","surface":"wohnt","translation":"زندگی کردن / ساکن بودن"},{"form":"present_3sg","lemma":"heißen","partOfSpeech":"verb","surface":"heißt","translation":"نام داشتن"},{"lemma":"Herr","partOfSpeech":"noun","surface":"Herr","translation":"آقا"},{"lemma":"Weber","partOfSpeech":"proper_noun","suffix":".","surface":"Weber","translation":"وبر"}]','Relativsätze','ضمیر موصولی اطلاعات بیشتری درباره اسم می دهد.','{"focus":"relative_clause","relativePronouns":["der","den","das","die"]}','{"cefr":"B1","course":"de-fa","series":91}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,2,'learner','Er ist Musiker und übt in einem Zimmer, das schlecht isoliert ist.','اون موسیقی دان است و توی اتاقی تمرین می کنه که عایق خوبی نداره.',47,NULL,NULL,'er ist musiker und übt in einem zimmer das schlecht isoliert ist',NULL,'[{"lemma":"er","partOfSpeech":"pronoun","surface":"Er","translation":"او (مذکر)"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"ist","translation":"بودن"},{"lemma":"Musiker","partOfSpeech":"noun","surface":"Musiker","translation":"موسیقی دان"},{"lemma":"und","partOfSpeech":"conjunction","surface":"und","translation":"و"},{"form":"present_3sg","lemma":"üben","partOfSpeech":"verb","surface":"übt","translation":"تمرین کردن"},{"lemma":"in","partOfSpeech":"preposition","surface":"in","translation":"در / داخل"},{"form":"dative_neuter","lemma":"ein","partOfSpeech":"article","surface":"einem","translation":"یک / حرف تعریف نامعین"},{"lemma":"Zimmer","partOfSpeech":"noun","suffix":",","surface":"Zimmer","translation":"اتاق"},{"form":"neuter","lemma":"der","partOfSpeech":"article","surface":"das","translation":"حرف تعریف"},{"lemma":"schlecht","partOfSpeech":"adjective","surface":"schlecht","translation":"بد"},{"form":"participle_II","lemma":"isolieren","partOfSpeech":"verb","surface":"isoliert","translation":"عایق کردن"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","suffix":".","surface":"ist","translation":"بودن"}]','Relativsätze','ضمیر موصولی اطلاعات بیشتری درباره اسم می دهد.','{"focus":"relative_clause","relativePronouns":["der","den","das","die"]}','{"cefr":"B1","course":"de-fa","series":91}');
  SET v_t_20=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_jonas,3,'character','Deshalb hören wir die Musik so deutlich.','برای همین موسیقی رو این قدر واضح می شنویم.',47,NULL,NULL,NULL,NULL,'[{"lemma":"deshalb","partOfSpeech":"adverb","surface":"Deshalb","translation":"برای همین / بنابراین"},{"form":"present_1pl","lemma":"hören","partOfSpeech":"verb","surface":"hören","translation":"گوش دادن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"form":"plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Musik","partOfSpeech":"noun","surface":"Musik","translation":"موسیقی"},{"lemma":"so","partOfSpeech":"adverb","surface":"so","translation":"این طور / آن طور"},{"lemma":"deutlich","partOfSpeech":"adjective","suffix":".","surface":"deutlich","translation":"واضح"}]','Relativsätze','ضمیر موصولی اطلاعات بیشتری درباره اسم می دهد.','{"focus":"relative_clause","relativePronouns":["der","den","das","die"]}','{"cefr":"B1","course":"de-fa","series":91}');
  SET v_t_21=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,4,'learner','Er will jetzt einen Teppich kaufen, der den Lärm verringert.','حالا می خواد فرشی بخره که سروصدا رو کمتر کنه.',47,NULL,NULL,'er will jetzt einen teppich kaufen der den lärm verringert',NULL,'[{"lemma":"er","partOfSpeech":"pronoun","surface":"Er","translation":"او (مذکر)"},{"form":"present_3sg","lemma":"wollen","partOfSpeech":"verb","surface":"will","translation":"خواستن"},{"lemma":"jetzt","partOfSpeech":"adverb","surface":"jetzt","translation":"حالا / اکنون"},{"form":"accusative_masculine","lemma":"ein","partOfSpeech":"article","surface":"einen","translation":"یک / حرف تعریف نامعین"},{"lemma":"Teppich","partOfSpeech":"noun","surface":"Teppich","translation":"فرش"},{"form":"infinitive","lemma":"kaufen","partOfSpeech":"verb","suffix":",","surface":"kaufen","translation":"خریدن"},{"form":"nominative_masculine","lemma":"der","partOfSpeech":"article","surface":"der","translation":"حرف تعریف"},{"form":"accusative_masculine","lemma":"der","partOfSpeech":"article","surface":"den","translation":"حرف تعریف"},{"lemma":"Lärm","partOfSpeech":"noun","surface":"Lärm","translation":"سروصدا"},{"form":"present_3sg","lemma":"verringern","partOfSpeech":"verb","suffix":".","surface":"verringert","translation":"کم کردن"}]','Relativsätze','ضمیر موصولی اطلاعات بیشتری درباره اسم می دهد.','{"focus":"relative_clause","relativePronouns":["der","den","das","die"]}','{"cefr":"B1","course":"de-fa","series":91}');
  SET v_t_22=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_jonas,5,'character','Das ist eine praktische Lösung.','این یک راه حل کاربردیه.',47,NULL,NULL,NULL,NULL,'[{"form":"neuter","lemma":"der","partOfSpeech":"article","surface":"Das","translation":"حرف تعریف"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"ist","translation":"بودن"},{"form":"nominative_feminine","lemma":"ein","partOfSpeech":"article","surface":"eine","translation":"یک / حرف تعریف نامعین"},{"form":"inflected","lemma":"praktisch","partOfSpeech":"adjective","surface":"praktische","translation":"کاربردی"},{"lemma":"Lösung","partOfSpeech":"noun","suffix":".","surface":"Lösung","translation":"راه حل"}]','Relativsätze','ضمیر موصولی اطلاعات بیشتری درباره اسم می دهد.','{"focus":"relative_clause","relativePronouns":["der","den","das","die"]}','{"cefr":"B1","course":"de-fa","series":91}');
  SET v_t_23=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,6,'learner','Ja, und jetzt wissen wir auch, wer über uns wohnt.','آره، و حالا می دونیم چه کسی بالای ما زندگی می کنه.',47,NULL,NULL,'ja und jetzt wissen wir auch wer über uns wohnt',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"und","partOfSpeech":"conjunction","surface":"und","translation":"و"},{"lemma":"jetzt","partOfSpeech":"adverb","surface":"jetzt","translation":"حالا / اکنون"},{"form":"present_1pl","lemma":"wissen","partOfSpeech":"verb","surface":"wissen","translation":"دانستن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"auch","partOfSpeech":"adverb","suffix":",","surface":"auch","translation":"هم / همچنین"},{"lemma":"wer","partOfSpeech":"pronoun","surface":"wer","translation":"چه کسی / کی"},{"lemma":"über","partOfSpeech":"preposition","surface":"über","translation":"بالای / درباره"},{"form":"dative","lemma":"wir","partOfSpeech":"pronoun","surface":"uns","translation":"ما"},{"form":"present_3sg","lemma":"wohnen","partOfSpeech":"verb","suffix":".","surface":"wohnt","translation":"زندگی کردن / ساکن بودن"}]','Relativsätze','ضمیر موصولی اطلاعات بیشتری درباره اسم می دهد.','{"focus":"relative_clause","relativePronouns":["der","den","das","die"]}','{"cefr":"B1","course":"de-fa","series":91}');
  SET v_t_24=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_015,'review',0,7);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_056,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_058,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_096,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_032,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_033,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_087,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_021,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_067,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_055,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_079,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_077,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_037,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_020,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_100,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_065,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_038,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_016,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_034,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_093,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_054,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_069,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_017,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_098,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_040,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_075,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_041,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_046,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_082,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_061,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_049,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_039,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_095,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_007,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_089,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_078,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_022,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',1,NULL,v_w_022,'عبارت کلیدی درس',NULL,47,NULL,'{"cefr":"B1","series":91}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',2,NULL,v_w_056,'واژه کلیدی درس',NULL,47,NULL,'{"cefr":"B1","series":91}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_19,NULL,'به جمله یوناس گوش کن',NULL,47,NULL,'{"cefr":"B1","series":91}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_20,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,47,NULL,'{"cefr":"B1","series":91}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_21,NULL,'به جمله بعدی گوش کن',NULL,47,NULL,'{"cefr":"B1","series":91}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_22,NULL,'پاسخ را با صدای بلند بگو',NULL,47,NULL,'{"cefr":"B1","series":91}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',7,NULL,v_w_056,'معنی واژه کلیدی را انتخاب کن',NULL,47,'{"mode":"word_translation","question":"Nachbar در این درس چه معنی دارد؟","choices":["همسایه","صبح","قهوه"],"correctIndex":0}','{"cefr":"B1","series":91}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,47,'{"source":"lesson_story","question":"آقای وبر برای کم شدن سروصدا چه کاری می کند؟","choices":["یک فرش می خرد","خانه را می فروشد","سازش را دور می اندازد"],"correctIndex":0}','{"cefr":"B1","series":91}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 091 requires exactly four lessons.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>24 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 091 requires exactly 24 turns.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR CHAR_LENGTH(TRIM(t.speech_target))=0);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every learner Turn needs speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND JSON_VALID(t.tokens)=0;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Invalid token JSON.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities a JOIN lessons l ON l.id=a.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>32 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 091 requires exactly 32 activities.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id<>learner_character_id AND storyline_key='anna-jonas-b1-neighborhood' AND storyline_order BETWEEN 1 AND 4 AND status='validated';
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Character or storyline continuity failure.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) d;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  UPDATE modules SET status='active' WHERE id=v_module;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_series_091_v9();
DROP PROCEDURE IF EXISTS import_nova_series_091_v9;


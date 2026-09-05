-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 088
-- B1 > Arbeit & Zusammenarbeit > Ich glaube, dass wir mehr Zeit brauchen
-- Requires canonical Nova v9.0 and QA-passed staged Series 081-087.
-- Uses the unchanged Nova v9.0 schema; contains no schema DDL.
-- ===============================================================
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_series_088_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_088_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_level BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_prior_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_martin BIGINT UNSIGNED DEFAULT NULL;
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
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 02 from Series 086 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM modules WHERE id=v_module AND title='Arbeit & Zusammenarbeit' AND title_translation='کار و همکاری';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 02 canonical identity mismatch.'; END IF;
  SELECT id INTO v_prior_chapter FROM chapters WHERE module_id=v_module AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_prior_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 087 Chapter not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_prior_chapter AND status IN ('validated','complete');
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 087 Chapter must be validated before Series 088.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons l JOIN chapters c ON c.id=l.chapter_id WHERE c.module_id=v_module AND c.sort_order BETWEEN 1 AND 2 AND l.storyline_key='anna-martin-b1-project' AND l.storyline_order BETWEEN 1 AND 8;
  IF v_count<>8 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 086-087 storyline orders 1-8 are required.'; END IF;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 02 Chapter 03 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='Ich glaube, dass wir mehr Zeit brauchen' AND title_translation='فکر می کنم وقت بیشتری لازم داریم';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 088 canonical Chapter title mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 02 Chapter 03 must be empty before Series 088 import.'; END IF;
  SELECT id INTO v_c_martin FROM characters WHERE course_id=v_course AND name='Martin' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_martin IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Martin not found.'; END IF;
  SELECT id INTO v_c_anna FROM characters WHERE course_id=v_course AND name='Anna' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_anna IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Anna not found.'; END IF;
  IF v_c_martin=v_c_anna THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Martin and Anna must be distinct Characters.'; END IF;

  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='aber' AND part_of_speech='conjunction' AND translation='اما' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: aber | conjunction'; END IF;

  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='alles' AND part_of_speech='pronoun' AND translation='همه چیز' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: alles | pronoun'; END IF;

  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='an' AND part_of_speech='preposition' AND translation='در / در روز' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: an | preposition'; END IF;

  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='antworten' AND part_of_speech='verb' AND translation='جواب دادن' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: antworten | verb'; END IF;

  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='arbeiten' AND part_of_speech='verb' AND translation='کار کردن' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: arbeiten | verb'; END IF;

  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='auch' AND part_of_speech='adverb' AND translation='هم / همچنین' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: auch | adverb'; END IF;

  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='bis' AND part_of_speech='preposition' AND translation='تا' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: bis | preposition'; END IF;

  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='brauchen' AND part_of_speech='verb' AND translation='نیاز داشتن / لازم داشتن' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: brauchen | verb'; END IF;

  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='dann' AND part_of_speech='adverb' AND translation='بعد / سپس' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dann | adverb'; END IF;

  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='das' AND part_of_speech='pronoun' AND translation='این / آن' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: das | pronoun'; END IF;

  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='dass' AND part_of_speech='conjunction' AND translation='که' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'dass','dass','conjunction','که',45,'{"type":"conjunction"}','[{"text":"ob","translation":"آیا"},{"text":"wenn","translation":"اگر"},{"text":"weil","translation":"چون"},{"text":"aber","translation":"اما"},{"text":"und","translation":"و"}]','Ich glaube, dass wir mehr Zeit brauchen.','فکر می کنم وقت بیشتری لازم داریم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_011=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: der | article'; END IF;

  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: du | pronoun'; END IF;

  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='ein' AND part_of_speech='article' AND translation='یک / حرف تعریف نامعین' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ein | article'; END IF;

  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='Ende' AND part_of_speech='noun' AND translation='پایان' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ende','Ende','noun','پایان',45,'{"gender":"neuter","plural":"Enden"}','[{"text":"Zeit","translation":"زمان"},{"text":"Termin","translation":"موعد"},{"text":"Stunde","translation":"ساعت"},{"text":"Team","translation":"تیم"},{"text":"Nachricht","translation":"پیام"}]','Und am Ende prüfen wir alles zusammen.','و در پایان همه چیز رو با هم بررسی می کنیم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_015=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_016 FROM words WHERE course_id=v_course AND lemma='erklären' AND part_of_speech='verb' AND translation='توضیح دادن' ORDER BY id LIMIT 1;
  IF v_w_016 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: erklären | verb'; END IF;

  SELECT id INTO v_w_017 FROM words WHERE course_id=v_course AND lemma='es' AND part_of_speech='pronoun' AND translation='آن / این' ORDER BY id LIMIT 1;
  IF v_w_017 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: es | pronoun'; END IF;

  SELECT id INTO v_w_018 FROM words WHERE course_id=v_course AND lemma='fast' AND part_of_speech='adverb' AND translation='تقریبا' ORDER BY id LIMIT 1;
  IF v_w_018 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'fast','fast','adverb','تقریبا',45,'{"type":"adverb"}','[{"text":"mindestens","translation":"حداقل"},{"text":"sofort","translation":"همین الان"},{"text":"später","translation":"دیرتر"},{"text":"zuerst","translation":"اول"},{"text":"danach","translation":"بعدش"}]','Fast, aber zwei Grafiken fehlen noch.','تقریبا، ولی دو نمودار هنوز آماده نیست.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_018=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_019 FROM words WHERE course_id=v_course AND lemma='fehlen' AND part_of_speech='verb' AND translation='کم بودن / وجود نداشتن' ORDER BY id LIMIT 1;
  IF v_w_019 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: fehlen | verb'; END IF;

  SELECT id INTO v_w_020 FROM words WHERE course_id=v_course AND lemma='fragen' AND part_of_speech='verb' AND translation='پرسیدن' ORDER BY id LIMIT 1;
  IF v_w_020 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'fragen','fragen','verb','پرسیدن',45,'{"type":"verb"}','[{"text":"brauchen","translation":"نیاز داشتن"},{"text":"informieren","translation":"اطلاع دادن"},{"text":"schreiben","translation":"نوشتن"},{"text":"sagen","translation":"گفتن"},{"text":"verschieben","translation":"عقب انداختن"}]','Können wir fragen, ob fünf Uhr auch passt?','می تونیم بپرسیم ساعت پنج هم مناسبه؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_020=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_021 FROM words WHERE course_id=v_course AND lemma='fünf' AND part_of_speech='number' AND translation='پنج' ORDER BY id LIMIT 1;
  IF v_w_021 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'fünf','fünf','number','پنج',45,'{"type":"number"}','[{"text":"eins","translation":"یک"},{"text":"zwei","translation":"دو"},{"text":"drei","translation":"سه"},{"text":"vier","translation":"چهار"},{"text":"sechs","translation":"شش"}]','Können wir fragen, ob fünf Uhr auch passt?','می تونیم بپرسیم ساعت پنج هم مناسبه؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_021=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_022 FROM words WHERE course_id=v_course AND lemma='für' AND part_of_speech='preposition' AND translation='برای' ORDER BY id LIMIT 1;
  IF v_w_022 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'für','für','preposition','برای',45,'{"type":"preposition"}','[{"text":"bis","translation":"تا"},{"text":"ohne","translation":"بدون"},{"text":"in","translation":"در"},{"text":"auf","translation":"روی"},{"text":"an","translation":"در"}]','Ja, dann haben wir genug Zeit für die Kontrolle.','آره، اون وقت برای بررسی نهایی وقت کافی داریم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_022=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_023 FROM words WHERE course_id=v_course AND lemma='genug' AND part_of_speech='determiner' AND translation='کافی' ORDER BY id LIMIT 1;
  IF v_w_023 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'genug','genug','determiner','کافی',45,'{"type":"determiner"}','[{"text":"mehr","translation":"بیشتر"},{"text":"viel","translation":"زیاد"},{"text":"wenig","translation":"کم"},{"text":"einige","translation":"چند"},{"text":"alle","translation":"همه"}]','Ja, dann haben wir genug Zeit für die Kontrolle.','آره، اون وقت برای بررسی نهایی وقت کافی داریم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_023=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_024 FROM words WHERE course_id=v_course AND lemma='glauben' AND part_of_speech='verb' AND translation='فکر کردن / باور داشتن' ORDER BY id LIMIT 1;
  IF v_w_024 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'glauben','glauben','verb','فکر کردن / باور داشتن',45,'{"type":"verb"}','[{"text":"brauchen","translation":"نیاز داشتن"},{"text":"informieren","translation":"اطلاع دادن"},{"text":"schreiben","translation":"نوشتن"},{"text":"sagen","translation":"گفتن"},{"text":"fragen","translation":"پرسیدن"}]','Ich glaube, dass wir mehr Zeit brauchen.','فکر می کنم وقت بیشتری لازم داریم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_024=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_025 FROM words WHERE course_id=v_course AND lemma='Grafik' AND part_of_speech='noun' AND translation='نمودار' ORDER BY id LIMIT 1;
  IF v_w_025 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Grafik','Grafik','noun','نمودار',45,'{"gender":"feminine","plural":"Grafiken"}','[{"text":"Zeit","translation":"زمان"},{"text":"Termin","translation":"موعد"},{"text":"Stunde","translation":"ساعت"},{"text":"Team","translation":"تیم"},{"text":"Nachricht","translation":"پیام"}]','Fast, aber zwei Grafiken fehlen noch.','تقریبا، ولی دو نمودار هنوز آماده نیست.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_025=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_026 FROM words WHERE course_id=v_course AND lemma='Grund' AND part_of_speech='noun' AND translation='دلیل' ORDER BY id LIMIT 1;
  IF v_w_026 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Grund | noun'; END IF;

  SELECT id INTO v_w_027 FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_027 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: gut | adjective'; END IF;

  SELECT id INTO v_w_028 FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_028 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: haben | verb'; END IF;

  SELECT id INTO v_w_029 FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_029 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ich | pronoun'; END IF;

  SELECT id INTO v_w_030 FROM words WHERE course_id=v_course AND lemma='Ich glaube, dass wir mehr Zeit brauchen.' AND part_of_speech='phrase' AND translation='فکر می کنم وقت بیشتری لازم داریم.' ORDER BY id LIMIT 1;
  IF v_w_030 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich glaube, dass wir mehr Zeit brauchen.','Ich glaube, dass wir mehr Zeit brauchen.','phrase','فکر می کنم وقت بیشتری لازم داریم.',45,'{"type":"sentence_pattern"}','[{"text":"Ich denke, dass zwei Grafiken fehlen.","translation":"فکر می کنم دو نمودار آماده نیست."},{"text":"Wir schaffen das sicher bis vier Uhr.","translation":"حتما تا ساعت چهار تمومش می کنیم."},{"text":"Die Präsentation ist schon komplett.","translation":"ارائه از قبل کامله."},{"text":"Eine Stunde ist mehr als genug.","translation":"یک ساعت بیشتر از کافیه."},{"text":"Wir brauchen nur noch die Kontrolle.","translation":"فقط بررسی نهایی مونده."}]','Ich glaube, dass wir mehr Zeit brauchen.','فکر می کنم وقت بیشتری لازم داریم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_030=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_031 FROM words WHERE course_id=v_course AND lemma='in' AND part_of_speech='preposition' AND translation='در / داخل' ORDER BY id LIMIT 1;
  IF v_w_031 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: in | preposition'; END IF;

  SELECT id INTO v_w_032 FROM words WHERE course_id=v_course AND lemma='informieren' AND part_of_speech='verb' AND translation='اطلاع دادن' ORDER BY id LIMIT 1;
  IF v_w_032 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'informieren','informieren','verb','اطلاع دادن',45,'{"type":"verb"}','[{"text":"brauchen","translation":"نیاز داشتن"},{"text":"schreiben","translation":"نوشتن"},{"text":"sagen","translation":"گفتن"},{"text":"fragen","translation":"پرسیدن"},{"text":"verschieben","translation":"عقب انداختن"}]','Dann informieren wir das Team sofort.','پس همین الان به تیم خبر می دیم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_032=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_033 FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_033 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ja | interjection'; END IF;

  SELECT id INTO v_w_034 FROM words WHERE course_id=v_course AND lemma='jetzt' AND part_of_speech='adverb' AND translation='حالا / اکنون' ORDER BY id LIMIT 1;
  IF v_w_034 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: jetzt | adverb'; END IF;

  SELECT id INTO v_w_035 FROM words WHERE course_id=v_course AND lemma='Jetzt wissen wir, dass wir bis fünf Uhr Zeit haben.' AND part_of_speech='phrase' AND translation='حالا می دونیم که تا ساعت پنج وقت داریم.' ORDER BY id LIMIT 1;
  IF v_w_035 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Jetzt wissen wir, dass wir bis fünf Uhr Zeit haben.','Jetzt wissen wir, dass wir bis fünf Uhr Zeit haben.','phrase','حالا می دونیم که تا ساعت پنج وقت داریم.',45,'{"type":"sentence_pattern"}','[{"text":"Jetzt glauben wir, dass fünf Uhr passt.","translation":"حالا فکر می کنیم ساعت پنج مناسبه."},{"text":"Wir wissen noch nicht, ob wir genug Zeit haben.","translation":"هنوز نمی دونیم وقت کافی داریم یا نه."},{"text":"Bis vier Uhr müssen wir alles prüfen.","translation":"تا ساعت چهار باید همه چیز رو بررسی کنیم."},{"text":"Die Projektleiterin hat noch nicht geantwortet.","translation":"مدیر پروژه هنوز جواب نداده."},{"text":"Dann arbeiten wir ohne Pause weiter.","translation":"پس بدون وقفه به کار ادامه می دیم."}]','Jetzt wissen wir, dass wir bis fünf Uhr Zeit haben.','حالا می دونیم که تا ساعت پنج وقت داریم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_035=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_036 FROM words WHERE course_id=v_course AND lemma='komplett' AND part_of_speech='adjective' AND translation='کامل' ORDER BY id LIMIT 1;
  IF v_w_036 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'komplett','komplett','adjective','کامل',45,'{"type":"adjective"}','[{"text":"fertig","translation":"آماده"},{"text":"richtig","translation":"درست"},{"text":"falsch","translation":"نادرست"},{"text":"kurz","translation":"کوتاه"},{"text":"lang","translation":"بلند"}]','Ist die Präsentation jetzt komplett?','ارائه حالا کامله؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_036=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_037 FROM words WHERE course_id=v_course AND lemma='können' AND part_of_speech='verb' AND translation='توانستن / بتوان' ORDER BY id LIMIT 1;
  IF v_w_037 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: können | verb'; END IF;

  SELECT id INTO v_w_038 FROM words WHERE course_id=v_course AND lemma='Können wir fragen, ob fünf Uhr auch passt?' AND part_of_speech='phrase' AND translation='می تونیم بپرسیم ساعت پنج هم مناسبه؟' ORDER BY id LIMIT 1;
  IF v_w_038 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Können wir fragen, ob fünf Uhr auch passt?','Können wir fragen, ob fünf Uhr auch passt?','phrase','می تونیم بپرسیم ساعت پنج هم مناسبه؟',45,'{"type":"sentence_pattern"}','[{"text":"Können wir den Termin auf morgen verschieben?","translation":"می تونیم موعد رو به فردا بندازیم؟"},{"text":"Fünf Uhr passt der Projektleiterin sicher.","translation":"ساعت پنج حتما برای مدیر پروژه مناسبه."},{"text":"Eine Stunde würde nicht reichen.","translation":"یک ساعت کافی نمی شه."},{"text":"Wir fragen, wann die Kontrolle beginnt.","translation":"می پرسیم بررسی نهایی کی شروع می شه."},{"text":"Dann schicken wir die Nachricht später.","translation":"پس پیام رو بعدا می فرستیم."}]','Können wir fragen, ob fünf Uhr auch passt?','می تونیم بپرسیم ساعت پنج هم مناسبه؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_038=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_039 FROM words WHERE course_id=v_course AND lemma='Kontrolle' AND part_of_speech='noun' AND translation='بررسی نهایی' ORDER BY id LIMIT 1;
  IF v_w_039 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Kontrolle | noun'; END IF;

  SELECT id INTO v_w_040 FROM words WHERE course_id=v_course AND lemma='kurz' AND part_of_speech='adjective' AND translation='کوتاه' ORDER BY id LIMIT 1;
  IF v_w_040 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'kurz','kurz','adjective','کوتاه',45,'{"type":"adjective"}','[{"text":"komplett","translation":"کامل"},{"text":"fertig","translation":"آماده"},{"text":"richtig","translation":"درست"},{"text":"falsch","translation":"نادرست"},{"text":"lang","translation":"بلند"}]','Ja, ich erkläre auch kurz den Grund.','آره، دلیلش رو هم کوتاه توضیح می دم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_040=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_041 FROM words WHERE course_id=v_course AND lemma='mehr' AND part_of_speech='determiner' AND translation='بیشتر' ORDER BY id LIMIT 1;
  IF v_w_041 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'mehr','mehr','determiner','بیشتر',45,'{"type":"determiner"}','[{"text":"viel","translation":"زیاد"},{"text":"genug","translation":"کافی"},{"text":"wenig","translation":"کم"},{"text":"einige","translation":"چند"},{"text":"alle","translation":"همه"}]','Ich glaube, dass wir mehr Zeit brauchen.','فکر می کنم وقت بیشتری لازم داریم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_041=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_042 FROM words WHERE course_id=v_course AND lemma='mindestens' AND part_of_speech='adverb' AND translation='حداقل' ORDER BY id LIMIT 1;
  IF v_w_042 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'mindestens','mindestens','adverb','حداقل',45,'{"type":"adverb"}','[{"text":"fast","translation":"تقریبا"},{"text":"sofort","translation":"همین الان"},{"text":"später","translation":"دیرتر"},{"text":"zuerst","translation":"اول"},{"text":"danach","translation":"بعدش"}]','Mindestens eine Stunde.','حداقل یک ساعت.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_042=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_043 FROM words WHERE course_id=v_course AND lemma='müssen' AND part_of_speech='verb' AND translation='مجبور بودن / باید' ORDER BY id LIMIT 1;
  IF v_w_043 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: müssen | verb'; END IF;

  SELECT id INTO v_w_044 FROM words WHERE course_id=v_course AND lemma='Nachricht' AND part_of_speech='noun' AND translation='پیام' ORDER BY id LIMIT 1;
  IF v_w_044 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Nachricht | noun'; END IF;

  SELECT id INTO v_w_045 FROM words WHERE course_id=v_course AND lemma='noch' AND part_of_speech='adverb' AND translation='هنوز' ORDER BY id LIMIT 1;
  IF v_w_045 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: noch | adverb'; END IF;

  SELECT id INTO v_w_046 FROM words WHERE course_id=v_course AND lemma='ob' AND part_of_speech='conjunction' AND translation='آیا / اینکه' ORDER BY id LIMIT 1;
  IF v_w_046 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ob | conjunction'; END IF;

  SELECT id INTO v_w_047 FROM words WHERE course_id=v_course AND lemma='ohne' AND part_of_speech='preposition' AND translation='بدون' ORDER BY id LIMIT 1;
  IF v_w_047 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'ohne','ohne','preposition','بدون',45,'{"type":"preposition"}','[{"text":"bis","translation":"تا"},{"text":"für","translation":"برای"},{"text":"in","translation":"در"},{"text":"auf","translation":"روی"},{"text":"an","translation":"در"}]','Dann arbeiten wir ohne Stress weiter.','پس بدون استرس به کار ادامه می دیم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_047=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_048 FROM words WHERE course_id=v_course AND lemma='Ordnung' AND part_of_speech='noun' AND translation='نظم / وضعیت درست' ORDER BY id LIMIT 1;
  IF v_w_048 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ordnung','Ordnung','noun','نظم / وضعیت درست',45,'{"gender":"feminine","plural":"Ordnungen"}','[{"text":"Zeit","translation":"زمان"},{"text":"Termin","translation":"موعد"},{"text":"Stunde","translation":"ساعت"},{"text":"Team","translation":"تیم"},{"text":"Nachricht","translation":"پیام"}]','Fünf Uhr ist in Ordnung.','ساعت پنج مناسبه.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_048=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_049 FROM words WHERE course_id=v_course AND lemma='passen' AND part_of_speech='verb' AND translation='اندازه بودن / مناسب بودن' ORDER BY id LIMIT 1;
  IF v_w_049 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: passen | verb'; END IF;

  SELECT id INTO v_w_050 FROM words WHERE course_id=v_course AND lemma='Präsentation' AND part_of_speech='noun' AND translation='ارائه' ORDER BY id LIMIT 1;
  IF v_w_050 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Präsentation | noun'; END IF;

  SELECT id INTO v_w_051 FROM words WHERE course_id=v_course AND lemma='Projektleiterin' AND part_of_speech='noun' AND translation='مدیر پروژه زن' ORDER BY id LIMIT 1;
  IF v_w_051 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Projektleiterin','Projektleiterin','noun','مدیر پروژه زن',45,'{"gender":"feminine","plural":"Projektleiterinnen"}','[{"text":"Zeit","translation":"زمان"},{"text":"Termin","translation":"موعد"},{"text":"Stunde","translation":"ساعت"},{"text":"Team","translation":"تیم"},{"text":"Nachricht","translation":"پیام"}]','Der Projektleiterin.','به مدیر پروژه.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_051=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_052 FROM words WHERE course_id=v_course AND lemma='prüfen' AND part_of_speech='verb' AND translation='بررسی کردن' ORDER BY id LIMIT 1;
  IF v_w_052 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: prüfen | verb'; END IF;

  SELECT id INTO v_w_053 FROM words WHERE course_id=v_course AND lemma='reichen' AND part_of_speech='verb' AND translation='کافی بودن' ORDER BY id LIMIT 1;
  IF v_w_053 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: reichen | verb'; END IF;

  SELECT id INTO v_w_054 FROM words WHERE course_id=v_course AND lemma='sagen' AND part_of_speech='verb' AND translation='گفتن' ORDER BY id LIMIT 1;
  IF v_w_054 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sagen | verb'; END IF;

  SELECT id INTO v_w_055 FROM words WHERE course_id=v_course AND lemma='schaffen' AND part_of_speech='verb' AND translation='از عهده برآمدن' ORDER BY id LIMIT 1;
  IF v_w_055 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: schaffen | verb'; END IF;

  SELECT id INTO v_w_056 FROM words WHERE course_id=v_course AND lemma='schicken' AND part_of_speech='verb' AND translation='فرستادن' ORDER BY id LIMIT 1;
  IF v_w_056 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: schicken | verb'; END IF;

  SELECT id INTO v_w_057 FROM words WHERE course_id=v_course AND lemma='schreiben' AND part_of_speech='verb' AND translation='نوشتن' ORDER BY id LIMIT 1;
  IF v_w_057 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'schreiben','schreiben','verb','نوشتن',45,'{"type":"verb"}','[{"text":"brauchen","translation":"نیاز داشتن"},{"text":"informieren","translation":"اطلاع دادن"},{"text":"sagen","translation":"گفتن"},{"text":"fragen","translation":"پرسیدن"},{"text":"verschieben","translation":"عقب انداختن"}]','Wem schreiben wir zuerst?','اول به کی پیام می دیم؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_057=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_058 FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_058 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sein | verb'; END IF;

  SELECT id INTO v_w_059 FROM words WHERE course_id=v_course AND lemma='sie' AND part_of_speech='pronoun' AND translation='او / آن ها' ORDER BY id LIMIT 1;
  IF v_w_059 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sie | pronoun'; END IF;

  SELECT id INTO v_w_060 FROM words WHERE course_id=v_course AND lemma='sofort' AND part_of_speech='adverb' AND translation='فورا / همین الان' ORDER BY id LIMIT 1;
  IF v_w_060 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sofort | adverb'; END IF;

  SELECT id INTO v_w_061 FROM words WHERE course_id=v_course AND lemma='spät' AND part_of_speech='adverb' AND translation='دیر / با تاخیر' ORDER BY id LIMIT 1;
  IF v_w_061 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'spät','spät','adverb','دیر / با تاخیر',45,'{"type":"adverb"}','[{"text":"fast","translation":"تقریبا"},{"text":"mindestens","translation":"حداقل"},{"text":"sofort","translation":"همین الان"},{"text":"später","translation":"دیرتر"},{"text":"zuerst","translation":"اول"}]','Wir müssen ihr sagen, dass es später wird.','باید بهش بگیم که دیرتر آماده می شه.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_061=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_062 FROM words WHERE course_id=v_course AND lemma='Stress' AND part_of_speech='noun' AND translation='استرس' ORDER BY id LIMIT 1;
  IF v_w_062 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Stress','Stress','noun','استرس',45,'{"gender":"masculine","plural":null}','[{"text":"Zeit","translation":"زمان"},{"text":"Termin","translation":"موعد"},{"text":"Stunde","translation":"ساعت"},{"text":"Team","translation":"تیم"},{"text":"Nachricht","translation":"پیام"}]','Dann arbeiten wir ohne Stress weiter.','پس بدون استرس به کار ادامه می دیم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_062=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_063 FROM words WHERE course_id=v_course AND lemma='Stunde' AND part_of_speech='noun' AND translation='ساعت / یک ساعت' ORDER BY id LIMIT 1;
  IF v_w_063 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Stunde','Stunde','noun','ساعت / یک ساعت',45,'{"gender":"feminine","plural":"Stunden"}','[{"text":"Zeit","translation":"زمان"},{"text":"Termin","translation":"موعد"},{"text":"Team","translation":"تیم"},{"text":"Nachricht","translation":"پیام"},{"text":"Grund","translation":"دلیل"}]','Mindestens eine Stunde.','حداقل یک ساعت.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_063=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_064 FROM words WHERE course_id=v_course AND lemma='Team' AND part_of_speech='noun' AND translation='تیم' ORDER BY id LIMIT 1;
  IF v_w_064 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Team','Team','noun','تیم',45,'{"gender":"neuter","plural":"Teams"}','[{"text":"Zeit","translation":"زمان"},{"text":"Termin","translation":"موعد"},{"text":"Stunde","translation":"ساعت"},{"text":"Nachricht","translation":"پیام"},{"text":"Grund","translation":"دلیل"}]','Dann informieren wir das Team sofort.','پس همین الان به تیم خبر می دیم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_064=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_065 FROM words WHERE course_id=v_course AND lemma='Termin' AND part_of_speech='noun' AND translation='قرار / وقت' ORDER BY id LIMIT 1;
  IF v_w_065 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Termin | noun'; END IF;

  SELECT id INTO v_w_066 FROM words WHERE course_id=v_course AND lemma='Uhr' AND part_of_speech='noun' AND translation='ساعت' ORDER BY id LIMIT 1;
  IF v_w_066 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Uhr | noun'; END IF;

  SELECT id INTO v_w_067 FROM words WHERE course_id=v_course AND lemma='um' AND part_of_speech='preposition' AND translation='در ساعت / حوالی' ORDER BY id LIMIT 1;
  IF v_w_067 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: um | preposition'; END IF;

  SELECT id INTO v_w_068 FROM words WHERE course_id=v_course AND lemma='und' AND part_of_speech='conjunction' AND translation='و' ORDER BY id LIMIT 1;
  IF v_w_068 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: und | conjunction'; END IF;

  SELECT id INTO v_w_069 FROM words WHERE course_id=v_course AND lemma='verschieben' AND part_of_speech='verb' AND translation='جا به جا کردن / تغییر زمان' ORDER BY id LIMIT 1;
  IF v_w_069 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: verschieben | verb'; END IF;

  SELECT id INTO v_w_070 FROM words WHERE course_id=v_course AND lemma='viel' AND part_of_speech='determiner' AND translation='زیاد / مقدار زیاد' ORDER BY id LIMIT 1;
  IF v_w_070 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'viel','viel','determiner','زیاد / مقدار زیاد',45,'{"type":"determiner"}','[{"text":"mehr","translation":"بیشتر"},{"text":"genug","translation":"کافی"},{"text":"wenig","translation":"کم"},{"text":"einige","translation":"چند"},{"text":"alle","translation":"همه"}]','Wie viel Zeit fehlt uns?','چقدر وقت کم داریم؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_070=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_071 FROM words WHERE course_id=v_course AND lemma='vielleicht' AND part_of_speech='adverb' AND translation='شاید' ORDER BY id LIMIT 1;
  IF v_w_071 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'vielleicht','vielleicht','adverb','شاید',45,'{"type":"adverb"}','[{"text":"fast","translation":"تقریبا"},{"text":"mindestens","translation":"حداقل"},{"text":"sofort","translation":"همین الان"},{"text":"später","translation":"دیرتر"},{"text":"zuerst","translation":"اول"}]','Vielleicht können wir den Termin verschieben.','شاید بتونیم موعد رو عقب بندازیم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_071=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_072 FROM words WHERE course_id=v_course AND lemma='vier' AND part_of_speech='number' AND translation='چهار' ORDER BY id LIMIT 1;
  IF v_w_072 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: vier | number'; END IF;

  SELECT id INTO v_w_073 FROM words WHERE course_id=v_course AND lemma='was' AND part_of_speech='pronoun' AND translation='چی / چه' ORDER BY id LIMIT 1;
  IF v_w_073 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: was | pronoun'; END IF;

  SELECT id INTO v_w_074 FROM words WHERE course_id=v_course AND lemma='weiter' AND part_of_speech='adverb' AND translation='ادامه / بیشتر' ORDER BY id LIMIT 1;
  IF v_w_074 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'weiter','weiter','adverb','ادامه / بیشتر',45,'{"type":"adverb"}','[{"text":"fast","translation":"تقریبا"},{"text":"mindestens","translation":"حداقل"},{"text":"sofort","translation":"همین الان"},{"text":"später","translation":"دیرتر"},{"text":"zuerst","translation":"اول"}]','Dann arbeiten wir ohne Stress weiter.','پس بدون استرس به کار ادامه می دیم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_074=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_075 FROM words WHERE course_id=v_course AND lemma='wer' AND part_of_speech='pronoun' AND translation='چه کسی / کی' ORDER BY id LIMIT 1;
  IF v_w_075 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wer | pronoun'; END IF;

  SELECT id INTO v_w_076 FROM words WHERE course_id=v_course AND lemma='werden' AND part_of_speech='verb' AND translation='شدن / خواهد' ORDER BY id LIMIT 1;
  IF v_w_076 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: werden | verb'; END IF;

  SELECT id INTO v_w_077 FROM words WHERE course_id=v_course AND lemma='wie' AND part_of_speech='adverb' AND translation='چطور / چگونه' ORDER BY id LIMIT 1;
  IF v_w_077 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wie | adverb'; END IF;

  SELECT id INTO v_w_078 FROM words WHERE course_id=v_course AND lemma='wir' AND part_of_speech='pronoun' AND translation='ما' ORDER BY id LIMIT 1;
  IF v_w_078 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wir | pronoun'; END IF;

  SELECT id INTO v_w_079 FROM words WHERE course_id=v_course AND lemma='Wir müssen ihr sagen, dass es später wird.' AND part_of_speech='phrase' AND translation='باید بهش بگیم که دیرتر آماده می شه.' ORDER BY id LIMIT 1;
  IF v_w_079 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Wir müssen ihr sagen, dass es später wird.','Wir müssen ihr sagen, dass es später wird.','phrase','باید بهش بگیم که دیرتر آماده می شه.',45,'{"type":"sentence_pattern"}','[{"text":"Wir können ihr später eine Nachricht schreiben.","translation":"می تونیم بعدا براش پیام بنویسیم."},{"text":"Das Team kennt den Grund schon.","translation":"تیم از قبل دلیلش رو می دونه."},{"text":"Du musst zuerst die Projektleiterin fragen.","translation":"باید اول از مدیر پروژه بپرسی."},{"text":"Ich erkläre ihr, warum wir warten.","translation":"براش توضیح می دم چرا صبر می کنیم."},{"text":"Wir sagen dem Team sofort Bescheid.","translation":"همین الان به تیم خبر می دیم."}]','Wir müssen ihr sagen, dass es später wird.','باید بهش بگیم که دیرتر آماده می شه.',NULL,NULL,'{"cefr":"B1","introducedInSeries":88}');
    SET v_w_079=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_080 FROM words WHERE course_id=v_course AND lemma='wissen' AND part_of_speech='verb' AND translation='دانستن' ORDER BY id LIMIT 1;
  IF v_w_080 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wissen | verb'; END IF;

  SELECT id INTO v_w_081 FROM words WHERE course_id=v_course AND lemma='Zeit' AND part_of_speech='noun' AND translation='وقت / زمان' ORDER BY id LIMIT 1;
  IF v_w_081 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Zeit | noun'; END IF;

  SELECT id INTO v_w_082 FROM words WHERE course_id=v_course AND lemma='zuerst' AND part_of_speech='adverb' AND translation='اول / ابتدا' ORDER BY id LIMIT 1;
  IF v_w_082 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zuerst | adverb'; END IF;

  SELECT id INTO v_w_083 FROM words WHERE course_id=v_course AND lemma='zusammen' AND part_of_speech='adverb' AND translation='با هم' ORDER BY id LIMIT 1;
  IF v_w_083 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zusammen | adverb'; END IF;

  SELECT id INTO v_w_084 FROM words WHERE course_id=v_course AND lemma='zwei' AND part_of_speech='number' AND translation='دو' ORDER BY id LIMIT 1;
  IF v_w_084 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zwei | number'; END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_martin,v_c_anna,'Mehr Zeit einplanen','در نظر گرفتن زمان بیشتر','Anna und Martin prüfen die Präsentation und erkennen, dass zwei Grafiken vor dem bisherigen Termin fehlen.','آنا و مارتین ارائه را بررسی می کنند و متوجه می شوند که پیش از موعد فعلی هنوز دو نمودار آماده نیست.','story','anna-martin-b1-project',9,45,150,1,'validated','{"relationship":"coworkers","context":"request-more-project-time","cefr":"B1","storyArc":"assess-inform-negotiate-confirm"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_martin,1,'character','Ist die Präsentation jetzt komplett?','ارائه حالا کامله؟',45,NULL,NULL,NULL,NULL,'[{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"Ist","translation":"بودن"},{"form":"nominative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Präsentation","partOfSpeech":"noun","surface":"Präsentation","translation":"ارائه"},{"lemma":"jetzt","partOfSpeech":"adverb","surface":"jetzt","translation":"حالا / اکنون"},{"lemma":"komplett","partOfSpeech":"adjective","suffix":"?","surface":"komplett","translation":"کامل"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,2,'learner','Fast, aber zwei Grafiken fehlen noch.','تقریبا، ولی دو نمودار هنوز آماده نیست.',45,NULL,NULL,'fast aber zwei grafiken fehlen noch',NULL,'[{"lemma":"fast","partOfSpeech":"adverb","suffix":",","surface":"Fast","translation":"تقریبا"},{"lemma":"aber","partOfSpeech":"conjunction","surface":"aber","translation":"اما"},{"lemma":"zwei","partOfSpeech":"number","surface":"zwei","translation":"دو"},{"form":"plural","lemma":"Grafik","partOfSpeech":"noun","surface":"Grafiken","translation":"نمودار"},{"form":"present_plural","lemma":"fehlen","partOfSpeech":"verb","surface":"fehlen","translation":"کم بودن / وجود نداشتن"},{"lemma":"noch","partOfSpeech":"adverb","suffix":".","surface":"noch","translation":"هنوز"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_martin,3,'character','Schaffen wir das bis vier Uhr?','تا ساعت چهار تمومش می کنیم؟',45,NULL,NULL,NULL,NULL,'[{"form":"present_plural","lemma":"schaffen","partOfSpeech":"verb","surface":"Schaffen","translation":"از عهده برآمدن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"das","partOfSpeech":"pronoun","surface":"das","translation":"این / آن"},{"lemma":"bis","partOfSpeech":"preposition","surface":"bis","translation":"تا"},{"lemma":"vier","partOfSpeech":"number","surface":"vier","translation":"چهار"},{"lemma":"Uhr","partOfSpeech":"noun","suffix":"?","surface":"Uhr","translation":"ساعت"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,4,'learner','Ich glaube, dass wir mehr Zeit brauchen.','فکر می کنم وقت بیشتری لازم داریم.',45,NULL,NULL,'ich glaube dass wir mehr zeit brauchen',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"glauben","partOfSpeech":"verb","surface":"glaube","translation":"فکر کردن / باور داشتن"},{"lemma":"dass","partOfSpeech":"conjunction","surface":"dass","translation":"که"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"mehr","partOfSpeech":"determiner","surface":"mehr","translation":"بیشتر"},{"lemma":"Zeit","partOfSpeech":"noun","surface":"Zeit","translation":"وقت / زمان"},{"form":"present_plural","lemma":"brauchen","partOfSpeech":"verb","suffix":".","surface":"brauchen","translation":"نیاز داشتن / لازم داشتن"}]','جمله وابسته با dass','بعد از dass، فعل صرف شده در پایان جمله وابسته قرار می گیرد.','{"pattern":"Ich glaube, dass + subject + object + verb"}','{"cefr":"B1"}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_martin,5,'character','Wie viel Zeit fehlt uns?','چقدر وقت کم داریم؟',45,NULL,NULL,NULL,NULL,'[{"lemma":"wie","meaning":"چقدر","partOfSpeech":"adverb","surface":"Wie","translation":"چطور / چگونه"},{"lemma":"viel","partOfSpeech":"determiner","surface":"viel","translation":"زیاد / مقدار زیاد"},{"lemma":"Zeit","partOfSpeech":"noun","surface":"Zeit","translation":"وقت / زمان"},{"form":"present_3sg","lemma":"fehlen","partOfSpeech":"verb","surface":"fehlt","translation":"کم بودن / وجود نداشتن"},{"form":"dative_1pl","lemma":"wir","meaning":"به ما","partOfSpeech":"pronoun","suffix":"?","surface":"uns","translation":"ما"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,6,'learner','Mindestens eine Stunde.','حداقل یک ساعت.',45,NULL,NULL,'mindestens eine stunde',NULL,'[{"lemma":"mindestens","partOfSpeech":"adverb","surface":"Mindestens","translation":"حداقل"},{"form":"nominative_feminine","lemma":"ein","partOfSpeech":"article","surface":"eine","translation":"یک / حرف تعریف نامعین"},{"lemma":"Stunde","partOfSpeech":"noun","suffix":".","surface":"Stunde","translation":"ساعت / یک ساعت"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_martin,v_c_anna,'Das Team informieren','خبر دادن به تیم','Anna und Martin entscheiden, die Verzögerung offen zu melden und den Grund kurz zu erklären.','آنا و مارتین تصمیم می گیرند تاخیر را شفاف اطلاع بدهند و دلیلش را کوتاه توضیح بدهند.','story','anna-martin-b1-project',10,45,150,2,'validated','{"relationship":"coworkers","context":"request-more-project-time","cefr":"B1","storyArc":"assess-inform-negotiate-confirm"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_martin,1,'character','Dann informieren wir das Team sofort.','پس همین الان به تیم خبر می دیم.',45,NULL,NULL,NULL,NULL,'[{"lemma":"dann","partOfSpeech":"adverb","surface":"Dann","translation":"بعد / سپس"},{"form":"present_plural","lemma":"informieren","partOfSpeech":"verb","surface":"informieren","translation":"اطلاع دادن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"form":"accusative_neuter","lemma":"der","partOfSpeech":"article","surface":"das","translation":"حرف تعریف"},{"lemma":"Team","partOfSpeech":"noun","surface":"Team","translation":"تیم"},{"lemma":"sofort","partOfSpeech":"adverb","suffix":".","surface":"sofort","translation":"فورا / همین الان"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,2,'learner','Wem schreiben wir zuerst?','اول به کی پیام می دیم؟',45,NULL,NULL,'wem schreiben wir zuerst',NULL,'[{"form":"dative","lemma":"wer","meaning":"به چه کسی","partOfSpeech":"pronoun","surface":"Wem","translation":"چه کسی / کی"},{"form":"present_plural","lemma":"schreiben","partOfSpeech":"verb","surface":"schreiben","translation":"نوشتن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"zuerst","partOfSpeech":"adverb","suffix":"?","surface":"zuerst","translation":"اول / ابتدا"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_martin,3,'character','Der Projektleiterin.','به مدیر پروژه.',45,NULL,NULL,NULL,NULL,'[{"form":"dative_feminine","lemma":"der","partOfSpeech":"article","surface":"Der","translation":"حرف تعریف"},{"lemma":"Projektleiterin","partOfSpeech":"noun","suffix":".","surface":"Projektleiterin","translation":"مدیر پروژه زن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,4,'learner','Wir müssen ihr sagen, dass es später wird.','باید بهش بگیم که دیرتر آماده می شه.',45,NULL,NULL,'wir müssen ihr sagen dass es später wird',NULL,'[{"lemma":"wir","partOfSpeech":"pronoun","surface":"Wir","translation":"ما"},{"form":"present_plural","lemma":"müssen","partOfSpeech":"verb","surface":"müssen","translation":"مجبور بودن / باید"},{"form":"dative_feminine","lemma":"sie","meaning":"به او","partOfSpeech":"pronoun","surface":"ihr","translation":"او / آن ها"},{"lemma":"sagen","partOfSpeech":"verb","surface":"sagen","translation":"گفتن"},{"lemma":"dass","partOfSpeech":"conjunction","surface":"dass","translation":"که"},{"lemma":"es","partOfSpeech":"pronoun","surface":"es","translation":"آن / این"},{"form":"comparative","lemma":"spät","partOfSpeech":"adverb","surface":"später","translation":"دیر / با تاخیر"},{"form":"present_3sg","lemma":"werden","partOfSpeech":"verb","suffix":".","surface":"wird","translation":"شدن / خواهد"}]','گزارش وضعیت با dass','برای گفتن محتوای یک پیام از dass استفاده می کنیم و فعل جمله وابسته به پایان می رود.','{"pattern":"Wir sagen ihr, dass + subject + complement + verb"}','{"cefr":"B1"}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_martin,5,'character','Schreibst du die Nachricht?','تو پیام رو می نویسی؟',45,NULL,NULL,NULL,NULL,'[{"form":"present_2sg","lemma":"schreiben","partOfSpeech":"verb","surface":"Schreibst","translation":"نوشتن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"accusative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Nachricht","partOfSpeech":"noun","suffix":"?","surface":"Nachricht","translation":"پیام"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,6,'learner','Ja, ich erkläre auch kurz den Grund.','آره، دلیلش رو هم کوتاه توضیح می دم.',45,NULL,NULL,'ja ich erkläre auch kurz den grund',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"present_1sg","lemma":"erklären","partOfSpeech":"verb","surface":"erkläre","translation":"توضیح دادن"},{"lemma":"auch","partOfSpeech":"adverb","surface":"auch","translation":"هم / همچنین"},{"lemma":"kurz","partOfSpeech":"adjective","surface":"kurz","translation":"کوتاه"},{"form":"accusative_masculine","lemma":"der","partOfSpeech":"article","surface":"den","translation":"حرف تعریف"},{"lemma":"Grund","partOfSpeech":"noun","suffix":".","surface":"Grund","translation":"دلیل"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_martin,v_c_anna,'Den Termin verschieben','عوض کردن موعد','Martin schlägt eine realistische Verlängerung vor, und Anna bittet um einen neuen Abgabetermin.','مارتین زمان بیشتری پیشنهاد می دهد و آنا برای یک موعد تحویل تازه درخواست می کند.','story','anna-martin-b1-project',11,45,150,3,'validated','{"relationship":"coworkers","context":"request-more-project-time","cefr":"B1","storyArc":"assess-inform-negotiate-confirm"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_martin,1,'character','Vielleicht können wir den Termin verschieben.','شاید بتونیم موعد رو عقب بندازیم.',45,NULL,NULL,NULL,NULL,'[{"lemma":"vielleicht","partOfSpeech":"adverb","surface":"Vielleicht","translation":"شاید"},{"form":"present_plural","lemma":"können","partOfSpeech":"verb","surface":"können","translation":"توانستن / بتوان"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"form":"accusative_masculine","lemma":"der","partOfSpeech":"article","surface":"den","translation":"حرف تعریف"},{"lemma":"Termin","partOfSpeech":"noun","surface":"Termin","translation":"قرار / وقت"},{"lemma":"verschieben","partOfSpeech":"verb","suffix":".","surface":"verschieben","translation":"جا به جا کردن / تغییر زمان"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,2,'learner','Um wie viel Zeit?','چقدر عقبش بندازیم؟',45,NULL,NULL,'um wie viel zeit',NULL,'[{"lemma":"um","meaning":"به اندازه","partOfSpeech":"preposition","surface":"Um","translation":"در ساعت / حوالی"},{"lemma":"wie","meaning":"چقدر","partOfSpeech":"adverb","surface":"wie","translation":"چطور / چگونه"},{"lemma":"viel","partOfSpeech":"determiner","surface":"viel","translation":"زیاد / مقدار زیاد"},{"lemma":"Zeit","partOfSpeech":"noun","suffix":"?","surface":"Zeit","translation":"وقت / زمان"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_martin,3,'character','Eine Stunde würde reichen.','یک ساعت کافی می شه.',45,NULL,NULL,NULL,NULL,'[{"form":"nominative_feminine","lemma":"ein","partOfSpeech":"article","surface":"Eine","translation":"یک / حرف تعریف نامعین"},{"lemma":"Stunde","partOfSpeech":"noun","surface":"Stunde","translation":"ساعت / یک ساعت"},{"form":"konjunktiv_ii_3sg","lemma":"werden","partOfSpeech":"verb","surface":"würde","translation":"شدن / خواهد"},{"lemma":"reichen","partOfSpeech":"verb","suffix":".","surface":"reichen","translation":"کافی بودن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,4,'learner','Können wir fragen, ob fünf Uhr auch passt?','می تونیم بپرسیم ساعت پنج هم مناسبه؟',45,NULL,NULL,'können wir fragen ob fünf uhr auch passt',NULL,'[{"form":"present_plural","lemma":"können","partOfSpeech":"verb","surface":"Können","translation":"توانستن / بتوان"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"fragen","partOfSpeech":"verb","suffix":",","surface":"fragen","translation":"پرسیدن"},{"lemma":"ob","partOfSpeech":"conjunction","surface":"ob","translation":"آیا / اینکه"},{"lemma":"fünf","partOfSpeech":"number","surface":"fünf","translation":"پنج"},{"lemma":"Uhr","partOfSpeech":"noun","surface":"Uhr","translation":"ساعت"},{"lemma":"auch","partOfSpeech":"adverb","surface":"auch","translation":"هم / همچنین"},{"form":"present_3sg","lemma":"passen","partOfSpeech":"verb","suffix":"?","surface":"passt","translation":"اندازه بودن / مناسب بودن"}]','پرسش غیرمستقیم با ob','وقتی پاسخ پرسش بله یا نه است، از ob استفاده می کنیم و فعل صرف شده به پایان می رود.','{"pattern":"fragen, ob + subject + complement + verb"}','{"cefr":"B1"}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_martin,5,'character','Ja, dann haben wir genug Zeit für die Kontrolle.','آره، اون وقت برای بررسی نهایی وقت کافی داریم.',45,NULL,NULL,NULL,NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"dann","partOfSpeech":"adverb","surface":"dann","translation":"بعد / سپس"},{"form":"present_plural","lemma":"haben","partOfSpeech":"verb","surface":"haben","translation":"داشتن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"genug","partOfSpeech":"determiner","surface":"genug","translation":"کافی"},{"lemma":"Zeit","partOfSpeech":"noun","surface":"Zeit","translation":"وقت / زمان"},{"lemma":"für","partOfSpeech":"preposition","surface":"für","translation":"برای"},{"form":"accusative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Kontrolle","partOfSpeech":"noun","suffix":".","surface":"Kontrolle","translation":"بررسی نهایی"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,6,'learner','Gut, ich schicke die Nachricht.','خوبه، پیام رو می فرستم.',45,NULL,NULL,'gut ich schicke die nachricht',NULL,'[{"lemma":"gut","partOfSpeech":"adjective","suffix":",","surface":"Gut","translation":"خوب"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"present_1sg","lemma":"schicken","partOfSpeech":"verb","surface":"schicke","translation":"فرستادن"},{"form":"accusative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Nachricht","partOfSpeech":"noun","suffix":".","surface":"Nachricht","translation":"پیام"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_martin,v_c_anna,'Ein neuer Abgabetermin','موعد تحویل جدید','Die Projektleiterin bestätigt fünf Uhr, sodass Anna und Martin konzentriert und ohne Stress weiterarbeiten können.','مدیر پروژه ساعت پنج را تایید می کند تا آنا و مارتین با تمرکز و بدون استرس به کار ادامه بدهند.','story','anna-martin-b1-project',12,45,150,4,'validated','{"relationship":"coworkers","context":"request-more-project-time","cefr":"B1","storyArc":"assess-inform-negotiate-confirm"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_martin,1,'character','Die Projektleiterin hat geantwortet.','مدیر پروژه جواب داده.',45,NULL,NULL,NULL,NULL,'[{"form":"nominative_feminine","lemma":"der","partOfSpeech":"article","surface":"Die","translation":"حرف تعریف"},{"lemma":"Projektleiterin","partOfSpeech":"noun","surface":"Projektleiterin","translation":"مدیر پروژه زن"},{"form":"present_3sg","lemma":"haben","partOfSpeech":"verb","surface":"hat","translation":"داشتن"},{"form":"past_participle","lemma":"antworten","partOfSpeech":"verb","suffix":".","surface":"geantwortet","translation":"جواب دادن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,2,'learner','Was hat sie geschrieben?','چی نوشته؟',45,NULL,NULL,'was hat sie geschrieben',NULL,'[{"lemma":"was","partOfSpeech":"pronoun","surface":"Was","translation":"چی / چه"},{"form":"present_3sg","lemma":"haben","partOfSpeech":"verb","surface":"hat","translation":"داشتن"},{"form":"nominative_feminine","lemma":"sie","partOfSpeech":"pronoun","surface":"sie","translation":"او / آن ها"},{"form":"past_participle","lemma":"schreiben","partOfSpeech":"verb","suffix":"?","surface":"geschrieben","translation":"نوشتن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_20=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_martin,3,'character','Fünf Uhr ist in Ordnung.','ساعت پنج مناسبه.',45,NULL,NULL,NULL,NULL,'[{"lemma":"fünf","partOfSpeech":"number","surface":"Fünf","translation":"پنج"},{"lemma":"Uhr","partOfSpeech":"noun","surface":"Uhr","translation":"ساعت"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"ist","translation":"بودن"},{"lemma":"in","partOfSpeech":"preposition","surface":"in","translation":"در / داخل"},{"lemma":"Ordnung","partOfSpeech":"noun","suffix":".","surface":"Ordnung","translation":"نظم / وضعیت درست"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_21=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,4,'learner','Jetzt wissen wir, dass wir bis fünf Uhr Zeit haben.','حالا می دونیم که تا ساعت پنج وقت داریم.',45,NULL,NULL,'jetzt wissen wir dass wir bis fünf uhr zeit haben',NULL,'[{"lemma":"jetzt","partOfSpeech":"adverb","surface":"Jetzt","translation":"حالا / اکنون"},{"form":"present_plural","lemma":"wissen","partOfSpeech":"verb","surface":"wissen","translation":"دانستن"},{"lemma":"wir","partOfSpeech":"pronoun","suffix":",","surface":"wir","translation":"ما"},{"lemma":"dass","partOfSpeech":"conjunction","surface":"dass","translation":"که"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"bis","partOfSpeech":"preposition","surface":"bis","translation":"تا"},{"lemma":"fünf","partOfSpeech":"number","surface":"fünf","translation":"پنج"},{"lemma":"Uhr","partOfSpeech":"noun","surface":"Uhr","translation":"ساعت"},{"lemma":"Zeit","partOfSpeech":"noun","surface":"Zeit","translation":"وقت / زمان"},{"form":"present_plural","lemma":"haben","partOfSpeech":"verb","suffix":".","surface":"haben","translation":"داشتن"}]','اطمینان با dass','با wissen و dass نتیجه قطعی را بیان می کنیم؛ فعل جمله وابسته در پایان قرار می گیرد.','{"pattern":"Wir wissen, dass + subject + time + verb"}','{"cefr":"B1"}');
  SET v_t_22=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_martin,5,'character','Dann arbeiten wir ohne Stress weiter.','پس بدون استرس به کار ادامه می دیم.',45,NULL,NULL,NULL,NULL,'[{"lemma":"dann","partOfSpeech":"adverb","surface":"Dann","translation":"بعد / سپس"},{"form":"present_plural","lemma":"arbeiten","partOfSpeech":"verb","surface":"arbeiten","translation":"کار کردن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"ohne","partOfSpeech":"preposition","surface":"ohne","translation":"بدون"},{"lemma":"Stress","partOfSpeech":"noun","surface":"Stress","translation":"استرس"},{"lemma":"weiter","partOfSpeech":"adverb","suffix":".","surface":"weiter","translation":"ادامه / بیشتر"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_23=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,6,'learner','Und am Ende prüfen wir alles zusammen.','و در پایان همه چیز رو با هم بررسی می کنیم.',45,NULL,NULL,'und am ende prüfen wir alles zusammen',NULL,'[{"lemma":"und","partOfSpeech":"conjunction","surface":"Und","translation":"و"},{"form":"contraction_an_dem","lemma":"an","meaning":"در","partOfSpeech":"preposition","surface":"am","translation":"در / در روز"},{"lemma":"Ende","partOfSpeech":"noun","surface":"Ende","translation":"پایان"},{"form":"present_plural","lemma":"prüfen","partOfSpeech":"verb","surface":"prüfen","translation":"بررسی کردن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"alles","partOfSpeech":"pronoun","surface":"alles","translation":"همه چیز"},{"lemma":"zusammen","partOfSpeech":"adverb","suffix":".","surface":"zusammen","translation":"با هم"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_24=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_058,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_050,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_034,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_036,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_018,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_084,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_025,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_019,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_045,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_055,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_078,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_010,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_007,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_072,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_066,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_029,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_024,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_011,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_041,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_081,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_077,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_070,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_042,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_014,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_063,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_030,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_032,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_078,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_012,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_064,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_060,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_075,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_057,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_082,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_051,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_043,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_059,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_054,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_011,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_017,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_061,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_076,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_044,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_033,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_029,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_016,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_040,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_026,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_079,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_071,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_037,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_078,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_012,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_065,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_069,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_067,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_077,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_070,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_081,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_014,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_063,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_076,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_053,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_020,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_046,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_021,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_066,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_049,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_033,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_028,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_023,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_022,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_039,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_027,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_029,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_056,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_044,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_038,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_051,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_028,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_073,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_059,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_057,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_021,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_066,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_058,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_031,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_048,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_034,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_080,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_078,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_011,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_007,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_081,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_047,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_062,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_074,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_068,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_015,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_052,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_083,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_035,'new',1,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_030,'عبارت کلیدی درس',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',2,NULL,v_w_081,'واژه کلیدی درس',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',3,v_t_1,NULL,'به جمله مارتین گوش کن',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',4,v_t_2,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',5,v_t_3,NULL,'به پرسش بعدی گوش کن',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',6,v_t_4,NULL,'پاسخ را با صدای بلند بگو',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',7,NULL,v_w_081,'معنی واژه کلیدی را انتخاب کن',NULL,45,'{"mode":"word_translation","question":"Zeit در این درس چه معنی دارد؟","choices":["وقت / زمان","مسیر","رنگ"],"correctIndex":0}','{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,45,'{"source":"lesson_story","question":"پیش از موعد چه چیزی هنوز آماده نیست؟","choices":["دو نمودار","متن اصلی","فایل نهایی"],"correctIndex":0}','{"cefr":"B1","series":88}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_079,'عبارت کلیدی درس',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',2,NULL,v_w_032,'واژه کلیدی درس',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',3,v_t_7,NULL,'به جمله مارتین گوش کن',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',4,v_t_8,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',5,v_t_9,NULL,'به پرسش بعدی گوش کن',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',6,v_t_10,NULL,'پاسخ را با صدای بلند بگو',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',7,NULL,v_w_032,'معنی واژه کلیدی را انتخاب کن',NULL,45,'{"mode":"word_translation","question":"informieren در این درس چه معنی دارد؟","choices":["اطلاع دادن","مسیر","رنگ"],"correctIndex":0}','{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,45,'{"source":"lesson_story","question":"آنا و مارتین تاخیر را به چه کسی اطلاع می دهند؟","choices":["مدیر پروژه","مشتری","همکار تازه"],"correctIndex":0}','{"cefr":"B1","series":88}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_038,'عبارت کلیدی درس',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',2,NULL,v_w_069,'واژه کلیدی درس',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',3,v_t_13,NULL,'به جمله مارتین گوش کن',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',4,v_t_14,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',5,v_t_15,NULL,'به پرسش بعدی گوش کن',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',6,v_t_16,NULL,'پاسخ را با صدای بلند بگو',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',7,NULL,v_w_069,'معنی واژه کلیدی را انتخاب کن',NULL,45,'{"mode":"word_translation","question":"verschieben در این درس چه معنی دارد؟","choices":["جا به جا کردن / تغییر زمان","مسیر","رنگ"],"correctIndex":0}','{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,45,'{"source":"lesson_story","question":"آن ها چه موعد تازه ای پیشنهاد می دهند؟","choices":["ساعت پنج","ساعت شش","فردا صبح"],"correctIndex":0}','{"cefr":"B1","series":88}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',1,NULL,v_w_035,'عبارت کلیدی درس',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',2,NULL,v_w_062,'واژه کلیدی درس',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_19,NULL,'به جمله مارتین گوش کن',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_20,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_21,NULL,'به پرسش بعدی گوش کن',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_22,NULL,'پاسخ را با صدای بلند بگو',NULL,45,NULL,'{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',7,NULL,v_w_062,'معنی واژه کلیدی را انتخاب کن',NULL,45,'{"mode":"word_translation","question":"Stress در این درس چه معنی دارد؟","choices":["استرس","مسیر","رنگ"],"correctIndex":0}','{"cefr":"B1","series":88}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,45,'{"source":"lesson_story","question":"بعد از تایید موعد، چطور به کار ادامه می دهند؟","choices":["بدون استرس","بدون بررسی","بدون تصویر"],"correctIndex":0}','{"cefr":"B1","series":88}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 088 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND storyline_key='anna-martin-b1-project' AND storyline_order BETWEEN 9 AND 12;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 088 storyline continuity.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>24 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 088 turn count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>32 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 088 activity count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (ac.config IS NULL OR JSON_EXTRACT(ac.config,'$.question') IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without task.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter AND lw.is_target=1;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 088 explicit-target count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) AS n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) duplicate_pairs;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple detected.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_series_088_v9();
DROP PROCEDURE IF EXISTS import_nova_series_088_v9;

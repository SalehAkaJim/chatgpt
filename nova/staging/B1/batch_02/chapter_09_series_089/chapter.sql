-- NOVA v9.0 / B1 SERIES 089 / Wenn du willst, helfe ich dir
-- Requires canonical v9.0 and published Series 081-088. No schema DDL.
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_series_089_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_089_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_level BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_chapter BIGINT UNSIGNED DEFAULT NULL;
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
  DECLARE v_w_085 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_086 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_087 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_088 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_089 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_090 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_091 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_092 BIGINT UNSIGNED DEFAULT NULL;
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
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 02 missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE module_id=v_module AND sort_order BETWEEN 1 AND 3 AND status IN ('validated','complete');
  IF v_count<>3 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 086-088 must be validated.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons l JOIN chapters c ON c.id=l.chapter_id WHERE c.module_id=v_module AND c.sort_order BETWEEN 1 AND 3 AND l.storyline_key='anna-martin-b1-project' AND l.storyline_order BETWEEN 1 AND 12;
  IF v_count<>12 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Storyline orders 1-12 required.'; END IF;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=4 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 02 Chapter 04 missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='Wenn du willst, helfe ich dir' AND title_translation='اگه بخوای کمکت می کنم';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 089 canonical title mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 02 Chapter 04 must be empty before Series 089 import.'; END IF;
  SELECT id INTO v_c_martin FROM characters WHERE course_id=v_course AND name='Martin' AND gender='male' ORDER BY id LIMIT 1;
  SELECT id INTO v_c_anna FROM characters WHERE course_id=v_course AND name='Anna' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_martin IS NULL OR v_c_anna IS NULL OR v_c_martin=v_c_anna THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required distinct Characters Martin and Anna missing.'; END IF;

  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='abschicken' AND part_of_speech='verb' AND translation='ارسال کردن' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'abschicken','abschicken','verb','ارسال کردن',46,'{"type":"verb"}','[{"text":"helfen","translation":"کمک کردن"},{"text":"bearbeiten","translation":"ویرایش کردن"},{"text":"prüfen","translation":"بررسی کردن"},{"text":"vergleichen","translation":"مقایسه کردن"},{"text":"ergänzen","translation":"کامل کردن"}]','Danach schicken wir die Präsentation ab.','بعدش ارائه رو ارسال می کنیم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":89}');
    SET v_w_001=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='achten' AND part_of_speech='verb' AND translation='توجه کردن' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'achten','achten','verb','توجه کردن',45,'{"type":"verb"}','[{"text":"helfen","translation":"کمک کردن"},{"text":"bearbeiten","translation":"ویرایش کردن"},{"text":"prüfen","translation":"بررسی کردن"},{"text":"vergleichen","translation":"مقایسه کردن"},{"text":"ergänzen","translation":"کامل کردن"}]','Achte bitte auf die Zahlen in der Grafik.','لطفا به عددهای نمودار دقت کن.',NULL,NULL,'{"cefr":"B1","introducedInSeries":89}');
    SET v_w_002=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='anfangen' AND part_of_speech='verb' AND translation='شروع کردن' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'anfangen','anfangen','verb','شروع کردن',45,'{"type":"verb"}','[{"text":"helfen","translation":"کمک کردن"},{"text":"bearbeiten","translation":"ویرایش کردن"},{"text":"prüfen","translation":"بررسی کردن"},{"text":"vergleichen","translation":"مقایسه کردن"},{"text":"ergänzen","translation":"کامل کردن"}]','Ich fange sofort an.','همین الان شروع می کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":89}');
    SET v_w_003=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='Arbeit' AND part_of_speech='noun' AND translation='کار' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Arbeit | noun'; END IF;
  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='auch' AND part_of_speech='adverb' AND translation='هم / همچنین' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: auch | adverb'; END IF;
  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='auf' AND part_of_speech='preposition' AND translation='روی / برای' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: auf | preposition'; END IF;
  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='Aufgabe' AND part_of_speech='noun' AND translation='وظیفه / تکلیف' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Aufgabe','Aufgabe','noun','وظیفه / تکلیف',45,'{"gender":"feminine","plural":"Aufgaben"}','[{"text":"Grafik","translation":"نمودار"},{"text":"Text","translation":"متن"},{"text":"Tabelle","translation":"جدول"},{"text":"Fehler","translation":"خطا"},{"text":"Beschriftung","translation":"برچسب"}]','Welche Aufgabe möchtest du übernehmen?','می خوای کدوم وظیفه رو انجام بدی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":89}');
    SET v_w_007=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='bearbeiten' AND part_of_speech='verb' AND translation='ویرایش کردن' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: bearbeiten | verb'; END IF;
  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='Beschriftung' AND part_of_speech='noun' AND translation='برچسب / نوشته توضیحی' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Beschriftung','Beschriftung','noun','برچسب / نوشته توضیحی',46,'{"gender":"feminine","plural":"Beschriftungen"}','[{"text":"Grafik","translation":"نمودار"},{"text":"Text","translation":"متن"},{"text":"Tabelle","translation":"جدول"},{"text":"Fehler","translation":"خطا"},{"text":"Aufgabe","translation":"وظیفه"}]','Dort fehlt eine Beschriftung.','اونجا یک برچسب نیست.',NULL,NULL,'{"cefr":"B1","introducedInSeries":89}');
    SET v_w_009=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='bitte' AND part_of_speech='particle' AND translation='لطفا' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'bitte','bitte','particle','لطفا',45,'{"type":"particle"}','[{"text":"lange","translation":"چه مدت"},{"text":"dafür","translation":"برای آن"},{"text":"wahrscheinlich","translation":"احتمالا"},{"text":"gemeinsam","translation":"با هم"},{"text":"rechtzeitig","translation":"به موقع"}]','Achte bitte auf die Zahlen in der Grafik.','لطفا به عددهای نمودار دقت کن.',NULL,NULL,'{"cefr":"B1","introducedInSeries":89}');
    SET v_w_010=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='bleiben' AND part_of_speech='verb' AND translation='ماندن' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: bleiben | verb'; END IF;
  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='brauchen' AND part_of_speech='verb' AND translation='نیاز داشتن / لازم داشتن' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: brauchen | verb'; END IF;
  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='dafür' AND part_of_speech='adverb' AND translation='برای آن / برای این کار' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'dafür','dafür','adverb','برای آن / برای این کار',45,'{"type":"adverb"}','[{"text":"lange","translation":"چه مدت"},{"text":"wahrscheinlich","translation":"احتمالا"},{"text":"gemeinsam","translation":"با هم"},{"text":"rechtzeitig","translation":"به موقع"},{"text":"sofort","translation":"همین الان"}]','Wie lange brauchst du dafür?','چقدر برای این کار وقت لازم داری؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":89}');
    SET v_w_013=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='danach' AND part_of_speech='adverb' AND translation='بعد از آن / بعدش' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: danach | adverb'; END IF;
  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='danke' AND part_of_speech='interjection' AND translation='ممنون' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: danke | interjection'; END IF;
  SELECT id INTO v_w_016 FROM words WHERE course_id=v_course AND lemma='dann' AND part_of_speech='adverb' AND translation='بعد / سپس' ORDER BY id LIMIT 1;
  IF v_w_016 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dann | adverb'; END IF;
  SELECT id INTO v_w_017 FROM words WHERE course_id=v_course AND lemma='das' AND part_of_speech='pronoun' AND translation='این / آن' ORDER BY id LIMIT 1;
  IF v_w_017 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: das | pronoun'; END IF;
  SELECT id INTO v_w_018 FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_018 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: der | article'; END IF;
  SELECT id INTO v_w_019 FROM words WHERE course_id=v_course AND lemma='dort' AND part_of_speech='adverb' AND translation='آنجا' ORDER BY id LIMIT 1;
  IF v_w_019 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dort | adverb'; END IF;
  SELECT id INTO v_w_020 FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_020 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: du | pronoun'; END IF;
  SELECT id INTO v_w_021 FROM words WHERE course_id=v_course AND lemma='ein' AND part_of_speech='article' AND translation='یک / حرف تعریف نامعین' ORDER BY id LIMIT 1;
  IF v_w_021 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ein | article'; END IF;
  SELECT id INTO v_w_022 FROM words WHERE course_id=v_course AND lemma='ergänzen' AND part_of_speech='verb' AND translation='کامل کردن / افزودن' ORDER BY id LIMIT 1;
  IF v_w_022 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'ergänzen','ergänzen','verb','کامل کردن / افزودن',46,'{"type":"verb"}','[{"text":"helfen","translation":"کمک کردن"},{"text":"bearbeiten","translation":"ویرایش کردن"},{"text":"prüfen","translation":"بررسی کردن"},{"text":"vergleichen","translation":"مقایسه کردن"},{"text":"fragen","translation":"پرسیدن"}]','Kannst du sie ergänzen?','می تونی کاملش کنی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":89}');
    SET v_w_022=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_023 FROM words WHERE course_id=v_course AND lemma='etwas' AND part_of_speech='pronoun' AND translation='چیزی / یک چیزی' ORDER BY id LIMIT 1;
  IF v_w_023 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: etwas | pronoun'; END IF;
  SELECT id INTO v_w_024 FROM words WHERE course_id=v_course AND lemma='falls' AND part_of_speech='conjunction' AND translation='در صورتی که / اگر' ORDER BY id LIMIT 1;
  IF v_w_024 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'falls','falls','conjunction','در صورتی که / اگر',46,'{"type":"conjunction"}','[{"text":"wenn","translation":"اگر"},{"text":"während","translation":"هم زمان"},{"text":"aber","translation":"اما"},{"text":"und","translation":"و"},{"text":"weil","translation":"چون"}]','Ja. Falls etwas unklar ist, frage ich dich.','آره. اگه چیزی نامشخص باشه، ازت می پرسم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":89}');
    SET v_w_024=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_025 FROM words WHERE course_id=v_course AND lemma='Falls etwas unklar ist, frage ich dich.' AND part_of_speech='phrase' AND translation='اگه چیزی نامشخص باشه، ازت می پرسم.' ORDER BY id LIMIT 1;
  IF v_w_025 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Falls etwas unklar ist, frage ich dich.','Falls etwas unklar ist, frage ich dich.','phrase','اگه چیزی نامشخص باشه، ازت می پرسم.',46,'{"type":"sentence_pattern"}','[{"text":"Wenn etwas fehlt, ergänze ich es.","translation":"اگه چیزی کم باشه، کاملش می کنم."},{"text":"Ich frage dich, bevor ich die Grafik ändere.","translation":"قبل از تغییر نمودار ازت می پرسم."},{"text":"Die Beschriftung ist jetzt klar.","translation":"برچسب حالا مشخصه."},{"text":"Du bleibst während der Arbeit neben mir.","translation":"هنگام کار کنارم می مونی."},{"text":"Ich öffne zuerst die zweite Grafik.","translation":"اول نمودار دوم رو باز می کنم."}]','Falls etwas unklar ist, frage ich dich.','اگه چیزی نامشخص باشه، ازت می پرسم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":89}');
    SET v_w_025=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_026 FROM words WHERE course_id=v_course AND lemma='Farbe' AND part_of_speech='noun' AND translation='رنگ' ORDER BY id LIMIT 1;
  IF v_w_026 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Farbe | noun'; END IF;
  SELECT id INTO v_w_027 FROM words WHERE course_id=v_course AND lemma='fehlen' AND part_of_speech='verb' AND translation='کم بودن / وجود نداشتن' ORDER BY id LIMIT 1;
  IF v_w_027 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: fehlen | verb'; END IF;
  SELECT id INTO v_w_028 FROM words WHERE course_id=v_course AND lemma='Fehler' AND part_of_speech='noun' AND translation='خطا / اشتباه' ORDER BY id LIMIT 1;
  IF v_w_028 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Fehler','Fehler','noun','خطا / اشتباه',45,'{"gender":"masculine","plural":"Fehler"}','[{"text":"Grafik","translation":"نمودار"},{"text":"Text","translation":"متن"},{"text":"Tabelle","translation":"جدول"},{"text":"Aufgabe","translation":"وظیفه"},{"text":"Beschriftung","translation":"برچسب"}]','Ja, dann finden wir Fehler schneller.','آره، این طوری خطاها رو سریع تر پیدا می کنیم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":89}');
    SET v_w_028=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_029 FROM words WHERE course_id=v_course AND lemma='fertig' AND part_of_speech='adjective' AND translation='تمام / آماده' ORDER BY id LIMIT 1;
  IF v_w_029 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: fertig | adjective'; END IF;
  SELECT id INTO v_w_030 FROM words WHERE course_id=v_course AND lemma='finden' AND part_of_speech='verb' AND translation='پیدا کردن' ORDER BY id LIMIT 1;
  IF v_w_030 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: finden | verb'; END IF;
  SELECT id INTO v_w_031 FROM words WHERE course_id=v_course AND lemma='fragen' AND part_of_speech='verb' AND translation='پرسیدن' ORDER BY id LIMIT 1;
  IF v_w_031 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: fragen | verb'; END IF;
  SELECT id INTO v_w_032 FROM words WHERE course_id=v_course AND lemma='funktionieren' AND part_of_speech='verb' AND translation='کار کردن / درست کار کردن' ORDER BY id LIMIT 1;
  IF v_w_032 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: funktionieren | verb'; END IF;
  SELECT id INTO v_w_033 FROM words WHERE course_id=v_course AND lemma='gemeinsam' AND part_of_speech='adverb' AND translation='با هم / مشترک' ORDER BY id LIMIT 1;
  IF v_w_033 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'gemeinsam','gemeinsam','adverb','با هم / مشترک',46,'{"type":"adverb"}','[{"text":"lange","translation":"چه مدت"},{"text":"dafür","translation":"برای آن"},{"text":"wahrscheinlich","translation":"احتمالا"},{"text":"rechtzeitig","translation":"به موقع"},{"text":"sofort","translation":"همین الان"}]','Gemeinsam schaffen wir das rechtzeitig.','با هم به موقع از پسش برمیایم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":89}');
    SET v_w_033=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_034 FROM words WHERE course_id=v_course AND lemma='Gemeinsam schaffen wir das rechtzeitig.' AND part_of_speech='phrase' AND translation='با هم به موقع از پسش برمیایم.' ORDER BY id LIMIT 1;
  IF v_w_034 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Gemeinsam schaffen wir das rechtzeitig.','Gemeinsam schaffen wir das rechtzeitig.','phrase','با هم به موقع از پسش برمیایم.',46,'{"type":"sentence_pattern"}','[{"text":"Zusammen prüfen wir alles am Ende.","translation":"با هم در پایان همه چیز رو بررسی می کنیم."},{"text":"Wir haben noch genug Zeit.","translation":"هنوز وقت کافی داریم."},{"text":"Die Präsentation ist schon fertig.","translation":"ارائه از قبل آماده است."},{"text":"Danach schicken wir die Datei ab.","translation":"بعدش فایل رو ارسال می کنیم."},{"text":"Die Zusammenarbeit hat gut funktioniert.","translation":"همکاری خوب پیش رفت."}]','Gemeinsam schaffen wir das rechtzeitig.','با هم به موقع از پسش برمیایم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":89}');
    SET v_w_034=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_035 FROM words WHERE course_id=v_course AND lemma='gleich' AND part_of_speech='adverb' AND translation='همین الان' ORDER BY id LIMIT 1;
  IF v_w_035 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: gleich | adverb'; END IF;
  SELECT id INTO v_w_036 FROM words WHERE course_id=v_course AND lemma='Grafik' AND part_of_speech='noun' AND translation='نمودار' ORDER BY id LIMIT 1;
  IF v_w_036 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Grafik | noun'; END IF;
  SELECT id INTO v_w_037 FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_037 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: gut | adjective'; END IF;
  SELECT id INTO v_w_038 FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_038 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: haben | verb'; END IF;
  SELECT id INTO v_w_039 FROM words WHERE course_id=v_course AND lemma='halb' AND part_of_speech='adjective' AND translation='نیم / نصف' ORDER BY id LIMIT 1;
  IF v_w_039 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'halb','halb','adjective','نیم / نصف',45,'{"type":"adjective"}','[{"text":"hilfreich","translation":"کمک کننده"},{"text":"schnell","translation":"سریع"},{"text":"unklar","translation":"نامشخص"},{"text":"fertig","translation":"آماده"},{"text":"perfekt","translation":"عالی"}]','Wahrscheinlich eine halbe Stunde.','احتمالا نیم ساعت.',NULL,NULL,'{"cefr":"B1","introducedInSeries":89}');
    SET v_w_039=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_040 FROM words WHERE course_id=v_course AND lemma='helfen' AND part_of_speech='verb' AND translation='کمک کردن' ORDER BY id LIMIT 1;
  IF v_w_040 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: helfen | verb'; END IF;
  SELECT id INTO v_w_041 FROM words WHERE course_id=v_course AND lemma='hilfreich' AND part_of_speech='adjective' AND translation='کمک کننده' ORDER BY id LIMIT 1;
  IF v_w_041 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'hilfreich','hilfreich','adjective','کمک کننده',45,'{"type":"adjective"}','[{"text":"schnell","translation":"سریع"},{"text":"halb","translation":"نیم"},{"text":"unklar","translation":"نامشخص"},{"text":"fertig","translation":"آماده"},{"text":"perfekt","translation":"عالی"}]','Das wäre sehr hilfreich.','این خیلی کمک کننده می شه.',NULL,NULL,'{"cefr":"B1","introducedInSeries":89}');
    SET v_w_041=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_042 FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_042 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ich | pronoun'; END IF;
  SELECT id INTO v_w_043 FROM words WHERE course_id=v_course AND lemma='Ich prüfe die Farben, während du den Text korrigierst.' AND part_of_speech='phrase' AND translation='من رنگ ها رو بررسی می کنم و تو هم زمان متن رو اصلاح می کنی.' ORDER BY id LIMIT 1;
  IF v_w_043 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich prüfe die Farben, während du den Text korrigierst.','Ich prüfe die Farben, während du den Text korrigierst.','phrase','من رنگ ها رو بررسی می کنم و تو هم زمان متن رو اصلاح می کنی.',45,'{"type":"sentence_pattern"}','[{"text":"Ich korrigiere den Text, während du wartest.","translation":"من متن رو اصلاح می کنم و تو هم زمان صبر می کنی."},{"text":"Du prüfst die Zahlen und die Farben.","translation":"تو عددها و رنگ ها رو بررسی می کنی."},{"text":"Wir vergleichen die Grafik mit der Tabelle.","translation":"نمودار رو با جدول مقایسه می کنیم."},{"text":"Ich übernehme nur die letzte Kontrolle.","translation":"فقط بررسی نهایی رو انجام می دم."},{"text":"Du kannst sofort mit der Aufgabe anfangen.","translation":"می تونی همین الان کار رو شروع کنی."}]','Ich prüfe die Farben, während du den Text korrigierst.','من رنگ ها رو بررسی می کنم و تو هم زمان متن رو اصلاح می کنی.',NULL,NULL,'{"cefr":"B1","introducedInSeries":89}');
    SET v_w_043=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_044 FROM words WHERE course_id=v_course AND lemma='in' AND part_of_speech='preposition' AND translation='در / داخل' ORDER BY id LIMIT 1;
  IF v_w_044 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: in | preposition'; END IF;
  SELECT id INTO v_w_045 FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_045 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ja | interjection'; END IF;
  SELECT id INTO v_w_046 FROM words WHERE course_id=v_course AND lemma='jetzt' AND part_of_speech='adverb' AND translation='حالا / اکنون' ORDER BY id LIMIT 1;
  IF v_w_046 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: jetzt | adverb'; END IF;
  SELECT id INTO v_w_047 FROM words WHERE course_id=v_course AND lemma='klappen' AND part_of_speech='verb' AND translation='خوب پیش رفتن' ORDER BY id LIMIT 1;
  IF v_w_047 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'klappen','klappen','verb','خوب پیش رفتن',46,'{"type":"verb"}','[{"text":"helfen","translation":"کمک کردن"},{"text":"bearbeiten","translation":"ویرایش کردن"},{"text":"prüfen","translation":"بررسی کردن"},{"text":"vergleichen","translation":"مقایسه کردن"},{"text":"ergänzen","translation":"کامل کردن"}]','Danke, so klappt die Arbeit gut.','ممنون، این طوری کار خوب پیش می ره.',NULL,NULL,'{"cefr":"B1","introducedInSeries":89}');
    SET v_w_047=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_048 FROM words WHERE course_id=v_course AND lemma='können' AND part_of_speech='verb' AND translation='توانستن / بتوان' ORDER BY id LIMIT 1;
  IF v_w_048 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: können | verb'; END IF;
  SELECT id INTO v_w_049 FROM words WHERE course_id=v_course AND lemma='Kontrolle' AND part_of_speech='noun' AND translation='بررسی نهایی' ORDER BY id LIMIT 1;
  IF v_w_049 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Kontrolle | noun'; END IF;
  SELECT id INTO v_w_050 FROM words WHERE course_id=v_course AND lemma='korrigieren' AND part_of_speech='verb' AND translation='اصلاح کردن' ORDER BY id LIMIT 1;
  IF v_w_050 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: korrigieren | verb'; END IF;
  SELECT id INTO v_w_051 FROM words WHERE course_id=v_course AND lemma='lange' AND part_of_speech='adverb' AND translation='چه مدت' ORDER BY id LIMIT 1;
  IF v_w_051 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'lange','lange','adverb','چه مدت',45,'{"type":"adverb"}','[{"text":"dafür","translation":"برای آن"},{"text":"wahrscheinlich","translation":"احتمالا"},{"text":"gemeinsam","translation":"با هم"},{"text":"rechtzeitig","translation":"به موقع"},{"text":"sofort","translation":"همین الان"}]','Wie lange brauchst du dafür?','چقدر برای این کار وقت لازم داری؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":89}');
    SET v_w_051=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_052 FROM words WHERE course_id=v_course AND lemma='letzte' AND part_of_speech='adjective' AND translation='آخرین' ORDER BY id LIMIT 1;
  IF v_w_052 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: letzte | adjective'; END IF;
  SELECT id INTO v_w_053 FROM words WHERE course_id=v_course AND lemma='Minute' AND part_of_speech='noun' AND translation='دقیقه' ORDER BY id LIMIT 1;
  IF v_w_053 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Minute','Minute','noun','دقیقه',46,'{"gender":"feminine","plural":"Minuten"}','[{"text":"Grafik","translation":"نمودار"},{"text":"Text","translation":"متن"},{"text":"Tabelle","translation":"جدول"},{"text":"Fehler","translation":"خطا"},{"text":"Aufgabe","translation":"وظیفه"}]','Wir haben noch zwanzig Minuten.','هنوز بیست دقیقه وقت داریم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":89}');
    SET v_w_053=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_054 FROM words WHERE course_id=v_course AND lemma='mit' AND part_of_speech='preposition' AND translation='با' ORDER BY id LIMIT 1;
  IF v_w_054 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: mit | preposition'; END IF;
  SELECT id INTO v_w_055 FROM words WHERE course_id=v_course AND lemma='möchten' AND part_of_speech='verb' AND translation='خواستن / مایل بودن' ORDER BY id LIMIT 1;
  IF v_w_055 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: möchten | verb'; END IF;
  SELECT id INTO v_w_056 FROM words WHERE course_id=v_course AND lemma='müssen' AND part_of_speech='verb' AND translation='مجبور بودن / باید' ORDER BY id LIMIT 1;
  IF v_w_056 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: müssen | verb'; END IF;
  SELECT id INTO v_w_057 FROM words WHERE course_id=v_course AND lemma='neben' AND part_of_speech='preposition' AND translation='کنار' ORDER BY id LIMIT 1;
  IF v_w_057 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: neben | preposition'; END IF;
  SELECT id INTO v_w_058 FROM words WHERE course_id=v_course AND lemma='noch' AND part_of_speech='adverb' AND translation='هنوز' ORDER BY id LIMIT 1;
  IF v_w_058 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: noch | adverb'; END IF;
  SELECT id INTO v_w_059 FROM words WHERE course_id=v_course AND lemma='nur' AND part_of_speech='particle' AND translation='فقط' ORDER BY id LIMIT 1;
  IF v_w_059 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: nur | particle'; END IF;
  SELECT id INTO v_w_060 FROM words WHERE course_id=v_course AND lemma='öffnen' AND part_of_speech='verb' AND translation='باز کردن' ORDER BY id LIMIT 1;
  IF v_w_060 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: öffnen | verb'; END IF;
  SELECT id INTO v_w_061 FROM words WHERE course_id=v_course AND lemma='perfekt' AND part_of_speech='adjective' AND translation='عالی' ORDER BY id LIMIT 1;
  IF v_w_061 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'perfekt','perfekt','adjective','عالی',46,'{"type":"adjective"}','[{"text":"hilfreich","translation":"کمک کننده"},{"text":"schnell","translation":"سریع"},{"text":"halb","translation":"نیم"},{"text":"unklar","translation":"نامشخص"},{"text":"fertig","translation":"آماده"}]','Perfekt, unsere Zusammenarbeit hat gut funktioniert.','عالیه، همکاری مون خوب پیش رفت.',NULL,NULL,'{"cefr":"B1","introducedInSeries":89}');
    SET v_w_061=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_062 FROM words WHERE course_id=v_course AND lemma='Präsentation' AND part_of_speech='noun' AND translation='ارائه' ORDER BY id LIMIT 1;
  IF v_w_062 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Präsentation | noun'; END IF;
  SELECT id INTO v_w_063 FROM words WHERE course_id=v_course AND lemma='prüfen' AND part_of_speech='verb' AND translation='بررسی کردن' ORDER BY id LIMIT 1;
  IF v_w_063 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: prüfen | verb'; END IF;
  SELECT id INTO v_w_064 FROM words WHERE course_id=v_course AND lemma='rechtzeitig' AND part_of_speech='adverb' AND translation='به موقع' ORDER BY id LIMIT 1;
  IF v_w_064 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: rechtzeitig | adverb'; END IF;
  SELECT id INTO v_w_065 FROM words WHERE course_id=v_course AND lemma='schaffen' AND part_of_speech='verb' AND translation='از عهده برآمدن' ORDER BY id LIMIT 1;
  IF v_w_065 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: schaffen | verb'; END IF;
  SELECT id INTO v_w_066 FROM words WHERE course_id=v_course AND lemma='schnell' AND part_of_speech='adjective' AND translation='سریع' ORDER BY id LIMIT 1;
  IF v_w_066 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'schnell','schnell','adjective','سریع',45,'{"type":"adjective"}','[{"text":"hilfreich","translation":"کمک کننده"},{"text":"halb","translation":"نیم"},{"text":"unklar","translation":"نامشخص"},{"text":"fertig","translation":"آماده"},{"text":"perfekt","translation":"عالی"}]','Dann sind wir schneller fertig.','پس سریع تر تموم می کنیم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":89}');
    SET v_w_066=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_067 FROM words WHERE course_id=v_course AND lemma='sehr' AND part_of_speech='adverb' AND translation='خیلی / بسیار' ORDER BY id LIMIT 1;
  IF v_w_067 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sehr | adverb'; END IF;
  SELECT id INTO v_w_068 FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_068 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sein | verb'; END IF;
  SELECT id INTO v_w_069 FROM words WHERE course_id=v_course AND lemma='sie' AND part_of_speech='pronoun' AND translation='او / آن ها' ORDER BY id LIMIT 1;
  IF v_w_069 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sie | pronoun'; END IF;
  SELECT id INTO v_w_070 FROM words WHERE course_id=v_course AND lemma='so' AND part_of_speech='adverb' AND translation='این طور / آن طور' ORDER BY id LIMIT 1;
  IF v_w_070 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: so | adverb'; END IF;
  SELECT id INTO v_w_071 FROM words WHERE course_id=v_course AND lemma='sofort' AND part_of_speech='adverb' AND translation='فورا / همین الان' ORDER BY id LIMIT 1;
  IF v_w_071 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sofort | adverb'; END IF;
  SELECT id INTO v_w_072 FROM words WHERE course_id=v_course AND lemma='sollen' AND part_of_speech='verb' AND translation='باید / قرار است' ORDER BY id LIMIT 1;
  IF v_w_072 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sollen | verb'; END IF;
  SELECT id INTO v_w_073 FROM words WHERE course_id=v_course AND lemma='Stunde' AND part_of_speech='noun' AND translation='ساعت / یک ساعت' ORDER BY id LIMIT 1;
  IF v_w_073 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Stunde | noun'; END IF;
  SELECT id INTO v_w_074 FROM words WHERE course_id=v_course AND lemma='Tabelle' AND part_of_speech='noun' AND translation='جدول' ORDER BY id LIMIT 1;
  IF v_w_074 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Tabelle','Tabelle','noun','جدول',45,'{"gender":"feminine","plural":"Tabellen"}','[{"text":"Grafik","translation":"نمودار"},{"text":"Text","translation":"متن"},{"text":"Fehler","translation":"خطا"},{"text":"Aufgabe","translation":"وظیفه"},{"text":"Beschriftung","translation":"برچسب"}]','Soll ich sie mit der Tabelle vergleichen?','باید با جدول مقایسه شون کنم؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":89}');
    SET v_w_074=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_075 FROM words WHERE course_id=v_course AND lemma='Text' AND part_of_speech='noun' AND translation='متن' ORDER BY id LIMIT 1;
  IF v_w_075 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Text | noun'; END IF;
  SELECT id INTO v_w_076 FROM words WHERE course_id=v_course AND lemma='übernehmen' AND part_of_speech='verb' AND translation='بر عهده گرفتن' ORDER BY id LIMIT 1;
  IF v_w_076 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'übernehmen','übernehmen','verb','بر عهده گرفتن',45,'{"type":"verb"}','[{"text":"helfen","translation":"کمک کردن"},{"text":"bearbeiten","translation":"ویرایش کردن"},{"text":"prüfen","translation":"بررسی کردن"},{"text":"vergleichen","translation":"مقایسه کردن"},{"text":"ergänzen","translation":"کامل کردن"}]','Welche Aufgabe möchtest du übernehmen?','می خوای کدوم وظیفه رو انجام بدی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":89}');
    SET v_w_076=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_077 FROM words WHERE course_id=v_course AND lemma='und' AND part_of_speech='conjunction' AND translation='و' ORDER BY id LIMIT 1;
  IF v_w_077 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: und | conjunction'; END IF;
  SELECT id INTO v_w_078 FROM words WHERE course_id=v_course AND lemma='unklar' AND part_of_speech='adjective' AND translation='نامشخص' ORDER BY id LIMIT 1;
  IF v_w_078 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'unklar','unklar','adjective','نامشخص',46,'{"type":"adjective"}','[{"text":"hilfreich","translation":"کمک کننده"},{"text":"schnell","translation":"سریع"},{"text":"halb","translation":"نیم"},{"text":"fertig","translation":"آماده"},{"text":"perfekt","translation":"عالی"}]','Ja. Falls etwas unklar ist, frage ich dich.','آره. اگه چیزی نامشخص باشه، ازت می پرسم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":89}');
    SET v_w_078=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_079 FROM words WHERE course_id=v_course AND lemma='unser' AND part_of_speech='determiner' AND translation='مال ما / ما' ORDER BY id LIMIT 1;
  IF v_w_079 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'unser','unser','determiner','مال ما / ما',46,'{"type":"determiner"}','[{"text":"lange","translation":"چه مدت"},{"text":"dafür","translation":"برای آن"},{"text":"wahrscheinlich","translation":"احتمالا"},{"text":"gemeinsam","translation":"با هم"},{"text":"rechtzeitig","translation":"به موقع"}]','Perfekt, unsere Zusammenarbeit hat gut funktioniert.','عالیه، همکاری مون خوب پیش رفت.',NULL,NULL,'{"cefr":"B1","introducedInSeries":89}');
    SET v_w_079=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_080 FROM words WHERE course_id=v_course AND lemma='vergleichen' AND part_of_speech='verb' AND translation='مقایسه کردن' ORDER BY id LIMIT 1;
  IF v_w_080 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: vergleichen | verb'; END IF;
  SELECT id INTO v_w_081 FROM words WHERE course_id=v_course AND lemma='während' AND part_of_speech='conjunction' AND translation='در حالی که / هم زمان' ORDER BY id LIMIT 1;
  IF v_w_081 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'während','während','conjunction','در حالی که / هم زمان',45,'{"type":"conjunction"}','[{"text":"wenn","translation":"اگر"},{"text":"falls","translation":"در صورتی که"},{"text":"aber","translation":"اما"},{"text":"und","translation":"و"},{"text":"weil","translation":"چون"}]','Ich prüfe die Farben, während du den Text korrigierst.','من رنگ ها رو بررسی می کنم و تو هم زمان متن رو اصلاح می کنی.',NULL,NULL,'{"cefr":"B1","introducedInSeries":89}');
    SET v_w_081=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_082 FROM words WHERE course_id=v_course AND lemma='wahrscheinlich' AND part_of_speech='adverb' AND translation='احتمالا' ORDER BY id LIMIT 1;
  IF v_w_082 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'wahrscheinlich','wahrscheinlich','adverb','احتمالا',45,'{"type":"adverb"}','[{"text":"lange","translation":"چه مدت"},{"text":"dafür","translation":"برای آن"},{"text":"gemeinsam","translation":"با هم"},{"text":"rechtzeitig","translation":"به موقع"},{"text":"sofort","translation":"همین الان"}]','Wahrscheinlich eine halbe Stunde.','احتمالا نیم ساعت.',NULL,NULL,'{"cefr":"B1","introducedInSeries":89}');
    SET v_w_082=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_083 FROM words WHERE course_id=v_course AND lemma='welche' AND part_of_speech='pronoun' AND translation='کدام / چه' ORDER BY id LIMIT 1;
  IF v_w_083 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: welche | pronoun'; END IF;
  SELECT id INTO v_w_084 FROM words WHERE course_id=v_course AND lemma='wenn' AND part_of_speech='conjunction' AND translation='اگر / وقتی' ORDER BY id LIMIT 1;
  IF v_w_084 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wenn | conjunction'; END IF;
  SELECT id INTO v_w_085 FROM words WHERE course_id=v_course AND lemma='Wenn du willst, helfe ich dir.' AND part_of_speech='phrase' AND translation='اگه بخوای کمکت می کنم.' ORDER BY id LIMIT 1;
  IF v_w_085 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Wenn du willst, helfe ich dir.','Wenn du willst, helfe ich dir.','phrase','اگه بخوای کمکت می کنم.',45,'{"type":"sentence_pattern"}','[{"text":"Ich helfe dir später bei der Kontrolle.","translation":"بعدا در بررسی کمکت می کنم."},{"text":"Du kannst die Grafik allein bearbeiten.","translation":"می تونی نمودار رو تنهایی ویرایش کنی."},{"text":"Wenn du Zeit hast, erklärst du mir das.","translation":"اگه وقت داشتی، برام توضیحش می دی."},{"text":"Wir sind wahrscheinlich bald fertig.","translation":"احتمالا به زودی تموم می کنیم."},{"text":"Die letzte Grafik braucht eine Stunde.","translation":"نمودار آخر یک ساعت وقت لازم داره."}]','Wenn du willst, helfe ich dir.','اگه بخوای کمکت می کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":89}');
    SET v_w_085=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_086 FROM words WHERE course_id=v_course AND lemma='wie' AND part_of_speech='adverb' AND translation='چطور / چگونه' ORDER BY id LIMIT 1;
  IF v_w_086 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wie | adverb'; END IF;
  SELECT id INTO v_w_087 FROM words WHERE course_id=v_course AND lemma='wir' AND part_of_speech='pronoun' AND translation='ما' ORDER BY id LIMIT 1;
  IF v_w_087 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wir | pronoun'; END IF;
  SELECT id INTO v_w_088 FROM words WHERE course_id=v_course AND lemma='wollen' AND part_of_speech='verb' AND translation='خواستن' ORDER BY id LIMIT 1;
  IF v_w_088 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'wollen','wollen','verb','خواستن',45,'{"type":"verb"}','[{"text":"helfen","translation":"کمک کردن"},{"text":"bearbeiten","translation":"ویرایش کردن"},{"text":"prüfen","translation":"بررسی کردن"},{"text":"vergleichen","translation":"مقایسه کردن"},{"text":"ergänzen","translation":"کامل کردن"}]','Wenn du willst, helfe ich dir.','اگه بخوای کمکت می کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":89}');
    SET v_w_088=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_089 FROM words WHERE course_id=v_course AND lemma='Zahl' AND part_of_speech='noun' AND translation='عدد / رقم' ORDER BY id LIMIT 1;
  IF v_w_089 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Zahl | noun'; END IF;
  SELECT id INTO v_w_090 FROM words WHERE course_id=v_course AND lemma='Zusammenarbeit' AND part_of_speech='noun' AND translation='همکاری' ORDER BY id LIMIT 1;
  IF v_w_090 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Zusammenarbeit','Zusammenarbeit','noun','همکاری',46,'{"gender":"feminine","plural":null}','[{"text":"Grafik","translation":"نمودار"},{"text":"Text","translation":"متن"},{"text":"Tabelle","translation":"جدول"},{"text":"Fehler","translation":"خطا"},{"text":"Aufgabe","translation":"وظیفه"}]','Perfekt, unsere Zusammenarbeit hat gut funktioniert.','عالیه، همکاری مون خوب پیش رفت.',NULL,NULL,'{"cefr":"B1","introducedInSeries":89}');
    SET v_w_090=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_091 FROM words WHERE course_id=v_course AND lemma='zwanzig' AND part_of_speech='number' AND translation='بیست' ORDER BY id LIMIT 1;
  IF v_w_091 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zwanzig | number'; END IF;
  SELECT id INTO v_w_092 FROM words WHERE course_id=v_course AND lemma='zweite' AND part_of_speech='adjective' AND translation='دومین' ORDER BY id LIMIT 1;
  IF v_w_092 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zweite | adjective'; END IF;
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_martin,v_c_anna,'Hilfe anbieten','پیشنهاد کمک','Martin muss noch eine Grafik bearbeiten, und Anna bietet ihm Unterstützung an.','مارتین هنوز باید یک نمودار را ویرایش کند و آنا به او پیشنهاد کمک می دهد.','story','anna-martin-b1-project',13,45,150,1,'validated','{"relationship":"coworkers","context":"offer-help-and-finish-work","cefr":"B1","storyArc":"offer-divide-clarify-complete"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_martin,1,'character','Ich muss noch die letzte Grafik bearbeiten.','هنوز باید نمودار آخر رو ویرایش کنم.',45,NULL,NULL,NULL,NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"müssen","partOfSpeech":"verb","surface":"muss","translation":"مجبور بودن / باید"},{"lemma":"noch","partOfSpeech":"adverb","surface":"noch","translation":"هنوز"},{"form":"accusative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"accusative_feminine","lemma":"letzte","partOfSpeech":"adjective","surface":"letzte","translation":"آخرین"},{"lemma":"Grafik","partOfSpeech":"noun","surface":"Grafik","translation":"نمودار"},{"lemma":"bearbeiten","partOfSpeech":"verb","suffix":".","surface":"bearbeiten","translation":"ویرایش کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,2,'learner','Wie lange brauchst du dafür?','چقدر برای این کار وقت لازم داری؟',45,NULL,NULL,'wie lange brauchst du dafür',NULL,'[{"lemma":"wie","meaning":"چقدر","partOfSpeech":"adverb","surface":"Wie","translation":"چطور / چگونه"},{"lemma":"lange","partOfSpeech":"adverb","surface":"lange","translation":"چه مدت"},{"form":"present_2sg","lemma":"brauchen","partOfSpeech":"verb","surface":"brauchst","translation":"نیاز داشتن / لازم داشتن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"dafür","partOfSpeech":"adverb","suffix":"?","surface":"dafür","translation":"برای آن / برای این کار"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_martin,3,'character','Wahrscheinlich eine halbe Stunde.','احتمالا نیم ساعت.',45,NULL,NULL,NULL,NULL,'[{"lemma":"wahrscheinlich","partOfSpeech":"adverb","surface":"Wahrscheinlich","translation":"احتمالا"},{"form":"accusative_feminine","lemma":"ein","partOfSpeech":"article","surface":"eine","translation":"یک / حرف تعریف نامعین"},{"form":"accusative_feminine","lemma":"halb","partOfSpeech":"adjective","surface":"halbe","translation":"نیم / نصف"},{"lemma":"Stunde","partOfSpeech":"noun","suffix":".","surface":"Stunde","translation":"ساعت / یک ساعت"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,4,'learner','Wenn du willst, helfe ich dir.','اگه بخوای کمکت می کنم.',45,NULL,NULL,'wenn du willst helfe ich dir',NULL,'[{"lemma":"wenn","partOfSpeech":"conjunction","surface":"Wenn","translation":"اگر / وقتی"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"present_2sg","lemma":"wollen","partOfSpeech":"verb","suffix":",","surface":"willst","translation":"خواستن"},{"form":"present_1sg","lemma":"helfen","partOfSpeech":"verb","surface":"helfe","translation":"کمک کردن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"dative_2sg","lemma":"du","meaning":"به تو","partOfSpeech":"pronoun","suffix":".","surface":"dir","translation":"تو"}]','شرط با wenn','وقتی جمله شرطی با wenn اول می آید، فعل آن در پایان قرار می گیرد و جمله اصلی با فعل شروع می شود.','{"pattern":"Wenn + subject + verb, verb + subject + object"}','{"cefr":"B1"}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_martin,5,'character','Das wäre sehr hilfreich.','این خیلی کمک کننده می شه.',45,NULL,NULL,NULL,NULL,'[{"lemma":"das","partOfSpeech":"pronoun","surface":"Das","translation":"این / آن"},{"form":"konjunktiv_ii_3sg","lemma":"sein","partOfSpeech":"verb","surface":"wäre","translation":"بودن"},{"lemma":"sehr","partOfSpeech":"adverb","surface":"sehr","translation":"خیلی / بسیار"},{"lemma":"hilfreich","partOfSpeech":"adjective","suffix":".","surface":"hilfreich","translation":"کمک کننده"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,6,'learner','Dann sind wir schneller fertig.','پس سریع تر تموم می کنیم.',45,NULL,NULL,'dann sind wir schneller fertig',NULL,'[{"lemma":"dann","partOfSpeech":"adverb","surface":"Dann","translation":"بعد / سپس"},{"form":"present_plural","lemma":"sein","partOfSpeech":"verb","surface":"sind","translation":"بودن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"form":"comparative","lemma":"schnell","partOfSpeech":"adjective","surface":"schneller","translation":"سریع"},{"lemma":"fertig","partOfSpeech":"adjective","suffix":".","surface":"fertig","translation":"تمام / آماده"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_martin,v_c_anna,'Die Aufgaben teilen','تقسیم وظایف','Anna übernimmt die Kontrolle der Farben, während Martin den Text korrigiert.','آنا بررسی رنگ ها را انجام می دهد و هم زمان مارتین متن را اصلاح می کند.','story','anna-martin-b1-project',14,45,150,2,'validated','{"relationship":"coworkers","context":"offer-help-and-finish-work","cefr":"B1","storyArc":"offer-divide-clarify-complete"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_martin,1,'character','Welche Aufgabe möchtest du übernehmen?','می خوای کدوم وظیفه رو انجام بدی؟',45,NULL,NULL,NULL,NULL,'[{"lemma":"welche","partOfSpeech":"pronoun","surface":"Welche","translation":"کدام / چه"},{"lemma":"Aufgabe","partOfSpeech":"noun","surface":"Aufgabe","translation":"وظیفه / تکلیف"},{"form":"present_2sg","lemma":"möchten","partOfSpeech":"verb","surface":"möchtest","translation":"خواستن / مایل بودن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"übernehmen","partOfSpeech":"verb","suffix":"?","surface":"übernehmen","translation":"بر عهده گرفتن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,2,'learner','Ich prüfe die Farben, während du den Text korrigierst.','من رنگ ها رو بررسی می کنم و تو هم زمان متن رو اصلاح می کنی.',45,NULL,NULL,'ich prüfe die farben während du den text korrigierst',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"prüfen","partOfSpeech":"verb","surface":"prüfe","translation":"بررسی کردن"},{"form":"accusative_plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"plural","lemma":"Farbe","partOfSpeech":"noun","suffix":",","surface":"Farben","translation":"رنگ"},{"lemma":"während","partOfSpeech":"conjunction","surface":"während","translation":"در حالی که / هم زمان"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"accusative_masculine","lemma":"der","partOfSpeech":"article","surface":"den","translation":"حرف تعریف"},{"lemma":"Text","partOfSpeech":"noun","surface":"Text","translation":"متن"},{"form":"present_2sg","lemma":"korrigieren","partOfSpeech":"verb","suffix":".","surface":"korrigierst","translation":"اصلاح کردن"}]','هم زمانی با während','بعد از während فعل صرف شده در پایان جمله وابسته قرار می گیرد.','{"pattern":"main clause, während + subject + object + verb"}','{"cefr":"B1"}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_martin,3,'character','Achte bitte auf die Zahlen in der Grafik.','لطفا به عددهای نمودار دقت کن.',45,NULL,NULL,NULL,NULL,'[{"form":"imperative_2sg","lemma":"achten","partOfSpeech":"verb","surface":"Achte","translation":"توجه کردن"},{"lemma":"bitte","partOfSpeech":"particle","surface":"bitte","translation":"لطفا"},{"lemma":"auf","meaning":"به","partOfSpeech":"preposition","surface":"auf","translation":"روی / برای"},{"form":"accusative_plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"plural","lemma":"Zahl","partOfSpeech":"noun","surface":"Zahlen","translation":"عدد / رقم"},{"lemma":"in","partOfSpeech":"preposition","surface":"in","translation":"در / داخل"},{"form":"dative_feminine","lemma":"der","partOfSpeech":"article","surface":"der","translation":"حرف تعریف"},{"lemma":"Grafik","partOfSpeech":"noun","suffix":".","surface":"Grafik","translation":"نمودار"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,4,'learner','Soll ich sie mit der Tabelle vergleichen?','باید با جدول مقایسه شون کنم؟',45,NULL,NULL,'soll ich sie mit der tabelle vergleichen',NULL,'[{"form":"present_1sg","lemma":"sollen","partOfSpeech":"verb","surface":"Soll","translation":"باید / قرار است"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"accusative_plural","lemma":"sie","partOfSpeech":"pronoun","surface":"sie","translation":"او / آن ها"},{"lemma":"mit","partOfSpeech":"preposition","surface":"mit","translation":"با"},{"form":"dative_feminine","lemma":"der","partOfSpeech":"article","surface":"der","translation":"حرف تعریف"},{"lemma":"Tabelle","partOfSpeech":"noun","surface":"Tabelle","translation":"جدول"},{"lemma":"vergleichen","partOfSpeech":"verb","suffix":"?","surface":"vergleichen","translation":"مقایسه کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_martin,5,'character','Ja, dann finden wir Fehler schneller.','آره، این طوری خطاها رو سریع تر پیدا می کنیم.',45,NULL,NULL,NULL,NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"dann","partOfSpeech":"adverb","surface":"dann","translation":"بعد / سپس"},{"form":"present_plural","lemma":"finden","partOfSpeech":"verb","surface":"finden","translation":"پیدا کردن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"form":"plural","lemma":"Fehler","partOfSpeech":"noun","surface":"Fehler","translation":"خطا / اشتباه"},{"form":"comparative","lemma":"schnell","partOfSpeech":"adjective","suffix":".","surface":"schneller","translation":"سریع"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,6,'learner','Ich fange sofort an.','همین الان شروع می کنم.',45,NULL,NULL,'ich fange sofort an',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"anfangen","partOfSpeech":"verb","surface":"fange","translation":"شروع کردن"},{"lemma":"sofort","partOfSpeech":"adverb","surface":"sofort","translation":"فورا / همین الان"},{"form":"separable_prefix","lemma":"anfangen","partOfSpeech":"verb","suffix":".","surface":"an","translation":"شروع کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_martin,v_c_anna,'Eine Beschriftung ergänzen','کامل کردن برچسب','Anna entdeckt eine fehlende Beschriftung und klärt, wie sie die Grafik ergänzen soll.','آنا یک برچسب ناقص پیدا می کند و مشخص می کند چطور باید نمودار را کامل کند.','story','anna-martin-b1-project',15,46,150,3,'validated','{"relationship":"coworkers","context":"offer-help-and-finish-work","cefr":"B1","storyArc":"offer-divide-clarify-complete"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_martin,1,'character','Öffne bitte auch die zweite Grafik.','لطفا نمودار دوم رو هم باز کن.',46,NULL,NULL,NULL,NULL,'[{"form":"imperative_2sg","lemma":"öffnen","partOfSpeech":"verb","surface":"Öffne","translation":"باز کردن"},{"lemma":"bitte","partOfSpeech":"particle","surface":"bitte","translation":"لطفا"},{"lemma":"auch","partOfSpeech":"adverb","surface":"auch","translation":"هم / همچنین"},{"form":"accusative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"accusative_feminine","lemma":"zweite","partOfSpeech":"adjective","surface":"zweite","translation":"دومین"},{"lemma":"Grafik","partOfSpeech":"noun","suffix":".","surface":"Grafik","translation":"نمودار"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,2,'learner','Dort fehlt eine Beschriftung.','اونجا یک برچسب نیست.',46,NULL,NULL,'dort fehlt eine beschriftung',NULL,'[{"lemma":"dort","partOfSpeech":"adverb","surface":"Dort","translation":"آنجا"},{"form":"present_3sg","lemma":"fehlen","partOfSpeech":"verb","surface":"fehlt","translation":"کم بودن / وجود نداشتن"},{"form":"nominative_feminine","lemma":"ein","partOfSpeech":"article","surface":"eine","translation":"یک / حرف تعریف نامعین"},{"lemma":"Beschriftung","partOfSpeech":"noun","suffix":".","surface":"Beschriftung","translation":"برچسب / نوشته توضیحی"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_martin,3,'character','Kannst du sie ergänzen?','می تونی کاملش کنی؟',46,NULL,NULL,NULL,NULL,'[{"form":"present_2sg","lemma":"können","partOfSpeech":"verb","surface":"Kannst","translation":"توانستن / بتوان"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"accusative_feminine","lemma":"sie","meaning":"آن را","partOfSpeech":"pronoun","surface":"sie","translation":"او / آن ها"},{"lemma":"ergänzen","partOfSpeech":"verb","suffix":"?","surface":"ergänzen","translation":"کامل کردن / افزودن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,4,'learner','Ja. Falls etwas unklar ist, frage ich dich.','آره. اگه چیزی نامشخص باشه، ازت می پرسم.',46,NULL,NULL,'ja falls etwas unklar ist frage ich dich',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":".","surface":"Ja","translation":"بله / آره"},{"lemma":"falls","partOfSpeech":"conjunction","surface":"Falls","translation":"در صورتی که / اگر"},{"lemma":"etwas","partOfSpeech":"pronoun","surface":"etwas","translation":"چیزی / یک چیزی"},{"lemma":"unklar","partOfSpeech":"adjective","surface":"unklar","translation":"نامشخص"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","suffix":",","surface":"ist","translation":"بودن"},{"form":"present_1sg","lemma":"fragen","partOfSpeech":"verb","surface":"frage","translation":"پرسیدن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"accusative_2sg","lemma":"du","meaning":"از تو","partOfSpeech":"pronoun","suffix":".","surface":"dich","translation":"تو"}]','شرط با falls','falls مانند wenn یک شرط را بیان می کند و فعل جمله شرطی در پایان می آید.','{"pattern":"Falls + subject + complement + verb, verb + subject + object"}','{"cefr":"B1"}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_martin,5,'character','Ich bleibe gleich neben dir.','من همین جا کنارت می مونم.',46,NULL,NULL,NULL,NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"bleiben","partOfSpeech":"verb","surface":"bleibe","translation":"ماندن"},{"lemma":"gleich","meaning":"همین جا","partOfSpeech":"adverb","surface":"gleich","translation":"همین الان"},{"lemma":"neben","partOfSpeech":"preposition","surface":"neben","translation":"کنار"},{"form":"dative_2sg","lemma":"du","meaning":"کنار تو","partOfSpeech":"pronoun","suffix":".","surface":"dir","translation":"تو"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,6,'learner','Danke, so klappt die Arbeit gut.','ممنون، این طوری کار خوب پیش می ره.',46,NULL,NULL,'danke so klappt die arbeit gut',NULL,'[{"lemma":"danke","partOfSpeech":"interjection","suffix":",","surface":"Danke","translation":"ممنون"},{"lemma":"so","partOfSpeech":"adverb","surface":"so","translation":"این طور / آن طور"},{"form":"present_3sg","lemma":"klappen","partOfSpeech":"verb","surface":"klappt","translation":"خوب پیش رفتن"},{"form":"nominative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Arbeit","partOfSpeech":"noun","surface":"Arbeit","translation":"کار"},{"lemma":"gut","partOfSpeech":"adjective","suffix":".","surface":"gut","translation":"خوب"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_martin,v_c_anna,'Rechtzeitig fertig','تمام کردن به موقع','Anna und Martin schließen die gemeinsame Kontrolle ab und bereiten den Versand der Präsentation vor.','آنا و مارتین بررسی مشترک را تمام می کنند و ارائه را برای ارسال آماده می کنند.','story','anna-martin-b1-project',16,46,150,4,'validated','{"relationship":"coworkers","context":"offer-help-and-finish-work","cefr":"B1","storyArc":"offer-divide-clarify-complete"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_martin,1,'character','Text und Grafiken sind jetzt fertig.','متن و نمودارها حالا آماده اند.',46,NULL,NULL,NULL,NULL,'[{"lemma":"Text","partOfSpeech":"noun","surface":"Text","translation":"متن"},{"lemma":"und","partOfSpeech":"conjunction","surface":"und","translation":"و"},{"form":"plural","lemma":"Grafik","partOfSpeech":"noun","surface":"Grafiken","translation":"نمودار"},{"form":"present_plural","lemma":"sein","partOfSpeech":"verb","surface":"sind","translation":"بودن"},{"lemma":"jetzt","partOfSpeech":"adverb","surface":"jetzt","translation":"حالا / اکنون"},{"lemma":"fertig","partOfSpeech":"adjective","suffix":".","surface":"fertig","translation":"تمام / آماده"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,2,'learner','Dann fehlt nur noch die Kontrolle.','پس فقط بررسی نهایی مونده.',46,NULL,NULL,'dann fehlt nur noch die kontrolle',NULL,'[{"lemma":"dann","partOfSpeech":"adverb","surface":"Dann","translation":"بعد / سپس"},{"form":"present_3sg","lemma":"fehlen","partOfSpeech":"verb","surface":"fehlt","translation":"کم بودن / وجود نداشتن"},{"lemma":"nur","partOfSpeech":"particle","surface":"nur","translation":"فقط"},{"lemma":"noch","partOfSpeech":"adverb","surface":"noch","translation":"هنوز"},{"form":"nominative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Kontrolle","partOfSpeech":"noun","suffix":".","surface":"Kontrolle","translation":"بررسی نهایی"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_20=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_martin,3,'character','Wir haben noch zwanzig Minuten.','هنوز بیست دقیقه وقت داریم.',46,NULL,NULL,NULL,NULL,'[{"lemma":"wir","partOfSpeech":"pronoun","surface":"Wir","translation":"ما"},{"form":"present_plural","lemma":"haben","partOfSpeech":"verb","surface":"haben","translation":"داشتن"},{"lemma":"noch","partOfSpeech":"adverb","surface":"noch","translation":"هنوز"},{"lemma":"zwanzig","partOfSpeech":"number","surface":"zwanzig","translation":"بیست"},{"form":"plural","lemma":"Minute","partOfSpeech":"noun","suffix":".","surface":"Minuten","translation":"دقیقه"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_21=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,4,'learner','Gemeinsam schaffen wir das rechtzeitig.','با هم به موقع از پسش برمیایم.',46,NULL,NULL,'gemeinsam schaffen wir das rechtzeitig',NULL,'[{"lemma":"gemeinsam","partOfSpeech":"adverb","surface":"Gemeinsam","translation":"با هم / مشترک"},{"form":"present_plural","lemma":"schaffen","partOfSpeech":"verb","surface":"schaffen","translation":"از عهده برآمدن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"das","partOfSpeech":"pronoun","surface":"das","translation":"این / آن"},{"lemma":"rechtzeitig","partOfSpeech":"adverb","suffix":".","surface":"rechtzeitig","translation":"به موقع"}]','تاکید با قید در آغاز','وقتی قید را ابتدای جمله می آوریم، فعل صرف شده همچنان جایگاه دوم را می گیرد.','{"pattern":"adverb + verb + subject + object"}','{"cefr":"B1"}');
  SET v_t_22=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_martin,5,'character','Danach schicken wir die Präsentation ab.','بعدش ارائه رو ارسال می کنیم.',46,NULL,NULL,NULL,NULL,'[{"lemma":"danach","partOfSpeech":"adverb","surface":"Danach","translation":"بعد از آن / بعدش"},{"form":"present_plural","lemma":"abschicken","partOfSpeech":"verb","surface":"schicken","translation":"ارسال کردن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"form":"accusative_feminine","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Präsentation","partOfSpeech":"noun","surface":"Präsentation","translation":"ارائه"},{"form":"separable_prefix","lemma":"abschicken","partOfSpeech":"verb","suffix":".","surface":"ab","translation":"ارسال کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_23=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,6,'learner','Perfekt, unsere Zusammenarbeit hat gut funktioniert.','عالیه، همکاری مون خوب پیش رفت.',46,NULL,NULL,'perfekt unsere zusammenarbeit hat gut funktioniert',NULL,'[{"lemma":"perfekt","partOfSpeech":"adjective","suffix":",","surface":"Perfekt","translation":"عالی"},{"form":"nominative_feminine","lemma":"unser","partOfSpeech":"determiner","surface":"unsere","translation":"مال ما / ما"},{"lemma":"Zusammenarbeit","partOfSpeech":"noun","surface":"Zusammenarbeit","translation":"همکاری"},{"form":"present_3sg","lemma":"haben","partOfSpeech":"verb","surface":"hat","translation":"داشتن"},{"lemma":"gut","partOfSpeech":"adjective","surface":"gut","translation":"خوب"},{"form":"past_participle","lemma":"funktionieren","partOfSpeech":"verb","suffix":".","surface":"funktioniert","translation":"کار کردن / درست کار کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_24=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_042,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_056,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_058,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_018,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_052,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_036,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_086,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_051,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_020,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_013,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_082,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_021,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_039,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_073,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_084,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_088,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_040,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_017,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_068,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_067,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_041,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_016,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_087,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_066,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_029,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_085,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_083,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_007,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_055,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_020,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_076,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_042,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_063,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_018,'review',0,5);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_026,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_081,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_075,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_050,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_002,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_010,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_089,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_044,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_036,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_072,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_069,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_054,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_074,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_080,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_045,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_016,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_030,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_087,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_028,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_066,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_003,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_071,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_043,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_060,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_010,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_018,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_092,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_036,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_019,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_027,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_021,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_009,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_048,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_020,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_069,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_022,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_045,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_024,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_023,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_078,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_068,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_031,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_042,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_011,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_035,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_057,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_015,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_070,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_047,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_037,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_025,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_075,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_077,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_036,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_068,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_046,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_029,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_016,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_027,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_059,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_058,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_018,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_049,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_087,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_038,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_091,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_053,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_033,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_065,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_017,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_064,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_014,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_001,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_062,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_061,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_079,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_090,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_037,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_032,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_034,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_085,'عبارت کلیدی درس',NULL,45,NULL,'{"cefr":"B1","series":89}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',2,NULL,v_w_040,'واژه کلیدی درس',NULL,45,NULL,'{"cefr":"B1","series":89}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',3,v_t_1,NULL,'به جمله مارتین گوش کن',NULL,45,NULL,'{"cefr":"B1","series":89}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',4,v_t_2,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,45,NULL,'{"cefr":"B1","series":89}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',5,v_t_3,NULL,'به جمله بعدی گوش کن',NULL,45,NULL,'{"cefr":"B1","series":89}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',6,v_t_4,NULL,'پاسخ را با صدای بلند بگو',NULL,45,NULL,'{"cefr":"B1","series":89}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',7,NULL,v_w_040,'معنی واژه کلیدی را انتخاب کن',NULL,45,'{"mode":"word_translation","question":"helfe در این درس چه معنی دارد؟","choices":["کمک کردن","زمان","رنگ"],"correctIndex":0}','{"cefr":"B1","series":89}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,45,'{"source":"lesson_story","question":"آنا چرا به مارتین پیشنهاد کمک می دهد؟","choices":["تا زودتر تمام کنند","تا کار را متوقف کنند","تا موعد را عوض کنند"],"correctIndex":0}','{"cefr":"B1","series":89}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_043,'عبارت کلیدی درس',NULL,45,NULL,'{"cefr":"B1","series":89}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',2,NULL,v_w_081,'واژه کلیدی درس',NULL,45,NULL,'{"cefr":"B1","series":89}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',3,v_t_7,NULL,'به جمله مارتین گوش کن',NULL,45,NULL,'{"cefr":"B1","series":89}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',4,v_t_8,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,45,NULL,'{"cefr":"B1","series":89}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',5,v_t_9,NULL,'به جمله بعدی گوش کن',NULL,45,NULL,'{"cefr":"B1","series":89}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',6,v_t_10,NULL,'پاسخ را با صدای بلند بگو',NULL,45,NULL,'{"cefr":"B1","series":89}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',7,NULL,v_w_081,'معنی واژه کلیدی را انتخاب کن',NULL,45,'{"mode":"word_translation","question":"während در این درس چه معنی دارد؟","choices":["در حالی که / هم زمان","زمان","رنگ"],"correctIndex":0}','{"cefr":"B1","series":89}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,45,'{"source":"lesson_story","question":"آنا کدام بخش را بررسی می کند؟","choices":["رنگ ها","فقط متن","زمان جلسه"],"correctIndex":0}','{"cefr":"B1","series":89}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_025,'عبارت کلیدی درس',NULL,46,NULL,'{"cefr":"B1","series":89}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',2,NULL,v_w_022,'واژه کلیدی درس',NULL,46,NULL,'{"cefr":"B1","series":89}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',3,v_t_13,NULL,'به جمله مارتین گوش کن',NULL,46,NULL,'{"cefr":"B1","series":89}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',4,v_t_14,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,46,NULL,'{"cefr":"B1","series":89}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',5,v_t_15,NULL,'به جمله بعدی گوش کن',NULL,46,NULL,'{"cefr":"B1","series":89}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',6,v_t_16,NULL,'پاسخ را با صدای بلند بگو',NULL,46,NULL,'{"cefr":"B1","series":89}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',7,NULL,v_w_022,'معنی واژه کلیدی را انتخاب کن',NULL,46,'{"mode":"word_translation","question":"ergänzen در این درس چه معنی دارد؟","choices":["کامل کردن / افزودن","زمان","رنگ"],"correctIndex":0}','{"cefr":"B1","series":89}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,46,'{"source":"lesson_story","question":"آنا اگر چیزی نامشخص باشد چه کار می کند؟","choices":["از مارتین می پرسد","فایل را پاک می کند","تا فردا صبر می کند"],"correctIndex":0}','{"cefr":"B1","series":89}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',1,NULL,v_w_034,'عبارت کلیدی درس',NULL,46,NULL,'{"cefr":"B1","series":89}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',2,NULL,v_w_033,'واژه کلیدی درس',NULL,46,NULL,'{"cefr":"B1","series":89}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_19,NULL,'به جمله مارتین گوش کن',NULL,46,NULL,'{"cefr":"B1","series":89}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_20,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,46,NULL,'{"cefr":"B1","series":89}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_21,NULL,'به جمله بعدی گوش کن',NULL,46,NULL,'{"cefr":"B1","series":89}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_22,NULL,'پاسخ را با صدای بلند بگو',NULL,46,NULL,'{"cefr":"B1","series":89}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',7,NULL,v_w_033,'معنی واژه کلیدی را انتخاب کن',NULL,46,'{"mode":"word_translation","question":"Gemeinsam در این درس چه معنی دارد؟","choices":["با هم / مشترک","زمان","رنگ"],"correctIndex":0}','{"cefr":"B1","series":89}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,46,'{"source":"lesson_story","question":"بعد از بررسی نهایی چه کار می کنند؟","choices":["ارائه را ارسال می کنند","نمودار را حذف می کنند","موعد را عقب می اندازند"],"correctIndex":0}','{"cefr":"B1","series":89}');
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 089 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND storyline_key='anna-martin-b1-project' AND storyline_order BETWEEN 13 AND 16;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected storyline continuity.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>24 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected turn count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>32 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected activity count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND JSON_EXTRACT(ac.config,'$.question') IS NULL;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without task.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter AND lw.is_target=1;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected explicit-target count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) d;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_series_089_v9();
DROP PROCEDURE IF EXISTS import_nova_series_089_v9;

-- NOVA v9.0 / de-fa / B1 BATCH 02 / SERIES 089-096
-- Eight QA-passed atomic chapter imports. No schema DDL.
SET NAMES utf8mb4;

-- ===== SERIES 089 =====
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

-- ===== SERIES 090 =====
-- NOVA v9.0 / B1 SERIES 090 / Wir haben das Problem gelöst
-- Requires canonical v9.0 and Series 086-089 in sequence. No schema DDL.
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_series_090_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_090_v9()
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
  DECLARE v_w_093 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_094 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_095 BIGINT UNSIGNED DEFAULT NULL;
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
  SELECT COUNT(*) INTO v_count FROM chapters WHERE module_id=v_module AND sort_order BETWEEN 1 AND 4 AND status IN ('validated','complete');
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 086-089 must be validated in sequence.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons l JOIN chapters c ON c.id=l.chapter_id WHERE c.module_id=v_module AND c.sort_order BETWEEN 1 AND 4 AND l.storyline_key='anna-martin-b1-project' AND l.storyline_order BETWEEN 1 AND 16;
  IF v_count<>16 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Storyline orders 1-16 required.'; END IF;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=5 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 02 Chapter 05 missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='Wir haben das Problem gelöst' AND title_translation='مشکل رو حل کردیم';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 090 canonical title mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 02 Chapter 05 must be empty before Series 090 import.'; END IF;
  SELECT id INTO v_c_martin FROM characters WHERE course_id=v_course AND name='Martin' AND gender='male' ORDER BY id LIMIT 1;
  SELECT id INTO v_c_anna FROM characters WHERE course_id=v_course AND name='Anna' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_martin IS NULL OR v_c_anna IS NULL OR v_c_martin=v_c_anna THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required distinct Characters Martin and Anna missing.'; END IF;
  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='ab' AND part_of_speech='particle' AND translation='جدا / ارسال' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'ab','ab','particle','جدا / ارسال',46,'{"type":"particle"}','[{"text":"Hallo","translation":"سلام"},{"text":"Tschüss","translation":"خداحافظ"},{"text":"gut","translation":"خوب"},{"text":"Morgen","translation":"صبح"},{"text":"Guten Morgen","translation":"صبح بخیر"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_001=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='Ablauf' AND part_of_speech='noun' AND translation='روند کار' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Ablauf | noun'; END IF;
  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='abschicken' AND part_of_speech='verb' AND translation='ارسال کردن' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'abschicken','abschicken','verb','ارسال کردن',46,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"heißen","translation":"نام داشتن"},{"text":"freuen","translation":"خوشحال کردن / خوشحال شدن"},{"text":"kommen","translation":"آمدن"},{"text":"sein","translation":"بودن"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_003=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='ähnlich' AND part_of_speech='adjective' AND translation='مشابه' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'ähnlich','ähnlich','adjective','مشابه',46,'{"type":"adjective"}','[{"text":"gut","translation":"خوب"},{"text":"super","translation":"عالی"},{"text":"alt","translation":"پیر / دارای سن"},{"text":"spät","translation":"دیر"},{"text":"rot","translation":"قرمز"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_004=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='all' AND part_of_speech='determiner' AND translation='همه' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'all','all','determiner','همه',46,'{"type":"determiner"}','[{"text":"welcher","translation":"کدام / چه"},{"text":"anderer","translation":"دیگر / متفاوت"},{"text":"mein","translation":"مال من / من"},{"text":"dein","translation":"مال تو / تو"},{"text":"kein","translation":"هیچ / نه یک"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_005=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='ändern' AND part_of_speech='verb' AND translation='تغییر دادن' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ändern | verb'; END IF;
  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='auch' AND part_of_speech='adverb' AND translation='هم / همچنین' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: auch | adverb'; END IF;
  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='bei' AND part_of_speech='preposition' AND translation='هنگام / موقع' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'bei','bei','preposition','هنگام / موقع',46,'{"type":"preposition"}','[{"text":"bis","translation":"تا"},{"text":"aus","translation":"از"},{"text":"mit","translation":"با"},{"text":"um","translation":"در ساعت / حوالی"},{"text":"in","translation":"در / داخل"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_008=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='Bescheid' AND part_of_speech='noun' AND translation='خبر / اطلاع' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Bescheid | noun'; END IF;
  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='bevor' AND part_of_speech='conjunction' AND translation='پیش از اینکه' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'bevor','bevor','conjunction','پیش از اینکه',46,'{"type":"conjunction"}','[{"text":"und","translation":"و"},{"text":"oder","translation":"یا"},{"text":"weil","translation":"چون / زیرا"},{"text":"aber","translation":"اما"},{"text":"wenn","translation":"اگر / وقتی"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_010=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='Bevor wir das tun, sichere ich noch eine Kopie.' AND part_of_speech='phrase' AND translation='پیش از اینکه این کار رو بکنیم، یک نسخه دیگه ذخیره می کنم.' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Bevor wir das tun, sichere ich noch eine Kopie.','Bevor wir das tun, sichere ich noch eine Kopie.','phrase','پیش از اینکه این کار رو بکنیم، یک نسخه دیگه ذخیره می کنم.',46,'{"type":"phrase"}','[{"text":"Guten Morgen","translation":"صبح بخیر"},{"text":"Wie geht es dir?","translation":"حالت چطوره؟"},{"text":"Bis später","translation":"بعدا می بینمت"},{"text":"Ich heiße ...","translation":"اسم من ... است"},{"text":"Wie heißt du?","translation":"اسمت چیه؟"}]','Bevor wir das tun, sichere ich noch eine Kopie.','پیش از اینکه این کار رو بکنیم، یک نسخه دیگه ذخیره می کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_011=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='bitte' AND part_of_speech='particle' AND translation='لطفا' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'bitte','bitte','particle','لطفا',46,'{"type":"particle"}','[{"text":"Hallo","translation":"سلام"},{"text":"Tschüss","translation":"خداحافظ"},{"text":"gut","translation":"خوب"},{"text":"Morgen","translation":"صبح"},{"text":"Guten Morgen","translation":"صبح بخیر"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_012=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='dann' AND part_of_speech='adverb' AND translation='بعد / سپس' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dann | adverb'; END IF;
  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='dass' AND part_of_speech='conjunction' AND translation='که' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dass | conjunction'; END IF;
  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='Datei' AND part_of_speech='noun' AND translation='فایل' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Datei | noun'; END IF;
  SELECT id INTO v_w_016 FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_016 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: der | article'; END IF;
  SELECT id INTO v_w_017 FROM words WHERE course_id=v_course AND lemma='deshalb' AND part_of_speech='adverb' AND translation='برای همین / بنابراین' ORDER BY id LIMIT 1;
  IF v_w_017 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: deshalb | adverb'; END IF;
  SELECT id INTO v_w_018 FROM words WHERE course_id=v_course AND lemma='dokumentieren' AND part_of_speech='verb' AND translation='مستند کردن' ORDER BY id LIMIT 1;
  IF v_w_018 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'dokumentieren','dokumentieren','verb','مستند کردن',46,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"heißen","translation":"نام داشتن"},{"text":"freuen","translation":"خوشحال کردن / خوشحال شدن"},{"text":"kommen","translation":"آمدن"},{"text":"sein","translation":"بودن"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_018=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_019 FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_019 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: du | pronoun'; END IF;
  SELECT id INTO v_w_020 FROM words WHERE course_id=v_course AND lemma='eigentlich' AND part_of_speech='adverb' AND translation='در واقع' ORDER BY id LIMIT 1;
  IF v_w_020 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'eigentlich','eigentlich','adverb','در واقع',46,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_020=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_021 FROM words WHERE course_id=v_course AND lemma='ein' AND part_of_speech='article' AND translation='یک / حرف تعریف نامعین' ORDER BY id LIMIT 1;
  IF v_w_021 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ein | article'; END IF;
  SELECT id INTO v_w_022 FROM words WHERE course_id=v_course AND lemma='einmal' AND part_of_speech='adverb' AND translation='یک بار' ORDER BY id LIMIT 1;
  IF v_w_022 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: einmal | adverb'; END IF;
  SELECT id INTO v_w_023 FROM words WHERE course_id=v_course AND lemma='einzeln' AND part_of_speech='adjective' AND translation='جداگانه' ORDER BY id LIMIT 1;
  IF v_w_023 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'einzeln','einzeln','adjective','جداگانه',46,'{"type":"adjective"}','[{"text":"gut","translation":"خوب"},{"text":"super","translation":"عالی"},{"text":"alt","translation":"پیر / دارای سن"},{"text":"spät","translation":"دیر"},{"text":"rot","translation":"قرمز"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_023=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_024 FROM words WHERE course_id=v_course AND lemma='Ergebnis' AND part_of_speech='noun' AND translation='نتیجه' ORDER BY id LIMIT 1;
  IF v_w_024 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ergebnis','Ergebnis','noun','نتیجه',46,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_024=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_025 FROM words WHERE course_id=v_course AND lemma='erklären' AND part_of_speech='verb' AND translation='توضیح دادن' ORDER BY id LIMIT 1;
  IF v_w_025 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: erklären | verb'; END IF;
  SELECT id INTO v_w_026 FROM words WHERE course_id=v_course AND lemma='falsch' AND part_of_speech='adjective' AND translation='اشتباه / نادرست' ORDER BY id LIMIT 1;
  IF v_w_026 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: falsch | adjective'; END IF;
  SELECT id INTO v_w_027 FROM words WHERE course_id=v_course AND lemma='Fehler' AND part_of_speech='noun' AND translation='خطا / اشتباه' ORDER BY id LIMIT 1;
  IF v_w_027 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Fehler','Fehler','noun','خطا / اشتباه',46,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_027=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_028 FROM words WHERE course_id=v_course AND lemma='fertig' AND part_of_speech='adjective' AND translation='تمام / آماده' ORDER BY id LIMIT 1;
  IF v_w_028 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: fertig | adjective'; END IF;
  SELECT id INTO v_w_029 FROM words WHERE course_id=v_course AND lemma='festhalten' AND part_of_speech='verb' AND translation='ثبت کردن' ORDER BY id LIMIT 1;
  IF v_w_029 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'festhalten','festhalten','verb','ثبت کردن',46,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"heißen","translation":"نام داشتن"},{"text":"freuen","translation":"خوشحال کردن / خوشحال شدن"},{"text":"kommen","translation":"آمدن"},{"text":"sein","translation":"بودن"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_029=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_030 FROM words WHERE course_id=v_course AND lemma='finden' AND part_of_speech='verb' AND translation='پیدا کردن' ORDER BY id LIMIT 1;
  IF v_w_030 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: finden | verb'; END IF;
  SELECT id INTO v_w_031 FROM words WHERE course_id=v_course AND lemma='Formel' AND part_of_speech='noun' AND translation='فرمول' ORDER BY id LIMIT 1;
  IF v_w_031 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Formel','Formel','noun','فرمول',46,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_031=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_032 FROM words WHERE course_id=v_course AND lemma='früh' AND part_of_speech='adverb' AND translation='زودتر' ORDER BY id LIMIT 1;
  IF v_w_032 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'früh','früh','adverb','زودتر',46,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_032=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_033 FROM words WHERE course_id=v_course AND lemma='geben' AND part_of_speech='verb' AND translation='دادن' ORDER BY id LIMIT 1;
  IF v_w_033 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: geben | verb'; END IF;
  SELECT id INTO v_w_034 FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adverb' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_034 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'gut','gut','adverb','خوب',46,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_034=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_035 FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_035 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: haben | verb'; END IF;
  SELECT id INTO v_w_036 FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_036 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ich | pronoun'; END IF;
  SELECT id INTO v_w_037 FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_037 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ja | interjection'; END IF;
  SELECT id INTO v_w_038 FROM words WHERE course_id=v_course AND lemma='jetzt' AND part_of_speech='adverb' AND translation='حالا / اکنون' ORDER BY id LIMIT 1;
  IF v_w_038 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: jetzt | adverb'; END IF;
  SELECT id INTO v_w_039 FROM words WHERE course_id=v_course AND lemma='können' AND part_of_speech='verb' AND translation='توانستن / بتوان' ORDER BY id LIMIT 1;
  IF v_w_039 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: können | verb'; END IF;
  SELECT id INTO v_w_040 FROM words WHERE course_id=v_course AND lemma='kontrollieren' AND part_of_speech='verb' AND translation='کنترل کردن' ORDER BY id LIMIT 1;
  IF v_w_040 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'kontrollieren','kontrollieren','verb','کنترل کردن',46,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"heißen","translation":"نام داشتن"},{"text":"freuen","translation":"خوشحال کردن / خوشحال شدن"},{"text":"kommen","translation":"آمدن"},{"text":"sein","translation":"بودن"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_040=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_041 FROM words WHERE course_id=v_course AND lemma='Kopie' AND part_of_speech='noun' AND translation='نسخه / کپی' ORDER BY id LIMIT 1;
  IF v_w_041 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Kopie','Kopie','noun','نسخه / کپی',46,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_041=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_042 FROM words WHERE course_id=v_course AND lemma='korrigieren' AND part_of_speech='verb' AND translation='اصلاح کردن' ORDER BY id LIMIT 1;
  IF v_w_042 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: korrigieren | verb'; END IF;
  SELECT id INTO v_w_043 FROM words WHERE course_id=v_course AND lemma='kurz' AND part_of_speech='adverb' AND translation='کوتاه' ORDER BY id LIMIT 1;
  IF v_w_043 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'kurz','kurz','adverb','کوتاه',46,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_043=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_044 FROM words WHERE course_id=v_course AND lemma='Lea' AND part_of_speech='proper_noun' AND translation='لئا' ORDER BY id LIMIT 1;
  IF v_w_044 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Lea','Lea','proper_noun','لئا',46,'{"type":"proper_noun"}','[{"text":"Lena","translation":"لنا (نام زنانه)"},{"text":"Ben","translation":"بن (نام مردانه)"},{"text":"Anna","translation":"آنا (نام زنانه)"},{"text":"Jonas","translation":"یوناس (نام مردانه)"},{"text":"Mia","translation":"میا (نام زنانه)"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_044=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_045 FROM words WHERE course_id=v_course AND lemma='letzt' AND part_of_speech='adjective' AND translation='آخرین' ORDER BY id LIMIT 1;
  IF v_w_045 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'letzt','letzt','adjective','آخرین',46,'{"type":"adjective"}','[{"text":"gut","translation":"خوب"},{"text":"super","translation":"عالی"},{"text":"alt","translation":"پیر / دارای سن"},{"text":"spät","translation":"دیر"},{"text":"rot","translation":"قرمز"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_045=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_046 FROM words WHERE course_id=v_course AND lemma='lösen' AND part_of_speech='verb' AND translation='حل کردن' ORDER BY id LIMIT 1;
  IF v_w_046 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: lösen | verb'; END IF;
  SELECT id INTO v_w_047 FROM words WHERE course_id=v_course AND lemma='Lösung' AND part_of_speech='noun' AND translation='راه حل' ORDER BY id LIMIT 1;
  IF v_w_047 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Lösung','Lösung','noun','راه حل',46,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_047=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_048 FROM words WHERE course_id=v_course AND lemma='Mal' AND part_of_speech='noun' AND translation='بار' ORDER BY id LIMIT 1;
  IF v_w_048 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Mal','Mal','noun','بار',46,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_048=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_049 FROM words WHERE course_id=v_course AND lemma='miteinander' AND part_of_speech='adverb' AND translation='با یکدیگر' ORDER BY id LIMIT 1;
  IF v_w_049 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'miteinander','miteinander','adverb','با یکدیگر',46,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_049=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_050 FROM words WHERE course_id=v_course AND lemma='möglich' AND part_of_speech='adjective' AND translation='ممکن' ORDER BY id LIMIT 1;
  IF v_w_050 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'möglich','möglich','adjective','ممکن',46,'{"type":"adjective"}','[{"text":"gut","translation":"خوب"},{"text":"super","translation":"عالی"},{"text":"alt","translation":"پیر / دارای سن"},{"text":"spät","translation":"دیر"},{"text":"rot","translation":"قرمز"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_050=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_051 FROM words WHERE course_id=v_course AND lemma='Nachricht' AND part_of_speech='noun' AND translation='پیام' ORDER BY id LIMIT 1;
  IF v_w_051 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Nachricht | noun'; END IF;
  SELECT id INTO v_w_052 FROM words WHERE course_id=v_course AND lemma='nächst' AND part_of_speech='adjective' AND translation='بعدی' ORDER BY id LIMIT 1;
  IF v_w_052 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'nächst','nächst','adjective','بعدی',46,'{"type":"adjective"}','[{"text":"gut","translation":"خوب"},{"text":"super","translation":"عالی"},{"text":"alt","translation":"پیر / دارای سن"},{"text":"spät","translation":"دیر"},{"text":"rot","translation":"قرمز"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_052=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_053 FROM words WHERE course_id=v_course AND lemma='neu' AND part_of_speech='adjective' AND translation='جدید / تازه' ORDER BY id LIMIT 1;
  IF v_w_053 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: neu | adjective'; END IF;
  SELECT id INTO v_w_054 FROM words WHERE course_id=v_course AND lemma='nicht' AND part_of_speech='adverb' AND translation='نه / نیست' ORDER BY id LIMIT 1;
  IF v_w_054 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'nicht','nicht','adverb','نه / نیست',46,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_054=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_055 FROM words WHERE course_id=v_course AND lemma='noch' AND part_of_speech='adverb' AND translation='هنوز' ORDER BY id LIMIT 1;
  IF v_w_055 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: noch | adverb'; END IF;
  SELECT id INTO v_w_056 FROM words WHERE course_id=v_course AND lemma='nur' AND part_of_speech='adverb' AND translation='فقط' ORDER BY id LIMIT 1;
  IF v_w_056 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'nur','nur','adverb','فقط',46,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_056=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_057 FROM words WHERE course_id=v_course AND lemma='passieren' AND part_of_speech='verb' AND translation='اتفاق افتادن' ORDER BY id LIMIT 1;
  IF v_w_057 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: passieren | verb'; END IF;
  SELECT id INTO v_w_058 FROM words WHERE course_id=v_course AND lemma='Problem' AND part_of_speech='noun' AND translation='مشکل' ORDER BY id LIMIT 1;
  IF v_w_058 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Problem | noun'; END IF;
  SELECT id INTO v_w_059 FROM words WHERE course_id=v_course AND lemma='prüfen' AND part_of_speech='verb' AND translation='بررسی کردن' ORDER BY id LIMIT 1;
  IF v_w_059 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: prüfen | verb'; END IF;
  SELECT id INTO v_w_060 FROM words WHERE course_id=v_course AND lemma='rechtzeitig' AND part_of_speech='adverb' AND translation='به موقع' ORDER BY id LIMIT 1;
  IF v_w_060 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: rechtzeitig | adverb'; END IF;
  SELECT id INTO v_w_061 FROM words WHERE course_id=v_course AND lemma='richtig' AND part_of_speech='adjective' AND translation='درست' ORDER BY id LIMIT 1;
  IF v_w_061 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: richtig | adjective'; END IF;
  SELECT id INTO v_w_062 FROM words WHERE course_id=v_course AND lemma='sagen' AND part_of_speech='verb' AND translation='گفتن' ORDER BY id LIMIT 1;
  IF v_w_062 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sagen | verb'; END IF;
  SELECT id INTO v_w_063 FROM words WHERE course_id=v_course AND lemma='schicken' AND part_of_speech='verb' AND translation='فرستادن' ORDER BY id LIMIT 1;
  IF v_w_063 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: schicken | verb'; END IF;
  SELECT id INTO v_w_064 FROM words WHERE course_id=v_course AND lemma='schnell' AND part_of_speech='adverb' AND translation='سریع تر' ORDER BY id LIMIT 1;
  IF v_w_064 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'schnell','schnell','adverb','سریع تر',46,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_064=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_065 FROM words WHERE course_id=v_course AND lemma='schreiben' AND part_of_speech='verb' AND translation='نوشتن' ORDER BY id LIMIT 1;
  IF v_w_065 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: schreiben | verb'; END IF;
  SELECT id INTO v_w_066 FROM words WHERE course_id=v_course AND lemma='Schritt' AND part_of_speech='noun' AND translation='مرحله / گام' ORDER BY id LIMIT 1;
  IF v_w_066 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Schritt | noun'; END IF;
  SELECT id INTO v_w_067 FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_067 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sein | verb'; END IF;
  SELECT id INTO v_w_068 FROM words WHERE course_id=v_course AND lemma='sichern' AND part_of_speech='verb' AND translation='ذخیره / ایمن کردن' ORDER BY id LIMIT 1;
  IF v_w_068 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'sichern','sichern','verb','ذخیره / ایمن کردن',46,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"heißen","translation":"نام داشتن"},{"text":"freuen","translation":"خوشحال کردن / خوشحال شدن"},{"text":"kommen","translation":"آمدن"},{"text":"sein","translation":"بودن"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_068=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_069 FROM words WHERE course_id=v_course AND lemma='sie' AND part_of_speech='pronoun' AND translation='او / آن ها' ORDER BY id LIMIT 1;
  IF v_w_069 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sie | pronoun'; END IF;
  SELECT id INTO v_w_070 FROM words WHERE course_id=v_course AND lemma='sobald' AND part_of_speech='conjunction' AND translation='همین که' ORDER BY id LIMIT 1;
  IF v_w_070 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'sobald','sobald','conjunction','همین که',46,'{"type":"conjunction"}','[{"text":"und","translation":"و"},{"text":"oder","translation":"یا"},{"text":"weil","translation":"چون / زیرا"},{"text":"aber","translation":"اما"},{"text":"wenn","translation":"اگر / وقتی"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_070=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_071 FROM words WHERE course_id=v_course AND lemma='Sobald du die Nachricht geschickt hast, schicke ich sie ab.' AND part_of_speech='phrase' AND translation='همین که پیام رو فرستادی، من فایل رو ارسال می کنم.' ORDER BY id LIMIT 1;
  IF v_w_071 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Sobald du die Nachricht geschickt hast, schicke ich sie ab.','Sobald du die Nachricht geschickt hast, schicke ich sie ab.','phrase','همین که پیام رو فرستادی، من فایل رو ارسال می کنم.',46,'{"type":"phrase"}','[{"text":"Guten Morgen","translation":"صبح بخیر"},{"text":"Wie geht es dir?","translation":"حالت چطوره؟"},{"text":"Bis später","translation":"بعدا می بینمت"},{"text":"Ich heiße ...","translation":"اسم من ... است"},{"text":"Wie heißt du?","translation":"اسمت چیه؟"}]','Sobald du die Nachricht geschickt hast, schicke ich sie ab.','همین که پیام رو فرستادی، من فایل رو ارسال می کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_071=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_072 FROM words WHERE course_id=v_course AND lemma='sofort' AND part_of_speech='adverb' AND translation='فورا / همین الان' ORDER BY id LIMIT 1;
  IF v_w_072 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sofort | adverb'; END IF;
  SELECT id INTO v_w_073 FROM words WHERE course_id=v_course AND lemma='sollen' AND part_of_speech='verb' AND translation='باید / قرار است' ORDER BY id LIMIT 1;
  IF v_w_073 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sollen | verb'; END IF;
  SELECT id INTO v_w_074 FROM words WHERE course_id=v_course AND lemma='speichern' AND part_of_speech='verb' AND translation='ذخیره کردن' ORDER BY id LIMIT 1;
  IF v_w_074 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: speichern | verb'; END IF;
  SELECT id INTO v_w_075 FROM words WHERE course_id=v_course AND lemma='stimmen' AND part_of_speech='verb' AND translation='درست بودن' ORDER BY id LIMIT 1;
  IF v_w_075 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'stimmen','stimmen','verb','درست بودن',46,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"heißen","translation":"نام داشتن"},{"text":"freuen","translation":"خوشحال کردن / خوشحال شدن"},{"text":"kommen","translation":"آمدن"},{"text":"sein","translation":"بودن"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_075=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_076 FROM words WHERE course_id=v_course AND lemma='Tabelle' AND part_of_speech='noun' AND translation='جدول' ORDER BY id LIMIT 1;
  IF v_w_076 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Tabelle','Tabelle','noun','جدول',46,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_076=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_077 FROM words WHERE course_id=v_course AND lemma='tun' AND part_of_speech='verb' AND translation='انجام دادن' ORDER BY id LIMIT 1;
  IF v_w_077 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'tun','tun','verb','انجام دادن',46,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"heißen","translation":"نام داشتن"},{"text":"freuen","translation":"خوشحال کردن / خوشحال شدن"},{"text":"kommen","translation":"آمدن"},{"text":"sein","translation":"بودن"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_077=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_078 FROM words WHERE course_id=v_course AND lemma='Ursache' AND part_of_speech='noun' AND translation='علت' ORDER BY id LIMIT 1;
  IF v_w_078 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ursache','Ursache','noun','علت',46,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_078=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_079 FROM words WHERE course_id=v_course AND lemma='vergleichen' AND part_of_speech='verb' AND translation='مقایسه کردن' ORDER BY id LIMIT 1;
  IF v_w_079 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: vergleichen | verb'; END IF;
  SELECT id INTO v_w_080 FROM words WHERE course_id=v_course AND lemma='Version' AND part_of_speech='noun' AND translation='نسخه' ORDER BY id LIMIT 1;
  IF v_w_080 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Version | noun'; END IF;
  SELECT id INTO v_w_081 FROM words WHERE course_id=v_course AND lemma='verstehen' AND part_of_speech='verb' AND translation='فهمیدن / متوجه شدن' ORDER BY id LIMIT 1;
  IF v_w_081 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: verstehen | verb'; END IF;
  SELECT id INTO v_w_082 FROM words WHERE course_id=v_course AND lemma='vollständig' AND part_of_speech='adjective' AND translation='کامل' ORDER BY id LIMIT 1;
  IF v_w_082 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'vollständig','vollständig','adjective','کامل',46,'{"type":"adjective"}','[{"text":"gut","translation":"خوب"},{"text":"super","translation":"عالی"},{"text":"alt","translation":"پیر / دارای سن"},{"text":"spät","translation":"دیر"},{"text":"rot","translation":"قرمز"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_082=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_083 FROM words WHERE course_id=v_course AND lemma='wann' AND part_of_speech='adverb' AND translation='کی / چه زمانی' ORDER BY id LIMIT 1;
  IF v_w_083 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wann | adverb'; END IF;
  SELECT id INTO v_w_084 FROM words WHERE course_id=v_course AND lemma='was' AND part_of_speech='pronoun' AND translation='چی / چه' ORDER BY id LIMIT 1;
  IF v_w_084 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: was | pronoun'; END IF;
  SELECT id INTO v_w_085 FROM words WHERE course_id=v_course AND lemma='weil' AND part_of_speech='conjunction' AND translation='چون / زیرا' ORDER BY id LIMIT 1;
  IF v_w_085 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: weil | conjunction'; END IF;
  SELECT id INTO v_w_086 FROM words WHERE course_id=v_course AND lemma='wenn' AND part_of_speech='conjunction' AND translation='اگر / وقتی' ORDER BY id LIMIT 1;
  IF v_w_086 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wenn | conjunction'; END IF;
  SELECT id INTO v_w_087 FROM words WHERE course_id=v_course AND lemma='Wenn wir das dokumentieren, passiert der Fehler nicht wieder.' AND part_of_speech='phrase' AND translation='اگه این رو مستند کنیم، خطا دوباره پیش نمیاد.' ORDER BY id LIMIT 1;
  IF v_w_087 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Wenn wir das dokumentieren, passiert der Fehler nicht wieder.','Wenn wir das dokumentieren, passiert der Fehler nicht wieder.','phrase','اگه این رو مستند کنیم، خطا دوباره پیش نمیاد.',46,'{"type":"phrase"}','[{"text":"Guten Morgen","translation":"صبح بخیر"},{"text":"Wie geht es dir?","translation":"حالت چطوره؟"},{"text":"Bis später","translation":"بعدا می بینمت"},{"text":"Ich heiße ...","translation":"اسم من ... است"},{"text":"Wie heißt du?","translation":"اسمت چیه؟"}]','Wenn wir das dokumentieren, passiert der Fehler nicht wieder.','اگه این رو مستند کنیم، خطا دوباره پیش نمیاد.',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_087=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_088 FROM words WHERE course_id=v_course AND lemma='werden' AND part_of_speech='verb' AND translation='شدن / خواهد' ORDER BY id LIMIT 1;
  IF v_w_088 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: werden | verb'; END IF;
  SELECT id INTO v_w_089 FROM words WHERE course_id=v_course AND lemma='wie' AND part_of_speech='adverb' AND translation='چطور / چگونه' ORDER BY id LIMIT 1;
  IF v_w_089 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wie | adverb'; END IF;
  SELECT id INTO v_w_090 FROM words WHERE course_id=v_course AND lemma='wieder' AND part_of_speech='adverb' AND translation='دوباره' ORDER BY id LIMIT 1;
  IF v_w_090 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wieder | adverb'; END IF;
  SELECT id INTO v_w_091 FROM words WHERE course_id=v_course AND lemma='wir' AND part_of_speech='pronoun' AND translation='ما' ORDER BY id LIMIT 1;
  IF v_w_091 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wir | pronoun'; END IF;
  SELECT id INTO v_w_092 FROM words WHERE course_id=v_course AND lemma='Wir haben das Problem gelöst.' AND part_of_speech='phrase' AND translation='مشکل رو حل کردیم.' ORDER BY id LIMIT 1;
  IF v_w_092 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Wir haben das Problem gelöst.','Wir haben das Problem gelöst.','phrase','مشکل رو حل کردیم.',46,'{"type":"phrase"}','[{"text":"Guten Morgen","translation":"صبح بخیر"},{"text":"Wie geht es dir?","translation":"حالت چطوره؟"},{"text":"Bis später","translation":"بعدا می بینمت"},{"text":"Ich heiße ...","translation":"اسم من ... است"},{"text":"Wie heißt du?","translation":"اسمت چیه؟"}]','Wir haben das Problem gelöst.','مشکل رو حل کردیم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_092=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_093 FROM words WHERE course_id=v_course AND lemma='wollen' AND part_of_speech='verb' AND translation='خواستن' ORDER BY id LIMIT 1;
  IF v_w_093 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'wollen','wollen','verb','خواستن',46,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"heißen","translation":"نام داشتن"},{"text":"freuen","translation":"خوشحال کردن / خوشحال شدن"},{"text":"kommen","translation":"آمدن"},{"text":"sein","translation":"بودن"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_093=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_094 FROM words WHERE course_id=v_course AND lemma='Zahl' AND part_of_speech='noun' AND translation='عدد / رقم' ORDER BY id LIMIT 1;
  IF v_w_094 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Zahl | noun'; END IF;
  SELECT id INTO v_w_095 FROM words WHERE course_id=v_course AND lemma='zusammenarbeiten' AND part_of_speech='verb' AND translation='همکاری کردن' ORDER BY id LIMIT 1;
  IF v_w_095 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'zusammenarbeiten','zusammenarbeiten','verb','همکاری کردن',46,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"heißen","translation":"نام داشتن"},{"text":"freuen","translation":"خوشحال کردن / خوشحال شدن"},{"text":"kommen","translation":"آمدن"},{"text":"sein","translation":"بودن"}]','Wir haben das Problem gelöst','مشکل رو حل کردیم',NULL,NULL,'{"cefr":"B1","introducedInSeries":90}');
    SET v_w_095=LAST_INSERT_ID();
  END IF;
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_martin,v_c_anna,'Ergebnis prüfen','بررسی نتیجه','Martin und Anna prüfen die fertige Arbeitsdatei vor dem Versand.','مارتین و آنا فایل کاری نهایی را پیش از ارسال بررسی می کنند.','story','anna-martin-b1-project',17,46,150,1,'validated','{"relationship":"coworkers","context":"solve-and-document-work-problem","cefr":"B1","storyArc":"verify-explain-report-close"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_martin,1,'character','Ist die neue Version jetzt vollständig?','نسخه جدید حالا کامله؟',46,NULL,NULL,NULL,NULL,'[{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"Ist","translation":"بودن"},{"form":"feminine_or_plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"inflected","lemma":"neu","partOfSpeech":"adjective","surface":"neue","translation":"جدید / تازه"},{"lemma":"Version","partOfSpeech":"noun","surface":"Version","translation":"نسخه"},{"lemma":"jetzt","partOfSpeech":"adverb","surface":"jetzt","translation":"حالا / اکنون"},{"lemma":"vollständig","partOfSpeech":"adjective","suffix":"?","surface":"vollständig","translation":"کامل"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,2,'learner','Ja, ich habe alle Zahlen noch einmal geprüft.','آره، همه عددها رو یک بار دیگه بررسی کردم.',46,NULL,NULL,'ja ich habe alle zahlen noch einmal geprüft',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"present_1sg","lemma":"haben","partOfSpeech":"verb","surface":"habe","translation":"داشتن"},{"form":"plural","lemma":"all","partOfSpeech":"determiner","surface":"alle","translation":"همه"},{"form":"plural","lemma":"Zahl","partOfSpeech":"noun","surface":"Zahlen","translation":"عدد / رقم"},{"lemma":"noch","partOfSpeech":"adverb","surface":"noch","translation":"هنوز"},{"lemma":"einmal","partOfSpeech":"adverb","surface":"einmal","translation":"یک بار"},{"form":"participle_II","lemma":"prüfen","partOfSpeech":"verb","suffix":".","surface":"geprüft","translation":"بررسی کردن"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_martin,3,'character','Hast du auch die letzte Tabelle kontrolliert?','جدول آخر رو هم کنترل کردی؟',46,NULL,NULL,NULL,NULL,'[{"form":"present_2sg","lemma":"haben","partOfSpeech":"verb","surface":"Hast","translation":"داشتن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"auch","partOfSpeech":"adverb","surface":"auch","translation":"هم / همچنین"},{"form":"feminine_or_plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"inflected","lemma":"letzt","partOfSpeech":"adjective","surface":"letzte","translation":"آخرین"},{"lemma":"Tabelle","partOfSpeech":"noun","surface":"Tabelle","translation":"جدول"},{"form":"participle_II","lemma":"kontrollieren","partOfSpeech":"verb","suffix":"?","surface":"kontrolliert","translation":"کنترل کردن"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,4,'learner','Ja, sie ist richtig gespeichert.','آره، درست ذخیره شده.',46,NULL,NULL,'ja sie ist richtig gespeichert',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"sie","partOfSpeech":"pronoun","surface":"sie","translation":"او / آن ها"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"ist","translation":"بودن"},{"lemma":"richtig","partOfSpeech":"adjective","surface":"richtig","translation":"درست"},{"form":"participle_II","lemma":"speichern","partOfSpeech":"verb","suffix":".","surface":"gespeichert","translation":"ذخیره کردن"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_martin,5,'character','Dann können wir die Datei abschicken.','پس می تونیم فایل رو ارسال کنیم.',46,NULL,NULL,NULL,NULL,'[{"lemma":"dann","partOfSpeech":"adverb","surface":"Dann","translation":"بعد / سپس"},{"form":"infinitive","lemma":"können","partOfSpeech":"verb","surface":"können","translation":"توانستن / بتوان"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"form":"feminine_or_plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Datei","partOfSpeech":"noun","surface":"Datei","translation":"فایل"},{"form":"infinitive","lemma":"abschicken","partOfSpeech":"verb","suffix":".","surface":"abschicken","translation":"ارسال کردن"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,6,'learner','Bevor wir das tun, sichere ich noch eine Kopie.','پیش از اینکه این کار رو بکنیم، یک نسخه دیگه ذخیره می کنم.',46,NULL,NULL,'bevor wir das tun sichere ich noch eine kopie',NULL,'[{"lemma":"bevor","partOfSpeech":"conjunction","surface":"Bevor","translation":"پیش از اینکه"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"form":"neuter","lemma":"der","partOfSpeech":"article","surface":"das","translation":"حرف تعریف"},{"form":"infinitive","lemma":"tun","partOfSpeech":"verb","suffix":",","surface":"tun","translation":"انجام دادن"},{"form":"present_1sg","lemma":"sichern","partOfSpeech":"verb","surface":"sichere","translation":"ذخیره / ایمن کردن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"noch","partOfSpeech":"adverb","surface":"noch","translation":"هنوز"},{"form":"feminine","lemma":"ein","partOfSpeech":"article","surface":"eine","translation":"یک / حرف تعریف نامعین"},{"lemma":"Kopie","partOfSpeech":"noun","suffix":".","surface":"Kopie","translation":"نسخه / کپی"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_067,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_016,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_053,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_080,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_038,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_082,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_037,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_036,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_035,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_005,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_094,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_055,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_022,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_059,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_019,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_007,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_045,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_076,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_040,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_069,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_061,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_074,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_039,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_091,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_015,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_003,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_010,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_077,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_068,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_021,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_041,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_011,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_011,'عبارت کلیدی درس',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',2,NULL,v_w_082,'واژه کلیدی درس',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',3,v_t_1,NULL,'به جمله مارتین گوش کن',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',4,v_t_2,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',5,v_t_3,NULL,'به جمله بعدی گوش کن',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',6,v_t_4,NULL,'پاسخ را با صدای بلند بگو',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',7,NULL,v_w_082,'معنی واژه کلیدی را انتخاب کن',NULL,46,'{"mode":"word_translation","question":"vollständig در این درس چه معنی دارد؟","choices":["کامل","خوب","عالی"],"correctIndex":0}','{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,46,'{"source":"lesson_story","question":"آنا پیش از ارسال فایل چه کاری انجام می دهد؟","choices":["یک نسخه دیگر ذخیره می کند","فایل را پاک می کند","جدول را چاپ می کند"],"correctIndex":0}','{"cefr":"B1","series":90}');
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_martin,v_c_anna,'Die Ursache erklären','توضیح علت','Anna erklärt, wie sie den Fehler gefunden und behoben hat.','آنا توضیح می دهد که چطور خطا را پیدا و برطرف کرده است.','story','anna-martin-b1-project',18,46,150,2,'validated','{"relationship":"coworkers","context":"solve-and-document-work-problem","cefr":"B1","storyArc":"verify-explain-report-close"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_martin,1,'character','Was war eigentlich die Ursache?','علت اصلی چی بود؟',46,NULL,NULL,NULL,NULL,'[{"lemma":"was","partOfSpeech":"pronoun","surface":"Was","translation":"چی / چه"},{"form":"preterite_3sg","lemma":"sein","partOfSpeech":"verb","surface":"war","translation":"بودن"},{"lemma":"eigentlich","partOfSpeech":"adverb","surface":"eigentlich","translation":"در واقع"},{"form":"feminine_or_plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Ursache","partOfSpeech":"noun","suffix":"?","surface":"Ursache","translation":"علت"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,2,'learner','Eine Formel war falsch, deshalb stimmte das Ergebnis nicht.','یک فرمول اشتباه بود، برای همین نتیجه درست درنمی اومد.',46,NULL,NULL,'eine formel war falsch deshalb stimmte das ergebnis nicht',NULL,'[{"form":"feminine","lemma":"ein","partOfSpeech":"article","surface":"Eine","translation":"یک / حرف تعریف نامعین"},{"lemma":"Formel","partOfSpeech":"noun","surface":"Formel","translation":"فرمول"},{"form":"preterite_3sg","lemma":"sein","partOfSpeech":"verb","surface":"war","translation":"بودن"},{"lemma":"falsch","partOfSpeech":"adjective","suffix":",","surface":"falsch","translation":"اشتباه / نادرست"},{"lemma":"deshalb","partOfSpeech":"adverb","surface":"deshalb","translation":"برای همین / بنابراین"},{"form":"preterite_3sg","lemma":"stimmen","partOfSpeech":"verb","surface":"stimmte","translation":"درست بودن"},{"form":"neuter","lemma":"der","partOfSpeech":"article","surface":"das","translation":"حرف تعریف"},{"lemma":"Ergebnis","partOfSpeech":"noun","surface":"Ergebnis","translation":"نتیجه"},{"lemma":"nicht","partOfSpeech":"adverb","suffix":".","surface":"nicht","translation":"نه / نیست"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_martin,3,'character','Wie hast du den Fehler gefunden?','چطور خطا رو پیدا کردی؟',46,NULL,NULL,NULL,NULL,'[{"lemma":"wie","partOfSpeech":"adverb","surface":"Wie","translation":"چطور / چگونه"},{"form":"present_2sg","lemma":"haben","partOfSpeech":"verb","surface":"hast","translation":"داشتن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"accusative_masculine","lemma":"der","partOfSpeech":"article","surface":"den","translation":"حرف تعریف"},{"lemma":"Fehler","partOfSpeech":"noun","surface":"Fehler","translation":"خطا / اشتباه"},{"form":"participle_II","lemma":"finden","partOfSpeech":"verb","suffix":"?","surface":"gefunden","translation":"پیدا کردن"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,4,'learner','Ich habe die einzelnen Schritte miteinander verglichen.','مرحله های جداگانه رو با هم مقایسه کردم.',46,NULL,NULL,'ich habe die einzelnen schritte miteinander verglichen',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"haben","partOfSpeech":"verb","surface":"habe","translation":"داشتن"},{"form":"feminine_or_plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"inflected","lemma":"einzeln","partOfSpeech":"adjective","surface":"einzelnen","translation":"جداگانه"},{"form":"plural","lemma":"Schritt","partOfSpeech":"noun","surface":"Schritte","translation":"مرحله / گام"},{"lemma":"miteinander","partOfSpeech":"adverb","surface":"miteinander","translation":"با یکدیگر"},{"form":"participle_II","lemma":"vergleichen","partOfSpeech":"verb","suffix":".","surface":"verglichen","translation":"مقایسه کردن"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_martin,5,'character','Jetzt verstehe ich die Lösung.','حالا راه حل رو می فهمم.',46,NULL,NULL,NULL,NULL,'[{"lemma":"jetzt","partOfSpeech":"adverb","surface":"Jetzt","translation":"حالا / اکنون"},{"form":"present_1sg","lemma":"verstehen","partOfSpeech":"verb","surface":"verstehe","translation":"فهمیدن / متوجه شدن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"feminine_or_plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Lösung","partOfSpeech":"noun","suffix":".","surface":"Lösung","translation":"راه حل"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,6,'learner','Wenn wir das dokumentieren, passiert der Fehler nicht wieder.','اگه این رو مستند کنیم، خطا دوباره پیش نمیاد.',46,NULL,NULL,'wenn wir das dokumentieren passiert der fehler nicht wieder',NULL,'[{"lemma":"wenn","partOfSpeech":"conjunction","surface":"Wenn","translation":"اگر / وقتی"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"form":"neuter","lemma":"der","partOfSpeech":"article","surface":"das","translation":"حرف تعریف"},{"form":"infinitive","lemma":"dokumentieren","partOfSpeech":"verb","suffix":",","surface":"dokumentieren","translation":"مستند کردن"},{"form":"present_3sg","lemma":"passieren","partOfSpeech":"verb","surface":"passiert","translation":"اتفاق افتادن"},{"form":"nominative_masculine","lemma":"der","partOfSpeech":"article","surface":"der","translation":"حرف تعریف"},{"lemma":"Fehler","partOfSpeech":"noun","surface":"Fehler","translation":"خطا / اشتباه"},{"lemma":"nicht","partOfSpeech":"adverb","surface":"nicht","translation":"نه / نیست"},{"lemma":"wieder","partOfSpeech":"adverb","suffix":".","surface":"wieder","translation":"دوباره"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_084,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_067,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_020,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_016,'review',0,7);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_078,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_021,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_031,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_026,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_017,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_075,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_024,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_054,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_089,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_035,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_019,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_027,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_030,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_036,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_023,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_066,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_049,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_079,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_038,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_081,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_047,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_086,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_091,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_018,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_057,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_090,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_087,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_087,'عبارت کلیدی درس',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',2,NULL,v_w_020,'واژه کلیدی درس',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',3,v_t_7,NULL,'به جمله مارتین گوش کن',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',4,v_t_8,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',5,v_t_9,NULL,'به جمله بعدی گوش کن',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',6,v_t_10,NULL,'پاسخ را با صدای بلند بگو',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',7,NULL,v_w_020,'معنی واژه کلیدی را انتخاب کن',NULL,46,'{"mode":"word_translation","question":"eigentlich در این درس چه معنی دارد؟","choices":["در واقع","چطور / چگونه","بعدا"],"correctIndex":0}','{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,46,'{"source":"lesson_story","question":"چرا آنا پیشنهاد می کند راه حل را مستند کنند؟","choices":["تا خطا دوباره تکرار نشود","تا کار را متوقف کنند","تا نتیجه را پنهان کنند"],"correctIndex":0}','{"cefr":"B1","series":90}');
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_martin,v_c_anna,'Das Ergebnis weitergeben','اطلاع دادن نتیجه','Anna und Martin informieren das Team über die korrigierte Version.','آنا و مارتین گروه را از نسخه اصلاح شده باخبر می کنند.','story','anna-martin-b1-project',19,46,150,3,'validated','{"relationship":"coworkers","context":"solve-and-document-work-problem","cefr":"B1","storyArc":"verify-explain-report-close"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_martin,1,'character','Soll ich Lea sofort Bescheid geben?','فورا به لئا خبر بدم؟',46,NULL,NULL,NULL,NULL,'[{"form":"present_1sg","lemma":"sollen","partOfSpeech":"verb","surface":"Soll","translation":"باید / قرار است"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"Lea","partOfSpeech":"proper_noun","surface":"Lea","translation":"لئا"},{"lemma":"sofort","partOfSpeech":"adverb","surface":"sofort","translation":"فورا / همین الان"},{"lemma":"Bescheid","partOfSpeech":"noun","surface":"Bescheid","translation":"خبر / اطلاع"},{"form":"infinitive","lemma":"geben","partOfSpeech":"verb","suffix":"?","surface":"geben","translation":"دادن"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,2,'learner','Ja, sag ihr bitte, dass die neue Version fertig ist.','آره، لطفا بهش بگو نسخه جدید آماده است.',46,NULL,NULL,'ja sag ihr bitte dass die neue version fertig ist',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"form":"imperative_2sg","lemma":"sagen","partOfSpeech":"verb","surface":"sag","translation":"گفتن"},{"form":"dative_feminine","lemma":"sie","partOfSpeech":"pronoun","surface":"ihr","translation":"او / آن ها"},{"lemma":"bitte","partOfSpeech":"particle","suffix":",","surface":"bitte","translation":"لطفا"},{"lemma":"dass","partOfSpeech":"conjunction","surface":"dass","translation":"که"},{"form":"feminine_or_plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"inflected","lemma":"neu","partOfSpeech":"adjective","surface":"neue","translation":"جدید / تازه"},{"lemma":"Version","partOfSpeech":"noun","surface":"Version","translation":"نسخه"},{"lemma":"fertig","partOfSpeech":"adjective","surface":"fertig","translation":"تمام / آماده"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","suffix":".","surface":"ist","translation":"بودن"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_martin,3,'character','Soll ich auch erklären, was wir geändert haben?','توضیح بدم چه چیزی رو تغییر دادیم؟',46,NULL,NULL,NULL,NULL,'[{"form":"present_1sg","lemma":"sollen","partOfSpeech":"verb","surface":"Soll","translation":"باید / قرار است"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"auch","partOfSpeech":"adverb","surface":"auch","translation":"هم / همچنین"},{"form":"infinitive","lemma":"erklären","partOfSpeech":"verb","suffix":",","surface":"erklären","translation":"توضیح دادن"},{"lemma":"was","partOfSpeech":"pronoun","surface":"was","translation":"چی / چه"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"form":"participle_II","lemma":"ändern","partOfSpeech":"verb","surface":"geändert","translation":"تغییر دادن"},{"form":"present_1pl","lemma":"haben","partOfSpeech":"verb","suffix":"?","surface":"haben","translation":"داشتن"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,4,'learner','Schreib kurz, dass wir die Zahlen korrigiert haben.','کوتاه بنویس که عددها رو اصلاح کردیم.',46,NULL,NULL,'schreib kurz dass wir die zahlen korrigiert haben',NULL,'[{"form":"imperative_2sg","lemma":"schreiben","partOfSpeech":"verb","surface":"Schreib","translation":"نوشتن"},{"lemma":"kurz","partOfSpeech":"adverb","suffix":",","surface":"kurz","translation":"کوتاه"},{"lemma":"dass","partOfSpeech":"conjunction","surface":"dass","translation":"که"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"form":"feminine_or_plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"plural","lemma":"Zahl","partOfSpeech":"noun","surface":"Zahlen","translation":"عدد / رقم"},{"form":"participle_II","lemma":"korrigieren","partOfSpeech":"verb","surface":"korrigiert","translation":"اصلاح کردن"},{"form":"present_1pl","lemma":"haben","partOfSpeech":"verb","suffix":".","surface":"haben","translation":"داشتن"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_martin,5,'character','Wann schicken wir die Datei ab?','کی فایل رو می فرستیم؟',46,NULL,NULL,NULL,NULL,'[{"lemma":"wann","partOfSpeech":"adverb","surface":"Wann","translation":"کی / چه زمانی"},{"form":"infinitive","lemma":"schicken","partOfSpeech":"verb","surface":"schicken","translation":"فرستادن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"form":"feminine_or_plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Datei","partOfSpeech":"noun","surface":"Datei","translation":"فایل"},{"lemma":"ab","partOfSpeech":"particle","suffix":"?","surface":"ab","translation":"جدا / ارسال"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,6,'learner','Sobald du die Nachricht geschickt hast, schicke ich sie ab.','همین که پیام رو فرستادی، من فایل رو ارسال می کنم.',46,NULL,NULL,'sobald du die nachricht geschickt hast schicke ich sie ab',NULL,'[{"lemma":"sobald","partOfSpeech":"conjunction","surface":"Sobald","translation":"همین که"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"feminine_or_plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Nachricht","partOfSpeech":"noun","surface":"Nachricht","translation":"پیام"},{"form":"participle_II","lemma":"schicken","partOfSpeech":"verb","surface":"geschickt","translation":"فرستادن"},{"form":"present_2sg","lemma":"haben","partOfSpeech":"verb","suffix":",","surface":"hast","translation":"داشتن"},{"form":"present_1sg","lemma":"schicken","partOfSpeech":"verb","surface":"schicke","translation":"فرستادن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"sie","partOfSpeech":"pronoun","surface":"sie","translation":"او / آن ها"},{"lemma":"ab","partOfSpeech":"particle","suffix":".","surface":"ab","translation":"جدا / ارسال"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_073,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_036,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_044,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_072,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_033,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_037,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_062,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_069,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_012,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_014,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_016,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_053,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_080,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_028,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_067,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_007,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_025,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_084,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_091,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_035,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_065,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_043,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_094,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_042,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_083,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_063,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_015,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_001,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_070,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_019,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_051,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_071,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_071,'عبارت کلیدی درس',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',2,NULL,v_w_044,'واژه کلیدی درس',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',3,v_t_13,NULL,'به جمله مارتین گوش کن',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',4,v_t_14,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',5,v_t_15,NULL,'به جمله بعدی گوش کن',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',6,v_t_16,NULL,'پاسخ را با صدای بلند بگو',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',7,NULL,v_w_044,'معنی واژه کلیدی را انتخاب کن',NULL,46,'{"mode":"word_translation","question":"Lea در این درس چه معنی دارد؟","choices":["لئا","لنا (نام زنانه)","بن (نام مردانه)"],"correctIndex":0}','{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,46,'{"source":"lesson_story","question":"بعد از ارسال پیام، آنا چه کاری می کند؟","choices":["فایل را ارسال می کند","جلسه را لغو می کند","فرمول را حذف می کند"],"correctIndex":0}','{"cefr":"B1","series":90}');
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_martin,v_c_anna,'Gemeinsam abschließen','پایان دادن به کار با همکاری','Die beiden halten ihre Lösung fest und schließen die Aufgabe ab.','آن دو راه حلشان را ثبت می کنند و کار را به پایان می رسانند.','story','anna-martin-b1-project',20,46,150,4,'validated','{"relationship":"coworkers","context":"solve-and-document-work-problem","cefr":"B1","storyArc":"verify-explain-report-close"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_martin,1,'character','Wir sind rechtzeitig fertig geworden.','به موقع آماده شدیم.',46,NULL,NULL,NULL,NULL,'[{"lemma":"wir","partOfSpeech":"pronoun","surface":"Wir","translation":"ما"},{"form":"present_1pl","lemma":"sein","partOfSpeech":"verb","surface":"sind","translation":"بودن"},{"lemma":"rechtzeitig","partOfSpeech":"adverb","surface":"rechtzeitig","translation":"به موقع"},{"lemma":"fertig","partOfSpeech":"adjective","surface":"fertig","translation":"تمام / آماده"},{"form":"participle_II","lemma":"werden","partOfSpeech":"verb","suffix":".","surface":"geworden","translation":"شدن / خواهد"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,2,'learner','Wir haben das Problem gelöst.','مشکل رو حل کردیم.',46,NULL,NULL,'wir haben das problem gelöst',NULL,'[{"lemma":"wir","partOfSpeech":"pronoun","surface":"Wir","translation":"ما"},{"form":"present_1pl","lemma":"haben","partOfSpeech":"verb","surface":"haben","translation":"داشتن"},{"form":"neuter","lemma":"der","partOfSpeech":"article","surface":"das","translation":"حرف تعریف"},{"lemma":"Problem","partOfSpeech":"noun","surface":"Problem","translation":"مشکل"},{"form":"participle_II","lemma":"lösen","partOfSpeech":"verb","suffix":".","surface":"gelöst","translation":"حل کردن"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_20=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_martin,3,'character','Das war nur möglich, weil wir gut zusammengearbeitet haben.','این فقط به این دلیل ممکن شد که خوب با هم همکاری کردیم.',46,NULL,NULL,NULL,NULL,'[{"form":"neuter","lemma":"der","partOfSpeech":"article","surface":"Das","translation":"حرف تعریف"},{"form":"preterite_3sg","lemma":"sein","partOfSpeech":"verb","surface":"war","translation":"بودن"},{"lemma":"nur","partOfSpeech":"adverb","surface":"nur","translation":"فقط"},{"lemma":"möglich","partOfSpeech":"adjective","suffix":",","surface":"möglich","translation":"ممکن"},{"lemma":"weil","partOfSpeech":"conjunction","surface":"weil","translation":"چون / زیرا"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"gut","partOfSpeech":"adverb","surface":"gut","translation":"خوب"},{"form":"participle_II","lemma":"zusammenarbeiten","partOfSpeech":"verb","surface":"zusammengearbeitet","translation":"همکاری کردن"},{"form":"present_1pl","lemma":"haben","partOfSpeech":"verb","suffix":".","surface":"haben","translation":"داشتن"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_21=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,4,'learner','Beim nächsten Mal prüfen wir die Formeln früher.','دفعه بعد فرمول ها رو زودتر بررسی می کنیم.',46,NULL,NULL,'beim nächsten mal prüfen wir die formeln früher',NULL,'[{"form":"bei_dem","lemma":"bei","partOfSpeech":"preposition","surface":"Beim","translation":"هنگام / موقع"},{"form":"dative","lemma":"nächst","partOfSpeech":"adjective","surface":"nächsten","translation":"بعدی"},{"lemma":"Mal","partOfSpeech":"noun","surface":"Mal","translation":"بار"},{"form":"infinitive","lemma":"prüfen","partOfSpeech":"verb","surface":"prüfen","translation":"بررسی کردن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"form":"feminine_or_plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"plural","lemma":"Formel","partOfSpeech":"noun","surface":"Formeln","translation":"فرمول"},{"form":"comparative","lemma":"früh","partOfSpeech":"adverb","suffix":".","surface":"früher","translation":"زودتر"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_22=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_martin,5,'character','Wollen wir den Ablauf kurz festhalten?','روند کار رو کوتاه ثبت کنیم؟',46,NULL,NULL,NULL,NULL,'[{"form":"present_1pl","lemma":"wollen","partOfSpeech":"verb","surface":"Wollen","translation":"خواستن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"form":"accusative_masculine","lemma":"der","partOfSpeech":"article","surface":"den","translation":"حرف تعریف"},{"lemma":"Ablauf","partOfSpeech":"noun","surface":"Ablauf","translation":"روند کار"},{"lemma":"kurz","partOfSpeech":"adverb","surface":"kurz","translation":"کوتاه"},{"form":"infinitive","lemma":"festhalten","partOfSpeech":"verb","suffix":"?","surface":"festhalten","translation":"ثبت کردن"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_23=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,6,'learner','Ja, dann können wir ähnliche Probleme schneller lösen.','آره، اون وقت می تونیم مشکل های مشابه رو سریع تر حل کنیم.',46,NULL,NULL,'ja dann können wir ähnliche probleme schneller lösen',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"dann","partOfSpeech":"adverb","surface":"dann","translation":"بعد / سپس"},{"form":"infinitive","lemma":"können","partOfSpeech":"verb","surface":"können","translation":"توانستن / بتوان"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"form":"inflected","lemma":"ähnlich","partOfSpeech":"adjective","surface":"ähnliche","translation":"مشابه"},{"form":"plural","lemma":"Problem","partOfSpeech":"noun","surface":"Probleme","translation":"مشکل"},{"form":"comparative","lemma":"schnell","partOfSpeech":"adverb","surface":"schneller","translation":"سریع تر"},{"form":"infinitive","lemma":"lösen","partOfSpeech":"verb","suffix":".","surface":"lösen","translation":"حل کردن"}]',NULL,NULL,NULL,'{"cefr":"B1","course":"de-fa","series":90}');
  SET v_t_24=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_091,'review',0,6);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_067,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_060,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_028,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_088,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_035,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_016,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_058,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_046,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_056,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_050,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_085,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_034,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_095,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_008,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_052,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_048,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_059,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_031,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_032,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_093,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_043,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_029,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_037,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_039,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_004,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_064,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_092,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',1,NULL,v_w_092,'عبارت کلیدی درس',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',2,NULL,v_w_056,'واژه کلیدی درس',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_19,NULL,'به جمله مارتین گوش کن',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_20,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_21,NULL,'به جمله بعدی گوش کن',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_22,NULL,'پاسخ را با صدای بلند بگو',NULL,46,NULL,'{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',7,NULL,v_w_056,'معنی واژه کلیدی را انتخاب کن',NULL,46,'{"mode":"word_translation","question":"nur در این درس چه معنی دارد؟","choices":["فقط","چطور / چگونه","بعدا"],"correctIndex":0}','{"cefr":"B1","series":90}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,46,'{"source":"lesson_story","question":"آنا و مارتین برای دفعه بعد چه تصمیمی می گیرند؟","choices":["فرمول ها را زودتر بررسی می کنند","دیگر همکاری نکنند","اعداد را بررسی نکنند"],"correctIndex":0}','{"cefr":"B1","series":90}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 090 requires exactly four lessons.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>24 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 090 requires exactly 24 turns.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR CHAR_LENGTH(TRIM(t.speech_target))=0);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every learner Turn needs speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND JSON_VALID(t.tokens)=0;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Invalid token JSON.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities a JOIN lessons l ON l.id=a.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>32 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 090 requires exactly 32 activities.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id<>learner_character_id AND storyline_key='anna-martin-b1-project' AND storyline_order BETWEEN 17 AND 20 AND status='validated';
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Character or storyline continuity failure.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) d;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  UPDATE modules SET status='complete' WHERE id=v_module;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_series_090_v9();
DROP PROCEDURE IF EXISTS import_nova_series_090_v9;

-- ===== SERIES 091 =====
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

-- ===== SERIES 092 =====
-- NOVA v9.0 / B1 SERIES 092 / Seit wir hier wohnen, ist es ruhiger
-- Requires canonical v9.0 and validated Series 091. No schema DDL.
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_series_092_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_092_v9()
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
  DECLARE v_w_103 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_104 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_105 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_106 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_107 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_108 BIGINT UNSIGNED DEFAULT NULL;
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
  SELECT COUNT(*) INTO v_count FROM chapters WHERE module_id=v_module AND sort_order=1 AND status IN ('validated','complete');
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 091 must be validated.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons l JOIN chapters c ON c.id=l.chapter_id WHERE c.module_id=v_module AND c.sort_order=1 AND l.storyline_key='anna-jonas-b1-neighborhood' AND l.storyline_order BETWEEN 1 AND 4;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Storyline orders 1-4 required.'; END IF;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 03 Chapter 02 missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='Seit wir hier wohnen, ist es ruhiger' AND title_translation='از وقتی اینجا زندگی می کنیم آروم تر شده';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 092 canonical title mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 03 Chapter 02 must be empty before Series 092 import.'; END IF;
  SELECT id INTO v_c_jonas FROM characters WHERE course_id=v_course AND name='Jonas' AND gender='male' ORDER BY id LIMIT 1;
  SELECT id INTO v_c_anna FROM characters WHERE course_id=v_course AND name='Anna' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_jonas IS NULL OR v_c_anna IS NULL OR v_c_jonas=v_c_anna THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required distinct Characters Jonas and Anna missing.'; END IF;
  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='alles' AND part_of_speech='pronoun' AND translation='همه چیز' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: alles | pronoun'; END IF;
  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='an' AND part_of_speech='particle' AND translation='مطرح / آغاز' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'an','an','particle','مطرح / آغاز',48,'{"type":"particle"}','[{"text":"Hallo","translation":"سلام"},{"text":"Tschüss","translation":"خداحافظ"},{"text":"gut","translation":"خوب"},{"text":"Morgen","translation":"صبح"},{"text":"Guten Morgen","translation":"صبح بخیر"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_002=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='an' AND part_of_speech='preposition' AND translation='در / در روز' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: an | preposition'; END IF;
  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='Anfang' AND part_of_speech='noun' AND translation='آغاز' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Anfang','Anfang','noun','آغاز',48,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_004=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='auch' AND part_of_speech='adverb' AND translation='هم / همچنین' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: auch | adverb'; END IF;
  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='auf' AND part_of_speech='preposition' AND translation='روی / برای' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: auf | preposition'; END IF;
  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='aufstehen' AND part_of_speech='verb' AND translation='از خواب بلند شدن' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: aufstehen | verb'; END IF;
  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='Balkon' AND part_of_speech='noun' AND translation='بالکن' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Balkon | noun'; END IF;
  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='beginnen' AND part_of_speech='verb' AND translation='شروع شدن / آغاز کردن' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: beginnen | verb'; END IF;
  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='dabei' AND part_of_speech='adverb' AND translation='در این میان' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'dabei','dabei','adverb','در این میان',48,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_010=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='dann' AND part_of_speech='adverb' AND translation='بعد / سپس' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dann | adverb'; END IF;
  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: der | article'; END IF;
  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='dort' AND part_of_speech='adverb' AND translation='آنجا' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dort | adverb'; END IF;
  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: du | pronoun'; END IF;
  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='ein' AND part_of_speech='article' AND translation='یک / حرف تعریف نامعین' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ein | article'; END IF;
  SELECT id INTO v_w_016 FROM words WHERE course_id=v_course AND lemma='Einzug' AND part_of_speech='noun' AND translation='اسباب کشی' ORDER BY id LIMIT 1;
  IF v_w_016 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Einzug','Einzug','noun','اسباب کشی',48,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_016=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_017 FROM words WHERE course_id=v_course AND lemma='Entscheidung' AND part_of_speech='noun' AND translation='تصمیم' ORDER BY id LIMIT 1;
  IF v_w_017 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Entscheidung | noun'; END IF;
  SELECT id INTO v_w_018 FROM words WHERE course_id=v_course AND lemma='entspannt' AND part_of_speech='adjective' AND translation='آرام تر' ORDER BY id LIMIT 1;
  IF v_w_018 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'entspannt','entspannt','adjective','آرام تر',48,'{"type":"adjective"}','[{"text":"gut","translation":"خوب"},{"text":"super","translation":"عالی"},{"text":"alt","translation":"پیر / دارای سن"},{"text":"spät","translation":"دیر"},{"text":"rot","translation":"قرمز"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_018=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_019 FROM words WHERE course_id=v_course AND lemma='er' AND part_of_speech='pronoun' AND translation='او (مذکر)' ORDER BY id LIMIT 1;
  IF v_w_019 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: er | pronoun'; END IF;
  SELECT id INTO v_w_020 FROM words WHERE course_id=v_course AND lemma='es' AND part_of_speech='pronoun' AND translation='آن / این' ORDER BY id LIMIT 1;
  IF v_w_020 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: es | pronoun'; END IF;
  SELECT id INTO v_w_021 FROM words WHERE course_id=v_course AND lemma='etwas' AND part_of_speech='pronoun' AND translation='چیزی / یک چیزی' ORDER BY id LIMIT 1;
  IF v_w_021 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: etwas | pronoun'; END IF;
  SELECT id INTO v_w_022 FROM words WHERE course_id=v_course AND lemma='fast' AND part_of_speech='adverb' AND translation='تقریبا' ORDER BY id LIMIT 1;
  IF v_w_022 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: fast | adverb'; END IF;
  SELECT id INTO v_w_023 FROM words WHERE course_id=v_course AND lemma='Frau' AND part_of_speech='noun' AND translation='خانم' ORDER BY id LIMIT 1;
  IF v_w_023 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Frau','Frau','noun','خانم',48,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_023=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_024 FROM words WHERE course_id=v_course AND lemma='fremd' AND part_of_speech='adjective' AND translation='غریبه / ناآشنا' ORDER BY id LIMIT 1;
  IF v_w_024 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'fremd','fremd','adjective','غریبه / ناآشنا',48,'{"type":"adjective"}','[{"text":"gut","translation":"خوب"},{"text":"super","translation":"عالی"},{"text":"alt","translation":"پیر / دارای سن"},{"text":"spät","translation":"دیر"},{"text":"rot","translation":"قرمز"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_024=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_025 FROM words WHERE course_id=v_course AND lemma='freundlich' AND part_of_speech='adjective' AND translation='دوستانه / مهربان' ORDER BY id LIMIT 1;
  IF v_w_025 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: freundlich | adjective'; END IF;
  SELECT id INTO v_w_026 FROM words WHERE course_id=v_course AND lemma='früh' AND part_of_speech='adverb' AND translation='زودتر' ORDER BY id LIMIT 1;
  IF v_w_026 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'früh','früh','adverb','زودتر',48,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_026=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_027 FROM words WHERE course_id=v_course AND lemma='gefallen' AND part_of_speech='verb' AND translation='خوش آمدن' ORDER BY id LIMIT 1;
  IF v_w_027 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'gefallen','gefallen','verb','خوش آمدن',48,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"heißen","translation":"نام داشتن"},{"text":"freuen","translation":"خوشحال کردن / خوشحال شدن"},{"text":"kommen","translation":"آمدن"},{"text":"sein","translation":"بودن"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_027=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_028 FROM words WHERE course_id=v_course AND lemma='Gespräch' AND part_of_speech='noun' AND translation='گفتگو' ORDER BY id LIMIT 1;
  IF v_w_028 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Gespräch | noun'; END IF;
  SELECT id INTO v_w_029 FROM words WHERE course_id=v_course AND lemma='gestern' AND part_of_speech='adverb' AND translation='دیروز' ORDER BY id LIMIT 1;
  IF v_w_029 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: gestern | adverb'; END IF;
  SELECT id INTO v_w_030 FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_030 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: gut | adjective'; END IF;
  SELECT id INTO v_w_031 FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_031 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: haben | verb'; END IF;
  SELECT id INTO v_w_032 FROM words WHERE course_id=v_course AND lemma='Haus' AND part_of_speech='noun' AND translation='خانه' ORDER BY id LIMIT 1;
  IF v_w_032 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Haus','Haus','noun','خانه',48,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_032=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_033 FROM words WHERE course_id=v_course AND lemma='helfen' AND part_of_speech='verb' AND translation='کمک کردن' ORDER BY id LIMIT 1;
  IF v_w_033 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: helfen | verb'; END IF;
  SELECT id INTO v_w_034 FROM words WHERE course_id=v_course AND lemma='Herr' AND part_of_speech='noun' AND translation='آقا' ORDER BY id LIMIT 1;
  IF v_w_034 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Herr | noun'; END IF;
  SELECT id INTO v_w_035 FROM words WHERE course_id=v_course AND lemma='herum' AND part_of_speech='adverb' AND translation='اطراف' ORDER BY id LIMIT 1;
  IF v_w_035 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'herum','herum','adverb','اطراف',48,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_035=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_036 FROM words WHERE course_id=v_course AND lemma='heute' AND part_of_speech='adverb' AND translation='امروز' ORDER BY id LIMIT 1;
  IF v_w_036 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: heute | adverb'; END IF;
  SELECT id INTO v_w_037 FROM words WHERE course_id=v_course AND lemma='hier' AND part_of_speech='adverb' AND translation='اینجا' ORDER BY id LIMIT 1;
  IF v_w_037 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: hier | adverb'; END IF;
  SELECT id INTO v_w_038 FROM words WHERE course_id=v_course AND lemma='hören' AND part_of_speech='verb' AND translation='گوش دادن' ORDER BY id LIMIT 1;
  IF v_w_038 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: hören | verb'; END IF;
  SELECT id INTO v_w_039 FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_039 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ich | pronoun'; END IF;
  SELECT id INTO v_w_040 FROM words WHERE course_id=v_course AND lemma='Ich fühle mich wohler, seit ich die Nachbarn kenne.' AND part_of_speech='phrase' AND translation='از وقتی همسایه ها رو می شناسم، احساس راحتی بیشتری دارم.' ORDER BY id LIMIT 1;
  IF v_w_040 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich fühle mich wohler, seit ich die Nachbarn kenne.','Ich fühle mich wohler, seit ich die Nachbarn kenne.','phrase','از وقتی همسایه ها رو می شناسم، احساس راحتی بیشتری دارم.',48,'{"type":"phrase"}','[{"text":"Guten Morgen","translation":"صبح بخیر"},{"text":"Wie geht es dir?","translation":"حالت چطوره؟"},{"text":"Bis später","translation":"بعدا می بینمت"},{"text":"Ich heiße ...","translation":"اسم من ... است"},{"text":"Wie heißt du?","translation":"اسمت چیه؟"}]','Ich fühle mich wohler, seit ich die Nachbarn kenne.','از وقتی همسایه ها رو می شناسم، احساس راحتی بیشتری دارم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_040=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_041 FROM words WHERE course_id=v_course AND lemma='immer' AND part_of_speech='adverb' AND translation='همیشه / هرچه بیشتر' ORDER BY id LIMIT 1;
  IF v_w_041 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'immer','immer','adverb','همیشه / هرچه بیشتر',48,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_041=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_042 FROM words WHERE course_id=v_course AND lemma='Innenhof' AND part_of_speech='noun' AND translation='حیاط داخلی' ORDER BY id LIMIT 1;
  IF v_w_042 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Innenhof','Innenhof','noun','حیاط داخلی',48,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_042=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_043 FROM words WHERE course_id=v_course AND lemma='inzwischen' AND part_of_speech='adverb' AND translation='تا حالا / اکنون' ORDER BY id LIMIT 1;
  IF v_w_043 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'inzwischen','inzwischen','adverb','تا حالا / اکنون',48,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_043=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_044 FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_044 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ja | interjection'; END IF;
  SELECT id INTO v_w_045 FROM words WHERE course_id=v_course AND lemma='jeder' AND part_of_speech='determiner' AND translation='هر' ORDER BY id LIMIT 1;
  IF v_w_045 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'jeder','jeder','determiner','هر',48,'{"type":"determiner"}','[{"text":"welcher","translation":"کدام / چه"},{"text":"anderer","translation":"دیگر / متفاوت"},{"text":"mein","translation":"مال من / من"},{"text":"dein","translation":"مال تو / تو"},{"text":"kein","translation":"هیچ / نه یک"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_045=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_046 FROM words WHERE course_id=v_course AND lemma='jetzt' AND part_of_speech='adverb' AND translation='حالا / اکنون' ORDER BY id LIMIT 1;
  IF v_w_046 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: jetzt | adverb'; END IF;
  SELECT id INTO v_w_047 FROM words WHERE course_id=v_course AND lemma='Kaffee' AND part_of_speech='noun' AND translation='قهوه' ORDER BY id LIMIT 1;
  IF v_w_047 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Kaffee | noun'; END IF;
  SELECT id INTO v_w_048 FROM words WHERE course_id=v_course AND lemma='kaufen' AND part_of_speech='verb' AND translation='خریدن' ORDER BY id LIMIT 1;
  IF v_w_048 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: kaufen | verb'; END IF;
  SELECT id INTO v_w_049 FROM words WHERE course_id=v_course AND lemma='kennen' AND part_of_speech='verb' AND translation='شناختن' ORDER BY id LIMIT 1;
  IF v_w_049 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: kennen | verb'; END IF;
  SELECT id INTO v_w_050 FROM words WHERE course_id=v_course AND lemma='Klein' AND part_of_speech='proper_noun' AND translation='کلاین' ORDER BY id LIMIT 1;
  IF v_w_050 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Klein','Klein','proper_noun','کلاین',48,'{"type":"proper_noun"}','[{"text":"Lena","translation":"لنا (نام زنانه)"},{"text":"Ben","translation":"بن (نام مردانه)"},{"text":"Anna","translation":"آنا (نام زنانه)"},{"text":"Jonas","translation":"یوناس (نام مردانه)"},{"text":"Mia","translation":"میا (نام زنانه)"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_050=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_051 FROM words WHERE course_id=v_course AND lemma='klingen' AND part_of_speech='verb' AND translation='به نظر رسیدن' ORDER BY id LIMIT 1;
  IF v_w_051 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: klingen | verb'; END IF;
  SELECT id INTO v_w_052 FROM words WHERE course_id=v_course AND lemma='Leute' AND part_of_speech='noun' AND translation='آدم ها' ORDER BY id LIMIT 1;
  IF v_w_052 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Leute','Leute','noun','آدم ها',48,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_052=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_053 FROM words WHERE course_id=v_course AND lemma='lösen' AND part_of_speech='verb' AND translation='حل کردن' ORDER BY id LIMIT 1;
  IF v_w_053 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: lösen | verb'; END IF;
  SELECT id INTO v_w_054 FROM words WHERE course_id=v_course AND lemma='mehr' AND part_of_speech='adverb' AND translation='دیگه / بیشتر' ORDER BY id LIMIT 1;
  IF v_w_054 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: mehr | adverb'; END IF;
  SELECT id INTO v_w_055 FROM words WHERE course_id=v_course AND lemma='meist' AND part_of_speech='adjective' AND translation='بیشترین' ORDER BY id LIMIT 1;
  IF v_w_055 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'meist','meist','adjective','بیشترین',48,'{"type":"adjective"}','[{"text":"gut","translation":"خوب"},{"text":"super","translation":"عالی"},{"text":"alt","translation":"پیر / دارای سن"},{"text":"spät","translation":"دیر"},{"text":"rot","translation":"قرمز"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_055=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_056 FROM words WHERE course_id=v_course AND lemma='Mensch' AND part_of_speech='noun' AND translation='آدم / انسان' ORDER BY id LIMIT 1;
  IF v_w_056 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Mensch','Mensch','noun','آدم / انسان',48,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_056=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_057 FROM words WHERE course_id=v_course AND lemma='miteinander' AND part_of_speech='adverb' AND translation='با یکدیگر' ORDER BY id LIMIT 1;
  IF v_w_057 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'miteinander','miteinander','adverb','با یکدیگر',48,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_057=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_058 FROM words WHERE course_id=v_course AND lemma='Morgen' AND part_of_speech='noun' AND translation='صبح' ORDER BY id LIMIT 1;
  IF v_w_058 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Morgen | noun'; END IF;
  SELECT id INTO v_w_059 FROM words WHERE course_id=v_course AND lemma='morgens' AND part_of_speech='adverb' AND translation='صبح ها' ORDER BY id LIMIT 1;
  IF v_w_059 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'morgens','morgens','adverb','صبح ها',48,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_059=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_060 FROM words WHERE course_id=v_course AND lemma='nach' AND part_of_speech='preposition' AND translation='پس از / به' ORDER BY id LIMIT 1;
  IF v_w_060 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'nach','nach','preposition','پس از / به',48,'{"type":"preposition"}','[{"text":"bis","translation":"تا"},{"text":"aus","translation":"از"},{"text":"mit","translation":"با"},{"text":"um","translation":"در ساعت / حوالی"},{"text":"in","translation":"در / داخل"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_060=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_061 FROM words WHERE course_id=v_course AND lemma='Nachbar' AND part_of_speech='noun' AND translation='همسایه' ORDER BY id LIMIT 1;
  IF v_w_061 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Nachbar | noun'; END IF;
  SELECT id INTO v_w_062 FROM words WHERE course_id=v_course AND lemma='Nachbarin' AND part_of_speech='noun' AND translation='همسایه زن' ORDER BY id LIMIT 1;
  IF v_w_062 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Nachbarin','Nachbarin','noun','همسایه زن',48,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_062=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_063 FROM words WHERE course_id=v_course AND lemma='nein' AND part_of_speech='interjection' AND translation='نه' ORDER BY id LIMIT 1;
  IF v_w_063 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: nein | interjection'; END IF;
  SELECT id INTO v_w_064 FROM words WHERE course_id=v_course AND lemma='neu' AND part_of_speech='adjective' AND translation='جدید / تازه' ORDER BY id LIMIT 1;
  IF v_w_064 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: neu | adjective'; END IF;
  SELECT id INTO v_w_065 FROM words WHERE course_id=v_course AND lemma='nichts' AND part_of_speech='pronoun' AND translation='هیچ چیز' ORDER BY id LIMIT 1;
  IF v_w_065 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: nichts | pronoun'; END IF;
  SELECT id INTO v_w_066 FROM words WHERE course_id=v_course AND lemma='noch' AND part_of_speech='adverb' AND translation='هنوز' ORDER BY id LIMIT 1;
  IF v_w_066 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: noch | adverb'; END IF;
  SELECT id INTO v_w_067 FROM words WHERE course_id=v_course AND lemma='offen' AND part_of_speech='adverb' AND translation='راحت / صریح' ORDER BY id LIMIT 1;
  IF v_w_067 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'offen','offen','adverb','راحت / صریح',48,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_067=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_068 FROM words WHERE course_id=v_course AND lemma='oft' AND part_of_speech='adverb' AND translation='اغلب' ORDER BY id LIMIT 1;
  IF v_w_068 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: oft | adverb'; END IF;
  SELECT id INTO v_w_069 FROM words WHERE course_id=v_course AND lemma='ohne' AND part_of_speech='preposition' AND translation='بدون' ORDER BY id LIMIT 1;
  IF v_w_069 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ohne | preposition'; END IF;
  SELECT id INTO v_w_070 FROM words WHERE course_id=v_course AND lemma='Problem' AND part_of_speech='noun' AND translation='مشکل' ORDER BY id LIMIT 1;
  IF v_w_070 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Problem | noun'; END IF;
  SELECT id INTO v_w_071 FROM words WHERE course_id=v_course AND lemma='ruhig' AND part_of_speech='adjective' AND translation='آرام' ORDER BY id LIMIT 1;
  IF v_w_071 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ruhig | adjective'; END IF;
  SELECT id INTO v_w_072 FROM words WHERE course_id=v_course AND lemma='scheinen' AND part_of_speech='verb' AND translation='به نظر رسیدن' ORDER BY id LIMIT 1;
  IF v_w_072 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'scheinen','scheinen','verb','به نظر رسیدن',48,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"heißen","translation":"نام داشتن"},{"text":"freuen","translation":"خوشحال کردن / خوشحال شدن"},{"text":"kommen","translation":"آمدن"},{"text":"sein","translation":"بودن"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_072=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_073 FROM words WHERE course_id=v_course AND lemma='schnell' AND part_of_speech='adverb' AND translation='سریع تر' ORDER BY id LIMIT 1;
  IF v_w_073 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'schnell','schnell','adverb','سریع تر',48,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_073=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_074 FROM words WHERE course_id=v_course AND lemma='sehr' AND part_of_speech='adverb' AND translation='خیلی / بسیار' ORDER BY id LIMIT 1;
  IF v_w_074 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sehr | adverb'; END IF;
  SELECT id INTO v_w_075 FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_075 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sein | verb'; END IF;
  SELECT id INTO v_w_076 FROM words WHERE course_id=v_course AND lemma='seit' AND part_of_speech='conjunction' AND translation='از وقتی' ORDER BY id LIMIT 1;
  IF v_w_076 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'seit','seit','conjunction','از وقتی',48,'{"type":"conjunction"}','[{"text":"und","translation":"و"},{"text":"oder","translation":"یا"},{"text":"weil","translation":"چون / زیرا"},{"text":"aber","translation":"اما"},{"text":"wenn","translation":"اگر / وقتی"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_076=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_077 FROM words WHERE course_id=v_course AND lemma='seit' AND part_of_speech='preposition' AND translation='از / از زمان' ORDER BY id LIMIT 1;
  IF v_w_077 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: seit | preposition'; END IF;
  SELECT id INTO v_w_078 FROM words WHERE course_id=v_course AND lemma='Seit Herr Weber den Teppich gekauft hat, ist es viel ruhiger.' AND part_of_speech='phrase' AND translation='از وقتی آقای وبر فرش رو خریده، خیلی آروم تر شده.' ORDER BY id LIMIT 1;
  IF v_w_078 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Seit Herr Weber den Teppich gekauft hat, ist es viel ruhiger.','Seit Herr Weber den Teppich gekauft hat, ist es viel ruhiger.','phrase','از وقتی آقای وبر فرش رو خریده، خیلی آروم تر شده.',48,'{"type":"phrase"}','[{"text":"Guten Morgen","translation":"صبح بخیر"},{"text":"Wie geht es dir?","translation":"حالت چطوره؟"},{"text":"Bis später","translation":"بعدا می بینمت"},{"text":"Ich heiße ...","translation":"اسم من ... است"},{"text":"Wie heißt du?","translation":"اسمت چیه؟"}]','Seit Herr Weber den Teppich gekauft hat, ist es viel ruhiger.','از وقتی آقای وبر فرش رو خریده، خیلی آروم تر شده.',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_078=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_079 FROM words WHERE course_id=v_course AND lemma='Seit ich früher aufstehe, habe ich morgens mehr Zeit.' AND part_of_speech='phrase' AND translation='از وقتی زودتر بیدار می شم، صبح ها وقت بیشتری دارم.' ORDER BY id LIMIT 1;
  IF v_w_079 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Seit ich früher aufstehe, habe ich morgens mehr Zeit.','Seit ich früher aufstehe, habe ich morgens mehr Zeit.','phrase','از وقتی زودتر بیدار می شم، صبح ها وقت بیشتری دارم.',48,'{"type":"phrase"}','[{"text":"Guten Morgen","translation":"صبح بخیر"},{"text":"Wie geht es dir?","translation":"حالت چطوره؟"},{"text":"Bis später","translation":"بعدا می بینمت"},{"text":"Ich heiße ...","translation":"اسم من ... است"},{"text":"Wie heißt du?","translation":"اسمت چیه؟"}]','Seit ich früher aufstehe, habe ich morgens mehr Zeit.','از وقتی زودتر بیدار می شم، صبح ها وقت بیشتری دارم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_079=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_080 FROM words WHERE course_id=v_course AND lemma='Seit wir offen miteinander sprechen, lösen wir Probleme schneller.' AND part_of_speech='phrase' AND translation='از وقتی با هم راحت حرف می زنیم، مشکل ها رو سریع تر حل می کنیم.' ORDER BY id LIMIT 1;
  IF v_w_080 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Seit wir offen miteinander sprechen, lösen wir Probleme schneller.','Seit wir offen miteinander sprechen, lösen wir Probleme schneller.','phrase','از وقتی با هم راحت حرف می زنیم، مشکل ها رو سریع تر حل می کنیم.',48,'{"type":"phrase"}','[{"text":"Guten Morgen","translation":"صبح بخیر"},{"text":"Wie geht es dir?","translation":"حالت چطوره؟"},{"text":"Bis später","translation":"بعدا می بینمت"},{"text":"Ich heiße ...","translation":"اسم من ... است"},{"text":"Wie heißt du?","translation":"اسمت چیه؟"}]','Seit wir offen miteinander sprechen, lösen wir Probleme schneller.','از وقتی با هم راحت حرف می زنیم، مشکل ها رو سریع تر حل می کنیم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_080=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_081 FROM words WHERE course_id=v_course AND lemma='seitdem' AND part_of_speech='adverb' AND translation='از آن زمان' ORDER BY id LIMIT 1;
  IF v_w_081 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'seitdem','seitdem','adverb','از آن زمان',48,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_081=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_082 FROM words WHERE course_id=v_course AND lemma='sich' AND part_of_speech='pronoun' AND translation='خود / خودش' ORDER BY id LIMIT 1;
  IF v_w_082 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sich | pronoun'; END IF;
  SELECT id INTO v_w_083 FROM words WHERE course_id=v_course AND lemma='sich fühlen' AND part_of_speech='verb' AND translation='احساس کردن' ORDER BY id LIMIT 1;
  IF v_w_083 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sich fühlen | verb'; END IF;
  SELECT id INTO v_w_084 FROM words WHERE course_id=v_course AND lemma='sitzen' AND part_of_speech='verb' AND translation='نشستن' ORDER BY id LIMIT 1;
  IF v_w_084 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sitzen | verb'; END IF;
  SELECT id INTO v_w_085 FROM words WHERE course_id=v_course AND lemma='sprechen' AND part_of_speech='verb' AND translation='صحبت کردن / حرف زدن' ORDER BY id LIMIT 1;
  IF v_w_085 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sprechen | verb'; END IF;
  SELECT id INTO v_w_086 FROM words WHERE course_id=v_course AND lemma='Start' AND part_of_speech='noun' AND translation='شروع' ORDER BY id LIMIT 1;
  IF v_w_086 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Start','Start','noun','شروع',48,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_086=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_087 FROM words WHERE course_id=v_course AND lemma='Stress' AND part_of_speech='noun' AND translation='استرس' ORDER BY id LIMIT 1;
  IF v_w_087 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Stress | noun'; END IF;
  SELECT id INTO v_w_088 FROM words WHERE course_id=v_course AND lemma='Tag' AND part_of_speech='noun' AND translation='روز' ORDER BY id LIMIT 1;
  IF v_w_088 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Tag | noun'; END IF;
  SELECT id INTO v_w_089 FROM words WHERE course_id=v_course AND lemma='Teppich' AND part_of_speech='noun' AND translation='فرش' ORDER BY id LIMIT 1;
  IF v_w_089 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Teppich | noun'; END IF;
  SELECT id INTO v_w_090 FROM words WHERE course_id=v_course AND lemma='treffen' AND part_of_speech='verb' AND translation='دیدن / ملاقات کردن' ORDER BY id LIMIT 1;
  IF v_w_090 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: treffen | verb'; END IF;
  SELECT id INTO v_w_091 FROM words WHERE course_id=v_course AND lemma='trinken' AND part_of_speech='verb' AND translation='نوشیدن' ORDER BY id LIMIT 1;
  IF v_w_091 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: trinken | verb'; END IF;
  SELECT id INTO v_w_092 FROM words WHERE course_id=v_course AND lemma='um' AND part_of_speech='preposition' AND translation='در ساعت / حوالی' ORDER BY id LIMIT 1;
  IF v_w_092 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: um | preposition'; END IF;
  SELECT id INTO v_w_093 FROM words WHERE course_id=v_course AND lemma='Umzug' AND part_of_speech='noun' AND translation='اسباب کشی' ORDER BY id LIMIT 1;
  IF v_w_093 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Umzug | noun'; END IF;
  SELECT id INTO v_w_094 FROM words WHERE course_id=v_course AND lemma='und' AND part_of_speech='conjunction' AND translation='و' ORDER BY id LIMIT 1;
  IF v_w_094 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: und | conjunction'; END IF;
  SELECT id INTO v_w_095 FROM words WHERE course_id=v_course AND lemma='unser' AND part_of_speech='determiner' AND translation='مال ما / ما' ORDER BY id LIMIT 1;
  IF v_w_095 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: unser | determiner'; END IF;
  SELECT id INTO v_w_096 FROM words WHERE course_id=v_course AND lemma='verändern' AND part_of_speech='verb' AND translation='تغییر دادن' ORDER BY id LIMIT 1;
  IF v_w_096 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: verändern | verb'; END IF;
  SELECT id INTO v_w_097 FROM words WHERE course_id=v_course AND lemma='verbessern' AND part_of_speech='verb' AND translation='بهتر کردن / بهتر شدن' ORDER BY id LIMIT 1;
  IF v_w_097 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'verbessern','verbessern','verb','بهتر کردن / بهتر شدن',48,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"heißen","translation":"نام داشتن"},{"text":"freuen","translation":"خوشحال کردن / خوشحال شدن"},{"text":"kommen","translation":"آمدن"},{"text":"sein","translation":"بودن"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_097=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_098 FROM words WHERE course_id=v_course AND lemma='viel' AND part_of_speech='adverb' AND translation='خیلی' ORDER BY id LIMIT 1;
  IF v_w_098 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'viel','viel','adverb','خیلی',48,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_098=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_099 FROM words WHERE course_id=v_course AND lemma='was' AND part_of_speech='pronoun' AND translation='چی / چه' ORDER BY id LIMIT 1;
  IF v_w_099 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: was | pronoun'; END IF;
  SELECT id INTO v_w_100 FROM words WHERE course_id=v_course AND lemma='Weber' AND part_of_speech='proper_noun' AND translation='وبر' ORDER BY id LIMIT 1;
  IF v_w_100 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Weber | proper_noun'; END IF;
  SELECT id INTO v_w_101 FROM words WHERE course_id=v_course AND lemma='wie' AND part_of_speech='adverb' AND translation='چطور / چگونه' ORDER BY id LIMIT 1;
  IF v_w_101 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wie | adverb'; END IF;
  SELECT id INTO v_w_102 FROM words WHERE course_id=v_course AND lemma='wir' AND part_of_speech='pronoun' AND translation='ما' ORDER BY id LIMIT 1;
  IF v_w_102 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wir | pronoun'; END IF;
  SELECT id INTO v_w_103 FROM words WHERE course_id=v_course AND lemma='wirklich' AND part_of_speech='adverb' AND translation='واقعا' ORDER BY id LIMIT 1;
  IF v_w_103 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'wirklich','wirklich','adverb','واقعا',48,'{"type":"adverb"}','[{"text":"wie","translation":"چطور / چگونه"},{"text":"später","translation":"بعدا"},{"text":"woher","translation":"از کجا"},{"text":"sehr","translation":"خیلی / بسیار"},{"text":"so","translation":"این طور / آن طور"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_103=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_104 FROM words WHERE course_id=v_course AND lemma='wohl' AND part_of_speech='adjective' AND translation='راحت تر' ORDER BY id LIMIT 1;
  IF v_w_104 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'wohl','wohl','adjective','راحت تر',48,'{"type":"adjective"}','[{"text":"gut","translation":"خوب"},{"text":"super","translation":"عالی"},{"text":"alt","translation":"پیر / دارای سن"},{"text":"spät","translation":"دیر"},{"text":"rot","translation":"قرمز"}]','Seit wir hier wohnen, ist es ruhiger','از وقتی اینجا زندگی می کنیم آروم تر شده',NULL,NULL,'{"cefr":"B1","introducedInSeries":92}');
    SET v_w_104=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_105 FROM words WHERE course_id=v_course AND lemma='wohnen' AND part_of_speech='verb' AND translation='زندگی کردن / ساکن بودن' ORDER BY id LIMIT 1;
  IF v_w_105 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wohnen | verb'; END IF;
  SELECT id INTO v_w_106 FROM words WHERE course_id=v_course AND lemma='Wohnung' AND part_of_speech='noun' AND translation='خانه / آپارتمان' ORDER BY id LIMIT 1;
  IF v_w_106 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Wohnung | noun'; END IF;
  SELECT id INTO v_w_107 FROM words WHERE course_id=v_course AND lemma='Zeit' AND part_of_speech='noun' AND translation='وقت / زمان' ORDER BY id LIMIT 1;
  IF v_w_107 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Zeit | noun'; END IF;
  SELECT id INTO v_w_108 FROM words WHERE course_id=v_course AND lemma='zu' AND part_of_speech='particle' AND translation='بیش از حد / خیلی' ORDER BY id LIMIT 1;
  IF v_w_108 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zu | particle'; END IF;
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_jonas,v_c_anna,'Ein ruhiger Morgen','یک صبح آرام','Anna und Jonas merken, dass es nach dem Gespräch deutlich ruhiger geworden ist.','آنا و یوناس متوجه می شوند که بعد از گفتگو ساختمان خیلی آرام تر شده است.','story','anna-jonas-b1-neighborhood',5,48,155,1,'validated','{"relationship":"couple","context":"life-since-moving-in","cefr":"B1","storyArc":"notice-belong-adapt-reflect"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_jonas,1,'character','Hast du heute Morgen den Nachbarn gehört?','امروز صبح صدای همسایه رو شنیدی؟',48,NULL,NULL,NULL,NULL,'[{"form":"present_2sg","lemma":"haben","partOfSpeech":"verb","surface":"Hast","translation":"داشتن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"heute","partOfSpeech":"adverb","surface":"heute","translation":"امروز"},{"lemma":"Morgen","partOfSpeech":"noun","surface":"Morgen","translation":"صبح"},{"form":"accusative_masculine","lemma":"der","partOfSpeech":"article","surface":"den","translation":"حرف تعریف"},{"form":"accusative","lemma":"Nachbar","partOfSpeech":"noun","surface":"Nachbarn","translation":"همسایه"},{"form":"participle_II","lemma":"hören","partOfSpeech":"verb","suffix":"?","surface":"gehört","translation":"گوش دادن"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,2,'learner','Nein, seit gestern hören wir fast nichts mehr.','نه، از دیروز تقریبا دیگه چیزی نمی شنویم.',48,NULL,NULL,'nein seit gestern hören wir fast nichts mehr',NULL,'[{"lemma":"nein","partOfSpeech":"interjection","suffix":",","surface":"Nein","translation":"نه"},{"lemma":"seit","partOfSpeech":"preposition","surface":"seit","translation":"از / از زمان"},{"lemma":"gestern","partOfSpeech":"adverb","surface":"gestern","translation":"دیروز"},{"form":"present_1pl","lemma":"hören","partOfSpeech":"verb","surface":"hören","translation":"گوش دادن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"fast","partOfSpeech":"adverb","surface":"fast","translation":"تقریبا"},{"lemma":"nichts","partOfSpeech":"pronoun","surface":"nichts","translation":"هیچ چیز"},{"lemma":"mehr","partOfSpeech":"adverb","suffix":".","surface":"mehr","translation":"دیگه / بیشتر"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_jonas,3,'character','Der neue Teppich scheint wirklich zu helfen.','به نظر میاد فرش جدید واقعا کمک کرده.',48,NULL,NULL,NULL,NULL,'[{"form":"nominative_masculine","lemma":"der","partOfSpeech":"article","surface":"Der","translation":"حرف تعریف"},{"form":"inflected","lemma":"neu","partOfSpeech":"adjective","surface":"neue","translation":"جدید / تازه"},{"lemma":"Teppich","partOfSpeech":"noun","surface":"Teppich","translation":"فرش"},{"form":"present_3sg","lemma":"scheinen","partOfSpeech":"verb","surface":"scheint","translation":"به نظر رسیدن"},{"lemma":"wirklich","partOfSpeech":"adverb","surface":"wirklich","translation":"واقعا"},{"lemma":"zu","partOfSpeech":"particle","surface":"zu","translation":"بیش از حد / خیلی"},{"form":"infinitive","lemma":"helfen","partOfSpeech":"verb","suffix":".","surface":"helfen","translation":"کمک کردن"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,4,'learner','Seit Herr Weber den Teppich gekauft hat, ist es viel ruhiger.','از وقتی آقای وبر فرش رو خریده، خیلی آروم تر شده.',48,NULL,NULL,'seit herr weber den teppich gekauft hat ist es viel ruhiger',NULL,'[{"lemma":"seit","partOfSpeech":"conjunction","surface":"Seit","translation":"از وقتی"},{"lemma":"Herr","partOfSpeech":"noun","surface":"Herr","translation":"آقا"},{"lemma":"Weber","partOfSpeech":"proper_noun","surface":"Weber","translation":"وبر"},{"form":"accusative_masculine","lemma":"der","partOfSpeech":"article","surface":"den","translation":"حرف تعریف"},{"lemma":"Teppich","partOfSpeech":"noun","surface":"Teppich","translation":"فرش"},{"form":"participle_II","lemma":"kaufen","partOfSpeech":"verb","surface":"gekauft","translation":"خریدن"},{"form":"present_3sg","lemma":"haben","partOfSpeech":"verb","suffix":",","surface":"hat","translation":"داشتن"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"ist","translation":"بودن"},{"lemma":"es","partOfSpeech":"pronoun","surface":"es","translation":"آن / این"},{"lemma":"viel","partOfSpeech":"adverb","surface":"viel","translation":"خیلی"},{"form":"comparative","lemma":"ruhig","partOfSpeech":"adjective","suffix":".","surface":"ruhiger","translation":"آرام"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_jonas,5,'character','Dann hat unser Gespräch etwas verändert.','پس گفتگوی ما چیزی رو تغییر داده.',48,NULL,NULL,NULL,NULL,'[{"lemma":"dann","partOfSpeech":"adverb","surface":"Dann","translation":"بعد / سپس"},{"form":"present_3sg","lemma":"haben","partOfSpeech":"verb","surface":"hat","translation":"داشتن"},{"form":"nominative_neuter","lemma":"unser","partOfSpeech":"determiner","surface":"unser","translation":"مال ما / ما"},{"lemma":"Gespräch","partOfSpeech":"noun","surface":"Gespräch","translation":"گفتگو"},{"lemma":"etwas","partOfSpeech":"pronoun","surface":"etwas","translation":"چیزی / یک چیزی"},{"form":"participle_II","lemma":"verändern","partOfSpeech":"verb","suffix":".","surface":"verändert","translation":"تغییر دادن"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,6,'learner','Ja, und er war dabei sehr freundlich.','آره، و خودش هم خیلی دوستانه برخورد کرد.',48,NULL,NULL,'ja und er war dabei sehr freundlich',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"und","partOfSpeech":"conjunction","surface":"und","translation":"و"},{"lemma":"er","partOfSpeech":"pronoun","surface":"er","translation":"او (مذکر)"},{"form":"preterite_3sg","lemma":"sein","partOfSpeech":"verb","surface":"war","translation":"بودن"},{"lemma":"dabei","partOfSpeech":"adverb","surface":"dabei","translation":"در این میان"},{"lemma":"sehr","partOfSpeech":"adverb","surface":"sehr","translation":"خیلی / بسیار"},{"lemma":"freundlich","partOfSpeech":"adjective","suffix":".","surface":"freundlich","translation":"دوستانه / مهربان"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_031,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_014,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_036,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_058,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_012,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_061,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_038,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_063,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_077,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_029,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_102,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_022,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_065,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_054,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_064,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_089,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_072,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_103,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_108,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_033,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_076,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_034,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_100,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_048,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_075,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_020,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_098,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_071,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_011,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_095,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_028,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_021,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_096,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_044,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_094,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_019,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_010,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_074,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_025,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_078,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_078,'عبارت کلیدی درس',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',2,NULL,v_w_072,'واژه کلیدی درس',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',3,v_t_1,NULL,'به جمله یوناس گوش کن',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',4,v_t_2,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',5,v_t_3,NULL,'به جمله بعدی گوش کن',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',6,v_t_4,NULL,'پاسخ را با صدای بلند بگو',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',7,NULL,v_w_072,'معنی واژه کلیدی را انتخاب کن',NULL,48,'{"mode":"word_translation","question":"scheinen در این درس چه معنی دارد؟","choices":["به نظر رسیدن","رفتن","نام داشتن"],"correctIndex":0}','{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,48,'{"source":"lesson_story","question":"چه چیزی باعث شده ساختمان آرام تر شود؟","choices":["فرش جدید آقای وبر","خاموش شدن آسانسور","تعویض در ورودی"],"correctIndex":0}','{"cefr":"B1","series":92}');
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_jonas,v_c_anna,'Sich zu Hause fühlen','احساس راحتی در خانه','Die beiden vergleichen ihren Alltag vor und nach dem Umzug.','آن دو زندگی روزمره پیش و پس از اسباب کشی را مقایسه می کنند.','story','anna-jonas-b1-neighborhood',6,48,155,2,'validated','{"relationship":"couple","context":"life-since-moving-in","cefr":"B1","storyArc":"notice-belong-adapt-reflect"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_jonas,1,'character','Wie gefällt dir die Wohnung inzwischen?','حالا از این خونه خوشت میاد؟',48,NULL,NULL,NULL,NULL,'[{"lemma":"wie","partOfSpeech":"adverb","surface":"Wie","translation":"چطور / چگونه"},{"form":"present_3sg","lemma":"gefallen","partOfSpeech":"verb","surface":"gefällt","translation":"خوش آمدن"},{"form":"dative","lemma":"du","partOfSpeech":"pronoun","surface":"dir","translation":"تو"},{"form":"plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Wohnung","partOfSpeech":"noun","surface":"Wohnung","translation":"خانه / آپارتمان"},{"lemma":"inzwischen","partOfSpeech":"adverb","suffix":"?","surface":"inzwischen","translation":"تا حالا / اکنون"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,2,'learner','Ich fühle mich wohler, seit ich die Nachbarn kenne.','از وقتی همسایه ها رو می شناسم، احساس راحتی بیشتری دارم.',48,NULL,NULL,'ich fühle mich wohler seit ich die nachbarn kenne',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"sich fühlen","partOfSpeech":"verb","surface":"fühle","translation":"احساس کردن"},{"form":"accusative_1sg","lemma":"sich","partOfSpeech":"pronoun","surface":"mich","translation":"خود / خودش"},{"form":"comparative","lemma":"wohl","partOfSpeech":"adjective","suffix":",","surface":"wohler","translation":"راحت تر"},{"lemma":"seit","partOfSpeech":"conjunction","surface":"seit","translation":"از وقتی"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"accusative","lemma":"Nachbar","partOfSpeech":"noun","surface":"Nachbarn","translation":"همسایه"},{"form":"present_1sg","lemma":"kennen","partOfSpeech":"verb","suffix":".","surface":"kenne","translation":"شناختن"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_jonas,3,'character','Am Anfang war hier alles fremd.','اوایل اینجا همه چیز غریبه بود.',48,NULL,NULL,NULL,NULL,'[{"form":"an_dem","lemma":"an","partOfSpeech":"preposition","surface":"Am","translation":"در / در روز"},{"lemma":"Anfang","partOfSpeech":"noun","surface":"Anfang","translation":"آغاز"},{"form":"preterite_3sg","lemma":"sein","partOfSpeech":"verb","surface":"war","translation":"بودن"},{"lemma":"hier","partOfSpeech":"adverb","surface":"hier","translation":"اینجا"},{"lemma":"alles","partOfSpeech":"pronoun","surface":"alles","translation":"همه چیز"},{"lemma":"fremd","partOfSpeech":"adjective","suffix":".","surface":"fremd","translation":"غریبه / ناآشنا"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,4,'learner','Seit wir hier wohnen, kenne ich jeden Tag mehr Leute.','از وقتی اینجا زندگی می کنیم، هر روز آدم های بیشتری رو می شناسم.',48,NULL,NULL,'seit wir hier wohnen kenne ich jeden tag mehr leute',NULL,'[{"lemma":"seit","partOfSpeech":"conjunction","surface":"Seit","translation":"از وقتی"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"hier","partOfSpeech":"adverb","surface":"hier","translation":"اینجا"},{"form":"present_1pl","lemma":"wohnen","partOfSpeech":"verb","suffix":",","surface":"wohnen","translation":"زندگی کردن / ساکن بودن"},{"form":"present_1sg","lemma":"kennen","partOfSpeech":"verb","surface":"kenne","translation":"شناختن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"accusative_masculine","lemma":"jeder","partOfSpeech":"determiner","surface":"jeden","translation":"هر"},{"lemma":"Tag","partOfSpeech":"noun","surface":"Tag","translation":"روز"},{"lemma":"mehr","partOfSpeech":"adverb","surface":"mehr","translation":"دیگه / بیشتر"},{"lemma":"Leute","partOfSpeech":"noun","suffix":".","surface":"Leute","translation":"آدم ها"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_jonas,5,'character','Auch der Innenhof gefällt mir immer besser.','حیاط داخلی رو هم هر روز بیشتر دوست دارم.',48,NULL,NULL,NULL,NULL,'[{"lemma":"auch","partOfSpeech":"adverb","surface":"Auch","translation":"هم / همچنین"},{"form":"nominative_masculine","lemma":"der","partOfSpeech":"article","surface":"der","translation":"حرف تعریف"},{"lemma":"Innenhof","partOfSpeech":"noun","surface":"Innenhof","translation":"حیاط داخلی"},{"form":"present_3sg","lemma":"gefallen","partOfSpeech":"verb","surface":"gefällt","translation":"خوش آمدن"},{"form":"dative","lemma":"ich","partOfSpeech":"pronoun","surface":"mir","translation":"من"},{"lemma":"immer","partOfSpeech":"adverb","surface":"immer","translation":"همیشه / هرچه بیشتر"},{"form":"comparative","lemma":"gut","partOfSpeech":"adjective","suffix":".","surface":"besser","translation":"خوب"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,6,'learner','Dort treffe ich oft unsere Nachbarin Frau Klein.','اونجا زیاد همسایه مون خانم کلاین رو می بینم.',48,NULL,NULL,'dort treffe ich oft unsere nachbarin frau klein',NULL,'[{"lemma":"dort","partOfSpeech":"adverb","surface":"Dort","translation":"آنجا"},{"form":"present_1sg","lemma":"treffen","partOfSpeech":"verb","surface":"treffe","translation":"دیدن / ملاقات کردن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"oft","partOfSpeech":"adverb","surface":"oft","translation":"اغلب"},{"form":"accusative_feminine","lemma":"unser","partOfSpeech":"determiner","surface":"unsere","translation":"مال ما / ما"},{"lemma":"Nachbarin","partOfSpeech":"noun","surface":"Nachbarin","translation":"همسایه زن"},{"lemma":"Frau","partOfSpeech":"noun","surface":"Frau","translation":"خانم"},{"lemma":"Klein","partOfSpeech":"proper_noun","suffix":".","surface":"Klein","translation":"کلاین"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_101,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_027,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_014,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_012,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_106,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_043,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_039,'review',0,5);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_083,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_082,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_104,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_076,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_061,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_049,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_004,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_075,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_037,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_024,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_102,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_105,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_045,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_088,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_054,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_052,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_042,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_041,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_030,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_090,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_068,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_095,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_062,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_023,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_050,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_040,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_040,'عبارت کلیدی درس',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',2,NULL,v_w_027,'واژه کلیدی درس',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',3,v_t_7,NULL,'به جمله یوناس گوش کن',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',4,v_t_8,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',5,v_t_9,NULL,'به جمله بعدی گوش کن',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',6,v_t_10,NULL,'پاسخ را با صدای بلند بگو',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',7,NULL,v_w_027,'معنی واژه کلیدی را انتخاب کن',NULL,48,'{"mode":"word_translation","question":"gefallen در این درس چه معنی دارد؟","choices":["خوش آمدن","رفتن","نام داشتن"],"correctIndex":0}','{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,48,'{"source":"lesson_story","question":"چرا آنا در خانه احساس راحتی بیشتری دارد؟","choices":["شناختن همسایه ها","عوض کردن شغل","خریدن خودرو"],"correctIndex":0}','{"cefr":"B1","series":92}');
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_jonas,v_c_anna,'Neue Gewohnheiten','عادت های تازه','Anna und Jonas sprechen über neue Gewohnheiten in ihrem Wohnhaus.','آنا و یوناس درباره عادت های تازه شان در ساختمان صحبت می کنند.','story','anna-jonas-b1-neighborhood',7,48,155,3,'validated','{"relationship":"couple","context":"life-since-moving-in","cefr":"B1","storyArc":"notice-belong-adapt-reflect"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_jonas,1,'character','Du bist morgens jetzt viel entspannter.','حالا صبح ها خیلی آرام تری.',48,NULL,NULL,NULL,NULL,'[{"lemma":"du","partOfSpeech":"pronoun","surface":"Du","translation":"تو"},{"form":"present_2sg","lemma":"sein","partOfSpeech":"verb","surface":"bist","translation":"بودن"},{"lemma":"morgens","partOfSpeech":"adverb","surface":"morgens","translation":"صبح ها"},{"lemma":"jetzt","partOfSpeech":"adverb","surface":"jetzt","translation":"حالا / اکنون"},{"lemma":"viel","partOfSpeech":"adverb","surface":"viel","translation":"خیلی"},{"form":"comparative","lemma":"entspannt","partOfSpeech":"adjective","suffix":".","surface":"entspannter","translation":"آرام تر"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,2,'learner','Seit ich früher aufstehe, habe ich morgens mehr Zeit.','از وقتی زودتر بیدار می شم، صبح ها وقت بیشتری دارم.',48,NULL,NULL,'seit ich früher aufstehe habe ich morgens mehr zeit',NULL,'[{"lemma":"seit","partOfSpeech":"conjunction","surface":"Seit","translation":"از وقتی"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"comparative","lemma":"früh","partOfSpeech":"adverb","surface":"früher","translation":"زودتر"},{"form":"present_1sg","lemma":"aufstehen","partOfSpeech":"verb","suffix":",","surface":"aufstehe","translation":"از خواب بلند شدن"},{"form":"present_1sg","lemma":"haben","partOfSpeech":"verb","surface":"habe","translation":"داشتن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"morgens","partOfSpeech":"adverb","surface":"morgens","translation":"صبح ها"},{"lemma":"mehr","partOfSpeech":"adverb","surface":"mehr","translation":"دیگه / بیشتر"},{"lemma":"Zeit","partOfSpeech":"noun","suffix":".","surface":"Zeit","translation":"وقت / زمان"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_jonas,3,'character','Trinkst du noch Kaffee auf dem Balkon?','هنوز توی بالکن قهوه می خوری؟',48,NULL,NULL,NULL,NULL,'[{"form":"present_2sg","lemma":"trinken","partOfSpeech":"verb","surface":"Trinkst","translation":"نوشیدن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"noch","partOfSpeech":"adverb","surface":"noch","translation":"هنوز"},{"lemma":"Kaffee","partOfSpeech":"noun","surface":"Kaffee","translation":"قهوه"},{"lemma":"auf","partOfSpeech":"preposition","surface":"auf","translation":"روی / برای"},{"form":"dative_neuter","lemma":"der","partOfSpeech":"article","surface":"dem","translation":"حرف تعریف"},{"lemma":"Balkon","partOfSpeech":"noun","suffix":"?","surface":"Balkon","translation":"بالکن"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,4,'learner','Ja, seit es ruhiger ist, sitze ich dort jeden Morgen.','آره، از وقتی آروم تر شده، هر صبح اونجا می شینم.',48,NULL,NULL,'ja seit es ruhiger ist sitze ich dort jeden morgen',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"seit","partOfSpeech":"conjunction","surface":"seit","translation":"از وقتی"},{"lemma":"es","partOfSpeech":"pronoun","surface":"es","translation":"آن / این"},{"form":"comparative","lemma":"ruhig","partOfSpeech":"adjective","surface":"ruhiger","translation":"آرام"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","suffix":",","surface":"ist","translation":"بودن"},{"form":"present_1sg","lemma":"sitzen","partOfSpeech":"verb","surface":"sitze","translation":"نشستن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"dort","partOfSpeech":"adverb","surface":"dort","translation":"آنجا"},{"form":"accusative_masculine","lemma":"jeder","partOfSpeech":"determiner","surface":"jeden","translation":"هر"},{"lemma":"Morgen","partOfSpeech":"noun","suffix":".","surface":"Morgen","translation":"صبح"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_jonas,5,'character','Das klingt nach einem guten Start.','این شروع خوبی به نظر میاد.',48,NULL,NULL,NULL,NULL,'[{"form":"neuter","lemma":"der","partOfSpeech":"article","surface":"Das","translation":"حرف تعریف"},{"form":"present_3sg","lemma":"klingen","partOfSpeech":"verb","surface":"klingt","translation":"به نظر رسیدن"},{"lemma":"nach","partOfSpeech":"preposition","surface":"nach","translation":"پس از / به"},{"form":"dative_neuter","lemma":"ein","partOfSpeech":"article","surface":"einem","translation":"یک / حرف تعریف نامعین"},{"form":"accusative_masculine","lemma":"gut","partOfSpeech":"adjective","surface":"guten","translation":"خوب"},{"lemma":"Start","partOfSpeech":"noun","suffix":".","surface":"Start","translation":"شروع"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,6,'learner','Seitdem beginne ich den Tag ohne Stress.','از اون موقع روزم رو بدون استرس شروع می کنم.',48,NULL,NULL,'seitdem beginne ich den tag ohne stress',NULL,'[{"lemma":"seitdem","partOfSpeech":"adverb","surface":"Seitdem","translation":"از آن زمان"},{"form":"present_1sg","lemma":"beginnen","partOfSpeech":"verb","surface":"beginne","translation":"شروع شدن / آغاز کردن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"accusative_masculine","lemma":"der","partOfSpeech":"article","surface":"den","translation":"حرف تعریف"},{"lemma":"Tag","partOfSpeech":"noun","surface":"Tag","translation":"روز"},{"lemma":"ohne","partOfSpeech":"preposition","surface":"ohne","translation":"بدون"},{"lemma":"Stress","partOfSpeech":"noun","suffix":".","surface":"Stress","translation":"استرس"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_014,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_075,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_059,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_046,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_098,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_018,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_076,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_039,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_026,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_007,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_031,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_054,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_107,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_091,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_066,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_047,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_012,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_044,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_020,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_071,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_084,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_045,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_058,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_051,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_060,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_015,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_030,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_086,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_081,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_088,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_069,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_087,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_079,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_079,'عبارت کلیدی درس',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',2,NULL,v_w_059,'واژه کلیدی درس',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',3,v_t_13,NULL,'به جمله یوناس گوش کن',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',4,v_t_14,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',5,v_t_15,NULL,'به جمله بعدی گوش کن',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',6,v_t_16,NULL,'پاسخ را با صدای بلند بگو',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',7,NULL,v_w_059,'معنی واژه کلیدی را انتخاب کن',NULL,48,'{"mode":"word_translation","question":"morgens در این درس چه معنی دارد؟","choices":["صبح ها","چطور / چگونه","بعدا"],"correctIndex":0}','{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,48,'{"source":"lesson_story","question":"چه چیزی صبح های آنا را آرام تر کرده؟","choices":["زودتر بیدار شدن","کمتر خوابیدن","نخوردن صبحانه"],"correctIndex":0}','{"cefr":"B1","series":92}');
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_jonas,v_c_anna,'Eine gute Veränderung','یک تغییر خوب','Das Paar fasst zusammen, was sich seit dem Einzug verbessert hat.','این زوج جمع بندی می کنند که از زمان اسباب کشی چه چیزهایی بهتر شده است.','story','anna-jonas-b1-neighborhood',8,48,155,4,'validated','{"relationship":"couple","context":"life-since-moving-in","cefr":"B1","storyArc":"notice-belong-adapt-reflect"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_jonas,1,'character','Was hat sich seit unserem Einzug am meisten verbessert?','از زمان اسباب کشی ما چه چیزی بیشتر از همه بهتر شده؟',48,NULL,NULL,NULL,NULL,'[{"lemma":"was","partOfSpeech":"pronoun","surface":"Was","translation":"چی / چه"},{"form":"present_3sg","lemma":"haben","partOfSpeech":"verb","surface":"hat","translation":"داشتن"},{"lemma":"sich","partOfSpeech":"pronoun","surface":"sich","translation":"خود / خودش"},{"lemma":"seit","partOfSpeech":"preposition","surface":"seit","translation":"از / از زمان"},{"form":"dative_neuter","lemma":"unser","partOfSpeech":"determiner","surface":"unserem","translation":"مال ما / ما"},{"lemma":"Einzug","partOfSpeech":"noun","surface":"Einzug","translation":"اسباب کشی"},{"form":"an_dem","lemma":"an","partOfSpeech":"preposition","surface":"am","translation":"در / در روز"},{"form":"dative","lemma":"meist","partOfSpeech":"adjective","surface":"meisten","translation":"بیشترین"},{"form":"participle_II","lemma":"verbessern","partOfSpeech":"verb","suffix":"?","surface":"verbessert","translation":"بهتر کردن / بهتر شدن"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,2,'learner','Wir kennen jetzt die Menschen, die um uns herum wohnen.','حالا آدم هایی رو می شناسیم که اطراف ما زندگی می کنند.',48,NULL,NULL,'wir kennen jetzt die menschen die um uns herum wohnen',NULL,'[{"lemma":"wir","partOfSpeech":"pronoun","surface":"Wir","translation":"ما"},{"form":"present_1pl","lemma":"kennen","partOfSpeech":"verb","surface":"kennen","translation":"شناختن"},{"lemma":"jetzt","partOfSpeech":"adverb","surface":"jetzt","translation":"حالا / اکنون"},{"form":"plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"form":"plural","lemma":"Mensch","partOfSpeech":"noun","suffix":",","surface":"Menschen","translation":"آدم / انسان"},{"form":"plural","lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"um","partOfSpeech":"preposition","surface":"um","translation":"در ساعت / حوالی"},{"form":"dative","lemma":"wir","partOfSpeech":"pronoun","surface":"uns","translation":"ما"},{"lemma":"herum","partOfSpeech":"adverb","surface":"herum","translation":"اطراف"},{"form":"present_1pl","lemma":"wohnen","partOfSpeech":"verb","suffix":".","surface":"wohnen","translation":"زندگی کردن / ساکن بودن"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_20=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_jonas,3,'character','Und wir sprechen Probleme früher an.','و مشکل ها رو زودتر مطرح می کنیم.',48,NULL,NULL,NULL,NULL,'[{"lemma":"und","partOfSpeech":"conjunction","surface":"Und","translation":"و"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"form":"infinitive","lemma":"sprechen","partOfSpeech":"verb","surface":"sprechen","translation":"صحبت کردن / حرف زدن"},{"form":"plural","lemma":"Problem","partOfSpeech":"noun","surface":"Probleme","translation":"مشکل"},{"form":"comparative","lemma":"früh","partOfSpeech":"adverb","surface":"früher","translation":"زودتر"},{"lemma":"an","partOfSpeech":"particle","suffix":".","surface":"an","translation":"مطرح / آغاز"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_21=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,4,'learner','Seit wir offen miteinander sprechen, lösen wir Probleme schneller.','از وقتی با هم راحت حرف می زنیم، مشکل ها رو سریع تر حل می کنیم.',48,NULL,NULL,'seit wir offen miteinander sprechen lösen wir probleme schneller',NULL,'[{"lemma":"seit","partOfSpeech":"conjunction","surface":"Seit","translation":"از وقتی"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"offen","partOfSpeech":"adverb","surface":"offen","translation":"راحت / صریح"},{"lemma":"miteinander","partOfSpeech":"adverb","surface":"miteinander","translation":"با یکدیگر"},{"form":"infinitive","lemma":"sprechen","partOfSpeech":"verb","suffix":",","surface":"sprechen","translation":"صحبت کردن / حرف زدن"},{"form":"present_1pl","lemma":"lösen","partOfSpeech":"verb","surface":"lösen","translation":"حل کردن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"form":"plural","lemma":"Problem","partOfSpeech":"noun","surface":"Probleme","translation":"مشکل"},{"form":"comparative","lemma":"schnell","partOfSpeech":"adverb","suffix":".","surface":"schneller","translation":"سریع تر"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_22=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_jonas,5,'character','Dann war der Umzug eine gute Entscheidung.','پس اسباب کشی تصمیم خوبی بود.',48,NULL,NULL,NULL,NULL,'[{"lemma":"dann","partOfSpeech":"adverb","surface":"Dann","translation":"بعد / سپس"},{"form":"preterite_3sg","lemma":"sein","partOfSpeech":"verb","surface":"war","translation":"بودن"},{"form":"nominative_masculine","lemma":"der","partOfSpeech":"article","surface":"der","translation":"حرف تعریف"},{"lemma":"Umzug","partOfSpeech":"noun","surface":"Umzug","translation":"اسباب کشی"},{"form":"nominative_feminine","lemma":"ein","partOfSpeech":"article","surface":"eine","translation":"یک / حرف تعریف نامعین"},{"form":"nominative_feminine","lemma":"gut","partOfSpeech":"adjective","surface":"gute","translation":"خوب"},{"lemma":"Entscheidung","partOfSpeech":"noun","suffix":".","surface":"Entscheidung","translation":"تصمیم"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_23=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,6,'learner','Ja, inzwischen fühle ich mich hier wirklich zu Hause.','آره، حالا واقعا اینجا احساس می کنم خونه خودمه.',48,NULL,NULL,'ja inzwischen fühle ich mich hier wirklich zu hause',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"inzwischen","partOfSpeech":"adverb","surface":"inzwischen","translation":"تا حالا / اکنون"},{"form":"present_1sg","lemma":"sich fühlen","partOfSpeech":"verb","surface":"fühle","translation":"احساس کردن"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"accusative_1sg","lemma":"sich","partOfSpeech":"pronoun","surface":"mich","translation":"خود / خودش"},{"lemma":"hier","partOfSpeech":"adverb","surface":"hier","translation":"اینجا"},{"lemma":"wirklich","partOfSpeech":"adverb","surface":"wirklich","translation":"واقعا"},{"lemma":"zu","partOfSpeech":"particle","surface":"zu","translation":"بیش از حد / خیلی"},{"form":"dative","lemma":"Haus","partOfSpeech":"noun","suffix":".","surface":"Hause","translation":"خانه"}]','Seit-Sätze','در جمله وابسته با seit فعل صرف شده در پایان می آید.','{"focus":"seit_clause","timeRelation":"from_past_until_now"}','{"cefr":"B1","course":"de-fa","series":92}');
  SET v_t_24=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_099,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_031,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_082,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_077,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_095,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_016,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_055,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_097,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_102,'review',0,5);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_049,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_046,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_012,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_056,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_092,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_035,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_105,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_094,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_085,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_070,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_026,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_002,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_076,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_067,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_057,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_053,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_073,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_011,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_075,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_093,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_015,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_030,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_017,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_044,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_043,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_083,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_039,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_037,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_103,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_108,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_032,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_080,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',1,NULL,v_w_080,'عبارت کلیدی درس',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',2,NULL,v_w_016,'واژه کلیدی درس',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_19,NULL,'به جمله یوناس گوش کن',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_20,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_21,NULL,'به جمله بعدی گوش کن',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_22,NULL,'پاسخ را با صدای بلند بگو',NULL,48,NULL,'{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',7,NULL,v_w_016,'معنی واژه کلیدی را انتخاب کن',NULL,48,'{"mode":"word_translation","question":"Einzug در این درس چه معنی دارد؟","choices":["اسباب کشی","صبح","قهوه"],"correctIndex":0}','{"cefr":"B1","series":92}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,48,'{"source":"lesson_story","question":"آنا و یوناس حالا مشکل ها را چطور حل می کنند؟","choices":["با گفتگوی راحت و زودتر","با نادیده گرفتنشان","با ترک ساختمان"],"correctIndex":0}','{"cefr":"B1","series":92}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 092 requires exactly four lessons.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>24 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 092 requires exactly 24 turns.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR CHAR_LENGTH(TRIM(t.speech_target))=0);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every learner Turn needs speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities a JOIN lessons l ON l.id=a.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>32 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 092 requires exactly 32 activities.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id<>learner_character_id AND storyline_key='anna-jonas-b1-neighborhood' AND storyline_order BETWEEN 5 AND 8 AND status='validated';
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Character or storyline continuity failure.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) d;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_series_092_v9();
DROP PROCEDURE IF EXISTS import_nova_series_092_v9;

-- ===== SERIES 093 =====
-- NOVA v9.0 / B1 SERIES 093 / Könnten Sie bitte leiser sein?
-- Requires canonical v9.0 and validated Series 092. No schema DDL.
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_series_093_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_093_v9()
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
  DECLARE v_w_103 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_104 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_105 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_106 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_107 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_108 BIGINT UNSIGNED DEFAULT NULL;
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
  SELECT COUNT(*) INTO v_count FROM chapters WHERE module_id=v_module AND sort_order=2 AND status IN ('validated','complete');
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 092 must be validated.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons l JOIN chapters c ON c.id=l.chapter_id WHERE c.module_id=v_module AND c.sort_order=2 AND l.storyline_key='anna-jonas-b1-neighborhood' AND l.storyline_order BETWEEN 5 AND 8;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Storyline orders 5-8 required.'; END IF;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 03 Chapter 03 missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='Könnten Sie bitte leiser sein?' AND title_translation='می شه لطفا آروم تر باشید؟';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 093 canonical title mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 03 Chapter 03 must be empty before Series 093 import.'; END IF;
  SELECT id INTO v_c_jonas FROM characters WHERE course_id=v_course AND name='Jonas' AND gender='male' ORDER BY id LIMIT 1;
  SELECT id INTO v_c_anna FROM characters WHERE course_id=v_course AND name='Anna' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_jonas IS NULL OR v_c_anna IS NULL OR v_c_jonas=v_c_anna THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required distinct Characters Jonas and Anna missing.'; END IF;
  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='heute' AND part_of_speech='adverb' AND translation='امروز' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: heute | adverb'; END IF;
  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='Abend' AND part_of_speech='noun' AND translation='عصر / شب' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Abend | noun'; END IF;
  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sein | verb'; END IF;
  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: der | article'; END IF;
  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='Musik' AND part_of_speech='noun' AND translation='موسیقی' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Musik | noun'; END IF;
  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='wieder' AND part_of_speech='adverb' AND translation='دوباره' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wieder | adverb'; END IF;
  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='ziemlich' AND part_of_speech='adverb' AND translation='نسبتا / خیلی' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ziemlich | adverb'; END IF;
  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='laut' AND part_of_speech='adjective' AND translation='پر سر و صدا' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: laut | adjective'; END IF;
  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ich | pronoun'; END IF;
  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='sprechen' AND part_of_speech='verb' AND translation='صحبت کردن / حرف زدن' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sprechen | verb'; END IF;
  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='diesmal' AND part_of_speech='adverb' AND translation='این بار' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'diesmal','diesmal','adverb','این بار',48,'{"type":"adverb"}','[{"text":"gestern","translation":"دیروز"},{"text":"dort","translation":"آنجا"},{"text":"langsam","translation":"آهسته"},{"text":"sofort","translation":"فوراً"},{"text":"selten","translation":"به‌ندرت"}]','Könnten Sie bitte leiser sein?','می شه لطفا آروم تر باشید؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":93}');
    SET v_w_011=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='direkt' AND part_of_speech='adverb' AND translation='مستقیم' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'direkt','direkt','adverb','مستقیم',48,'{"type":"adverb"}','[{"text":"gestern","translation":"دیروز"},{"text":"dort","translation":"آنجا"},{"text":"langsam","translation":"آهسته"},{"text":"sofort","translation":"فوراً"},{"text":"selten","translation":"به‌ندرت"}]','Könnten Sie bitte leiser sein?','می شه لطفا آروم تر باشید؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":93}');
    SET v_w_012=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='mit' AND part_of_speech='preposition' AND translation='با' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: mit | preposition'; END IF;
  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='Herr' AND part_of_speech='noun' AND translation='آقا' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Herr | noun'; END IF;
  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='Weber' AND part_of_speech='noun' AND translation='وبر' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Weber','Weber','noun','وبر',48,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Zimmer","translation":"اتاق"}]','Könnten Sie bitte leiser sein?','می شه لطفا آروم تر باشید؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":93}');
    SET v_w_015=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_016 FROM words WHERE course_id=v_course AND lemma='möchten' AND part_of_speech='verb' AND translation='خواستن / مایل بودن' ORDER BY id LIMIT 1;
  IF v_w_016 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: möchten | verb'; END IF;
  SELECT id INTO v_w_017 FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_017 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: du | pronoun'; END IF;
  SELECT id INTO v_w_018 FROM words WHERE course_id=v_course AND lemma='dass' AND part_of_speech='conjunction' AND translation='که' ORDER BY id LIMIT 1;
  IF v_w_018 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dass | conjunction'; END IF;
  SELECT id INTO v_w_019 FROM words WHERE course_id=v_course AND lemma='mitkommen' AND part_of_speech='verb' AND translation='همراه آمدن' ORDER BY id LIMIT 1;
  IF v_w_019 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'mitkommen','mitkommen','verb','همراه آمدن',48,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"kommen","translation":"آمدن"},{"text":"sehen","translation":"دیدن"},{"text":"bleiben","translation":"ماندن"},{"text":"schreiben","translation":"نوشتن"}]','Könnten Sie bitte leiser sein?','می شه لطفا آروم تر باشید؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":93}');
    SET v_w_019=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_020 FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_020 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ja | interjection'; END IF;
  SELECT id INTO v_w_021 FROM words WHERE course_id=v_course AND lemma='das' AND part_of_speech='pronoun' AND translation='این / آن' ORDER BY id LIMIT 1;
  IF v_w_021 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: das | pronoun'; END IF;
  SELECT id INTO v_w_022 FROM words WHERE course_id=v_course AND lemma='hilfreich' AND part_of_speech='adjective' AND translation='کمک کننده' ORDER BY id LIMIT 1;
  IF v_w_022 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: hilfreich | adjective'; END IF;
  SELECT id INTO v_w_023 FROM words WHERE course_id=v_course AND lemma='was' AND part_of_speech='pronoun' AND translation='چی / چه' ORDER BY id LIMIT 1;
  IF v_w_023 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: was | pronoun'; END IF;
  SELECT id INTO v_w_024 FROM words WHERE course_id=v_course AND lemma='er' AND part_of_speech='pronoun' AND translation='او (مذکر)' ORDER BY id LIMIT 1;
  IF v_w_024 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: er | pronoun'; END IF;
  SELECT id INTO v_w_025 FROM words WHERE course_id=v_course AND lemma='sagen' AND part_of_speech='verb' AND translation='گفتن' ORDER BY id LIMIT 1;
  IF v_w_025 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sagen | verb'; END IF;
  SELECT id INTO v_w_026 FROM words WHERE course_id=v_course AND lemma='können' AND part_of_speech='verb' AND translation='توانستن / بتوان' ORDER BY id LIMIT 1;
  IF v_w_026 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: können | verb'; END IF;
  SELECT id INTO v_w_027 FROM words WHERE course_id=v_course AND lemma='Sie' AND part_of_speech='pronoun' AND translation='شما' ORDER BY id LIMIT 1;
  IF v_w_027 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Sie | pronoun'; END IF;
  SELECT id INTO v_w_028 FROM words WHERE course_id=v_course AND lemma='bitte' AND part_of_speech='interjection' AND translation='لطفا / خواهش می کنم' ORDER BY id LIMIT 1;
  IF v_w_028 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: bitte | interjection'; END IF;
  SELECT id INTO v_w_029 FROM words WHERE course_id=v_course AND lemma='leise' AND part_of_speech='adjective' AND translation='آرام / کم‌صدا' ORDER BY id LIMIT 1;
  IF v_w_029 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'leise','leise','adjective','آرام / کم‌صدا',48,'{"type":"adjective"}','[{"text":"schnell","translation":"سریع"},{"text":"teuer","translation":"گران"},{"text":"klein","translation":"کوچک"},{"text":"warm","translation":"گرم"},{"text":"dunkel","translation":"تاریک"}]','Könnten Sie bitte leiser sein?','می شه لطفا آروم تر باشید؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":93}');
    SET v_w_029=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_030 FROM words WHERE course_id=v_course AND lemma='fragen' AND part_of_speech='verb' AND translation='پرسیدن' ORDER BY id LIMIT 1;
  IF v_w_030 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: fragen | verb'; END IF;
  SELECT id INTO v_w_031 FROM words WHERE course_id=v_course AND lemma='bestimmt' AND part_of_speech='adverb' AND translation='حتماً / احتمالاً' ORDER BY id LIMIT 1;
  IF v_w_031 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'bestimmt','bestimmt','adverb','حتماً / احتمالاً',48,'{"type":"adverb"}','[{"text":"gestern","translation":"دیروز"},{"text":"dort","translation":"آنجا"},{"text":"langsam","translation":"آهسته"},{"text":"sofort","translation":"فوراً"},{"text":"selten","translation":"به‌ندرت"}]','Könnten Sie bitte leiser sein?','می شه لطفا آروم تر باشید؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":93}');
    SET v_w_031=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_032 FROM words WHERE course_id=v_course AND lemma='warum' AND part_of_speech='adverb' AND translation='چرا' ORDER BY id LIMIT 1;
  IF v_w_032 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: warum | adverb'; END IF;
  SELECT id INTO v_w_033 FROM words WHERE course_id=v_course AND lemma='wir' AND part_of_speech='pronoun' AND translation='ما' ORDER BY id LIMIT 1;
  IF v_w_033 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wir | pronoun'; END IF;
  SELECT id INTO v_w_034 FROM words WHERE course_id=v_course AND lemma='stören' AND part_of_speech='verb' AND translation='مزاحم بودن / اذیت کردن' ORDER BY id LIMIT 1;
  IF v_w_034 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: stören | verb'; END IF;
  SELECT id INTO v_w_035 FROM words WHERE course_id=v_course AND lemma='erklären' AND part_of_speech='verb' AND translation='توضیح دادن' ORDER BY id LIMIT 1;
  IF v_w_035 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: erklären | verb'; END IF;
  SELECT id INTO v_w_036 FROM words WHERE course_id=v_course AND lemma='morgen' AND part_of_speech='adverb' AND translation='فردا' ORDER BY id LIMIT 1;
  IF v_w_036 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: morgen | adverb'; END IF;
  SELECT id INTO v_w_037 FROM words WHERE course_id=v_course AND lemma='früh' AND part_of_speech='adverb' AND translation='زودتر' ORDER BY id LIMIT 1;
  IF v_w_037 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: früh | adverb'; END IF;
  SELECT id INTO v_w_038 FROM words WHERE course_id=v_course AND lemma='arbeiten' AND part_of_speech='verb' AND translation='کار کردن' ORDER BY id LIMIT 1;
  IF v_w_038 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: arbeiten | verb'; END IF;
  SELECT id INTO v_w_039 FROM words WHERE course_id=v_course AND lemma='müssen' AND part_of_speech='verb' AND translation='مجبور بودن / باید' ORDER BY id LIMIT 1;
  IF v_w_039 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: müssen | verb'; END IF;
  SELECT id INTO v_w_040 FROM words WHERE course_id=v_course AND lemma='auch' AND part_of_speech='adverb' AND translation='هم / همچنین' ORDER BY id LIMIT 1;
  IF v_w_040 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: auch | adverb'; END IF;
  SELECT id INTO v_w_041 FROM words WHERE course_id=v_course AND lemma='Schlafzimmer' AND part_of_speech='noun' AND translation='اتاق خواب' ORDER BY id LIMIT 1;
  IF v_w_041 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Schlafzimmer | noun'; END IF;
  SELECT id INTO v_w_042 FROM words WHERE course_id=v_course AND lemma='darunter' AND part_of_speech='adverb' AND translation='زیر آن' ORDER BY id LIMIT 1;
  IF v_w_042 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'darunter','darunter','adverb','زیر آن',48,'{"type":"adverb"}','[{"text":"gestern","translation":"دیروز"},{"text":"dort","translation":"آنجا"},{"text":"langsam","translation":"آهسته"},{"text":"sofort","translation":"فوراً"},{"text":"selten","translation":"به‌ندرت"}]','Könnten Sie bitte leiser sein?','می شه لطفا آروم تر باشید؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":93}');
    SET v_w_042=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_043 FROM words WHERE course_id=v_course AND lemma='liegen' AND part_of_speech='verb' AND translation='قرار داشتن' ORDER BY id LIMIT 1;
  IF v_w_043 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: liegen | verb'; END IF;
  SELECT id INTO v_w_044 FROM words WHERE course_id=v_course AND lemma='besonders' AND part_of_speech='adverb' AND translation='مخصوصا' ORDER BY id LIMIT 1;
  IF v_w_044 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: besonders | adverb'; END IF;
  SELECT id INTO v_w_045 FROM words WHERE course_id=v_course AND lemma='nach' AND part_of_speech='preposition' AND translation='پس از / به' ORDER BY id LIMIT 1;
  IF v_w_045 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: nach | preposition'; END IF;
  SELECT id INTO v_w_046 FROM words WHERE course_id=v_course AND lemma='zehn' AND part_of_speech='number' AND translation='ده' ORDER BY id LIMIT 1;
  IF v_w_046 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'zehn','zehn','number','ده',48,'{"type":"number"}','[{"text":"eins","translation":"یک"},{"text":"zwei","translation":"دو"},{"text":"drei","translation":"سه"},{"text":"vier","translation":"چهار"},{"text":"fünf","translation":"پنج"}]','Könnten Sie bitte leiser sein?','می شه لطفا آروم تر باشید؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":93}');
    SET v_w_046=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_047 FROM words WHERE course_id=v_course AND lemma='Uhr' AND part_of_speech='noun' AND translation='ساعت' ORDER BY id LIMIT 1;
  IF v_w_047 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Uhr | noun'; END IF;
  SELECT id INTO v_w_048 FROM words WHERE course_id=v_course AND lemma='klingen' AND part_of_speech='verb' AND translation='به نظر رسیدن' ORDER BY id LIMIT 1;
  IF v_w_048 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: klingen | verb'; END IF;
  SELECT id INTO v_w_049 FROM words WHERE course_id=v_course AND lemma='höflich' AND part_of_speech='adjective' AND translation='مؤدبانه' ORDER BY id LIMIT 1;
  IF v_w_049 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'höflich','höflich','adjective','مؤدبانه',48,'{"type":"adjective"}','[{"text":"schnell","translation":"سریع"},{"text":"teuer","translation":"گران"},{"text":"klein","translation":"کوچک"},{"text":"warm","translation":"گرم"},{"text":"dunkel","translation":"تاریک"}]','Könnten Sie bitte leiser sein?','می شه لطفا آروم تر باشید؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":93}');
    SET v_w_049=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_050 FROM words WHERE course_id=v_course AND lemma='und' AND part_of_speech='conjunction' AND translation='و' ORDER BY id LIMIT 1;
  IF v_w_050 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: und | conjunction'; END IF;
  SELECT id INTO v_w_051 FROM words WHERE course_id=v_course AND lemma='klar' AND part_of_speech='adjective' AND translation='روشن / مشخص' ORDER BY id LIMIT 1;
  IF v_w_051 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: klar | adjective'; END IF;
  SELECT id INTO v_w_052 FROM words WHERE course_id=v_course AND lemma='so' AND part_of_speech='adverb' AND translation='این طور / آن طور' ORDER BY id LIMIT 1;
  IF v_w_052 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: so | adverb'; END IF;
  SELECT id INTO v_w_053 FROM words WHERE course_id=v_course AND lemma='verstehen' AND part_of_speech='verb' AND translation='فهمیدن / متوجه شدن' ORDER BY id LIMIT 1;
  IF v_w_053 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: verstehen | verb'; END IF;
  SELECT id INTO v_w_054 FROM words WHERE course_id=v_course AND lemma='unser' AND part_of_speech='determiner' AND translation='مال ما / ما' ORDER BY id LIMIT 1;
  IF v_w_054 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: unser | determiner'; END IF;
  SELECT id INTO v_w_055 FROM words WHERE course_id=v_course AND lemma='Problem' AND part_of_speech='noun' AND translation='مشکل' ORDER BY id LIMIT 1;
  IF v_w_055 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Problem | noun'; END IF;
  SELECT id INTO v_w_056 FROM words WHERE course_id=v_course AND lemma='ohne' AND part_of_speech='preposition' AND translation='بدون' ORDER BY id LIMIT 1;
  IF v_w_056 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ohne | preposition'; END IF;
  SELECT id INTO v_w_057 FROM words WHERE course_id=v_course AND lemma='sich' AND part_of_speech='pronoun' AND translation='خود / خودش' ORDER BY id LIMIT 1;
  IF v_w_057 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sich | pronoun'; END IF;
  SELECT id INTO v_w_058 FROM words WHERE course_id=v_course AND lemma='angreifen' AND part_of_speech='verb' AND translation='حمله کردن' ORDER BY id LIMIT 1;
  IF v_w_058 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'angreifen','angreifen','verb','حمله کردن',48,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"kommen","translation":"آمدن"},{"text":"sehen","translation":"دیدن"},{"text":"bleiben","translation":"ماندن"},{"text":"schreiben","translation":"نوشتن"}]','Könnten Sie bitte leiser sein?','می شه لطفا آروم تر باشید؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":93}');
    SET v_w_058=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_059 FROM words WHERE course_id=v_course AND lemma='zu' AND part_of_speech='particle' AND translation='بیش از حد / خیلی' ORDER BY id LIMIT 1;
  IF v_w_059 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zu | particle'; END IF;
  SELECT id INTO v_w_060 FROM words WHERE course_id=v_course AND lemma='sich fühlen' AND part_of_speech='verb' AND translation='احساس کردن' ORDER BY id LIMIT 1;
  IF v_w_060 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sich fühlen | verb'; END IF;
  SELECT id INTO v_w_061 FROM words WHERE course_id=v_course AND lemma='abends' AND part_of_speech='adverb' AND translation='عصرها / شب ها' ORDER BY id LIMIT 1;
  IF v_w_061 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: abends | adverb'; END IF;
  SELECT id INTO v_w_062 FROM words WHERE course_id=v_course AND lemma='weiter' AND part_of_speech='adverb' AND translation='ادامه / بیشتر' ORDER BY id LIMIT 1;
  IF v_w_062 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: weiter | adverb'; END IF;
  SELECT id INTO v_w_063 FROM words WHERE course_id=v_course AND lemma='üben' AND part_of_speech='verb' AND translation='تمرین کردن' ORDER BY id LIMIT 1;
  IF v_w_063 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: üben | verb'; END IF;
  SELECT id INTO v_w_064 FROM words WHERE course_id=v_course AND lemma='dann' AND part_of_speech='adverb' AND translation='بعد / سپس' ORDER BY id LIMIT 1;
  IF v_w_064 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dann | adverb'; END IF;
  SELECT id INTO v_w_065 FROM words WHERE course_id=v_course AND lemma='gemeinsam' AND part_of_speech='adverb' AND translation='با هم / مشترک' ORDER BY id LIMIT 1;
  IF v_w_065 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: gemeinsam | adverb'; END IF;
  SELECT id INTO v_w_066 FROM words WHERE course_id=v_course AND lemma='ein' AND part_of_speech='article' AND translation='یک / حرف تعریف نامعین' ORDER BY id LIMIT 1;
  IF v_w_066 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ein | article'; END IF;
  SELECT id INTO v_w_067 FROM words WHERE course_id=v_course AND lemma='ruhig' AND part_of_speech='adjective' AND translation='آرام' ORDER BY id LIMIT 1;
  IF v_w_067 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ruhig | adjective'; END IF;
  SELECT id INTO v_w_068 FROM words WHERE course_id=v_course AND lemma='Zeit' AND part_of_speech='noun' AND translation='وقت / زمان' ORDER BY id LIMIT 1;
  IF v_w_068 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Zeit | noun'; END IF;
  SELECT id INTO v_w_069 FROM words WHERE course_id=v_course AND lemma='vereinbaren' AND part_of_speech='verb' AND translation='توافق کردن / تعیین کردن' ORDER BY id LIMIT 1;
  IF v_w_069 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'vereinbaren','vereinbaren','verb','توافق کردن / تعیین کردن',48,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"kommen","translation":"آمدن"},{"text":"sehen","translation":"دیدن"},{"text":"bleiben","translation":"ماندن"},{"text":"schreiben","translation":"نوشتن"}]','Könnten Sie bitte leiser sein?','می شه لطفا آروم تر باشید؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":93}');
    SET v_w_069=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_070 FROM words WHERE course_id=v_course AND lemma='vielleicht' AND part_of_speech='adverb' AND translation='شاید' ORDER BY id LIMIT 1;
  IF v_w_070 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: vielleicht | adverb'; END IF;
  SELECT id INTO v_w_071 FROM words WHERE course_id=v_course AND lemma='vor' AND part_of_speech='preposition' AND translation='از / جلوی' ORDER BY id LIMIT 1;
  IF v_w_071 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: vor | preposition'; END IF;
  SELECT id INTO v_w_072 FROM words WHERE course_id=v_course AND lemma='neun' AND part_of_speech='number' AND translation='نه' ORDER BY id LIMIT 1;
  IF v_w_072 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'neun','neun','number','نه',48,'{"type":"number"}','[{"text":"eins","translation":"یک"},{"text":"zwei","translation":"دو"},{"text":"drei","translation":"سه"},{"text":"vier","translation":"چهار"},{"text":"fünf","translation":"پنج"}]','Könnten Sie bitte leiser sein?','می شه لطفا آروم تر باشید؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":93}');
    SET v_w_072=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_073 FROM words WHERE course_id=v_course AND lemma='danach' AND part_of_speech='adverb' AND translation='بعد از آن / بعدش' ORDER BY id LIMIT 1;
  IF v_w_073 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: danach | adverb'; END IF;
  SELECT id INTO v_w_074 FROM words WHERE course_id=v_course AND lemma='Kopfhörer' AND part_of_speech='noun' AND translation='هدفون' ORDER BY id LIMIT 1;
  IF v_w_074 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Kopfhörer','Kopfhörer','noun','هدفون',48,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Zimmer","translation":"اتاق"}]','Könnten Sie bitte leiser sein?','می شه لطفا آروم تر باشید؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":93}');
    SET v_w_074=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_075 FROM words WHERE course_id=v_course AND lemma='benutzen' AND part_of_speech='verb' AND translation='استفاده کردن' ORDER BY id LIMIT 1;
  IF v_w_075 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'benutzen','benutzen','verb','استفاده کردن',48,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"kommen","translation":"آمدن"},{"text":"sehen","translation":"دیدن"},{"text":"bleiben","translation":"ماندن"},{"text":"schreiben","translation":"نوشتن"}]','Könnten Sie bitte leiser sein?','می شه لطفا آروم تر باشید؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":93}');
    SET v_w_075=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_076 FROM words WHERE course_id=v_course AND lemma='für' AND part_of_speech='preposition' AND translation='برای' ORDER BY id LIMIT 1;
  IF v_w_076 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: für | preposition'; END IF;
  SELECT id INTO v_w_077 FROM words WHERE course_id=v_course AND lemma='alle' AND part_of_speech='pronoun' AND translation='همه' ORDER BY id LIMIT 1;
  IF v_w_077 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'alle','alle','pronoun','همه',48,'{"type":"pronoun"}','[{"text":"ich","translation":"من"},{"text":"du","translation":"تو"},{"text":"er","translation":"او"},{"text":"sie","translation":"او / آن‌ها"},{"text":"wir","translation":"ما"}]','Könnten Sie bitte leiser sein?','می شه لطفا آروم تر باشید؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":93}');
    SET v_w_077=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_078 FROM words WHERE course_id=v_course AND lemma='angenehm' AND part_of_speech='adjective' AND translation='خوشایند' ORDER BY id LIMIT 1;
  IF v_w_078 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'angenehm','angenehm','adjective','خوشایند',48,'{"type":"adjective"}','[{"text":"schnell","translation":"سریع"},{"text":"teuer","translation":"گران"},{"text":"klein","translation":"کوچک"},{"text":"warm","translation":"گرم"},{"text":"dunkel","translation":"تاریک"}]','Könnten Sie bitte leiser sein?','می شه لطفا آروم تر باشید؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":93}');
    SET v_w_078=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_079 FROM words WHERE course_id=v_course AND lemma='dieser' AND part_of_speech='determiner' AND translation='این' ORDER BY id LIMIT 1;
  IF v_w_079 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dieser | determiner'; END IF;
  SELECT id INTO v_w_080 FROM words WHERE course_id=v_course AND lemma='Lösung' AND part_of_speech='noun' AND translation='راه حل' ORDER BY id LIMIT 1;
  IF v_w_080 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Lösung | noun'; END IF;
  SELECT id INTO v_w_081 FROM words WHERE course_id=v_course AND lemma='Woche' AND part_of_speech='noun' AND translation='هفته' ORDER BY id LIMIT 1;
  IF v_w_081 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Woche','Woche','noun','هفته',48,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Zimmer","translation":"اتاق"}]','Könnten Sie bitte leiser sein?','می شه لطفا آروم تر باشید؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":93}');
    SET v_w_081=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_082 FROM words WHERE course_id=v_course AND lemma='lang' AND part_of_speech='adjective' AND translation='طولانی / بلند' ORDER BY id LIMIT 1;
  IF v_w_082 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: lang | adjective'; END IF;
  SELECT id INTO v_w_083 FROM words WHERE course_id=v_course AND lemma='ausprobieren' AND part_of_speech='verb' AND translation='امتحان کردن' ORDER BY id LIMIT 1;
  IF v_w_083 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'ausprobieren','ausprobieren','verb','امتحان کردن',48,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"kommen","translation":"آمدن"},{"text":"sehen","translation":"دیدن"},{"text":"bleiben","translation":"ماندن"},{"text":"schreiben","translation":"نوشتن"}]','Könnten Sie bitte leiser sein?','می شه لطفا آروم تر باشید؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":93}');
    SET v_w_083=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_084 FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_084 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: haben | verb'; END IF;
  SELECT id INTO v_w_085 FROM words WHERE course_id=v_course AND lemma='Vorschlag' AND part_of_speech='noun' AND translation='پیشنهاد' ORDER BY id LIMIT 1;
  IF v_w_085 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Vorschlag','Vorschlag','noun','پیشنهاد',48,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Zimmer","translation":"اتاق"}]','Könnten Sie bitte leiser sein?','می شه لطفا آروم تر باشید؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":93}');
    SET v_w_085=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_086 FROM words WHERE course_id=v_course AND lemma='zustimmen' AND part_of_speech='verb' AND translation='موافقت کردن' ORDER BY id LIMIT 1;
  IF v_w_086 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'zustimmen','zustimmen','verb','موافقت کردن',48,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"kommen","translation":"آمدن"},{"text":"sehen","translation":"دیدن"},{"text":"bleiben","translation":"ماندن"},{"text":"schreiben","translation":"نوشتن"}]','Könnten Sie bitte leiser sein?','می شه لطفا آروم تر باشید؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":93}');
    SET v_w_086=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_087 FROM words WHERE course_id=v_course AND lemma='ab' AND part_of_speech='preposition' AND translation='از' ORDER BY id LIMIT 1;
  IF v_w_087 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'ab','ab','preposition','از',48,'{"type":"preposition"}','[{"text":"vor","translation":"پیش از"},{"text":"unter","translation":"زیر"},{"text":"neben","translation":"کنار"},{"text":"ohne","translation":"بدون"},{"text":"gegen","translation":"علیه"}]','Könnten Sie bitte leiser sein?','می شه لطفا آروم تر باشید؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":93}');
    SET v_w_087=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_088 FROM words WHERE course_id=v_course AND lemma='spielen' AND part_of_speech='verb' AND translation='نواختن / بازی کردن' ORDER BY id LIMIT 1;
  IF v_w_088 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'spielen','spielen','verb','نواختن / بازی کردن',48,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"kommen","translation":"آمدن"},{"text":"sehen","translation":"دیدن"},{"text":"bleiben","translation":"ماندن"},{"text":"schreiben","translation":"نوشتن"}]','Könnten Sie bitte leiser sein?','می شه لطفا آروم تر باشید؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":93}');
    SET v_w_088=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_089 FROM words WHERE course_id=v_course AND lemma='nicht' AND part_of_speech='particle' AND translation='نه / نیست' ORDER BY id LIMIT 1;
  IF v_w_089 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: nicht | particle'; END IF;
  SELECT id INTO v_w_090 FROM words WHERE course_id=v_course AND lemma='mehr' AND part_of_speech='adverb' AND translation='دیگه / بیشتر' ORDER BY id LIMIT 1;
  IF v_w_090 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: mehr | adverb'; END IF;
  SELECT id INTO v_w_091 FROM words WHERE course_id=v_course AND lemma='dafür' AND part_of_speech='adverb' AND translation='برای آن / برای این کار' ORDER BY id LIMIT 1;
  IF v_w_091 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dafür | adverb'; END IF;
  SELECT id INTO v_w_092 FROM words WHERE course_id=v_course AND lemma='dürfen' AND part_of_speech='verb' AND translation='اجازه داشتن' ORDER BY id LIMIT 1;
  IF v_w_092 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'dürfen','dürfen','verb','اجازه داشتن',48,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"kommen","translation":"آمدن"},{"text":"sehen","translation":"دیدن"},{"text":"bleiben","translation":"ماندن"},{"text":"schreiben","translation":"نوشتن"}]','Könnten Sie bitte leiser sein?','می شه لطفا آروم تر باشید؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":93}');
    SET v_w_092=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_093 FROM words WHERE course_id=v_course AND lemma='an' AND part_of_speech='preposition' AND translation='در / در روز' ORDER BY id LIMIT 1;
  IF v_w_093 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: an | preposition'; END IF;
  SELECT id INTO v_w_094 FROM words WHERE course_id=v_course AND lemma='Nachmittag' AND part_of_speech='noun' AND translation='بعدازظهر' ORDER BY id LIMIT 1;
  IF v_w_094 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Nachmittag','Nachmittag','noun','بعدازظهر',48,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Zimmer","translation":"اتاق"}]','Könnten Sie bitte leiser sein?','می شه لطفا آروم تر باشید؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":93}');
    SET v_w_094=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_095 FROM words WHERE course_id=v_course AND lemma='finden' AND part_of_speech='verb' AND translation='پیدا کردن' ORDER BY id LIMIT 1;
  IF v_w_095 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: finden | verb'; END IF;
  SELECT id INTO v_w_096 FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_096 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: gut | adjective'; END IF;
  SELECT id INTO v_w_097 FROM words WHERE course_id=v_course AND lemma='Kompromiss' AND part_of_speech='noun' AND translation='راه‌حل میانه / سازش' ORDER BY id LIMIT 1;
  IF v_w_097 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Kompromiss','Kompromiss','noun','راه‌حل میانه / سازش',48,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Zimmer","translation":"اتاق"}]','Könnten Sie bitte leiser sein?','می شه لطفا آروم تر باشید؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":93}');
    SET v_w_097=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_098 FROM words WHERE course_id=v_course AND lemma='Gespräch' AND part_of_speech='noun' AND translation='گفتگو' ORDER BY id LIMIT 1;
  IF v_w_098 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Gespräch | noun'; END IF;
  SELECT id INTO v_w_099 FROM words WHERE course_id=v_course AND lemma='freundlich' AND part_of_speech='adjective' AND translation='دوستانه / مهربان' ORDER BY id LIMIT 1;
  IF v_w_099 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: freundlich | adjective'; END IF;
  SELECT id INTO v_w_100 FROM words WHERE course_id=v_course AND lemma='Bitte' AND part_of_speech='noun' AND translation='درخواست' ORDER BY id LIMIT 1;
  IF v_w_100 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Bitte','Bitte','noun','درخواست',48,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Zimmer","translation":"اتاق"}]','Könnten Sie bitte leiser sein?','می شه لطفا آروم تر باشید؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":93}');
    SET v_w_100=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_101 FROM words WHERE course_id=v_course AND lemma='helfen' AND part_of_speech='verb' AND translation='کمک کردن' ORDER BY id LIMIT 1;
  IF v_w_101 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: helfen | verb'; END IF;
  SELECT id INTO v_w_102 FROM words WHERE course_id=v_course AND lemma='oft' AND part_of_speech='adverb' AND translation='اغلب' ORDER BY id LIMIT 1;
  IF v_w_102 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: oft | adverb'; END IF;
  SELECT id INTO v_w_103 FROM words WHERE course_id=v_course AND lemma='als' AND part_of_speech='conjunction' AND translation='از / نسبت به' ORDER BY id LIMIT 1;
  IF v_w_103 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: als | conjunction'; END IF;
  SELECT id INTO v_w_104 FROM words WHERE course_id=v_course AND lemma='Beschwerde' AND part_of_speech='noun' AND translation='شکایت' ORDER BY id LIMIT 1;
  IF v_w_104 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Beschwerde','Beschwerde','noun','شکایت',48,'{"type":"noun"}','[{"text":"Morgen","translation":"صبح"},{"text":"Kaffee","translation":"قهوه"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Zimmer","translation":"اتاق"}]','Könnten Sie bitte leiser sein?','می شه لطفا آروم تر باشید؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":93}');
    SET v_w_104=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_105 FROM words WHERE course_id=v_course AND lemma='Könnten Sie bitte leiser sein?' AND part_of_speech='phrase' AND translation='می‌شود لطفاً آرام‌تر باشید؟' ORDER BY id LIMIT 1;
  IF v_w_105 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Könnten Sie bitte leiser sein?','Könnten Sie bitte leiser sein?','phrase','می‌شود لطفاً آرام‌تر باشید؟',48,'{"type":"phrase"}','[{"text":"Guten Morgen.","translation":"صبح بخیر."},{"text":"Wie geht es dir?","translation":"حالت چطور است؟"},{"text":"Bis später.","translation":"تا بعد."},{"text":"Ich weiß es nicht.","translation":"نمی‌دانم."},{"text":"Das ist eine gute Idee.","translation":"این فکر خوبی است."}]','Könnten Sie bitte leiser sein?','می شه لطفا آروم تر باشید؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":93,"wordAudioEligible":false,"wordAudioEligibilityReason":"sentence_phrase"}');
    SET v_w_105=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_106 FROM words WHERE course_id=v_course AND lemma='So versteht er unser Problem, ohne sich angegriffen zu fühlen.' AND part_of_speech='phrase' AND translation='این‌طوری مشکل ما را می‌فهمد، بدون اینکه احساس کند به او حمله شده است.' ORDER BY id LIMIT 1;
  IF v_w_106 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'So versteht er unser Problem, ohne sich angegriffen zu fühlen.','So versteht er unser Problem, ohne sich angegriffen zu fühlen.','phrase','این‌طوری مشکل ما را می‌فهمد، بدون اینکه احساس کند به او حمله شده است.',48,'{"type":"phrase"}','[{"text":"Guten Morgen.","translation":"صبح بخیر."},{"text":"Wie geht es dir?","translation":"حالت چطور است؟"},{"text":"Bis später.","translation":"تا بعد."},{"text":"Ich weiß es nicht.","translation":"نمی‌دانم."},{"text":"Das ist eine gute Idee.","translation":"این فکر خوبی است."}]','Könnten Sie bitte leiser sein?','می شه لطفا آروم تر باشید؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":93,"wordAudioEligible":false,"wordAudioEligibilityReason":"sentence_phrase"}');
    SET v_w_106=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_107 FROM words WHERE course_id=v_course AND lemma='Wir könnten diese Lösung eine Woche lang ausprobieren.' AND part_of_speech='phrase' AND translation='می‌توانیم این راه‌حل را یک هفته امتحان کنیم.' ORDER BY id LIMIT 1;
  IF v_w_107 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Wir könnten diese Lösung eine Woche lang ausprobieren.','Wir könnten diese Lösung eine Woche lang ausprobieren.','phrase','می‌توانیم این راه‌حل را یک هفته امتحان کنیم.',48,'{"type":"phrase"}','[{"text":"Guten Morgen.","translation":"صبح بخیر."},{"text":"Wie geht es dir?","translation":"حالت چطور است؟"},{"text":"Bis später.","translation":"تا بعد."},{"text":"Ich weiß es nicht.","translation":"نمی‌دانم."},{"text":"Das ist eine gute Idee.","translation":"این فکر خوبی است."}]','Könnten Sie bitte leiser sein?','می شه لطفا آروم تر باشید؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":93,"wordAudioEligible":false,"wordAudioEligibilityReason":"sentence_phrase"}');
    SET v_w_107=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_108 FROM words WHERE course_id=v_course AND lemma='Höfliche Bitten helfen oft mehr als Beschwerden.' AND part_of_speech='phrase' AND translation='درخواست‌های مؤدبانه اغلب بیشتر از شکایت‌ها کمک می‌کنند.' ORDER BY id LIMIT 1;
  IF v_w_108 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Höfliche Bitten helfen oft mehr als Beschwerden.','Höfliche Bitten helfen oft mehr als Beschwerden.','phrase','درخواست‌های مؤدبانه اغلب بیشتر از شکایت‌ها کمک می‌کنند.',48,'{"type":"phrase"}','[{"text":"Guten Morgen.","translation":"صبح بخیر."},{"text":"Wie geht es dir?","translation":"حالت چطور است؟"},{"text":"Bis später.","translation":"تا بعد."},{"text":"Ich weiß es nicht.","translation":"نمی‌دانم."},{"text":"Das ist eine gute Idee.","translation":"این فکر خوبی است."}]','Könnten Sie bitte leiser sein?','می شه لطفا آروم تر باشید؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":93,"wordAudioEligible":false,"wordAudioEligibilityReason":"sentence_phrase"}');
    SET v_w_108=LAST_INSERT_ID();
  END IF;
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_jonas,v_c_anna,'Eine höfliche Bitte','یک درخواست مؤدبانه','Anna und Jonas bereiten ein ruhiges Gespräch mit ihrem Nachbarn vor.','آنا و یوناس برای گفت‌وگویی آرام با همسایه‌شان آماده می‌شوند.','story','anna-jonas-b1-neighborhood',9,48,160,1,'validated','{"relationship":"couple","context":"polite-neighbor-conversation","cefr":"B1","storyArc":"prepare-explain-compromise-resolve"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_jonas,1,'character','Heute Abend ist die Musik wieder ziemlich laut.','امشب دوباره صدای موسیقی خیلی بلند است.',48,NULL,NULL,NULL,NULL,'[{"surface":"Heute","lemma":"heute","translation":"امروز","partOfSpeech":"adverb"},{"surface":"Abend","lemma":"Abend","translation":"عصر / شب","partOfSpeech":"noun"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","form":"present_3sg"},{"surface":"die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"nominative_feminine"},{"surface":"Musik","lemma":"Musik","translation":"موسیقی","partOfSpeech":"noun"},{"surface":"wieder","lemma":"wieder","translation":"دوباره","partOfSpeech":"adverb"},{"surface":"ziemlich","lemma":"ziemlich","translation":"نسبتا / خیلی","partOfSpeech":"adverb"},{"surface":"laut","lemma":"laut","translation":"پر سر و صدا","partOfSpeech":"adjective","suffix":"."}]','Höflicher Konjunktiv II','با könnten و wäre می‌توان درخواست یا پیشنهاد را مؤدبانه و غیرمستقیم بیان کرد.','{"focus":"polite_konjunktiv_II","forms":["könnten","könnte","wäre"]}','{"cefr":"B1","course":"de-fa","series":93}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,2,'learner','Ich spreche diesmal direkt mit Herrn Weber.','این بار مستقیم با آقای وبر صحبت می‌کنم.',48,NULL,NULL,'ich spreche diesmal direkt mit herrn weber',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"spreche","lemma":"sprechen","translation":"صحبت کردن / حرف زدن","partOfSpeech":"verb","form":"present_1sg"},{"surface":"diesmal","lemma":"diesmal","translation":"این بار","partOfSpeech":"adverb"},{"surface":"direkt","lemma":"direkt","translation":"مستقیم","partOfSpeech":"adverb"},{"surface":"mit","lemma":"mit","translation":"با","partOfSpeech":"preposition"},{"surface":"Herrn","lemma":"Herr","translation":"آقا","partOfSpeech":"noun","form":"dative"},{"surface":"Weber","lemma":"Weber","translation":"وبر","partOfSpeech":"noun","suffix":"."}]','Höflicher Konjunktiv II','با könnten و wäre می‌توان درخواست یا پیشنهاد را مؤدبانه و غیرمستقیم بیان کرد.','{"focus":"polite_konjunktiv_II","forms":["könnten","könnte","wäre"]}','{"cefr":"B1","course":"de-fa","series":93}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_jonas,3,'character','Möchtest du, dass ich mitkomme?','می‌خواهی من هم همراهت بیایم؟',48,NULL,NULL,NULL,NULL,'[{"surface":"Möchtest","lemma":"möchten","translation":"خواستن / مایل بودن","partOfSpeech":"verb","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun","suffix":","},{"surface":"dass","lemma":"dass","translation":"که","partOfSpeech":"conjunction"},{"surface":"ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"mitkomme","lemma":"mitkommen","translation":"همراه آمدن","partOfSpeech":"verb","form":"present_1sg","suffix":"?"}]','Höflicher Konjunktiv II','با könnten و wäre می‌توان درخواست یا پیشنهاد را مؤدبانه و غیرمستقیم بیان کرد.','{"focus":"polite_konjunktiv_II","forms":["könnten","könnte","wäre"]}','{"cefr":"B1","course":"de-fa","series":93}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,4,'learner','Ja, das wäre hilfreich.','بله، این کمک‌کننده بود.',48,NULL,NULL,'ja das wäre hilfreich',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"das","lemma":"das","translation":"این / آن","partOfSpeech":"pronoun"},{"surface":"wäre","lemma":"sein","translation":"بودن","partOfSpeech":"verb","form":"konjunktiv_II_3sg"},{"surface":"hilfreich","lemma":"hilfreich","translation":"کمک کننده","partOfSpeech":"adjective","suffix":"."}]','Höflicher Konjunktiv II','با könnten و wäre می‌توان درخواست یا پیشنهاد را مؤدبانه و غیرمستقیم بیان کرد.','{"focus":"polite_konjunktiv_II","forms":["könnten","könnte","wäre"]}','{"cefr":"B1","course":"de-fa","series":93}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_jonas,5,'character','Was möchtest du ihm sagen?','می‌خواهی به او چه بگویی؟',48,NULL,NULL,NULL,NULL,'[{"surface":"Was","lemma":"was","translation":"چی / چه","partOfSpeech":"pronoun"},{"surface":"möchtest","lemma":"möchten","translation":"خواستن / مایل بودن","partOfSpeech":"verb","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"ihm","lemma":"er","translation":"او (مذکر)","partOfSpeech":"pronoun","form":"dative_masculine"},{"surface":"sagen","lemma":"sagen","translation":"گفتن","partOfSpeech":"verb","form":"infinitive","suffix":"?"}]','Höflicher Konjunktiv II','با könnten و wäre می‌توان درخواست یا پیشنهاد را مؤدبانه و غیرمستقیم بیان کرد.','{"focus":"polite_konjunktiv_II","forms":["könnten","könnte","wäre"]}','{"cefr":"B1","course":"de-fa","series":93}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,6,'learner','Könnten Sie bitte leiser sein?','می‌شود لطفاً آرام‌تر باشید؟',48,NULL,NULL,'könnten sie bitte leiser sein',NULL,'[{"surface":"Könnten","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","form":"konjunktiv_II_formal"},{"surface":"Sie","lemma":"Sie","translation":"شما","partOfSpeech":"pronoun"},{"surface":"bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection"},{"surface":"leiser","lemma":"leise","translation":"آرام / کم‌صدا","partOfSpeech":"adjective","form":"comparative"},{"surface":"sein","lemma":"sein","translation":"بودن","partOfSpeech":"verb","form":"infinitive","suffix":"?"}]','Höflicher Konjunktiv II','با könnten و wäre می‌توان درخواست یا پیشنهاد را مؤدبانه و غیرمستقیم بیان کرد.','{"focus":"polite_konjunktiv_II","forms":["könnten","könnte","wäre"]}','{"cefr":"B1","course":"de-fa","series":93}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_003,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_007,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_009,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_010,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_011,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_012,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_014,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_015,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_016,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_017,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_018,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_019,'new',0,1);
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
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_105,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_105,'عبارت کلیدی درس',NULL,48,NULL,'{"cefr":"B1","series":93}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',2,NULL,v_w_049,'واژهٔ کلیدی درس',NULL,48,NULL,'{"cefr":"B1","series":93}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',3,v_t_1,NULL,'به جملهٔ یوناس گوش کن',NULL,48,NULL,'{"cefr":"B1","series":93}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',4,v_t_2,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,48,NULL,'{"cefr":"B1","series":93}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',5,v_t_5,NULL,'به جملهٔ بعدی گوش کن',NULL,48,NULL,'{"cefr":"B1","series":93}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',6,v_t_6,NULL,'پاسخ را با صدای بلند بگو',NULL,48,NULL,'{"cefr":"B1","series":93}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',7,NULL,v_w_049,'معنی واژهٔ کلیدی را انتخاب کن',NULL,48,'{"mode":"word_translation","question":"höflich در این درس چه معنی دارد؟","choices":["مؤدبانه","حرکت سریع","سفر با قطار"],"correctIndex":0}','{"cefr":"B1","series":93}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و پاسخ بده',NULL,48,'{"source":"lesson_story","question":"آنا می‌خواهد مشکل صدا را چطور مطرح کند؟","choices":["مستقیم و مؤدبانه","با یک نامهٔ عصبانی","بدون صحبت با همسایه"],"correctIndex":0}','{"cefr":"B1","series":93}');
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_jonas,v_c_anna,'Das Problem erklären','توضیح دادن مشکل','Anna erklärt die Situation sachlich und bleibt dabei höflich.','آنا موقعیت را روشن توضیح می‌دهد و در عین حال مؤدب می‌ماند.','story','anna-jonas-b1-neighborhood',10,48,160,2,'validated','{"relationship":"couple","context":"polite-neighbor-conversation","cefr":"B1","storyArc":"prepare-explain-compromise-resolve"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_jonas,1,'character','Er fragt bestimmt, warum uns die Musik stört.','حتماً می‌پرسد چرا موسیقی مزاحم ماست.',48,NULL,NULL,NULL,NULL,'[{"surface":"Er","lemma":"er","translation":"او (مذکر)","partOfSpeech":"pronoun"},{"surface":"fragt","lemma":"fragen","translation":"پرسیدن","partOfSpeech":"verb","form":"present_3sg"},{"surface":"bestimmt","lemma":"bestimmt","translation":"حتماً / احتمالاً","partOfSpeech":"adverb","suffix":","},{"surface":"warum","lemma":"warum","translation":"چرا","partOfSpeech":"adverb"},{"surface":"uns","lemma":"wir","translation":"ما","partOfSpeech":"pronoun","form":"dative_1pl"},{"surface":"die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"nominative_feminine"},{"surface":"Musik","lemma":"Musik","translation":"موسیقی","partOfSpeech":"noun"},{"surface":"stört","lemma":"stören","translation":"مزاحم بودن / اذیت کردن","partOfSpeech":"verb","form":"present_3sg","suffix":"."}]','Höflicher Konjunktiv II','با könnten و wäre می‌توان درخواست یا پیشنهاد را مؤدبانه و غیرمستقیم بیان کرد.','{"focus":"polite_konjunktiv_II","forms":["könnten","könnte","wäre"]}','{"cefr":"B1","course":"de-fa","series":93}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,2,'learner','Ich erkläre ihm, dass wir morgen früh arbeiten müssen.','برای او توضیح می‌دهم که فردا صبح زود باید کار کنیم.',48,NULL,NULL,'ich erkläre ihm dass wir morgen früh arbeiten müssen',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"erkläre","lemma":"erklären","translation":"توضیح دادن","partOfSpeech":"verb","form":"present_1sg"},{"surface":"ihm","lemma":"er","translation":"او (مذکر)","partOfSpeech":"pronoun","form":"dative_masculine","suffix":","},{"surface":"dass","lemma":"dass","translation":"که","partOfSpeech":"conjunction"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"morgen","lemma":"morgen","translation":"فردا","partOfSpeech":"adverb"},{"surface":"früh","lemma":"früh","translation":"زودتر","partOfSpeech":"adverb"},{"surface":"arbeiten","lemma":"arbeiten","translation":"کار کردن","partOfSpeech":"verb","form":"infinitive"},{"surface":"müssen","lemma":"müssen","translation":"مجبور بودن / باید","partOfSpeech":"verb","form":"present_1pl","suffix":"."}]','Höflicher Konjunktiv II','با könnten و wäre می‌توان درخواست یا پیشنهاد را مؤدبانه و غیرمستقیم بیان کرد.','{"focus":"polite_konjunktiv_II","forms":["könnten","könnte","wäre"]}','{"cefr":"B1","course":"de-fa","series":93}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_jonas,3,'character','Sag auch, dass das Schlafzimmer direkt darunter liegt.','این را هم بگو که اتاق خواب درست زیر آن قرار دارد.',48,NULL,NULL,NULL,NULL,'[{"surface":"Sag","lemma":"sagen","translation":"گفتن","partOfSpeech":"verb","form":"imperative_2sg"},{"surface":"auch","lemma":"auch","translation":"هم / همچنین","partOfSpeech":"adverb","suffix":","},{"surface":"dass","lemma":"dass","translation":"که","partOfSpeech":"conjunction"},{"surface":"das","lemma":"das","translation":"این / آن","partOfSpeech":"pronoun"},{"surface":"Schlafzimmer","lemma":"Schlafzimmer","translation":"اتاق خواب","partOfSpeech":"noun"},{"surface":"direkt","lemma":"direkt","translation":"مستقیم","partOfSpeech":"adverb"},{"surface":"darunter","lemma":"darunter","translation":"زیر آن","partOfSpeech":"adverb"},{"surface":"liegt","lemma":"liegen","translation":"قرار داشتن","partOfSpeech":"verb","form":"present_3sg","suffix":"."}]','Höflicher Konjunktiv II','با könnten و wäre می‌توان درخواست یا پیشنهاد را مؤدبانه و غیرمستقیم بیان کرد.','{"focus":"polite_konjunktiv_II","forms":["könnten","könnte","wäre"]}','{"cefr":"B1","course":"de-fa","series":93}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,4,'learner','Könnten Sie besonders nach zehn Uhr leiser sein?','می‌شود مخصوصاً بعد از ساعت ده آرام‌تر باشید؟',48,NULL,NULL,'könnten sie besonders nach zehn uhr leiser sein',NULL,'[{"surface":"Könnten","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","form":"konjunktiv_II_formal"},{"surface":"Sie","lemma":"Sie","translation":"شما","partOfSpeech":"pronoun"},{"surface":"besonders","lemma":"besonders","translation":"مخصوصا","partOfSpeech":"adverb"},{"surface":"nach","lemma":"nach","translation":"پس از / به","partOfSpeech":"preposition"},{"surface":"zehn","lemma":"zehn","translation":"ده","partOfSpeech":"number"},{"surface":"Uhr","lemma":"Uhr","translation":"ساعت","partOfSpeech":"noun"},{"surface":"leiser","lemma":"leise","translation":"آرام / کم‌صدا","partOfSpeech":"adjective","form":"comparative"},{"surface":"sein","lemma":"sein","translation":"بودن","partOfSpeech":"verb","form":"infinitive","suffix":"?"}]','Höflicher Konjunktiv II','با könnten و wäre می‌توان درخواست یا پیشنهاد را مؤدبانه و غیرمستقیم بیان کرد.','{"focus":"polite_konjunktiv_II","forms":["könnten","könnte","wäre"]}','{"cefr":"B1","course":"de-fa","series":93}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_jonas,5,'character','Das klingt höflich und klar.','این مؤدبانه و روشن به نظر می‌رسد.',48,NULL,NULL,NULL,NULL,'[{"surface":"Das","lemma":"das","translation":"این / آن","partOfSpeech":"pronoun"},{"surface":"klingt","lemma":"klingen","translation":"به نظر رسیدن","partOfSpeech":"verb","form":"present_3sg"},{"surface":"höflich","lemma":"höflich","translation":"مؤدبانه","partOfSpeech":"adjective"},{"surface":"und","lemma":"und","translation":"و","partOfSpeech":"conjunction"},{"surface":"klar","lemma":"klar","translation":"روشن / مشخص","partOfSpeech":"adjective","suffix":"."}]','Höflicher Konjunktiv II','با könnten و wäre می‌توان درخواست یا پیشنهاد را مؤدبانه و غیرمستقیم بیان کرد.','{"focus":"polite_konjunktiv_II","forms":["könnten","könnte","wäre"]}','{"cefr":"B1","course":"de-fa","series":93}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,6,'learner','So versteht er unser Problem, ohne sich angegriffen zu fühlen.','این‌طوری مشکل ما را می‌فهمد، بدون اینکه احساس کند به او حمله شده است.',48,NULL,NULL,'so versteht er unser problem ohne sich angegriffen zu fühlen',NULL,'[{"surface":"So","lemma":"so","translation":"این طور / آن طور","partOfSpeech":"adverb"},{"surface":"versteht","lemma":"verstehen","translation":"فهمیدن / متوجه شدن","partOfSpeech":"verb","form":"present_3sg"},{"surface":"er","lemma":"er","translation":"او (مذکر)","partOfSpeech":"pronoun"},{"surface":"unser","lemma":"unser","translation":"مال ما / ما","partOfSpeech":"determiner","form":"accusative_neuter"},{"surface":"Problem","lemma":"Problem","translation":"مشکل","partOfSpeech":"noun","suffix":","},{"surface":"ohne","lemma":"ohne","translation":"بدون","partOfSpeech":"preposition"},{"surface":"sich","lemma":"sich","translation":"خود / خودش","partOfSpeech":"pronoun"},{"surface":"angegriffen","lemma":"angreifen","translation":"حمله کردن","partOfSpeech":"verb","form":"participle_II"},{"surface":"zu","lemma":"zu","translation":"بیش از حد / خیلی","partOfSpeech":"particle"},{"surface":"fühlen","lemma":"sich fühlen","translation":"احساس کردن","partOfSpeech":"verb","form":"infinitive","suffix":"."}]','Höflicher Konjunktiv II','با könnten و wäre می‌توان درخواست یا پیشنهاد را مؤدبانه و غیرمستقیم بیان کرد.','{"focus":"polite_konjunktiv_II","forms":["könnten","könnte","wäre"]}','{"cefr":"B1","course":"de-fa","series":93}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_024,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_030,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_031,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_032,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_033,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_034,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_035,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_018,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_036,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_037,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_038,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_039,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_025,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_040,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_021,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_041,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_012,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_042,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_043,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_026,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_027,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_044,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_045,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_046,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_047,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_029,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_048,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_049,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_050,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_051,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_052,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_053,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_054,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_055,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_056,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_057,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_058,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_059,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_060,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_106,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_106,'عبارت کلیدی درس',NULL,48,NULL,'{"cefr":"B1","series":93}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',2,NULL,v_w_035,'واژهٔ کلیدی درس',NULL,48,NULL,'{"cefr":"B1","series":93}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',3,v_t_7,NULL,'به جملهٔ یوناس گوش کن',NULL,48,NULL,'{"cefr":"B1","series":93}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',4,v_t_8,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,48,NULL,'{"cefr":"B1","series":93}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',5,v_t_11,NULL,'به جملهٔ بعدی گوش کن',NULL,48,NULL,'{"cefr":"B1","series":93}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',6,v_t_12,NULL,'پاسخ را با صدای بلند بگو',NULL,48,NULL,'{"cefr":"B1","series":93}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',7,NULL,v_w_035,'معنی واژهٔ کلیدی را انتخاب کن',NULL,48,'{"mode":"word_translation","question":"erklären در این درس چه معنی دارد؟","choices":["توضیح دادن","حرکت سریع","سفر با قطار"],"correctIndex":0}','{"cefr":"B1","series":93}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و پاسخ بده',NULL,48,'{"source":"lesson_story","question":"چرا آنا از همسایه می‌خواهد شب آرام‌تر باشد؟","choices":["چون آن‌ها صبح زود باید کار کنند","چون می‌خواهند مهمانی بگیرند","چون اتاق خواب بالا است"],"correctIndex":0}','{"cefr":"B1","series":93}');
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_jonas,v_c_anna,'Einen Kompromiss finden','پیدا کردن راه‌حل میانه','Anna und Jonas suchen gemeinsam einen fairen Kompromiss.','آنا و یوناس با هم دنبال یک راه‌حل میانه و منصفانه می‌گردند.','story','anna-jonas-b1-neighborhood',11,48,160,3,'validated','{"relationship":"couple","context":"polite-neighbor-conversation","cefr":"B1","storyArc":"prepare-explain-compromise-resolve"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_jonas,1,'character','Herr Weber möchte abends weiter üben.','آقای وبر می‌خواهد عصرها به تمرین ادامه دهد.',48,NULL,NULL,NULL,NULL,'[{"surface":"Herr","lemma":"Herr","translation":"آقا","partOfSpeech":"noun"},{"surface":"Weber","lemma":"Weber","translation":"وبر","partOfSpeech":"noun"},{"surface":"möchte","lemma":"möchten","translation":"خواستن / مایل بودن","partOfSpeech":"verb","form":"present_3sg"},{"surface":"abends","lemma":"abends","translation":"عصرها / شب ها","partOfSpeech":"adverb"},{"surface":"weiter","lemma":"weiter","translation":"ادامه / بیشتر","partOfSpeech":"adverb"},{"surface":"üben","lemma":"üben","translation":"تمرین کردن","partOfSpeech":"verb","form":"infinitive","suffix":"."}]','Höflicher Konjunktiv II','با könnten و wäre می‌توان درخواست یا پیشنهاد را مؤدبانه و غیرمستقیم بیان کرد.','{"focus":"polite_konjunktiv_II","forms":["könnten","könnte","wäre"]}','{"cefr":"B1","course":"de-fa","series":93}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,2,'learner','Dann könnten wir gemeinsam eine ruhige Zeit vereinbaren.','پس می‌توانیم با هم یک زمان آرام تعیین کنیم.',48,NULL,NULL,'dann könnten wir gemeinsam eine ruhige zeit vereinbaren',NULL,'[{"surface":"Dann","lemma":"dann","translation":"بعد / سپس","partOfSpeech":"adverb"},{"surface":"könnten","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","form":"konjunktiv_II_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"gemeinsam","lemma":"gemeinsam","translation":"با هم / مشترک","partOfSpeech":"adverb"},{"surface":"eine","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","form":"accusative_feminine"},{"surface":"ruhige","lemma":"ruhig","translation":"آرام","partOfSpeech":"adjective","form":"accusative_feminine"},{"surface":"Zeit","lemma":"Zeit","translation":"وقت / زمان","partOfSpeech":"noun"},{"surface":"vereinbaren","lemma":"vereinbaren","translation":"توافق کردن / تعیین کردن","partOfSpeech":"verb","form":"infinitive","suffix":"."}]','Höflicher Konjunktiv II','با könnten و wäre می‌توان درخواست یا پیشنهاد را مؤدبانه و غیرمستقیم بیان کرد.','{"focus":"polite_konjunktiv_II","forms":["könnten","könnte","wäre"]}','{"cefr":"B1","course":"de-fa","series":93}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_jonas,3,'character','Vielleicht übt er vor neun Uhr.','شاید او قبل از ساعت نه تمرین کند.',48,NULL,NULL,NULL,NULL,'[{"surface":"Vielleicht","lemma":"vielleicht","translation":"شاید","partOfSpeech":"adverb"},{"surface":"übt","lemma":"üben","translation":"تمرین کردن","partOfSpeech":"verb","form":"present_3sg"},{"surface":"er","lemma":"er","translation":"او (مذکر)","partOfSpeech":"pronoun"},{"surface":"vor","lemma":"vor","translation":"از / جلوی","partOfSpeech":"preposition"},{"surface":"neun","lemma":"neun","translation":"نه","partOfSpeech":"number"},{"surface":"Uhr","lemma":"Uhr","translation":"ساعت","partOfSpeech":"noun","suffix":"."}]','Höflicher Konjunktiv II','با könnten و wäre می‌توان درخواست یا پیشنهاد را مؤدبانه و غیرمستقیم بیان کرد.','{"focus":"polite_konjunktiv_II","forms":["könnten","könnte","wäre"]}','{"cefr":"B1","course":"de-fa","series":93}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,4,'learner','Und danach könnte er Kopfhörer benutzen.','و بعد از آن می‌تواند از هدفون استفاده کند.',48,NULL,NULL,'und danach könnte er kopfhörer benutzen',NULL,'[{"surface":"Und","lemma":"und","translation":"و","partOfSpeech":"conjunction"},{"surface":"danach","lemma":"danach","translation":"بعد از آن / بعدش","partOfSpeech":"adverb"},{"surface":"könnte","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","form":"konjunktiv_II_3sg"},{"surface":"er","lemma":"er","translation":"او (مذکر)","partOfSpeech":"pronoun"},{"surface":"Kopfhörer","lemma":"Kopfhörer","translation":"هدفون","partOfSpeech":"noun"},{"surface":"benutzen","lemma":"benutzen","translation":"استفاده کردن","partOfSpeech":"verb","form":"infinitive","suffix":"."}]','Höflicher Konjunktiv II','با könnten و wäre می‌توان درخواست یا پیشنهاد را مؤدبانه و غیرمستقیم بیان کرد.','{"focus":"polite_konjunktiv_II","forms":["könnten","könnte","wäre"]}','{"cefr":"B1","course":"de-fa","series":93}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_jonas,5,'character','Das wäre für alle angenehm.','این برای همه خوشایند بود.',48,NULL,NULL,NULL,NULL,'[{"surface":"Das","lemma":"das","translation":"این / آن","partOfSpeech":"pronoun"},{"surface":"wäre","lemma":"sein","translation":"بودن","partOfSpeech":"verb","form":"konjunktiv_II_3sg"},{"surface":"für","lemma":"für","translation":"برای","partOfSpeech":"preposition"},{"surface":"alle","lemma":"alle","translation":"همه","partOfSpeech":"pronoun"},{"surface":"angenehm","lemma":"angenehm","translation":"خوشایند","partOfSpeech":"adjective","suffix":"."}]','Höflicher Konjunktiv II','با könnten و wäre می‌توان درخواست یا پیشنهاد را مؤدبانه و غیرمستقیم بیان کرد.','{"focus":"polite_konjunktiv_II","forms":["könnten","könnte","wäre"]}','{"cefr":"B1","course":"de-fa","series":93}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,6,'learner','Wir könnten diese Lösung eine Woche lang ausprobieren.','می‌توانیم این راه‌حل را یک هفته امتحان کنیم.',48,NULL,NULL,'wir könnten diese lösung eine woche lang ausprobieren',NULL,'[{"surface":"Wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"könnten","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","form":"konjunktiv_II_1pl"},{"surface":"diese","lemma":"dieser","translation":"این","partOfSpeech":"determiner","form":"accusative_feminine"},{"surface":"Lösung","lemma":"Lösung","translation":"راه حل","partOfSpeech":"noun"},{"surface":"eine","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","form":"accusative_feminine"},{"surface":"Woche","lemma":"Woche","translation":"هفته","partOfSpeech":"noun"},{"surface":"lang","lemma":"lang","translation":"طولانی / بلند","partOfSpeech":"adjective"},{"surface":"ausprobieren","lemma":"ausprobieren","translation":"امتحان کردن","partOfSpeech":"verb","form":"infinitive","suffix":"."}]','Höflicher Konjunktiv II','با könnten و wäre می‌توان درخواست یا پیشنهاد را مؤدبانه و غیرمستقیم بیان کرد.','{"focus":"polite_konjunktiv_II","forms":["könnten","könnte","wäre"]}','{"cefr":"B1","course":"de-fa","series":93}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_014,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_015,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_016,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_061,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_062,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_063,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_064,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_026,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_033,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_065,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_066,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_067,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_068,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_069,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_070,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_024,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_071,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_072,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_047,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_050,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_073,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_074,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_075,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_021,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_076,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_077,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_078,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_079,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_080,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_081,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_082,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_083,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_107,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_107,'عبارت کلیدی درس',NULL,48,NULL,'{"cefr":"B1","series":93}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',2,NULL,v_w_097,'واژهٔ کلیدی درس',NULL,48,NULL,'{"cefr":"B1","series":93}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',3,v_t_13,NULL,'به جملهٔ یوناس گوش کن',NULL,48,NULL,'{"cefr":"B1","series":93}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',4,v_t_14,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,48,NULL,'{"cefr":"B1","series":93}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',5,v_t_17,NULL,'به جملهٔ بعدی گوش کن',NULL,48,NULL,'{"cefr":"B1","series":93}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',6,v_t_18,NULL,'پاسخ را با صدای بلند بگو',NULL,48,NULL,'{"cefr":"B1","series":93}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',7,NULL,v_w_097,'معنی واژهٔ کلیدی را انتخاب کن',NULL,48,'{"mode":"word_translation","question":"Kompromiss در این درس چه معنی دارد؟","choices":["راه‌حل میانه / سازش","حرکت سریع","سفر با قطار"],"correctIndex":0}','{"cefr":"B1","series":93}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و پاسخ بده',NULL,48,'{"source":"lesson_story","question":"پیشنهاد آنا و یوناس برای تمرین موسیقی چیست؟","choices":["تمرین زودتر و استفاده از هدفون","توقف کامل موسیقی","تمرین فقط نیمه‌شب"],"correctIndex":0}','{"cefr":"B1","series":93}');
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_jonas,v_c_anna,'Eine faire Lösung','یک راه‌حل منصفانه','Der Nachbar akzeptiert den Vorschlag, und die Hausgemeinschaft findet eine faire Regel.','همسایه پیشنهاد را می‌پذیرد و ساکنان ساختمان به یک قاعدهٔ منصفانه می‌رسند.','story','anna-jonas-b1-neighborhood',12,48,160,4,'validated','{"relationship":"couple","context":"polite-neighbor-conversation","cefr":"B1","storyArc":"prepare-explain-compromise-resolve"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_jonas,1,'character','Herr Weber hat unserem Vorschlag zugestimmt.','آقای وبر با پیشنهاد ما موافقت کرده است.',48,NULL,NULL,NULL,NULL,'[{"surface":"Herr","lemma":"Herr","translation":"آقا","partOfSpeech":"noun"},{"surface":"Weber","lemma":"Weber","translation":"وبر","partOfSpeech":"noun"},{"surface":"hat","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","form":"present_3sg"},{"surface":"unserem","lemma":"unser","translation":"مال ما / ما","partOfSpeech":"determiner","form":"dative_masculine"},{"surface":"Vorschlag","lemma":"Vorschlag","translation":"پیشنهاد","partOfSpeech":"noun"},{"surface":"zugestimmt","lemma":"zustimmen","translation":"موافقت کردن","partOfSpeech":"verb","form":"participle_II","suffix":"."}]','Höflicher Konjunktiv II','با könnten و wäre می‌توان درخواست یا پیشنهاد را مؤدبانه و غیرمستقیم بیان کرد.','{"focus":"polite_konjunktiv_II","forms":["könnten","könnte","wäre"]}','{"cefr":"B1","course":"de-fa","series":93}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,2,'learner','Ab heute spielt er nach zehn Uhr nicht mehr laut.','از امروز بعد از ساعت ده دیگر بلند موسیقی نمی‌زند.',48,NULL,NULL,'ab heute spielt er nach zehn uhr nicht mehr laut',NULL,'[{"surface":"Ab","lemma":"ab","translation":"از","partOfSpeech":"preposition"},{"surface":"heute","lemma":"heute","translation":"امروز","partOfSpeech":"adverb"},{"surface":"spielt","lemma":"spielen","translation":"نواختن / بازی کردن","partOfSpeech":"verb","form":"present_3sg"},{"surface":"er","lemma":"er","translation":"او (مذکر)","partOfSpeech":"pronoun"},{"surface":"nach","lemma":"nach","translation":"پس از / به","partOfSpeech":"preposition"},{"surface":"zehn","lemma":"zehn","translation":"ده","partOfSpeech":"number"},{"surface":"Uhr","lemma":"Uhr","translation":"ساعت","partOfSpeech":"noun"},{"surface":"nicht","lemma":"nicht","translation":"نه / نیست","partOfSpeech":"particle"},{"surface":"mehr","lemma":"mehr","translation":"دیگه / بیشتر","partOfSpeech":"adverb"},{"surface":"laut","lemma":"laut","translation":"پر سر و صدا","partOfSpeech":"adjective","suffix":"."}]','Höflicher Konjunktiv II','با könnten و wäre می‌توان درخواست یا پیشنهاد را مؤدبانه و غیرمستقیم بیان کرد.','{"focus":"polite_konjunktiv_II","forms":["könnten","könnte","wäre"]}','{"cefr":"B1","course":"de-fa","series":93}');
  SET v_t_20=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_jonas,3,'character','Dafür darf er am Nachmittag länger üben.','در عوض اجازه دارد بعدازظهر مدت بیشتری تمرین کند.',48,NULL,NULL,NULL,NULL,'[{"surface":"Dafür","lemma":"dafür","translation":"برای آن / برای این کار","partOfSpeech":"adverb"},{"surface":"darf","lemma":"dürfen","translation":"اجازه داشتن","partOfSpeech":"verb","form":"present_3sg"},{"surface":"er","lemma":"er","translation":"او (مذکر)","partOfSpeech":"pronoun"},{"surface":"am","lemma":"an","translation":"در / در روز","partOfSpeech":"preposition","form":"dative_masculine_contraction"},{"surface":"Nachmittag","lemma":"Nachmittag","translation":"بعدازظهر","partOfSpeech":"noun"},{"surface":"länger","lemma":"lang","translation":"طولانی / بلند","partOfSpeech":"adjective","form":"comparative"},{"surface":"üben","lemma":"üben","translation":"تمرین کردن","partOfSpeech":"verb","form":"infinitive","suffix":"."}]','Höflicher Konjunktiv II','با könnten و wäre می‌توان درخواست یا پیشنهاد را مؤدبانه و غیرمستقیم بیان کرد.','{"focus":"polite_konjunktiv_II","forms":["könnten","könnte","wäre"]}','{"cefr":"B1","course":"de-fa","series":93}');
  SET v_t_21=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,4,'learner','Ich finde, wir haben einen guten Kompromiss gefunden.','به نظرم ما یک راه‌حل میانهٔ خوب پیدا کرده‌ایم.',48,NULL,NULL,'ich finde wir haben einen guten kompromiss gefunden',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"finde","lemma":"finden","translation":"پیدا کردن","partOfSpeech":"verb","form":"present_1sg","suffix":","},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"haben","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","form":"present_1pl"},{"surface":"einen","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","form":"accusative_masculine"},{"surface":"guten","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","form":"accusative_masculine"},{"surface":"Kompromiss","lemma":"Kompromiss","translation":"راه‌حل میانه / سازش","partOfSpeech":"noun"},{"surface":"gefunden","lemma":"finden","translation":"پیدا کردن","partOfSpeech":"verb","form":"participle_II","suffix":"."}]','Höflicher Konjunktiv II','با könnten و wäre می‌توان درخواست یا پیشنهاد را مؤدبانه و غیرمستقیم بیان کرد.','{"focus":"polite_konjunktiv_II","forms":["könnten","könnte","wäre"]}','{"cefr":"B1","course":"de-fa","series":93}');
  SET v_t_22=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_jonas,5,'character','Das Gespräch war wieder freundlich.','گفت‌وگو دوباره دوستانه بود.',48,NULL,NULL,NULL,NULL,'[{"surface":"Das","lemma":"das","translation":"این / آن","partOfSpeech":"pronoun"},{"surface":"Gespräch","lemma":"Gespräch","translation":"گفتگو","partOfSpeech":"noun"},{"surface":"war","lemma":"sein","translation":"بودن","partOfSpeech":"verb","form":"preterite_3sg"},{"surface":"wieder","lemma":"wieder","translation":"دوباره","partOfSpeech":"adverb"},{"surface":"freundlich","lemma":"freundlich","translation":"دوستانه / مهربان","partOfSpeech":"adjective","suffix":"."}]','Höflicher Konjunktiv II','با könnten و wäre می‌توان درخواست یا پیشنهاد را مؤدبانه و غیرمستقیم بیان کرد.','{"focus":"polite_konjunktiv_II","forms":["könnten","könnte","wäre"]}','{"cefr":"B1","course":"de-fa","series":93}');
  SET v_t_23=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,6,'learner','Höfliche Bitten helfen oft mehr als Beschwerden.','درخواست‌های مؤدبانه اغلب بیشتر از شکایت‌ها کمک می‌کنند.',48,NULL,NULL,'höfliche bitten helfen oft mehr als beschwerden',NULL,'[{"surface":"Höfliche","lemma":"höflich","translation":"مؤدبانه","partOfSpeech":"adjective","form":"nominative_plural"},{"surface":"Bitten","lemma":"Bitte","translation":"درخواست","partOfSpeech":"noun","form":"nominative_plural"},{"surface":"helfen","lemma":"helfen","translation":"کمک کردن","partOfSpeech":"verb","form":"present_3pl"},{"surface":"oft","lemma":"oft","translation":"اغلب","partOfSpeech":"adverb"},{"surface":"mehr","lemma":"mehr","translation":"دیگه / بیشتر","partOfSpeech":"adverb"},{"surface":"als","lemma":"als","translation":"از / نسبت به","partOfSpeech":"conjunction"},{"surface":"Beschwerden","lemma":"Beschwerde","translation":"شکایت","partOfSpeech":"noun","form":"nominative_plural","suffix":"."}]','Höflicher Konjunktiv II','با könnten و wäre می‌توان درخواست یا پیشنهاد را مؤدبانه و غیرمستقیم بیان کرد.','{"focus":"polite_konjunktiv_II","forms":["könnten","könnte","wäre"]}','{"cefr":"B1","course":"de-fa","series":93}');
  SET v_t_24=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_014,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_015,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_084,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_054,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_085,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_086,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_087,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_088,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_024,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_045,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_046,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_047,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_089,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_090,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_091,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_092,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_093,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_094,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_082,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_063,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_095,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_033,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_066,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_096,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_097,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_021,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_098,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_099,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_049,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_100,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_101,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_102,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_103,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_104,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_108,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',1,NULL,v_w_108,'عبارت کلیدی درس',NULL,48,NULL,'{"cefr":"B1","series":93}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',2,NULL,v_w_100,'واژهٔ کلیدی درس',NULL,48,NULL,'{"cefr":"B1","series":93}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_19,NULL,'به جملهٔ یوناس گوش کن',NULL,48,NULL,'{"cefr":"B1","series":93}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_20,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,48,NULL,'{"cefr":"B1","series":93}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_23,NULL,'به جملهٔ بعدی گوش کن',NULL,48,NULL,'{"cefr":"B1","series":93}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_24,NULL,'پاسخ را با صدای بلند بگو',NULL,48,NULL,'{"cefr":"B1","series":93}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',7,NULL,v_w_100,'معنی واژهٔ کلیدی را انتخاب کن',NULL,48,'{"mode":"word_translation","question":"Bitte در این درس چه معنی دارد؟","choices":["درخواست","حرکت سریع","سفر با قطار"],"correctIndex":0}','{"cefr":"B1","series":93}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و پاسخ بده',NULL,48,'{"source":"lesson_story","question":"نتیجهٔ گفت‌وگوی مؤدبانه چه بود؟","choices":["یک توافق منصفانه","ادامهٔ دعوا","اسباب‌کشی فوری"],"correctIndex":0}','{"cefr":"B1","series":93}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 093 requires exactly four lessons.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>24 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 093 requires exactly 24 turns.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR CHAR_LENGTH(TRIM(t.speech_target))=0);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every learner Turn needs speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities a JOIN lessons l ON l.id=a.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>32 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 093 requires exactly 32 activities.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id<>learner_character_id AND storyline_key='anna-jonas-b1-neighborhood' AND storyline_order BETWEEN 9 AND 12 AND status='validated';
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Character or storyline continuity failure.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) d;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_series_093_v9();
DROP PROCEDURE IF EXISTS import_nova_series_093_v9;

-- ===== SERIES 094 =====
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

-- ===== SERIES 095 =====
-- NOVA v9.0 / B1 SERIES 095 / Jetzt ist alles wieder in Ordnung
-- Requires canonical v9.0 and validated Series 094. No schema DDL.
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_series_095_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_095_v9()
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
  DECLARE v_w_103 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_104 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_105 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_106 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_107 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_108 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_109 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_110 BIGINT UNSIGNED DEFAULT NULL;
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
  SELECT COUNT(*) INTO v_count FROM chapters WHERE module_id=v_module AND sort_order=4 AND status IN ('validated','complete');
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 094 must be validated.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons l JOIN chapters c ON c.id=l.chapter_id WHERE c.module_id=v_module AND c.sort_order=4 AND l.storyline_key='anna-jonas-b1-neighborhood' AND l.storyline_order BETWEEN 13 AND 16;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Storyline orders 13-16 required.'; END IF;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=5 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 03 Chapter 05 missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='Jetzt ist alles wieder in Ordnung' AND title_translation='حالا دوباره همه چی روبراهه';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 095 canonical title mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 03 Chapter 05 must be empty before Series 095 import.'; END IF;
  SELECT id INTO v_c_jonas FROM characters WHERE course_id=v_course AND name='Jonas' AND gender='male' ORDER BY id LIMIT 1;
  SELECT id INTO v_c_anna FROM characters WHERE course_id=v_course AND name='Anna' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_jonas IS NULL OR v_c_anna IS NULL OR v_c_jonas=v_c_anna THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required distinct Characters Jonas and Anna missing.'; END IF;
  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='heute' AND part_of_speech='adverb' AND translation='امروز' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: heute | adverb'; END IF;
  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='Morgen' AND part_of_speech='noun' AND translation='صبح' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Morgen | noun'; END IF;
  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sein | verb'; END IF;
  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: der | article'; END IF;
  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='Wohnung' AND part_of_speech='noun' AND translation='خانه / آپارتمان' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Wohnung | noun'; END IF;
  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='endlich' AND part_of_speech='adverb' AND translation='بالاخره' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'endlich','endlich','adverb','بالاخره',49,'{"type":"adverb"}','[{"text":"gestern","translation":"دیروز"},{"text":"dort","translation":"آنجا"},{"text":"langsam","translation":"آهسته"},{"text":"selten","translation":"به‌ندرت"},{"text":"später","translation":"بعداً"}]','Jetzt ist alles wieder in Ordnung','حالا دوباره همه چی روبراهه',NULL,NULL,'{"cefr":"B1","introducedInSeries":95}');
    SET v_w_006=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='warm' AND part_of_speech='adjective' AND translation='گرم' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: warm | adjective'; END IF;
  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='jetzt' AND part_of_speech='adverb' AND translation='حالا / اکنون' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: jetzt | adverb'; END IF;
  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='alles' AND part_of_speech='pronoun' AND translation='همه چیز' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: alles | pronoun'; END IF;
  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='wieder' AND part_of_speech='adverb' AND translation='دوباره' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wieder | adverb'; END IF;
  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='in' AND part_of_speech='preposition' AND translation='در / داخل' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: in | preposition'; END IF;
  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='Ordnung' AND part_of_speech='noun' AND translation='نظم / وضعیت درست' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Ordnung | noun'; END IF;
  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='funktionieren' AND part_of_speech='verb' AND translation='کار کردن / درست کار کردن' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: funktionieren | verb'; END IF;
  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='auch' AND part_of_speech='adverb' AND translation='هم / همچنین' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: auch | adverb'; END IF;
  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='Heizkörper' AND part_of_speech='noun' AND translation='رادیاتور' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Heizkörper | noun'; END IF;
  SELECT id INTO v_w_016 FROM words WHERE course_id=v_course AND lemma='Schlafzimmer' AND part_of_speech='noun' AND translation='اتاق خواب' ORDER BY id LIMIT 1;
  IF v_w_016 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Schlafzimmer | noun'; END IF;
  SELECT id INTO v_w_017 FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_017 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ja | interjection'; END IF;
  SELECT id INTO v_w_018 FROM words WHERE course_id=v_course AND lemma='dort' AND part_of_speech='adverb' AND translation='آنجا' ORDER BY id LIMIT 1;
  IF v_w_018 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dort | adverb'; END IF;
  SELECT id INTO v_w_019 FROM words WHERE course_id=v_course AND lemma='werden' AND part_of_speech='verb' AND translation='شدن / خواهد' ORDER BY id LIMIT 1;
  IF v_w_019 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: werden | verb'; END IF;
  SELECT id INTO v_w_020 FROM words WHERE course_id=v_course AND lemma='es' AND part_of_speech='pronoun' AND translation='آن / این' ORDER BY id LIMIT 1;
  IF v_w_020 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: es | pronoun'; END IF;
  SELECT id INTO v_w_021 FROM words WHERE course_id=v_course AND lemma='schnell' AND part_of_speech='adverb' AND translation='سریع تر' ORDER BY id LIMIT 1;
  IF v_w_021 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: schnell | adverb'; END IF;
  SELECT id INTO v_w_022 FROM words WHERE course_id=v_course AND lemma='dann' AND part_of_speech='adverb' AND translation='بعد / سپس' ORDER BY id LIMIT 1;
  IF v_w_022 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dann | adverb'; END IF;
  SELECT id INTO v_w_023 FROM words WHERE course_id=v_course AND lemma='Reparatur' AND part_of_speech='noun' AND translation='تعمیر' ORDER BY id LIMIT 1;
  IF v_w_023 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Reparatur | noun'; END IF;
  SELECT id INTO v_w_024 FROM words WHERE course_id=v_course AND lemma='erfolgreich' AND part_of_speech='adjective' AND translation='موفق / موفقیت‌آمیز' ORDER BY id LIMIT 1;
  IF v_w_024 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'erfolgreich','erfolgreich','adjective','موفق / موفقیت‌آمیز',49,'{"type":"adjective"}','[{"text":"klein","translation":"کوچک"},{"text":"teuer","translation":"گران"},{"text":"dunkel","translation":"تاریک"},{"text":"ruhig","translation":"آرام"},{"text":"sicher","translation":"مطمئن"}]','Jetzt ist alles wieder in Ordnung','حالا دوباره همه چی روبراهه',NULL,NULL,'{"cefr":"B1","introducedInSeries":95}');
    SET v_w_024=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_025 FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_025 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ich | pronoun'; END IF;
  SELECT id INTO v_w_026 FROM words WHERE course_id=v_course AND lemma='froh' AND part_of_speech='adjective' AND translation='خوشحال' ORDER BY id LIMIT 1;
  IF v_w_026 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: froh | adjective'; END IF;
  SELECT id INTO v_w_027 FROM words WHERE course_id=v_course AND lemma='dass' AND part_of_speech='conjunction' AND translation='که' ORDER BY id LIMIT 1;
  IF v_w_027 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dass | conjunction'; END IF;
  SELECT id INTO v_w_028 FROM words WHERE course_id=v_course AND lemma='wir' AND part_of_speech='pronoun' AND translation='ما' ORDER BY id LIMIT 1;
  IF v_w_028 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wir | pronoun'; END IF;
  SELECT id INTO v_w_029 FROM words WHERE course_id=v_course AND lemma='nicht' AND part_of_speech='particle' AND translation='نه / نیست' ORDER BY id LIMIT 1;
  IF v_w_029 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: nicht | particle'; END IF;
  SELECT id INTO v_w_030 FROM words WHERE course_id=v_course AND lemma='mehr' AND part_of_speech='adverb' AND translation='دیگه / بیشتر' ORDER BY id LIMIT 1;
  IF v_w_030 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: mehr | adverb'; END IF;
  SELECT id INTO v_w_031 FROM words WHERE course_id=v_course AND lemma='frieren' AND part_of_speech='verb' AND translation='سرما خوردن / یخ کردن' ORDER BY id LIMIT 1;
  IF v_w_031 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'frieren','frieren','verb','سرما خوردن / یخ کردن',49,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"kommen","translation":"آمدن"},{"text":"sehen","translation":"دیدن"},{"text":"bleiben","translation":"ماندن"},{"text":"schreiben","translation":"نوشتن"}]','Jetzt ist alles wieder in Ordnung','حالا دوباره همه چی روبراهه',NULL,NULL,'{"cefr":"B1","introducedInSeries":95}');
    SET v_w_031=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_032 FROM words WHERE course_id=v_course AND lemma='müssen' AND part_of_speech='verb' AND translation='مجبور بودن / باید' ORDER BY id LIMIT 1;
  IF v_w_032 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: müssen | verb'; END IF;
  SELECT id INTO v_w_033 FROM words WHERE course_id=v_course AND lemma='Bad' AND part_of_speech='noun' AND translation='حمام' ORDER BY id LIMIT 1;
  IF v_w_033 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Bad','Bad','noun','حمام',49,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Kaffee","translation":"قهوه"},{"text":"Zug","translation":"قطار"}]','Jetzt ist alles wieder in Ordnung','حالا دوباره همه چی روبراهه',NULL,NULL,'{"cefr":"B1","introducedInSeries":95}');
    SET v_w_033=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_034 FROM words WHERE course_id=v_course AND lemma='noch' AND part_of_speech='adverb' AND translation='هنوز' ORDER BY id LIMIT 1;
  IF v_w_034 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: noch | adverb'; END IF;
  SELECT id INTO v_w_035 FROM words WHERE course_id=v_course AND lemma='etwas' AND part_of_speech='pronoun' AND translation='چیزی / یک چیزی' ORDER BY id LIMIT 1;
  IF v_w_035 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: etwas | pronoun'; END IF;
  SELECT id INTO v_w_036 FROM words WHERE course_id=v_course AND lemma='kühl' AND part_of_speech='adjective' AND translation='خنک' ORDER BY id LIMIT 1;
  IF v_w_036 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'kühl','kühl','adjective','خنک',49,'{"type":"adjective"}','[{"text":"klein","translation":"کوچک"},{"text":"teuer","translation":"گران"},{"text":"dunkel","translation":"تاریک"},{"text":"ruhig","translation":"آرام"},{"text":"sicher","translation":"مطمئن"}]','Jetzt ist alles wieder in Ordnung','حالا دوباره همه چی روبراهه',NULL,NULL,'{"cefr":"B1","introducedInSeries":95}');
    SET v_w_036=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_037 FROM words WHERE course_id=v_course AND lemma='prüfen' AND part_of_speech='verb' AND translation='بررسی کردن' ORDER BY id LIMIT 1;
  IF v_w_037 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: prüfen | verb'; END IF;
  SELECT id INTO v_w_038 FROM words WHERE course_id=v_course AND lemma='zuerst' AND part_of_speech='adverb' AND translation='اول / ابتدا' ORDER BY id LIMIT 1;
  IF v_w_038 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zuerst | adverb'; END IF;
  SELECT id INTO v_w_039 FROM words WHERE course_id=v_course AND lemma='ob' AND part_of_speech='conjunction' AND translation='آیا / اینکه' ORDER BY id LIMIT 1;
  IF v_w_039 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ob | conjunction'; END IF;
  SELECT id INTO v_w_040 FROM words WHERE course_id=v_course AND lemma='Ventil' AND part_of_speech='noun' AND translation='شیر / دریچه' ORDER BY id LIMIT 1;
  IF v_w_040 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Ventil | noun'; END IF;
  SELECT id INTO v_w_041 FROM words WHERE course_id=v_course AND lemma='offen' AND part_of_speech='adjective' AND translation='باز' ORDER BY id LIMIT 1;
  IF v_w_041 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'offen','offen','adjective','باز',49,'{"type":"adjective"}','[{"text":"klein","translation":"کوچک"},{"text":"teuer","translation":"گران"},{"text":"dunkel","translation":"تاریک"},{"text":"ruhig","translation":"آرام"},{"text":"sicher","translation":"مطمئن"}]','Jetzt ist alles wieder in Ordnung','حالا دوباره همه چی روبراهه',NULL,NULL,'{"cefr":"B1","introducedInSeries":95}');
    SET v_w_041=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_042 FROM words WHERE course_id=v_course AND lemma='stehen' AND part_of_speech='verb' AND translation='قرار داشتن / ایستادن' ORDER BY id LIMIT 1;
  IF v_w_042 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: stehen | verb'; END IF;
  SELECT id INTO v_w_043 FROM words WHERE course_id=v_course AND lemma='nur' AND part_of_speech='adverb' AND translation='فقط' ORDER BY id LIMIT 1;
  IF v_w_043 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: nur | adverb'; END IF;
  SELECT id INTO v_w_044 FROM words WHERE course_id=v_course AND lemma='auf' AND part_of_speech='preposition' AND translation='روی / برای' ORDER BY id LIMIT 1;
  IF v_w_044 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: auf | preposition'; END IF;
  SELECT id INTO v_w_045 FROM words WHERE course_id=v_course AND lemma='Stufe' AND part_of_speech='noun' AND translation='درجه / سطح' ORDER BY id LIMIT 1;
  IF v_w_045 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Stufe','Stufe','noun','درجه / سطح',49,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Kaffee","translation":"قهوه"},{"text":"Zug","translation":"قطار"}]','Jetzt ist alles wieder in Ordnung','حالا دوباره همه چی روبراهه',NULL,NULL,'{"cefr":"B1","introducedInSeries":95}');
    SET v_w_045=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_046 FROM words WHERE course_id=v_course AND lemma='zwei' AND part_of_speech='number' AND translation='دو' ORDER BY id LIMIT 1;
  IF v_w_046 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zwei | number'; END IF;
  SELECT id INTO v_w_047 FROM words WHERE course_id=v_course AND lemma='stellen' AND part_of_speech='verb' AND translation='گذاشتن' ORDER BY id LIMIT 1;
  IF v_w_047 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: stellen | verb'; END IF;
  SELECT id INTO v_w_048 FROM words WHERE course_id=v_course AND lemma='vier' AND part_of_speech='number' AND translation='چهار' ORDER BY id LIMIT 1;
  IF v_w_048 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: vier | number'; END IF;
  SELECT id INTO v_w_049 FROM words WHERE course_id=v_course AND lemma='hören' AND part_of_speech='verb' AND translation='گوش دادن' ORDER BY id LIMIT 1;
  IF v_w_049 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: hören | verb'; END IF;
  SELECT id INTO v_w_050 FROM words WHERE course_id=v_course AND lemma='man' AND part_of_speech='pronoun' AND translation='آدم / کسی' ORDER BY id LIMIT 1;
  IF v_w_050 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'man','man','pronoun','آدم / کسی',49,'{"type":"pronoun"}','[{"text":"ich","translation":"من"},{"text":"du","translation":"تو"},{"text":"er","translation":"او"},{"text":"sie","translation":"او / آن‌ها"},{"text":"wir","translation":"ما"}]','Jetzt ist alles wieder in Ordnung','حالا دوباره همه چی روبراهه',NULL,NULL,'{"cefr":"B1","introducedInSeries":95}');
    SET v_w_050=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_051 FROM words WHERE course_id=v_course AND lemma='schon' AND part_of_speech='adverb' AND translation='قبلا / تا حالا' ORDER BY id LIMIT 1;
  IF v_w_051 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: schon | adverb'; END IF;
  SELECT id INTO v_w_052 FROM words WHERE course_id=v_course AND lemma='Wasser' AND part_of_speech='noun' AND translation='آب' ORDER BY id LIMIT 1;
  IF v_w_052 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Wasser | noun'; END IF;
  SELECT id INTO v_w_053 FROM words WHERE course_id=v_course AND lemma='nach' AND part_of_speech='preposition' AND translation='پس از / به' ORDER BY id LIMIT 1;
  IF v_w_053 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: nach | preposition'; END IF;
  SELECT id INTO v_w_054 FROM words WHERE course_id=v_course AND lemma='ein' AND part_of_speech='article' AND translation='یک / حرف تعریف نامعین' ORDER BY id LIMIT 1;
  IF v_w_054 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ein | article'; END IF;
  SELECT id INTO v_w_055 FROM words WHERE course_id=v_course AND lemma='paar' AND part_of_speech='determiner' AND translation='چند' ORDER BY id LIMIT 1;
  IF v_w_055 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: paar | determiner'; END IF;
  SELECT id INTO v_w_056 FROM words WHERE course_id=v_course AND lemma='Minute' AND part_of_speech='noun' AND translation='دقیقه' ORDER BY id LIMIT 1;
  IF v_w_056 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Minute | noun'; END IF;
  SELECT id INTO v_w_057 FROM words WHERE course_id=v_course AND lemma='sollen' AND part_of_speech='verb' AND translation='باید / قرار است' ORDER BY id LIMIT 1;
  IF v_w_057 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sollen | verb'; END IF;
  SELECT id INTO v_w_058 FROM words WHERE course_id=v_course AND lemma='Vermieter' AND part_of_speech='noun' AND translation='صاحبخانه' ORDER BY id LIMIT 1;
  IF v_w_058 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Vermieter','Vermieter','noun','صاحبخانه',49,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Kaffee","translation":"قهوه"},{"text":"Zug","translation":"قطار"}]','Jetzt ist alles wieder in Ordnung','حالا دوباره همه چی روبراهه',NULL,NULL,'{"cefr":"B1","introducedInSeries":95}');
    SET v_w_058=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_059 FROM words WHERE course_id=v_course AND lemma='kurz' AND part_of_speech='adjective' AND translation='کوتاه' ORDER BY id LIMIT 1;
  IF v_w_059 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: kurz | adjective'; END IF;
  SELECT id INTO v_w_060 FROM words WHERE course_id=v_course AND lemma='Bescheid' AND part_of_speech='noun' AND translation='خبر / اطلاع' ORDER BY id LIMIT 1;
  IF v_w_060 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Bescheid | noun'; END IF;
  SELECT id INTO v_w_061 FROM words WHERE course_id=v_course AND lemma='geben' AND part_of_speech='verb' AND translation='دادن' ORDER BY id LIMIT 1;
  IF v_w_061 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: geben | verb'; END IF;
  SELECT id INTO v_w_062 FROM words WHERE course_id=v_course AND lemma='schreiben' AND part_of_speech='verb' AND translation='نوشتن' ORDER BY id LIMIT 1;
  IF v_w_062 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: schreiben | verb'; END IF;
  SELECT id INTO v_w_063 FROM words WHERE course_id=v_course AND lemma='er' AND part_of_speech='pronoun' AND translation='او (مذکر)' ORDER BY id LIMIT 1;
  IF v_w_063 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: er | pronoun'; END IF;
  SELECT id INTO v_w_064 FROM words WHERE course_id=v_course AND lemma='Heizung' AND part_of_speech='noun' AND translation='سیستم گرمایشی / شوفاژ' ORDER BY id LIMIT 1;
  IF v_w_064 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Heizung | noun'; END IF;
  SELECT id INTO v_w_065 FROM words WHERE course_id=v_course AND lemma='möchten' AND part_of_speech='verb' AND translation='خواستن / مایل بودن' ORDER BY id LIMIT 1;
  IF v_w_065 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: möchten | verb'; END IF;
  SELECT id INTO v_w_066 FROM words WHERE course_id=v_course AND lemma='bestimmt' AND part_of_speech='adverb' AND translation='حتماً / احتمالاً' ORDER BY id LIMIT 1;
  IF v_w_066 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: bestimmt | adverb'; END IF;
  SELECT id INTO v_w_067 FROM words WHERE course_id=v_course AND lemma='wissen' AND part_of_speech='verb' AND translation='دانستن' ORDER BY id LIMIT 1;
  IF v_w_067 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wissen | verb'; END IF;
  SELECT id INTO v_w_068 FROM words WHERE course_id=v_course AND lemma='reparieren' AND part_of_speech='verb' AND translation='تعمیر کردن' ORDER BY id LIMIT 1;
  IF v_w_068 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: reparieren | verb'; END IF;
  SELECT id INTO v_w_069 FROM words WHERE course_id=v_course AND lemma='erwähnen' AND part_of_speech='verb' AND translation='ذکر کردن' ORDER BY id LIMIT 1;
  IF v_w_069 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'erwähnen','erwähnen','verb','ذکر کردن',49,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"kommen","translation":"آمدن"},{"text":"sehen","translation":"دیدن"},{"text":"bleiben","translation":"ماندن"},{"text":"schreiben","translation":"نوشتن"}]','Jetzt ist alles wieder in Ordnung','حالا دوباره همه چی روبراهه',NULL,NULL,'{"cefr":"B1","introducedInSeries":95}');
    SET v_w_069=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_070 FROM words WHERE course_id=v_course AND lemma='neu' AND part_of_speech='adjective' AND translation='جدید / تازه' ORDER BY id LIMIT 1;
  IF v_w_070 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: neu | adjective'; END IF;
  SELECT id INTO v_w_071 FROM words WHERE course_id=v_course AND lemma='Auftrag' AND part_of_speech='noun' AND translation='کار / سفارش' ORDER BY id LIMIT 1;
  IF v_w_071 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Auftrag','Auftrag','noun','کار / سفارش',49,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"},{"text":"Kaffee","translation":"قهوه"},{"text":"Zug","translation":"قطار"}]','Jetzt ist alles wieder in Ordnung','حالا دوباره همه چی روبراهه',NULL,NULL,'{"cefr":"B1","introducedInSeries":95}');
    SET v_w_071=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_072 FROM words WHERE course_id=v_course AND lemma='vollständig' AND part_of_speech='adverb' AND translation='به‌طور کامل' ORDER BY id LIMIT 1;
  IF v_w_072 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'vollständig','vollständig','adverb','به‌طور کامل',49,'{"type":"adverb"}','[{"text":"gestern","translation":"دیروز"},{"text":"dort","translation":"آنجا"},{"text":"langsam","translation":"آهسته"},{"text":"selten","translation":"به‌ندرت"},{"text":"später","translation":"بعداً"}]','Jetzt ist alles wieder in Ordnung','حالا دوباره همه چی روبراهه',NULL,NULL,'{"cefr":"B1","introducedInSeries":95}');
    SET v_w_072=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_073 FROM words WHERE course_id=v_course AND lemma='erledigen' AND part_of_speech='verb' AND translation='انجام دادن / تمام کردن' ORDER BY id LIMIT 1;
  IF v_w_073 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'erledigen','erledigen','verb','انجام دادن / تمام کردن',49,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"kommen","translation":"آمدن"},{"text":"sehen","translation":"دیدن"},{"text":"bleiben","translation":"ماندن"},{"text":"schreiben","translation":"نوشتن"}]','Jetzt ist alles wieder in Ordnung','حالا دوباره همه چی روبراهه',NULL,NULL,'{"cefr":"B1","introducedInSeries":95}');
    SET v_w_073=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_074 FROM words WHERE course_id=v_course AND lemma='danke' AND part_of_speech='interjection' AND translation='ممنون' ORDER BY id LIMIT 1;
  IF v_w_074 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: danke | interjection'; END IF;
  SELECT id INTO v_w_075 FROM words WHERE course_id=v_course AND lemma='Sie' AND part_of_speech='pronoun' AND translation='شما' ORDER BY id LIMIT 1;
  IF v_w_075 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Sie | pronoun'; END IF;
  SELECT id INTO v_w_076 FROM words WHERE course_id=v_course AND lemma='Problem' AND part_of_speech='noun' AND translation='مشکل' ORDER BY id LIMIT 1;
  IF v_w_076 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Problem | noun'; END IF;
  SELECT id INTO v_w_077 FROM words WHERE course_id=v_course AND lemma='so' AND part_of_speech='adverb' AND translation='این طور / آن طور' ORDER BY id LIMIT 1;
  IF v_w_077 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: so | adverb'; END IF;
  SELECT id INTO v_w_078 FROM words WHERE course_id=v_course AND lemma='lösen' AND part_of_speech='verb' AND translation='حل کردن' ORDER BY id LIMIT 1;
  IF v_w_078 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: lösen | verb'; END IF;
  SELECT id INTO v_w_079 FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_079 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: haben | verb'; END IF;
  SELECT id INTO v_w_080 FROM words WHERE course_id=v_course AND lemma='vor' AND part_of_speech='preposition' AND translation='از / جلوی' ORDER BY id LIMIT 1;
  IF v_w_080 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: vor | preposition'; END IF;
  SELECT id INTO v_w_081 FROM words WHERE course_id=v_course AND lemma='Woche' AND part_of_speech='noun' AND translation='هفته' ORDER BY id LIMIT 1;
  IF v_w_081 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Woche | noun'; END IF;
  SELECT id INTO v_w_082 FROM words WHERE course_id=v_course AND lemma='hier' AND part_of_speech='adverb' AND translation='اینجا' ORDER BY id LIMIT 1;
  IF v_w_082 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: hier | adverb'; END IF;
  SELECT id INTO v_w_083 FROM words WHERE course_id=v_course AND lemma='ziemlich' AND part_of_speech='adverb' AND translation='نسبتا / خیلی' ORDER BY id LIMIT 1;
  IF v_w_083 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ziemlich | adverb'; END IF;
  SELECT id INTO v_w_084 FROM words WHERE course_id=v_course AND lemma='kalt' AND part_of_speech='adjective' AND translation='سرد' ORDER BY id LIMIT 1;
  IF v_w_084 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'kalt','kalt','adjective','سرد',49,'{"type":"adjective"}','[{"text":"klein","translation":"کوچک"},{"text":"teuer","translation":"گران"},{"text":"dunkel","translation":"تاریک"},{"text":"ruhig","translation":"آرام"},{"text":"sicher","translation":"مطمئن"}]','Jetzt ist alles wieder in Ordnung','حالا دوباره همه چی روبراهه',NULL,NULL,'{"cefr":"B1","introducedInSeries":95}');
    SET v_w_084=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_085 FROM words WHERE course_id=v_course AND lemma='zu' AND part_of_speech='preposition' AND translation='به / به سمت' ORDER BY id LIMIT 1;
  IF v_w_085 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zu | preposition'; END IF;
  SELECT id INTO v_w_086 FROM words WHERE course_id=v_course AND lemma='Glück' AND part_of_speech='noun' AND translation='خوش‌شانسی' ORDER BY id LIMIT 1;
  IF v_w_086 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Glück | noun'; END IF;
  SELECT id INTO v_w_087 FROM words WHERE course_id=v_course AND lemma='gemeinsam' AND part_of_speech='adverb' AND translation='با هم / مشترک' ORDER BY id LIMIT 1;
  IF v_w_087 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: gemeinsam | adverb'; END IF;
  SELECT id INTO v_w_088 FROM words WHERE course_id=v_course AND lemma='Lösung' AND part_of_speech='noun' AND translation='راه حل' ORDER BY id LIMIT 1;
  IF v_w_088 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Lösung | noun'; END IF;
  SELECT id INTO v_w_089 FROM words WHERE course_id=v_course AND lemma='finden' AND part_of_speech='verb' AND translation='پیدا کردن' ORDER BY id LIMIT 1;
  IF v_w_089 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: finden | verb'; END IF;
  SELECT id INTO v_w_090 FROM words WHERE course_id=v_course AND lemma='Gespräch' AND part_of_speech='noun' AND translation='گفتگو' ORDER BY id LIMIT 1;
  IF v_w_090 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Gespräch | noun'; END IF;
  SELECT id INTO v_w_091 FROM words WHERE course_id=v_course AND lemma='mit' AND part_of_speech='preposition' AND translation='با' ORDER BY id LIMIT 1;
  IF v_w_091 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: mit | preposition'; END IF;
  SELECT id INTO v_w_092 FROM words WHERE course_id=v_course AND lemma='Nachbar' AND part_of_speech='noun' AND translation='همسایه' ORDER BY id LIMIT 1;
  IF v_w_092 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Nachbar | noun'; END IF;
  SELECT id INTO v_w_093 FROM words WHERE course_id=v_course AND lemma='hilfreich' AND part_of_speech='adjective' AND translation='کمک کننده' ORDER BY id LIMIT 1;
  IF v_w_093 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: hilfreich | adjective'; END IF;
  SELECT id INTO v_w_094 FROM words WHERE course_id=v_course AND lemma='wer' AND part_of_speech='pronoun' AND translation='چه کسی / کی' ORDER BY id LIMIT 1;
  IF v_w_094 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wer | pronoun'; END IF;
  SELECT id INTO v_w_095 FROM words WHERE course_id=v_course AND lemma='bei' AND part_of_speech='preposition' AND translation='هنگام / موقع' ORDER BY id LIMIT 1;
  IF v_w_095 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: bei | preposition'; END IF;
  SELECT id INTO v_w_096 FROM words WHERE course_id=v_course AND lemma='anrufen' AND part_of_speech='verb' AND translation='زنگ زدن / تماس گرفتن' ORDER BY id LIMIT 1;
  IF v_w_096 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: anrufen | verb'; END IF;
  SELECT id INTO v_w_097 FROM words WHERE course_id=v_course AND lemma='können' AND part_of_speech='verb' AND translation='توانستن / بتوان' ORDER BY id LIMIT 1;
  IF v_w_097 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: können | verb'; END IF;
  SELECT id INTO v_w_098 FROM words WHERE course_id=v_course AND lemma='und' AND part_of_speech='conjunction' AND translation='و' ORDER BY id LIMIT 1;
  IF v_w_098 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: und | conjunction'; END IF;
  SELECT id INTO v_w_099 FROM words WHERE course_id=v_course AND lemma='kennen' AND part_of_speech='verb' AND translation='شناختن' ORDER BY id LIMIT 1;
  IF v_w_099 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: kennen | verb'; END IF;
  SELECT id INTO v_w_100 FROM words WHERE course_id=v_course AND lemma='unser' AND part_of_speech='determiner' AND translation='مال ما / ما' ORDER BY id LIMIT 1;
  IF v_w_100 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: unser | determiner'; END IF;
  SELECT id INTO v_w_101 FROM words WHERE course_id=v_course AND lemma='Haus' AND part_of_speech='noun' AND translation='خانه' ORDER BY id LIMIT 1;
  IF v_w_101 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Haus | noun'; END IF;
  SELECT id INTO v_w_102 FROM words WHERE course_id=v_course AND lemma='viel' AND part_of_speech='adverb' AND translation='خیلی' ORDER BY id LIMIT 1;
  IF v_w_102 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: viel | adverb'; END IF;
  SELECT id INTO v_w_103 FROM words WHERE course_id=v_course AND lemma='besser' AND part_of_speech='adverb' AND translation='بهتر' ORDER BY id LIMIT 1;
  IF v_w_103 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: besser | adverb'; END IF;
  SELECT id INTO v_w_104 FROM words WHERE course_id=v_course AND lemma='Abend' AND part_of_speech='noun' AND translation='عصر / شب' ORDER BY id LIMIT 1;
  IF v_w_104 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Abend | noun'; END IF;
  SELECT id INTO v_w_105 FROM words WHERE course_id=v_course AND lemma='genießen' AND part_of_speech='verb' AND translation='لذت بردن' ORDER BY id LIMIT 1;
  IF v_w_105 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'genießen','genießen','verb','لذت بردن',49,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"kommen","translation":"آمدن"},{"text":"sehen","translation":"دیدن"},{"text":"bleiben","translation":"ماندن"},{"text":"schreiben","translation":"نوشتن"}]','Jetzt ist alles wieder in Ordnung','حالا دوباره همه چی روبراهه',NULL,NULL,'{"cefr":"B1","introducedInSeries":95}');
    SET v_w_105=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_106 FROM words WHERE course_id=v_course AND lemma='Jetzt ist alles wieder in Ordnung.' AND part_of_speech='phrase' AND translation='حالا دوباره همه‌چیز روبه‌راه است.' ORDER BY id LIMIT 1;
  IF v_w_106 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Jetzt ist alles wieder in Ordnung.','Jetzt ist alles wieder in Ordnung.','phrase','حالا دوباره همه‌چیز روبه‌راه است.',49,'{"type":"phrase"}','[{"text":"Guten Morgen.","translation":"صبح بخیر."},{"text":"Wie geht es dir?","translation":"حالت چطور است؟"},{"text":"Bis später.","translation":"تا بعد."},{"text":"Ich weiß es nicht.","translation":"نمی‌دانم."},{"text":"Das ist eine gute Idee.","translation":"این فکر خوبی است."}]','Jetzt ist alles wieder in Ordnung','حالا دوباره همه چی روبراهه',NULL,NULL,'{"cefr":"B1","introducedInSeries":95,"wordAudioEligible":false,"wordAudioEligibilityReason":"sentence_phrase"}');
    SET v_w_106=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_107 FROM words WHERE course_id=v_course AND lemma='Nach ein paar Minuten wird der Heizkörper wärmer.' AND part_of_speech='phrase' AND translation='بعد از چند دقیقه رادیاتور گرم‌تر می‌شود.' ORDER BY id LIMIT 1;
  IF v_w_107 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Nach ein paar Minuten wird der Heizkörper wärmer.','Nach ein paar Minuten wird der Heizkörper wärmer.','phrase','بعد از چند دقیقه رادیاتور گرم‌تر می‌شود.',49,'{"type":"phrase"}','[{"text":"Guten Morgen.","translation":"صبح بخیر."},{"text":"Wie geht es dir?","translation":"حالت چطور است؟"},{"text":"Bis später.","translation":"تا بعد."},{"text":"Ich weiß es nicht.","translation":"نمی‌دانم."},{"text":"Das ist eine gute Idee.","translation":"این فکر خوبی است."}]','Jetzt ist alles wieder in Ordnung','حالا دوباره همه چی روبراهه',NULL,NULL,'{"cefr":"B1","introducedInSeries":95,"wordAudioEligible":false,"wordAudioEligibilityReason":"sentence_phrase"}');
    SET v_w_107=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_108 FROM words WHERE course_id=v_course AND lemma='Danke, dass Sie das Problem so schnell gelöst haben.' AND part_of_speech='phrase' AND translation='ممنون که مشکل را این‌قدر سریع حل کردید.' ORDER BY id LIMIT 1;
  IF v_w_108 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Danke, dass Sie das Problem so schnell gelöst haben.','Danke, dass Sie das Problem so schnell gelöst haben.','phrase','ممنون که مشکل را این‌قدر سریع حل کردید.',49,'{"type":"phrase"}','[{"text":"Guten Morgen.","translation":"صبح بخیر."},{"text":"Wie geht es dir?","translation":"حالت چطور است؟"},{"text":"Bis später.","translation":"تا بعد."},{"text":"Ich weiß es nicht.","translation":"نمی‌دانم."},{"text":"Das ist eine gute Idee.","translation":"این فکر خوبی است."}]','Jetzt ist alles wieder in Ordnung','حالا دوباره همه چی روبراهه',NULL,NULL,'{"cefr":"B1","introducedInSeries":95,"wordAudioEligible":false,"wordAudioEligibilityReason":"sentence_phrase"}');
    SET v_w_108=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_109 FROM words WHERE course_id=v_course AND lemma='Endlich können wir den Abend wieder entspannt genießen.' AND part_of_speech='phrase' AND translation='بالاخره می‌توانیم دوباره از عصر آراممان لذت ببریم.' ORDER BY id LIMIT 1;
  IF v_w_109 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Endlich können wir den Abend wieder entspannt genießen.','Endlich können wir den Abend wieder entspannt genießen.','phrase','بالاخره می‌توانیم دوباره از عصر آراممان لذت ببریم.',49,'{"type":"phrase"}','[{"text":"Guten Morgen.","translation":"صبح بخیر."},{"text":"Wie geht es dir?","translation":"حالت چطور است؟"},{"text":"Bis später.","translation":"تا بعد."},{"text":"Ich weiß es nicht.","translation":"نمی‌دانم."},{"text":"Das ist eine gute Idee.","translation":"این فکر خوبی است."}]','Jetzt ist alles wieder in Ordnung','حالا دوباره همه چی روبراهه',NULL,NULL,'{"cefr":"B1","introducedInSeries":95,"wordAudioEligible":false,"wordAudioEligibilityReason":"sentence_phrase"}');
    SET v_w_109=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_110 FROM words WHERE course_id=v_course AND lemma='entspannt' AND part_of_speech='adjective' AND translation='آرام تر' ORDER BY id LIMIT 1;
  IF v_w_110 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: entspannt | adjective'; END IF;
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_jonas,v_c_anna,'Endlich wieder warm','بالاخره دوباره گرم','Anna und Jonas prüfen nach der Reparatur die Wärme in ihrer Wohnung.','آنا و یوناس بعد از تعمیر، گرمای خانه را بررسی می‌کنند.','story','anna-jonas-b1-neighborhood',17,49,165,1,'validated','{"relationship":"couple","context":"repair-resolution","cefr":"B1","storyArc":"check-adjust-report-reflect"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_jonas,1,'character','Heute Morgen ist die Wohnung endlich warm.','امروز صبح خانه بالاخره گرم است.',49,NULL,NULL,NULL,NULL,'[{"surface":"Heute","lemma":"heute","translation":"امروز","partOfSpeech":"adverb"},{"surface":"Morgen","lemma":"Morgen","translation":"صبح","partOfSpeech":"noun"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","form":"present_3sg"},{"surface":"die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"nominative_feminine"},{"surface":"Wohnung","lemma":"Wohnung","translation":"خانه / آپارتمان","partOfSpeech":"noun"},{"surface":"endlich","lemma":"endlich","translation":"بالاخره","partOfSpeech":"adverb"},{"surface":"warm","lemma":"warm","translation":"گرم","partOfSpeech":"adjective","suffix":"."}]','Ergebnis und Zustand beschreiben','برای توضیح نتیجهٔ یک تعمیر می‌توان از جمله‌های نتیجه، مجهول و قیدهای زمانی استفاده کرد.','{"focus":"result_and_state","review":["passive","dass_clause","time_adverbials"]}','{"cefr":"B1","course":"de-fa","series":95}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,2,'learner','Jetzt ist alles wieder in Ordnung.','حالا دوباره همه‌چیز روبه‌راه است.',49,NULL,NULL,'jetzt ist alles wieder in ordnung',NULL,'[{"surface":"Jetzt","lemma":"jetzt","translation":"حالا / اکنون","partOfSpeech":"adverb"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","form":"present_3sg"},{"surface":"alles","lemma":"alles","translation":"همه چیز","partOfSpeech":"pronoun"},{"surface":"wieder","lemma":"wieder","translation":"دوباره","partOfSpeech":"adverb"},{"surface":"in","lemma":"in","translation":"در / داخل","partOfSpeech":"preposition"},{"surface":"Ordnung","lemma":"Ordnung","translation":"نظم / وضعیت درست","partOfSpeech":"noun","suffix":"."}]','Ergebnis und Zustand beschreiben','برای توضیح نتیجهٔ یک تعمیر می‌توان از جمله‌های نتیجه، مجهول و قیدهای زمانی استفاده کرد.','{"focus":"result_and_state","review":["passive","dass_clause","time_adverbials"]}','{"cefr":"B1","course":"de-fa","series":95}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_jonas,3,'character','Funktionieren auch die Heizkörper im Schlafzimmer?','رادیاتورهای اتاق خواب هم کار می‌کنند؟',49,NULL,NULL,NULL,NULL,'[{"surface":"Funktionieren","lemma":"funktionieren","translation":"کار کردن / درست کار کردن","partOfSpeech":"verb","form":"present_3pl"},{"surface":"auch","lemma":"auch","translation":"هم / همچنین","partOfSpeech":"adverb"},{"surface":"die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"nominative_feminine"},{"surface":"Heizkörper","lemma":"Heizkörper","translation":"رادیاتور","partOfSpeech":"noun"},{"surface":"im","lemma":"in","translation":"در / داخل","partOfSpeech":"preposition","form":"dative_neuter_contraction"},{"surface":"Schlafzimmer","lemma":"Schlafzimmer","translation":"اتاق خواب","partOfSpeech":"noun","suffix":"?"}]','Ergebnis und Zustand beschreiben','برای توضیح نتیجهٔ یک تعمیر می‌توان از جمله‌های نتیجه، مجهول و قیدهای زمانی استفاده کرد.','{"focus":"result_and_state","review":["passive","dass_clause","time_adverbials"]}','{"cefr":"B1","course":"de-fa","series":95}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,4,'learner','Ja, dort wird es schnell warm.','بله، آنجا سریع گرم می‌شود.',49,NULL,NULL,'ja dort wird es schnell warm',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"dort","lemma":"dort","translation":"آنجا","partOfSpeech":"adverb"},{"surface":"wird","lemma":"werden","translation":"شدن / خواهد","partOfSpeech":"verb","form":"present_3sg"},{"surface":"es","lemma":"es","translation":"آن / این","partOfSpeech":"pronoun"},{"surface":"schnell","lemma":"schnell","translation":"سریع تر","partOfSpeech":"adverb"},{"surface":"warm","lemma":"warm","translation":"گرم","partOfSpeech":"adjective","suffix":"."}]','Ergebnis und Zustand beschreiben','برای توضیح نتیجهٔ یک تعمیر می‌توان از جمله‌های نتیجه، مجهول و قیدهای زمانی استفاده کرد.','{"focus":"result_and_state","review":["passive","dass_clause","time_adverbials"]}','{"cefr":"B1","course":"de-fa","series":95}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_jonas,5,'character','Dann war die Reparatur erfolgreich.','پس تعمیر موفقیت‌آمیز بود.',49,NULL,NULL,NULL,NULL,'[{"surface":"Dann","lemma":"dann","translation":"بعد / سپس","partOfSpeech":"adverb"},{"surface":"war","lemma":"sein","translation":"بودن","partOfSpeech":"verb","form":"preterite_3sg"},{"surface":"die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"nominative_feminine"},{"surface":"Reparatur","lemma":"Reparatur","translation":"تعمیر","partOfSpeech":"noun"},{"surface":"erfolgreich","lemma":"erfolgreich","translation":"موفق / موفقیت‌آمیز","partOfSpeech":"adjective","suffix":"."}]','Ergebnis und Zustand beschreiben','برای توضیح نتیجهٔ یک تعمیر می‌توان از جمله‌های نتیجه، مجهول و قیدهای زمانی استفاده کرد.','{"focus":"result_and_state","review":["passive","dass_clause","time_adverbials"]}','{"cefr":"B1","course":"de-fa","series":95}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,6,'learner','Ich bin froh, dass wir nicht mehr frieren müssen.','خوشحالم که دیگر مجبور نیستیم سرما بخوریم.',49,NULL,NULL,'ich bin froh dass wir nicht mehr frieren müssen',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"bin","lemma":"sein","translation":"بودن","partOfSpeech":"verb","form":"present_1sg"},{"surface":"froh","lemma":"froh","translation":"خوشحال","partOfSpeech":"adjective","suffix":","},{"surface":"dass","lemma":"dass","translation":"که","partOfSpeech":"conjunction"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"nicht","lemma":"nicht","translation":"نه / نیست","partOfSpeech":"particle"},{"surface":"mehr","lemma":"mehr","translation":"دیگه / بیشتر","partOfSpeech":"adverb"},{"surface":"frieren","lemma":"frieren","translation":"سرما خوردن / یخ کردن","partOfSpeech":"verb","form":"infinitive"},{"surface":"müssen","lemma":"müssen","translation":"مجبور بودن / باید","partOfSpeech":"verb","form":"present_1pl","suffix":"."}]','Ergebnis und Zustand beschreiben','برای توضیح نتیجهٔ یک تعمیر می‌توان از جمله‌های نتیجه، مجهول و قیدهای زمانی استفاده کرد.','{"focus":"result_and_state","review":["passive","dass_clause","time_adverbials"]}','{"cefr":"B1","course":"de-fa","series":95}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_003,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_004,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_006,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_007,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_010,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_011,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_014,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_015,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_016,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_017,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_018,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_019,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_020,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_021,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_022,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_023,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_024,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_025,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_026,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_027,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_028,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_029,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_030,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_031,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_032,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_106,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_106,'عبارت کلیدی درس',NULL,49,NULL,'{"cefr":"B1","series":95}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',2,NULL,v_w_012,'واژهٔ کلیدی درس',NULL,49,NULL,'{"cefr":"B1","series":95}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',3,v_t_1,NULL,'به جملهٔ یوناس گوش کن',NULL,49,NULL,'{"cefr":"B1","series":95}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',4,v_t_2,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,49,NULL,'{"cefr":"B1","series":95}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',5,v_t_5,NULL,'به جملهٔ بعدی گوش کن',NULL,49,NULL,'{"cefr":"B1","series":95}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',6,v_t_6,NULL,'پاسخ را با صدای بلند بگو',NULL,49,NULL,'{"cefr":"B1","series":95}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',7,NULL,v_w_012,'معنی واژهٔ کلیدی را انتخاب کن',NULL,49,'{"mode":"word_translation","question":"Ordnung در این درس چه معنی دارد؟","choices":["نظم / وضعیت درست","سفر با قطار","غذای تازه"],"correctIndex":0}','{"cefr":"B1","series":95}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و پاسخ بده',NULL,49,'{"source":"lesson_story","question":"بعد از تعمیر وضعیت خانه چگونه است؟","choices":["دوباره گرم و مرتب است","هنوز کاملاً سرد است","آب ساختمان قطع است"],"correctIndex":0}','{"cefr":"B1","series":95}');
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_jonas,v_c_anna,'Das letzte Ventil prüfen','بررسی آخرین شیر','Ein Heizkörper ist noch kühl, deshalb kontrollieren Anna und Jonas das Ventil.','یک رادیاتور هنوز خنک است، برای همین آنا و یوناس شیر آن را بررسی می‌کنند.','story','anna-jonas-b1-neighborhood',18,49,165,2,'validated','{"relationship":"couple","context":"repair-resolution","cefr":"B1","storyArc":"check-adjust-report-reflect"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_jonas,1,'character','Im Bad ist der Heizkörper noch etwas kühl.','رادیاتور حمام هنوز کمی خنک است.',49,NULL,NULL,NULL,NULL,'[{"surface":"Im","lemma":"in","translation":"در / داخل","partOfSpeech":"preposition","form":"dative_neuter_contraction"},{"surface":"Bad","lemma":"Bad","translation":"حمام","partOfSpeech":"noun"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","form":"present_3sg"},{"surface":"der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"nominative_masculine"},{"surface":"Heizkörper","lemma":"Heizkörper","translation":"رادیاتور","partOfSpeech":"noun"},{"surface":"noch","lemma":"noch","translation":"هنوز","partOfSpeech":"adverb"},{"surface":"etwas","lemma":"etwas","translation":"چیزی / یک چیزی","partOfSpeech":"pronoun"},{"surface":"kühl","lemma":"kühl","translation":"خنک","partOfSpeech":"adjective","suffix":"."}]','Ergebnis und Zustand beschreiben','برای توضیح نتیجهٔ یک تعمیر می‌توان از جمله‌های نتیجه، مجهول و قیدهای زمانی استفاده کرد.','{"focus":"result_and_state","review":["passive","dass_clause","time_adverbials"]}','{"cefr":"B1","course":"de-fa","series":95}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,2,'learner','Ich prüfe zuerst, ob das Ventil offen ist.','اول بررسی می‌کنم که شیر باز است یا نه.',49,NULL,NULL,'ich prüfe zuerst ob das ventil offen ist',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"prüfe","lemma":"prüfen","translation":"بررسی کردن","partOfSpeech":"verb","form":"present_1sg"},{"surface":"zuerst","lemma":"zuerst","translation":"اول / ابتدا","partOfSpeech":"adverb","suffix":","},{"surface":"ob","lemma":"ob","translation":"آیا / اینکه","partOfSpeech":"conjunction"},{"surface":"das","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"nominative_neuter"},{"surface":"Ventil","lemma":"Ventil","translation":"شیر / دریچه","partOfSpeech":"noun"},{"surface":"offen","lemma":"offen","translation":"باز","partOfSpeech":"adjective"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","form":"present_3sg","suffix":"."}]','Ergebnis und Zustand beschreiben','برای توضیح نتیجهٔ یک تعمیر می‌توان از جمله‌های نتیجه، مجهول و قیدهای زمانی استفاده کرد.','{"focus":"result_and_state","review":["passive","dass_clause","time_adverbials"]}','{"cefr":"B1","course":"de-fa","series":95}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_jonas,3,'character','Es steht nur auf Stufe zwei.','فقط روی درجهٔ دو قرار دارد.',49,NULL,NULL,NULL,NULL,'[{"surface":"Es","lemma":"es","translation":"آن / این","partOfSpeech":"pronoun"},{"surface":"steht","lemma":"stehen","translation":"قرار داشتن / ایستادن","partOfSpeech":"verb","form":"present_3sg"},{"surface":"nur","lemma":"nur","translation":"فقط","partOfSpeech":"adverb"},{"surface":"auf","lemma":"auf","translation":"روی / برای","partOfSpeech":"preposition"},{"surface":"Stufe","lemma":"Stufe","translation":"درجه / سطح","partOfSpeech":"noun"},{"surface":"zwei","lemma":"zwei","translation":"دو","partOfSpeech":"number","suffix":"."}]','Ergebnis und Zustand beschreiben','برای توضیح نتیجهٔ یک تعمیر می‌توان از جمله‌های نتیجه، مجهول و قیدهای زمانی استفاده کرد.','{"focus":"result_and_state","review":["passive","dass_clause","time_adverbials"]}','{"cefr":"B1","course":"de-fa","series":95}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,4,'learner','Dann stelle ich es auf Stufe vier.','پس آن را روی درجهٔ چهار می‌گذارم.',49,NULL,NULL,'dann stelle ich es auf stufe vier',NULL,'[{"surface":"Dann","lemma":"dann","translation":"بعد / سپس","partOfSpeech":"adverb"},{"surface":"stelle","lemma":"stellen","translation":"گذاشتن","partOfSpeech":"verb","form":"present_1sg"},{"surface":"ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"es","lemma":"es","translation":"آن / این","partOfSpeech":"pronoun"},{"surface":"auf","lemma":"auf","translation":"روی / برای","partOfSpeech":"preposition"},{"surface":"Stufe","lemma":"Stufe","translation":"درجه / سطح","partOfSpeech":"noun"},{"surface":"vier","lemma":"vier","translation":"چهار","partOfSpeech":"number","suffix":"."}]','Ergebnis und Zustand beschreiben','برای توضیح نتیجهٔ یک تعمیر می‌توان از جمله‌های نتیجه، مجهول و قیدهای زمانی استفاده کرد.','{"focus":"result_and_state","review":["passive","dass_clause","time_adverbials"]}','{"cefr":"B1","course":"de-fa","series":95}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_jonas,5,'character','Jetzt hört man schon das Wasser.','حالا صدای آب شنیده می‌شود.',49,NULL,NULL,NULL,NULL,'[{"surface":"Jetzt","lemma":"jetzt","translation":"حالا / اکنون","partOfSpeech":"adverb"},{"surface":"hört","lemma":"hören","translation":"گوش دادن","partOfSpeech":"verb","form":"present_3sg"},{"surface":"man","lemma":"man","translation":"آدم / کسی","partOfSpeech":"pronoun"},{"surface":"schon","lemma":"schon","translation":"قبلا / تا حالا","partOfSpeech":"adverb"},{"surface":"das","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"nominative_neuter"},{"surface":"Wasser","lemma":"Wasser","translation":"آب","partOfSpeech":"noun","suffix":"."}]','Ergebnis und Zustand beschreiben','برای توضیح نتیجهٔ یک تعمیر می‌توان از جمله‌های نتیجه، مجهول و قیدهای زمانی استفاده کرد.','{"focus":"result_and_state","review":["passive","dass_clause","time_adverbials"]}','{"cefr":"B1","course":"de-fa","series":95}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,6,'learner','Nach ein paar Minuten wird der Heizkörper wärmer.','بعد از چند دقیقه رادیاتور گرم‌تر می‌شود.',49,NULL,NULL,'nach ein paar minuten wird der heizkörper wärmer',NULL,'[{"surface":"Nach","lemma":"nach","translation":"پس از / به","partOfSpeech":"preposition"},{"surface":"ein","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","form":"dative_plural"},{"surface":"paar","lemma":"paar","translation":"چند","partOfSpeech":"determiner"},{"surface":"Minuten","lemma":"Minute","translation":"دقیقه","partOfSpeech":"noun","form":"dative_plural"},{"surface":"wird","lemma":"werden","translation":"شدن / خواهد","partOfSpeech":"verb","form":"present_3sg"},{"surface":"der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"nominative_masculine"},{"surface":"Heizkörper","lemma":"Heizkörper","translation":"رادیاتور","partOfSpeech":"noun"},{"surface":"wärmer","lemma":"warm","translation":"گرم","partOfSpeech":"adjective","form":"comparative","suffix":"."}]','Ergebnis und Zustand beschreiben','برای توضیح نتیجهٔ یک تعمیر می‌توان از جمله‌های نتیجه، مجهول و قیدهای زمانی استفاده کرد.','{"focus":"result_and_state","review":["passive","dass_clause","time_adverbials"]}','{"cefr":"B1","course":"de-fa","series":95}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_011,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_033,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_003,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_004,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_015,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_034,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_035,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_036,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_025,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_037,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_038,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_039,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_040,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_041,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_020,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_042,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_043,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_044,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_045,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_046,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_022,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_047,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_048,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_049,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_050,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_051,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_052,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_053,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_054,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_055,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_056,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_019,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_007,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_107,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_107,'عبارت کلیدی درس',NULL,49,NULL,'{"cefr":"B1","series":95}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',2,NULL,v_w_045,'واژهٔ کلیدی درس',NULL,49,NULL,'{"cefr":"B1","series":95}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',3,v_t_7,NULL,'به جملهٔ یوناس گوش کن',NULL,49,NULL,'{"cefr":"B1","series":95}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',4,v_t_8,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,49,NULL,'{"cefr":"B1","series":95}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',5,v_t_11,NULL,'به جملهٔ بعدی گوش کن',NULL,49,NULL,'{"cefr":"B1","series":95}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',6,v_t_12,NULL,'پاسخ را با صدای بلند بگو',NULL,49,NULL,'{"cefr":"B1","series":95}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',7,NULL,v_w_045,'معنی واژهٔ کلیدی را انتخاب کن',NULL,49,'{"mode":"word_translation","question":"Stufe در این درس چه معنی دارد؟","choices":["درجه / سطح","سفر با قطار","غذای تازه"],"correctIndex":0}','{"cefr":"B1","series":95}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و پاسخ بده',NULL,49,'{"source":"lesson_story","question":"آنا برای گرم‌تر شدن رادیاتور چه می‌کند؟","choices":["شیر را روی درجهٔ چهار می‌گذارد","پنجره را باز می‌کند","آب را قطع می‌کند"],"correctIndex":0}','{"cefr":"B1","series":95}');
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_jonas,v_c_anna,'Dem Vermieter Bescheid geben','خبر دادن به صاحبخانه','Anna meldet dem Vermieter, dass die Reparatur erfolgreich abgeschlossen wurde.','آنا به صاحبخانه خبر می‌دهد که تعمیر با موفقیت تمام شده است.','story','anna-jonas-b1-neighborhood',19,49,165,3,'validated','{"relationship":"couple","context":"repair-resolution","cefr":"B1","storyArc":"check-adjust-report-reflect"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_jonas,1,'character','Sollen wir dem Vermieter kurz Bescheid geben?','به صاحبخانه کوتاه خبر بدهیم؟',49,NULL,NULL,NULL,NULL,'[{"surface":"Sollen","lemma":"sollen","translation":"باید / قرار است","partOfSpeech":"verb","form":"present_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"dem","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"dative_masculine"},{"surface":"Vermieter","lemma":"Vermieter","translation":"صاحبخانه","partOfSpeech":"noun"},{"surface":"kurz","lemma":"kurz","translation":"کوتاه","partOfSpeech":"adjective"},{"surface":"Bescheid","lemma":"Bescheid","translation":"خبر / اطلاع","partOfSpeech":"noun"},{"surface":"geben","lemma":"geben","translation":"دادن","partOfSpeech":"verb","form":"infinitive","suffix":"?"}]','Ergebnis und Zustand beschreiben','برای توضیح نتیجهٔ یک تعمیر می‌توان از جمله‌های نتیجه، مجهول و قیدهای زمانی استفاده کرد.','{"focus":"result_and_state","review":["passive","dass_clause","time_adverbials"]}','{"cefr":"B1","course":"de-fa","series":95}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,2,'learner','Ja, ich schreibe ihm, dass die Heizung wieder funktioniert.','بله، برایش می‌نویسم که سیستم گرمایشی دوباره کار می‌کند.',49,NULL,NULL,'ja ich schreibe ihm dass die heizung wieder funktioniert',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"schreibe","lemma":"schreiben","translation":"نوشتن","partOfSpeech":"verb","form":"present_1sg"},{"surface":"ihm","lemma":"er","translation":"او (مذکر)","partOfSpeech":"pronoun","form":"dative_masculine","suffix":","},{"surface":"dass","lemma":"dass","translation":"که","partOfSpeech":"conjunction"},{"surface":"die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"nominative_feminine"},{"surface":"Heizung","lemma":"Heizung","translation":"سیستم گرمایشی / شوفاژ","partOfSpeech":"noun"},{"surface":"wieder","lemma":"wieder","translation":"دوباره","partOfSpeech":"adverb"},{"surface":"funktioniert","lemma":"funktionieren","translation":"کار کردن / درست کار کردن","partOfSpeech":"verb","form":"present_3sg","suffix":"."}]','Ergebnis und Zustand beschreiben','برای توضیح نتیجهٔ یک تعمیر می‌توان از جمله‌های نتیجه، مجهول و قیدهای زمانی استفاده کرد.','{"focus":"result_and_state","review":["passive","dass_clause","time_adverbials"]}','{"cefr":"B1","course":"de-fa","series":95}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_jonas,3,'character','Er möchte bestimmt wissen, ob alles repariert wurde.','احتمالاً می‌خواهد بداند همه‌چیز تعمیر شده یا نه.',49,NULL,NULL,NULL,NULL,'[{"surface":"Er","lemma":"er","translation":"او (مذکر)","partOfSpeech":"pronoun"},{"surface":"möchte","lemma":"möchten","translation":"خواستن / مایل بودن","partOfSpeech":"verb","form":"present_3sg"},{"surface":"bestimmt","lemma":"bestimmt","translation":"حتماً / احتمالاً","partOfSpeech":"adverb"},{"surface":"wissen","lemma":"wissen","translation":"دانستن","partOfSpeech":"verb","form":"infinitive","suffix":","},{"surface":"ob","lemma":"ob","translation":"آیا / اینکه","partOfSpeech":"conjunction"},{"surface":"alles","lemma":"alles","translation":"همه چیز","partOfSpeech":"pronoun"},{"surface":"repariert","lemma":"reparieren","translation":"تعمیر کردن","partOfSpeech":"verb","form":"participle_II"},{"surface":"wurde","lemma":"werden","translation":"شدن / خواهد","partOfSpeech":"verb","form":"preterite_3sg","suffix":"."}]','Ergebnis und Zustand beschreiben','برای توضیح نتیجهٔ یک تعمیر می‌توان از جمله‌های نتیجه، مجهول و قیدهای زمانی استفاده کرد.','{"focus":"result_and_state","review":["passive","dass_clause","time_adverbials"]}','{"cefr":"B1","course":"de-fa","series":95}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,4,'learner','Ich erwähne auch das neue Ventil im Schlafzimmer.','شیر جدید اتاق خواب را هم ذکر می‌کنم.',49,NULL,NULL,'ich erwähne auch das neue ventil im schlafzimmer',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"erwähne","lemma":"erwähnen","translation":"ذکر کردن","partOfSpeech":"verb","form":"present_1sg"},{"surface":"auch","lemma":"auch","translation":"هم / همچنین","partOfSpeech":"adverb"},{"surface":"das","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"nominative_neuter"},{"surface":"neue","lemma":"neu","translation":"جدید / تازه","partOfSpeech":"adjective","form":"accusative_neuter"},{"surface":"Ventil","lemma":"Ventil","translation":"شیر / دریچه","partOfSpeech":"noun"},{"surface":"im","lemma":"in","translation":"در / داخل","partOfSpeech":"preposition","form":"dative_neuter_contraction"},{"surface":"Schlafzimmer","lemma":"Schlafzimmer","translation":"اتاق خواب","partOfSpeech":"noun","suffix":"."}]','Ergebnis und Zustand beschreiben','برای توضیح نتیجهٔ یک تعمیر می‌توان از جمله‌های نتیجه، مجهول و قیدهای زمانی استفاده کرد.','{"focus":"result_and_state","review":["passive","dass_clause","time_adverbials"]}','{"cefr":"B1","course":"de-fa","series":95}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_jonas,5,'character','Dann ist der Auftrag vollständig erledigt.','پس کار به‌طور کامل انجام شده است.',49,NULL,NULL,NULL,NULL,'[{"surface":"Dann","lemma":"dann","translation":"بعد / سپس","partOfSpeech":"adverb"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","form":"present_3sg"},{"surface":"der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"nominative_masculine"},{"surface":"Auftrag","lemma":"Auftrag","translation":"کار / سفارش","partOfSpeech":"noun"},{"surface":"vollständig","lemma":"vollständig","translation":"به‌طور کامل","partOfSpeech":"adverb"},{"surface":"erledigt","lemma":"erledigen","translation":"انجام دادن / تمام کردن","partOfSpeech":"verb","form":"participle_II","suffix":"."}]','Ergebnis und Zustand beschreiben','برای توضیح نتیجهٔ یک تعمیر می‌توان از جمله‌های نتیجه، مجهول و قیدهای زمانی استفاده کرد.','{"focus":"result_and_state","review":["passive","dass_clause","time_adverbials"]}','{"cefr":"B1","course":"de-fa","series":95}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,6,'learner','Danke, dass Sie das Problem so schnell gelöst haben.','ممنون که مشکل را این‌قدر سریع حل کردید.',49,NULL,NULL,'danke dass sie das problem so schnell gelöst haben',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":","},{"surface":"dass","lemma":"dass","translation":"که","partOfSpeech":"conjunction"},{"surface":"Sie","lemma":"Sie","translation":"شما","partOfSpeech":"pronoun"},{"surface":"das","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"nominative_neuter"},{"surface":"Problem","lemma":"Problem","translation":"مشکل","partOfSpeech":"noun"},{"surface":"so","lemma":"so","translation":"این طور / آن طور","partOfSpeech":"adverb"},{"surface":"schnell","lemma":"schnell","translation":"سریع تر","partOfSpeech":"adverb"},{"surface":"gelöst","lemma":"lösen","translation":"حل کردن","partOfSpeech":"verb","form":"participle_II"},{"surface":"haben","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","form":"present_3pl_formal","suffix":"."}]','Ergebnis und Zustand beschreiben','برای توضیح نتیجهٔ یک تعمیر می‌توان از جمله‌های نتیجه، مجهول و قیدهای زمانی استفاده کرد.','{"focus":"result_and_state","review":["passive","dass_clause","time_adverbials"]}','{"cefr":"B1","course":"de-fa","series":95}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_057,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_028,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_004,'review',0,5);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_058,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_059,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_060,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_061,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_017,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_025,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_062,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_063,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_027,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_064,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_010,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_065,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_066,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_067,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_039,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_068,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_019,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_069,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_014,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_070,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_040,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_011,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_016,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_022,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_071,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_072,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_073,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_074,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_075,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_076,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_077,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_021,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_078,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_079,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_108,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_108,'عبارت کلیدی درس',NULL,49,NULL,'{"cefr":"B1","series":95}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',2,NULL,v_w_058,'واژهٔ کلیدی درس',NULL,49,NULL,'{"cefr":"B1","series":95}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',3,v_t_13,NULL,'به جملهٔ یوناس گوش کن',NULL,49,NULL,'{"cefr":"B1","series":95}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',4,v_t_14,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,49,NULL,'{"cefr":"B1","series":95}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',5,v_t_17,NULL,'به جملهٔ بعدی گوش کن',NULL,49,NULL,'{"cefr":"B1","series":95}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',6,v_t_18,NULL,'پاسخ را با صدای بلند بگو',NULL,49,NULL,'{"cefr":"B1","series":95}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',7,NULL,v_w_058,'معنی واژهٔ کلیدی را انتخاب کن',NULL,49,'{"mode":"word_translation","question":"Vermieter در این درس چه معنی دارد؟","choices":["صاحبخانه","سفر با قطار","غذای تازه"],"correctIndex":0}','{"cefr":"B1","series":95}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و پاسخ بده',NULL,49,'{"source":"lesson_story","question":"آنا در پیامش از چه کسی تشکر می‌کند؟","choices":["از صاحبخانه برای حل سریع مشکل","از همسایه برای مهمانی","از تعمیرکار برای خرید بخاری"],"correctIndex":0}','{"cefr":"B1","series":95}');
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_jonas,v_c_anna,'Ein ruhiger Abend','یک عصر آرام','Anna und Jonas blicken auf die gelösten Probleme im Haus zurück.','آنا و یوناس به مشکلات حل‌شدهٔ ساختمان نگاه می‌کنند.','story','anna-jonas-b1-neighborhood',20,49,165,4,'validated','{"relationship":"couple","context":"repair-resolution","cefr":"B1","storyArc":"check-adjust-report-reflect"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_jonas,1,'character','Vor einer Woche war es hier noch ziemlich kalt.','یک هفته پیش اینجا هنوز خیلی سرد بود.',49,NULL,NULL,NULL,NULL,'[{"surface":"Vor","lemma":"vor","translation":"از / جلوی","partOfSpeech":"preposition"},{"surface":"einer","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","form":"dative_feminine"},{"surface":"Woche","lemma":"Woche","translation":"هفته","partOfSpeech":"noun"},{"surface":"war","lemma":"sein","translation":"بودن","partOfSpeech":"verb","form":"preterite_3sg"},{"surface":"es","lemma":"es","translation":"آن / این","partOfSpeech":"pronoun"},{"surface":"hier","lemma":"hier","translation":"اینجا","partOfSpeech":"adverb"},{"surface":"noch","lemma":"noch","translation":"هنوز","partOfSpeech":"adverb"},{"surface":"ziemlich","lemma":"ziemlich","translation":"نسبتا / خیلی","partOfSpeech":"adverb"},{"surface":"kalt","lemma":"kalt","translation":"سرد","partOfSpeech":"adjective","suffix":"."}]','Ergebnis und Zustand beschreiben','برای توضیح نتیجهٔ یک تعمیر می‌توان از جمله‌های نتیجه، مجهول و قیدهای زمانی استفاده کرد.','{"focus":"result_and_state","review":["passive","dass_clause","time_adverbials"]}','{"cefr":"B1","course":"de-fa","series":95}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,2,'learner','Zum Glück haben wir gemeinsam eine Lösung gefunden.','خوشبختانه با هم یک راه‌حل پیدا کردیم.',49,NULL,NULL,'zum glück haben wir gemeinsam eine lösung gefunden',NULL,'[{"surface":"Zum","lemma":"zu","translation":"به / به سمت","partOfSpeech":"preposition","form":"dative_neuter_contraction"},{"surface":"Glück","lemma":"Glück","translation":"خوش‌شانسی","partOfSpeech":"noun"},{"surface":"haben","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","form":"present_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"gemeinsam","lemma":"gemeinsam","translation":"با هم / مشترک","partOfSpeech":"adverb"},{"surface":"eine","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","form":"accusative_feminine"},{"surface":"Lösung","lemma":"Lösung","translation":"راه حل","partOfSpeech":"noun"},{"surface":"gefunden","lemma":"finden","translation":"پیدا کردن","partOfSpeech":"verb","form":"participle_II","suffix":"."}]','Ergebnis und Zustand beschreiben','برای توضیح نتیجهٔ یک تعمیر می‌توان از جمله‌های نتیجه، مجهول و قیدهای زمانی استفاده کرد.','{"focus":"result_and_state","review":["passive","dass_clause","time_adverbials"]}','{"cefr":"B1","course":"de-fa","series":95}');
  SET v_t_20=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_jonas,3,'character','Die Gespräche mit den Nachbarn waren auch hilfreich.','گفت‌وگو با همسایه‌ها هم مفید بود.',49,NULL,NULL,NULL,NULL,'[{"surface":"Die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"nominative_plural"},{"surface":"Gespräche","lemma":"Gespräch","translation":"گفتگو","partOfSpeech":"noun","form":"nominative_plural"},{"surface":"mit","lemma":"mit","translation":"با","partOfSpeech":"preposition"},{"surface":"den","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"dative_plural"},{"surface":"Nachbarn","lemma":"Nachbar","translation":"همسایه","partOfSpeech":"noun","form":"dative_plural"},{"surface":"waren","lemma":"sein","translation":"بودن","partOfSpeech":"verb","form":"preterite_3pl"},{"surface":"auch","lemma":"auch","translation":"هم / همچنین","partOfSpeech":"adverb"},{"surface":"hilfreich","lemma":"hilfreich","translation":"کمک کننده","partOfSpeech":"adjective","suffix":"."}]','Ergebnis und Zustand beschreiben','برای توضیح نتیجهٔ یک تعمیر می‌توان از جمله‌های نتیجه، مجهول و قیدهای زمانی استفاده کرد.','{"focus":"result_and_state","review":["passive","dass_clause","time_adverbials"]}','{"cefr":"B1","course":"de-fa","series":95}');
  SET v_t_21=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,4,'learner','Jetzt wissen wir, wen wir bei Problemen anrufen können.','حالا می‌دانیم هنگام مشکل باید با چه کسی تماس بگیریم.',49,NULL,NULL,'jetzt wissen wir wen wir bei problemen anrufen können',NULL,'[{"surface":"Jetzt","lemma":"jetzt","translation":"حالا / اکنون","partOfSpeech":"adverb"},{"surface":"wissen","lemma":"wissen","translation":"دانستن","partOfSpeech":"verb","form":"infinitive"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun","suffix":","},{"surface":"wen","lemma":"wer","translation":"چه کسی / کی","partOfSpeech":"pronoun","form":"accusative"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"bei","lemma":"bei","translation":"هنگام / موقع","partOfSpeech":"preposition"},{"surface":"Problemen","lemma":"Problem","translation":"مشکل","partOfSpeech":"noun","form":"dative_plural"},{"surface":"anrufen","lemma":"anrufen","translation":"زنگ زدن / تماس گرفتن","partOfSpeech":"verb","form":"infinitive"},{"surface":"können","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","form":"present_1pl","suffix":"."}]','Ergebnis und Zustand beschreiben','برای توضیح نتیجهٔ یک تعمیر می‌توان از جمله‌های نتیجه، مجهول و قیدهای زمانی استفاده کرد.','{"focus":"result_and_state","review":["passive","dass_clause","time_adverbials"]}','{"cefr":"B1","course":"de-fa","series":95}');
  SET v_t_22=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_jonas,5,'character','Und wir kennen unser Haus viel besser.','و خانه‌مان را خیلی بهتر می‌شناسیم.',49,NULL,NULL,NULL,NULL,'[{"surface":"Und","lemma":"und","translation":"و","partOfSpeech":"conjunction"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"kennen","lemma":"kennen","translation":"شناختن","partOfSpeech":"verb","form":"present_1pl"},{"surface":"unser","lemma":"unser","translation":"مال ما / ما","partOfSpeech":"determiner","form":"accusative_neuter"},{"surface":"Haus","lemma":"Haus","translation":"خانه","partOfSpeech":"noun"},{"surface":"viel","lemma":"viel","translation":"خیلی","partOfSpeech":"adverb"},{"surface":"besser","lemma":"besser","translation":"بهتر","partOfSpeech":"adverb","suffix":"."}]','Ergebnis und Zustand beschreiben','برای توضیح نتیجهٔ یک تعمیر می‌توان از جمله‌های نتیجه، مجهول و قیدهای زمانی استفاده کرد.','{"focus":"result_and_state","review":["passive","dass_clause","time_adverbials"]}','{"cefr":"B1","course":"de-fa","series":95}');
  SET v_t_23=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,6,'learner','Endlich können wir den Abend wieder entspannt genießen.','بالاخره می‌توانیم دوباره از عصر آراممان لذت ببریم.',49,NULL,NULL,'endlich können wir den abend wieder entspannt genießen',NULL,'[{"surface":"Endlich","lemma":"endlich","translation":"بالاخره","partOfSpeech":"adverb"},{"surface":"können","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","form":"present_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"den","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"dative_plural"},{"surface":"Abend","lemma":"Abend","translation":"عصر / شب","partOfSpeech":"noun"},{"surface":"wieder","lemma":"wieder","translation":"دوباره","partOfSpeech":"adverb"},{"surface":"entspannt","lemma":"entspannt","translation":"آرام تر","partOfSpeech":"adjective"},{"surface":"genießen","lemma":"genießen","translation":"لذت بردن","partOfSpeech":"verb","form":"infinitive","suffix":"."}]','Ergebnis und Zustand beschreiben','برای توضیح نتیجهٔ یک تعمیر می‌توان از جمله‌های نتیجه، مجهول و قیدهای زمانی استفاده کرد.','{"focus":"result_and_state","review":["passive","dass_clause","time_adverbials"]}','{"cefr":"B1","course":"de-fa","series":95}');
  SET v_t_24=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_080,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_054,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_081,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_003,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_020,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_082,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_034,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_083,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_084,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_085,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_086,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_079,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_028,'review',0,5);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_087,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_088,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_089,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_004,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_090,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_091,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_092,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_014,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_093,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_067,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_094,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_095,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_076,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_096,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_097,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_098,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_099,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_100,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_101,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_102,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_103,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_006,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_104,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_010,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_110,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_105,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_109,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',1,NULL,v_w_109,'عبارت کلیدی درس',NULL,49,NULL,'{"cefr":"B1","series":95}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',2,NULL,v_w_105,'واژهٔ کلیدی درس',NULL,49,NULL,'{"cefr":"B1","series":95}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_19,NULL,'به جملهٔ یوناس گوش کن',NULL,49,NULL,'{"cefr":"B1","series":95}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_20,NULL,'پاسخ آنا را با صدای بلند بگو',NULL,49,NULL,'{"cefr":"B1","series":95}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_23,NULL,'به جملهٔ بعدی گوش کن',NULL,49,NULL,'{"cefr":"B1","series":95}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_24,NULL,'پاسخ را با صدای بلند بگو',NULL,49,NULL,'{"cefr":"B1","series":95}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',7,NULL,v_w_105,'معنی واژهٔ کلیدی را انتخاب کن',NULL,49,'{"mode":"word_translation","question":"genießen در این درس چه معنی دارد؟","choices":["لذت بردن","سفر با قطار","غذای تازه"],"correctIndex":0}','{"cefr":"B1","series":95}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و پاسخ بده',NULL,49,'{"source":"lesson_story","question":"آنا و یوناس حالا دربارهٔ ساختمان چه می‌دانند؟","choices":["برای مشکلات با چه کسی تماس بگیرند","چطور خانه را بفروشند","چطور همسایه را عوض کنند"],"correctIndex":0}','{"cefr":"B1","series":95}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 095 requires exactly four lessons.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>24 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 095 requires exactly 24 turns.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR CHAR_LENGTH(TRIM(t.speech_target))=0);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every learner Turn needs speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities a JOIN lessons l ON l.id=a.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>32 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 095 requires exactly 32 activities.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id<>learner_character_id AND storyline_key='anna-jonas-b1-neighborhood' AND storyline_order BETWEEN 17 AND 20 AND status='validated';
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Character or storyline continuity failure.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) d;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_series_095_v9();
DROP PROCEDURE IF EXISTS import_nova_series_095_v9;

-- ===== SERIES 096 =====
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

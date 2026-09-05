-- NOVA v9.0 / B1 SERIES 097 / Wir wissen nicht, ob wir weiterfahren können
-- Requires canonical v9.0 and validated Series 096. No schema DDL.
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_series_097_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_097_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_level BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL;
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
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=4 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 04 missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE module_id=v_module AND sort_order=1 AND status IN ('validated','complete');
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 096 must be validated.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE storyline_key='lena-ben-b1-travel-problems';
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Travel storyline must contain exactly four prior lessons.'; END IF;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 04 Chapter 02 missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='Wir wissen nicht, ob wir weiterfahren können' AND title_translation='نمی دونیم می تونیم ادامه بدیم یا نه';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 097 canonical title mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 097 chapter must be empty before import.'; END IF;
  SELECT id INTO v_c_ben FROM characters WHERE course_id=v_course AND name='Ben' AND gender='male' ORDER BY id LIMIT 1;
  SELECT id INTO v_c_lena FROM characters WHERE course_id=v_course AND name='Lena' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_ben IS NULL OR v_c_lena IS NULL OR v_c_ben=v_c_lena THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required distinct Characters Ben and Lena missing.'; END IF;
  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: der | article'; END IF;
  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='Anzeige' AND part_of_speech='noun' AND translation='تابلو / نمایشگر' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Anzeige | noun'; END IF;
  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='zeigen' AND part_of_speech='verb' AND translation='نشان دادن' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zeigen | verb'; END IF;
  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='noch' AND part_of_speech='adverb' AND translation='هنوز' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: noch | adverb'; END IF;
  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='kein' AND part_of_speech='determiner' AND translation='هیچ / نه یک' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: kein | determiner'; END IF;
  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='neu' AND part_of_speech='adjective' AND translation='جدید / تازه' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: neu | adjective'; END IF;
  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='Abfahrtszeit' AND part_of_speech='noun' AND translation='زمان حرکت' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Abfahrtszeit','Abfahrtszeit','noun','زمان حرکت',51,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"}]','Wir wissen nicht, ob wir weiterfahren können','نمی دونیم می تونیم ادامه بدیم یا نه',NULL,NULL,'{"cefr":"B1","introducedInSeries":97,"wordAudioEligible":true}');
    SET v_w_007=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='wir' AND part_of_speech='pronoun' AND translation='ما' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wir | pronoun'; END IF;
  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='wissen' AND part_of_speech='verb' AND translation='دانستن' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wissen | verb'; END IF;
  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='nicht' AND part_of_speech='particle' AND translation='نه / نیست' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: nicht | particle'; END IF;
  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='ob' AND part_of_speech='conjunction' AND translation='آیا / اینکه' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ob | conjunction'; END IF;
  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='weiterfahren' AND part_of_speech='verb' AND translation='به مسیر ادامه دادن' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: weiterfahren | verb'; END IF;
  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='können' AND part_of_speech='verb' AND translation='توانستن / بتوان' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: können | verb'; END IF;
  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='an' AND part_of_speech='preposition' AND translation='در / در روز' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: an | preposition'; END IF;
  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='Schalter' AND part_of_speech='noun' AND translation='باجه' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Schalter | noun'; END IF;
  SELECT id INTO v_w_016 FROM words WHERE course_id=v_course AND lemma='gerade' AND part_of_speech='adverb' AND translation='همین حالا' ORDER BY id LIMIT 1;
  IF v_w_016 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: gerade | adverb'; END IF;
  SELECT id INTO v_w_017 FROM words WHERE course_id=v_course AND lemma='niemand' AND part_of_speech='pronoun' AND translation='هیچ‌کس' ORDER BY id LIMIT 1;
  IF v_w_017 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'niemand','niemand','pronoun','هیچ‌کس',51,'{"type":"pronoun"}','[{"text":"ich","translation":"من"},{"text":"du","translation":"تو"},{"text":"wir","translation":"ما"}]','Wir wissen nicht, ob wir weiterfahren können','نمی دونیم می تونیم ادامه بدیم یا نه',NULL,NULL,'{"cefr":"B1","introducedInSeries":97,"wordAudioEligible":true}');
    SET v_w_017=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_018 FROM words WHERE course_id=v_course AND lemma='etwas' AND part_of_speech='pronoun' AND translation='چیزی / یک چیزی' ORDER BY id LIMIT 1;
  IF v_w_018 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: etwas | pronoun'; END IF;
  SELECT id INTO v_w_019 FROM words WHERE course_id=v_course AND lemma='genau' AND part_of_speech='adjective' AND translation='دقیق' ORDER BY id LIMIT 1;
  IF v_w_019 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'genau','genau','adjective','دقیق',51,'{"type":"adjective"}','[{"text":"klein","translation":"کوچک"},{"text":"teuer","translation":"گران"},{"text":"ruhig","translation":"آرام"}]','Wir wissen nicht, ob wir weiterfahren können','نمی دونیم می تونیم ادامه بدیم یا نه',NULL,NULL,'{"cefr":"B1","introducedInSeries":97,"wordAudioEligible":true}');
    SET v_w_019=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_020 FROM words WHERE course_id=v_course AND lemma='sagen' AND part_of_speech='verb' AND translation='گفتن' ORDER BY id LIMIT 1;
  IF v_w_020 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sagen | verb'; END IF;
  SELECT id INTO v_w_021 FROM words WHERE course_id=v_course AND lemma='dann' AND part_of_speech='adverb' AND translation='بعد / سپس' ORDER BY id LIMIT 1;
  IF v_w_021 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dann | adverb'; END IF;
  SELECT id INTO v_w_022 FROM words WHERE course_id=v_course AND lemma='prüfen' AND part_of_speech='verb' AND translation='بررسی کردن' ORDER BY id LIMIT 1;
  IF v_w_022 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: prüfen | verb'; END IF;
  SELECT id INTO v_w_023 FROM words WHERE course_id=v_course AND lemma='zuerst' AND part_of_speech='adverb' AND translation='اول / ابتدا' ORDER BY id LIMIT 1;
  IF v_w_023 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: zuerst | adverb'; END IF;
  SELECT id INTO v_w_024 FROM words WHERE course_id=v_course AND lemma='App' AND part_of_speech='noun' AND translation='برنامه' ORDER BY id LIMIT 1;
  IF v_w_024 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: App | noun'; END IF;
  SELECT id INTO v_w_025 FROM words WHERE course_id=v_course AND lemma='dort' AND part_of_speech='adverb' AND translation='آنجا' ORDER BY id LIMIT 1;
  IF v_w_025 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dort | adverb'; END IF;
  SELECT id INTO v_w_026 FROM words WHERE course_id=v_course AND lemma='stehen' AND part_of_speech='verb' AND translation='قرار داشتن / ایستادن' ORDER BY id LIMIT 1;
  IF v_w_026 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: stehen | verb'; END IF;
  SELECT id INTO v_w_027 FROM words WHERE course_id=v_course AND lemma='nur' AND part_of_speech='adverb' AND translation='فقط' ORDER BY id LIMIT 1;
  IF v_w_027 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: nur | adverb'; END IF;
  SELECT id INTO v_w_028 FROM words WHERE course_id=v_course AND lemma='dass' AND part_of_speech='conjunction' AND translation='که' ORDER BY id LIMIT 1;
  IF v_w_028 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dass | conjunction'; END IF;
  SELECT id INTO v_w_029 FROM words WHERE course_id=v_course AND lemma='Strecke' AND part_of_speech='noun' AND translation='مسیر' ORDER BY id LIMIT 1;
  IF v_w_029 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Strecke | noun'; END IF;
  SELECT id INTO v_w_030 FROM words WHERE course_id=v_course AND lemma='sperren' AND part_of_speech='verb' AND translation='مسدود کردن' ORDER BY id LIMIT 1;
  IF v_w_030 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'sperren','sperren','verb','مسدود کردن',51,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"sehen","translation":"دیدن"},{"text":"bleiben","translation":"ماندن"}]','Wir wissen nicht, ob wir weiterfahren können','نمی دونیم می تونیم ادامه بدیم یا نه',NULL,NULL,'{"cefr":"B1","introducedInSeries":97,"wordAudioEligible":true}');
    SET v_w_030=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_031 FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_031 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sein | verb'; END IF;
  SELECT id INTO v_w_032 FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_032 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ich | pronoun'; END IF;
  SELECT id INTO v_w_033 FROM words WHERE course_id=v_course AND lemma='möchten' AND part_of_speech='verb' AND translation='خواستن / مایل بودن' ORDER BY id LIMIT 1;
  IF v_w_033 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: möchten | verb'; END IF;
  SELECT id INTO v_w_034 FROM words WHERE course_id=v_course AND lemma='wann' AND part_of_speech='adverb' AND translation='کی / چه زمانی' ORDER BY id LIMIT 1;
  IF v_w_034 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wann | adverb'; END IF;
  SELECT id INTO v_w_035 FROM words WHERE course_id=v_course AND lemma='es' AND part_of_speech='pronoun' AND translation='آن / این / ضمیر خنثی' ORDER BY id LIMIT 1;
  IF v_w_035 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: es | pronoun'; END IF;
  SELECT id INTO v_w_036 FROM words WHERE course_id=v_course AND lemma='Information' AND part_of_speech='noun' AND translation='اطلاعات' ORDER BY id LIMIT 1;
  IF v_w_036 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Information','Information','noun','اطلاعات',51,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"}]','Wir wissen nicht, ob wir weiterfahren können','نمی دونیم می تونیم ادامه بدیم یا نه',NULL,NULL,'{"cefr":"B1","introducedInSeries":97,"wordAudioEligible":true}');
    SET v_w_036=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_037 FROM words WHERE course_id=v_course AND lemma='geben' AND part_of_speech='verb' AND translation='دادن' ORDER BY id LIMIT 1;
  IF v_w_037 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: geben | verb'; END IF;
  SELECT id INTO v_w_038 FROM words WHERE course_id=v_course AND lemma='ein' AND part_of_speech='article' AND translation='یک / حرف تعریف نامعین' ORDER BY id LIMIT 1;
  IF v_w_038 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ein | article'; END IF;
  SELECT id INTO v_w_039 FROM words WHERE course_id=v_course AND lemma='Zug' AND part_of_speech='noun' AND translation='قطار' ORDER BY id LIMIT 1;
  IF v_w_039 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Zug | noun'; END IF;
  SELECT id INTO v_w_040 FROM words WHERE course_id=v_course AND lemma='nach' AND part_of_speech='preposition' AND translation='پس از / به' ORDER BY id LIMIT 1;
  IF v_w_040 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: nach | preposition'; END IF;
  SELECT id INTO v_w_041 FROM words WHERE course_id=v_course AND lemma='Frankfurt' AND part_of_speech='noun' AND translation='فرانکفورت' ORDER BY id LIMIT 1;
  IF v_w_041 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Frankfurt | noun'; END IF;
  SELECT id INTO v_w_042 FROM words WHERE course_id=v_course AND lemma='fragen' AND part_of_speech='verb' AND translation='پرسیدن' ORDER BY id LIMIT 1;
  IF v_w_042 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: fragen | verb'; END IF;
  SELECT id INTO v_w_043 FROM words WHERE course_id=v_course AND lemma='mit' AND part_of_speech='preposition' AND translation='با' ORDER BY id LIMIT 1;
  IF v_w_043 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: mit | preposition'; END IF;
  SELECT id INTO v_w_044 FROM words WHERE course_id=v_course AND lemma='dieser' AND part_of_speech='determiner' AND translation='این' ORDER BY id LIMIT 1;
  IF v_w_044 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dieser | determiner'; END IF;
  SELECT id INTO v_w_045 FROM words WHERE course_id=v_course AND lemma='er' AND part_of_speech='pronoun' AND translation='او (مذکر)' ORDER BY id LIMIT 1;
  IF v_w_045 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: er | pronoun'; END IF;
  SELECT id INTO v_w_046 FROM words WHERE course_id=v_course AND lemma='fahren' AND part_of_speech='verb' AND translation='رفتن با وسیله / راندن' ORDER BY id LIMIT 1;
  IF v_w_046 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: fahren | verb'; END IF;
  SELECT id INTO v_w_047 FROM words WHERE course_id=v_course AND lemma='in' AND part_of_speech='preposition' AND translation='در / داخل' ORDER BY id LIMIT 1;
  IF v_w_047 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: in | preposition'; END IF;
  SELECT id INTO v_w_048 FROM words WHERE course_id=v_course AND lemma='vierzig' AND part_of_speech='number' AND translation='چهل' ORDER BY id LIMIT 1;
  IF v_w_048 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'vierzig','vierzig','number','چهل',51,'{"type":"number"}','[{"text":"eins","translation":"یک"},{"text":"zwei","translation":"دو"},{"text":"drei","translation":"سه"}]','Wir wissen nicht, ob wir weiterfahren können','نمی دونیم می تونیم ادامه بدیم یا نه',NULL,NULL,'{"cefr":"B1","introducedInSeries":97,"wordAudioEligible":true}');
    SET v_w_048=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_049 FROM words WHERE course_id=v_course AND lemma='Minute' AND part_of_speech='noun' AND translation='دقیقه' ORDER BY id LIMIT 1;
  IF v_w_049 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Minute | noun'; END IF;
  SELECT id INTO v_w_050 FROM words WHERE course_id=v_course AND lemma='von' AND part_of_speech='preposition' AND translation='از / از سمت' ORDER BY id LIMIT 1;
  IF v_w_050 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: von | preposition'; END IF;
  SELECT id INTO v_w_051 FROM words WHERE course_id=v_course AND lemma='Gleis' AND part_of_speech='noun' AND translation='سکوی قطار / خط' ORDER BY id LIMIT 1;
  IF v_w_051 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Gleis | noun'; END IF;
  SELECT id INTO v_w_052 FROM words WHERE course_id=v_course AND lemma='acht' AND part_of_speech='number' AND translation='هشت' ORDER BY id LIMIT 1;
  IF v_w_052 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: acht | number'; END IF;
  SELECT id INTO v_w_053 FROM words WHERE course_id=v_course AND lemma='abfahren' AND part_of_speech='verb' AND translation='حرکت کردن' ORDER BY id LIMIT 1;
  IF v_w_053 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: abfahren | verb'; END IF;
  SELECT id INTO v_w_054 FROM words WHERE course_id=v_course AND lemma='aber' AND part_of_speech='conjunction' AND translation='اما' ORDER BY id LIMIT 1;
  IF v_w_054 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: aber | conjunction'; END IF;
  SELECT id INTO v_w_055 FROM words WHERE course_id=v_course AND lemma='unser' AND part_of_speech='determiner' AND translation='مال ما / ما' ORDER BY id LIMIT 1;
  IF v_w_055 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: unser | determiner'; END IF;
  SELECT id INTO v_w_056 FROM words WHERE course_id=v_course AND lemma='Fahrkarte' AND part_of_speech='noun' AND translation='بلیط' ORDER BY id LIMIT 1;
  IF v_w_056 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Fahrkarte | noun'; END IF;
  SELECT id INTO v_w_057 FROM words WHERE course_id=v_course AND lemma='gelten' AND part_of_speech='verb' AND translation='اعتبار داشتن' ORDER BY id LIMIT 1;
  IF v_w_057 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'gelten','gelten','verb','اعتبار داشتن',51,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"sehen","translation":"دیدن"},{"text":"bleiben","translation":"ماندن"}]','Wir wissen nicht, ob wir weiterfahren können','نمی دونیم می تونیم ادامه بدیم یا نه',NULL,NULL,'{"cefr":"B1","introducedInSeries":97,"wordAudioEligible":true}');
    SET v_w_057=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_058 FROM words WHERE course_id=v_course AND lemma='das' AND part_of_speech='pronoun' AND translation='این / آن' ORDER BY id LIMIT 1;
  IF v_w_058 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: das | pronoun'; END IF;
  SELECT id INTO v_w_059 FROM words WHERE course_id=v_course AND lemma='lassen' AND part_of_speech='verb' AND translation='گذاشتن / امکان دادن' ORDER BY id LIMIT 1;
  IF v_w_059 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: lassen | verb'; END IF;
  SELECT id INTO v_w_060 FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_060 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: gut | adjective'; END IF;
  SELECT id INTO v_w_061 FROM words WHERE course_id=v_course AND lemma='warten' AND part_of_speech='verb' AND translation='منتظر ماندن / صبر کردن' ORDER BY id LIMIT 1;
  IF v_w_061 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: warten | verb'; END IF;
  SELECT id INTO v_w_062 FROM words WHERE course_id=v_course AND lemma='länger' AND part_of_speech='adverb' AND translation='بیشتر / طولانی‌تر' ORDER BY id LIMIT 1;
  IF v_w_062 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'länger','länger','adverb','بیشتر / طولانی‌تر',51,'{"type":"adverb"}','[{"text":"gestern","translation":"دیروز"},{"text":"dort","translation":"آنجا"},{"text":"später","translation":"بعداً"}]','Wir wissen nicht, ob wir weiterfahren können','نمی دونیم می تونیم ادامه بدیم یا نه',NULL,NULL,'{"cefr":"B1","introducedInSeries":97,"wordAudioEligible":true}');
    SET v_w_062=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_063 FROM words WHERE course_id=v_course AND lemma='wenn' AND part_of_speech='conjunction' AND translation='اگر / وقتی' ORDER BY id LIMIT 1;
  IF v_w_063 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wenn | conjunction'; END IF;
  SELECT id INTO v_w_064 FROM words WHERE course_id=v_course AND lemma='nehmen' AND part_of_speech='verb' AND translation='گرفتن / مصرف کردن' ORDER BY id LIMIT 1;
  IF v_w_064 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: nehmen | verb'; END IF;
  SELECT id INTO v_w_065 FROM words WHERE course_id=v_course AND lemma='kommen' AND part_of_speech='verb' AND translation='آمدن' ORDER BY id LIMIT 1;
  IF v_w_065 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: kommen | verb'; END IF;
  SELECT id INTO v_w_066 FROM words WHERE course_id=v_course AND lemma='um' AND part_of_speech='preposition' AND translation='در ساعت / حوالی' ORDER BY id LIMIT 1;
  IF v_w_066 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: um | preposition'; END IF;
  SELECT id INTO v_w_067 FROM words WHERE course_id=v_course AND lemma='Mitternacht' AND part_of_speech='noun' AND translation='نیمه‌شب' ORDER BY id LIMIT 1;
  IF v_w_067 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Mitternacht','Mitternacht','noun','نیمه‌شب',51,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"}]','Wir wissen nicht, ob wir weiterfahren können','نمی دونیم می تونیم ادامه بدیم یا نه',NULL,NULL,'{"cefr":"B1","introducedInSeries":97,"wordAudioEligible":true}');
    SET v_w_067=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_068 FROM words WHERE course_id=v_course AND lemma='an' AND part_of_speech='particle' AND translation='مطرح / آغاز' ORDER BY id LIMIT 1;
  IF v_w_068 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: an | particle'; END IF;
  SELECT id INTO v_w_069 FROM words WHERE course_id=v_course AND lemma='letzte' AND part_of_speech='adjective' AND translation='آخرین' ORDER BY id LIMIT 1;
  IF v_w_069 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: letzte | adjective'; END IF;
  SELECT id INTO v_w_070 FROM words WHERE course_id=v_course AND lemma='Bus' AND part_of_speech='noun' AND translation='اتوبوس' ORDER BY id LIMIT 1;
  IF v_w_070 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Bus | noun'; END IF;
  SELECT id INTO v_w_071 FROM words WHERE course_id=v_course AND lemma='erreichen' AND part_of_speech='verb' AND translation='رسیدن به' ORDER BY id LIMIT 1;
  IF v_w_071 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'erreichen','erreichen','verb','رسیدن به',51,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"sehen","translation":"دیدن"},{"text":"bleiben","translation":"ماندن"}]','Wir wissen nicht, ob wir weiterfahren können','نمی دونیم می تونیم ادامه بدیم یا نه',NULL,NULL,'{"cefr":"B1","introducedInSeries":97,"wordAudioEligible":true}');
    SET v_w_071=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_072 FROM words WHERE course_id=v_course AND lemma='Bahnhof' AND part_of_speech='noun' AND translation='ایستگاه قطار' ORDER BY id LIMIT 1;
  IF v_w_072 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Bahnhof | noun'; END IF;
  SELECT id INTO v_w_073 FROM words WHERE course_id=v_course AND lemma='zwölf' AND part_of_speech='number' AND translation='دوازده' ORDER BY id LIMIT 1;
  IF v_w_073 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'zwölf','zwölf','number','دوازده',51,'{"type":"number"}','[{"text":"eins","translation":"یک"},{"text":"zwei","translation":"دو"},{"text":"drei","translation":"سه"}]','Wir wissen nicht, ob wir weiterfahren können','نمی دونیم می تونیم ادامه بدیم یا نه',NULL,NULL,'{"cefr":"B1","introducedInSeries":97,"wordAudioEligible":true}');
    SET v_w_073=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_074 FROM words WHERE course_id=v_course AND lemma='Uhr' AND part_of_speech='noun' AND translation='ساعت' ORDER BY id LIMIT 1;
  IF v_w_074 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Uhr | noun'; END IF;
  SELECT id INTO v_w_075 FROM words WHERE course_id=v_course AND lemma='Nachtbus' AND part_of_speech='noun' AND translation='اتوبوس شبانه' ORDER BY id LIMIT 1;
  IF v_w_075 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Nachtbus','Nachtbus','noun','اتوبوس شبانه',51,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"}]','Wir wissen nicht, ob wir weiterfahren können','نمی دونیم می تونیم ادامه بدیم یا نه',NULL,NULL,'{"cefr":"B1","introducedInSeries":97,"wordAudioEligible":true}');
    SET v_w_075=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_076 FROM words WHERE course_id=v_course AND lemma='abhängen' AND part_of_speech='verb' AND translation='بستگی داشتن' ORDER BY id LIMIT 1;
  IF v_w_076 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'abhängen','abhängen','verb','بستگی داشتن',51,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"sehen","translation":"دیدن"},{"text":"bleiben","translation":"ماندن"}]','Wir wissen nicht, ob wir weiterfahren können','نمی دونیم می تونیم ادامه بدیم یا نه',NULL,NULL,'{"cefr":"B1","introducedInSeries":97,"wordAudioEligible":true}');
    SET v_w_076=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_077 FROM words WHERE course_id=v_course AND lemma='alles' AND part_of_speech='pronoun' AND translation='همه چیز' ORDER BY id LIMIT 1;
  IF v_w_077 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: alles | pronoun'; END IF;
  SELECT id INTO v_w_078 FROM words WHERE course_id=v_course AND lemma='davon' AND part_of_speech='adverb' AND translation='به آن / از آن' ORDER BY id LIMIT 1;
  IF v_w_078 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'davon','davon','adverb','به آن / از آن',51,'{"type":"adverb"}','[{"text":"gestern","translation":"دیروز"},{"text":"dort","translation":"آنجا"},{"text":"später","translation":"بعداً"}]','Wir wissen nicht, ob wir weiterfahren können','نمی دونیم می تونیم ادامه بدیم یا نه',NULL,NULL,'{"cefr":"B1","introducedInSeries":97,"wordAudioEligible":true}');
    SET v_w_078=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_079 FROM words WHERE course_id=v_course AND lemma='ab' AND part_of_speech='particle' AND translation='جدا / ارسال' ORDER BY id LIMIT 1;
  IF v_w_079 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ab | particle'; END IF;
  SELECT id INTO v_w_080 FROM words WHERE course_id=v_course AND lemma='pünktlich' AND part_of_speech='adverb' AND translation='سر وقت' ORDER BY id LIMIT 1;
  IF v_w_080 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: pünktlich | adverb'; END IF;
  SELECT id INTO v_w_081 FROM words WHERE course_id=v_course AND lemma='Hotel' AND part_of_speech='noun' AND translation='هتل' ORDER BY id LIMIT 1;
  IF v_w_081 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Hotel | noun'; END IF;
  SELECT id INTO v_w_082 FROM words WHERE course_id=v_course AND lemma='Verspätung' AND part_of_speech='noun' AND translation='تاخیر' ORDER BY id LIMIT 1;
  IF v_w_082 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Verspätung | noun'; END IF;
  SELECT id INTO v_w_083 FROM words WHERE course_id=v_course AND lemma='melden' AND part_of_speech='verb' AND translation='اطلاع دادن' ORDER BY id LIMIT 1;
  IF v_w_083 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'melden','melden','verb','اطلاع دادن',51,'{"type":"verb"}','[{"text":"gehen","translation":"رفتن"},{"text":"sehen","translation":"دیدن"},{"text":"bleiben","translation":"ماندن"}]','Wir wissen nicht, ob wir weiterfahren können','نمی دونیم می تونیم ادامه بدیم یا نه',NULL,NULL,'{"cefr":"B1","introducedInSeries":97,"wordAudioEligible":true}');
    SET v_w_083=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_084 FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_084 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ja | interjection'; END IF;
  SELECT id INTO v_w_085 FROM words WHERE course_id=v_course AND lemma='schreiben' AND part_of_speech='verb' AND translation='نوشتن' ORDER BY id LIMIT 1;
  IF v_w_085 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: schreiben | verb'; END IF;
  SELECT id INTO v_w_086 FROM words WHERE course_id=v_course AND lemma='ihnen' AND part_of_speech='pronoun' AND translation='به آن‌ها' ORDER BY id LIMIT 1;
  IF v_w_086 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'ihnen','ihnen','pronoun','به آن‌ها',51,'{"type":"pronoun"}','[{"text":"ich","translation":"من"},{"text":"du","translation":"تو"},{"text":"wir","translation":"ما"}]','Wir wissen nicht, ob wir weiterfahren können','نمی دونیم می تونیم ادامه بدیم یا نه',NULL,NULL,'{"cefr":"B1","introducedInSeries":97,"wordAudioEligible":true}');
    SET v_w_086=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_087 FROM words WHERE course_id=v_course AND lemma='sofort' AND part_of_speech='adverb' AND translation='فورا / همین الان' ORDER BY id LIMIT 1;
  IF v_w_087 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sofort | adverb'; END IF;
  SELECT id INTO v_w_088 FROM words WHERE course_id=v_course AND lemma='Nachricht' AND part_of_speech='noun' AND translation='پیام' ORDER BY id LIMIT 1;
  IF v_w_088 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Nachricht | noun'; END IF;
  SELECT id INTO v_w_089 FROM words WHERE course_id=v_course AND lemma='Mitarbeiter' AND part_of_speech='noun' AND translation='کارمند' ORDER BY id LIMIT 1;
  IF v_w_089 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Mitarbeiter','Mitarbeiter','noun','کارمند',51,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"}]','Wir wissen nicht, ob wir weiterfahren können','نمی دونیم می تونیم ادامه بدیم یا نه',NULL,NULL,'{"cefr":"B1","introducedInSeries":97,"wordAudioEligible":true}');
    SET v_w_089=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_090 FROM words WHERE course_id=v_course AND lemma='gültig' AND part_of_speech='adjective' AND translation='معتبر' ORDER BY id LIMIT 1;
  IF v_w_090 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'gültig','gültig','adjective','معتبر',51,'{"type":"adjective"}','[{"text":"klein","translation":"کوچک"},{"text":"teuer","translation":"گران"},{"text":"ruhig","translation":"آرام"}]','Wir wissen nicht, ob wir weiterfahren können','نمی دونیم می تونیم ادامه بدیم یا نه',NULL,NULL,'{"cefr":"B1","introducedInSeries":97,"wordAudioEligible":true}');
    SET v_w_090=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_091 FROM words WHERE course_id=v_course AND lemma='weiter' AND part_of_speech='adverb' AND translation='ادامه / بیشتر' ORDER BY id LIMIT 1;
  IF v_w_091 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: weiter | adverb'; END IF;
  SELECT id INTO v_w_092 FROM words WHERE course_id=v_course AND lemma='obwohl' AND part_of_speech='conjunction' AND translation='با اینکه' ORDER BY id LIMIT 1;
  IF v_w_092 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: obwohl | conjunction'; END IF;
  SELECT id INTO v_w_093 FROM words WHERE course_id=v_course AND lemma='sicher' AND part_of_speech='adjective' AND translation='مطمئن' ORDER BY id LIMIT 1;
  IF v_w_093 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sicher | adjective'; END IF;
  SELECT id INTO v_w_094 FROM words WHERE course_id=v_course AND lemma='müssen' AND part_of_speech='verb' AND translation='مجبور بودن / باید' ORDER BY id LIMIT 1;
  IF v_w_094 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: müssen | verb'; END IF;
  SELECT id INTO v_w_095 FROM words WHERE course_id=v_course AND lemma='nächste' AND part_of_speech='adjective' AND translation='بعدی' ORDER BY id LIMIT 1;
  IF v_w_095 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: nächste | adjective'; END IF;
  SELECT id INTO v_w_096 FROM words WHERE course_id=v_course AND lemma='umsteigen' AND part_of_speech='verb' AND translation='قطار عوض کردن / خط عوض کردن' ORDER BY id LIMIT 1;
  IF v_w_096 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: umsteigen | verb'; END IF;
  SELECT id INTO v_w_097 FROM words WHERE course_id=v_course AND lemma='welcher' AND part_of_speech='pronoun' AND translation='کدام' ORDER BY id LIMIT 1;
  IF v_w_097 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'welcher','welcher','pronoun','کدام',51,'{"type":"pronoun"}','[{"text":"ich","translation":"من"},{"text":"du","translation":"تو"},{"text":"wir","translation":"ما"}]','Wir wissen nicht, ob wir weiterfahren können','نمی دونیم می تونیم ادامه بدیم یا نه',NULL,NULL,'{"cefr":"B1","introducedInSeries":97,"wordAudioEligible":true}');
    SET v_w_097=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_098 FROM words WHERE course_id=v_course AND lemma='Anschluss' AND part_of_speech='noun' AND translation='قطار بعدی / اتصال' ORDER BY id LIMIT 1;
  IF v_w_098 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Anschluss | noun'; END IF;
  SELECT id INTO v_w_099 FROM words WHERE course_id=v_course AND lemma='jetzt' AND part_of_speech='adverb' AND translation='حالا / اکنون' ORDER BY id LIMIT 1;
  IF v_w_099 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: jetzt | adverb'; END IF;
  SELECT id INTO v_w_100 FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_100 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: haben | verb'; END IF;
  SELECT id INTO v_w_101 FROM words WHERE course_id=v_course AND lemma='wenigstens' AND part_of_speech='adverb' AND translation='دست‌کم' ORDER BY id LIMIT 1;
  IF v_w_101 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'wenigstens','wenigstens','adverb','دست‌کم',51,'{"type":"adverb"}','[{"text":"gestern","translation":"دیروز"},{"text":"dort","translation":"آنجا"},{"text":"später","translation":"بعداً"}]','Wir wissen nicht, ob wir weiterfahren können','نمی دونیم می تونیم ادامه بدیم یا نه',NULL,NULL,'{"cefr":"B1","introducedInSeries":97,"wordAudioEligible":true}');
    SET v_w_101=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_102 FROM words WHERE course_id=v_course AND lemma='Plan' AND part_of_speech='noun' AND translation='برنامه' ORDER BY id LIMIT 1;
  IF v_w_102 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Plan','Plan','noun','برنامه',51,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"}]','Wir wissen nicht, ob wir weiterfahren können','نمی دونیم می تونیم ادامه بدیم یا نه',NULL,NULL,'{"cefr":"B1","introducedInSeries":97,"wordAudioEligible":true}');
    SET v_w_102=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_103 FROM words WHERE course_id=v_course AND lemma='genau' AND part_of_speech='adverb' AND translation='دقیقا' ORDER BY id LIMIT 1;
  IF v_w_103 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: genau | adverb'; END IF;
  SELECT id INTO v_w_104 FROM words WHERE course_id=v_course AND lemma='bei' AND part_of_speech='preposition' AND translation='هنگام / موقع' ORDER BY id LIMIT 1;
  IF v_w_104 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: bei | preposition'; END IF;
  SELECT id INTO v_w_105 FROM words WHERE course_id=v_course AND lemma='Änderung' AND part_of_speech='noun' AND translation='تغییر' ORDER BY id LIMIT 1;
  IF v_w_105 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Änderung','Änderung','noun','تغییر',51,'{"type":"noun"}','[{"text":"Zimmer","translation":"اتاق"},{"text":"Fenster","translation":"پنجره"},{"text":"Straße","translation":"خیابان"}]','Wir wissen nicht, ob wir weiterfahren können','نمی دونیم می تونیم ادامه بدیم یا نه',NULL,NULL,'{"cefr":"B1","introducedInSeries":97,"wordAudioEligible":true}');
    SET v_w_105=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_106 FROM words WHERE course_id=v_course AND lemma='wieder' AND part_of_speech='adverb' AND translation='دوباره' ORDER BY id LIMIT 1;
  IF v_w_106 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wieder | adverb'; END IF;
  SELECT id INTO v_w_107 FROM words WHERE course_id=v_course AND lemma='Wir wissen nicht, ob wir weiterfahren können.' AND part_of_speech='phrase' AND translation='نمی‌دانیم می‌توانیم به مسیر ادامه بدهیم یا نه.' ORDER BY id LIMIT 1;
  IF v_w_107 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Wir wissen nicht, ob wir weiterfahren können.','Wir wissen nicht, ob wir weiterfahren können.','phrase','نمی‌دانیم می‌توانیم به مسیر ادامه بدهیم یا نه.',51,'{"type":"phrase"}','[{"text":"Guten Morgen.","translation":"صبح بخیر."},{"text":"Bis später.","translation":"بعداً می‌بینمت."},{"text":"Vielen Dank.","translation":"خیلی ممنون."}]','Wir wissen nicht, ob wir weiterfahren können','نمی دونیم می تونیم ادامه بدیم یا نه',NULL,NULL,'{"cefr":"B1","introducedInSeries":97,"wordAudioEligible":false}');
    SET v_w_107=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_108 FROM words WHERE course_id=v_course AND lemma='Ich frage, ob wir mit diesem Zug weiterfahren können.' AND part_of_speech='phrase' AND translation='می‌پرسم آیا می‌توانیم با این قطار ادامه بدهیم.' ORDER BY id LIMIT 1;
  IF v_w_108 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich frage, ob wir mit diesem Zug weiterfahren können.','Ich frage, ob wir mit diesem Zug weiterfahren können.','phrase','می‌پرسم آیا می‌توانیم با این قطار ادامه بدهیم.',51,'{"type":"phrase"}','[{"text":"Guten Morgen.","translation":"صبح بخیر."},{"text":"Bis später.","translation":"بعداً می‌بینمت."},{"text":"Vielen Dank.","translation":"خیلی ممنون."}]','Wir wissen nicht, ob wir weiterfahren können','نمی دونیم می تونیم ادامه بدیم یا نه',NULL,NULL,'{"cefr":"B1","introducedInSeries":97,"wordAudioEligible":false}');
    SET v_w_108=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_109 FROM words WHERE course_id=v_course AND lemma='Ich weiß nicht, ob wir den letzten Bus noch erreichen.' AND part_of_speech='phrase' AND translation='نمی‌دانم هنوز به آخرین اتوبوس می‌رسیم یا نه.' ORDER BY id LIMIT 1;
  IF v_w_109 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich weiß nicht, ob wir den letzten Bus noch erreichen.','Ich weiß nicht, ob wir den letzten Bus noch erreichen.','phrase','نمی‌دانم هنوز به آخرین اتوبوس می‌رسیم یا نه.',51,'{"type":"phrase"}','[{"text":"Guten Morgen.","translation":"صبح بخیر."},{"text":"Bis später.","translation":"بعداً می‌بینمت."},{"text":"Vielen Dank.","translation":"خیلی ممنون."}]','Wir wissen nicht, ob wir weiterfahren können','نمی دونیم می تونیم ادامه بدیم یا نه',NULL,NULL,'{"cefr":"B1","introducedInSeries":97,"wordAudioEligible":false}');
    SET v_w_109=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_110 FROM words WHERE course_id=v_course AND lemma='Dann fahren wir weiter, obwohl noch nicht alles sicher ist.' AND part_of_speech='phrase' AND translation='پس ادامه می‌دهیم، با اینکه هنوز همه‌چیز قطعی نیست.' ORDER BY id LIMIT 1;
  IF v_w_110 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Dann fahren wir weiter, obwohl noch nicht alles sicher ist.','Dann fahren wir weiter, obwohl noch nicht alles sicher ist.','phrase','پس ادامه می‌دهیم، با اینکه هنوز همه‌چیز قطعی نیست.',51,'{"type":"phrase"}','[{"text":"Guten Morgen.","translation":"صبح بخیر."},{"text":"Bis später.","translation":"بعداً می‌بینمت."},{"text":"Vielen Dank.","translation":"خیلی ممنون."}]','Wir wissen nicht, ob wir weiterfahren können','نمی دونیم می تونیم ادامه بدیم یا نه',NULL,NULL,'{"cefr":"B1","introducedInSeries":97,"wordAudioEligible":false}');
    SET v_w_110=LAST_INSERT_ID();
  END IF;
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ben,v_c_lena,'Keine klare Auskunft','اطلاعات روشنی نیست','Lena und Ben suchen nach verlässlichen Informationen über ihre Weiterfahrt.','لنا و بن دنبال اطلاعات قابل اعتماد درباره ادامه سفرشان می‌گردند.','story','lena-ben-b1-travel-problems',5,51,175,1,'validated','{"relationship":"friends","context":"travel-uncertainty","cefr":"B1","storyArc":"check-options-decide"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_ben,1,'character','Die Anzeige zeigt noch keine neue Abfahrtszeit.','تابلو هنوز زمان حرکت جدیدی نشان نمی‌دهد.',51,NULL,NULL,NULL,NULL,'[{"lemma":"der","partOfSpeech":"article","surface":"Die","translation":"حرف تعریف"},{"lemma":"Anzeige","partOfSpeech":"noun","surface":"Anzeige","translation":"تابلو / نمایشگر"},{"lemma":"zeigen","partOfSpeech":"verb","surface":"zeigt","translation":"نشان دادن"},{"lemma":"noch","partOfSpeech":"adverb","surface":"noch","translation":"هنوز"},{"lemma":"kein","partOfSpeech":"determiner","surface":"keine","translation":"هیچ / نه یک"},{"lemma":"neu","partOfSpeech":"adjective","surface":"neue","translation":"جدید / تازه"},{"lemma":"Abfahrtszeit","partOfSpeech":"noun","suffix":".","surface":"Abfahrtszeit","translation":"زمان حرکت"}]','Unsicherheit und indirekte Fragen','با جمله‌های وابسته با ob درباره نامطمئن بودن اطلاعات و امکان ادامه سفر صحبت می‌شود.','{"focus":"ob_clauses_and_travel_uncertainty","structures":["ob clause","indirect question","obwohl clause","modal verbs"]}','{"cefr":"B1","course":"de-fa","series":97}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_lena,2,'learner','Wir wissen nicht, ob wir weiterfahren können.','نمی‌دانیم می‌توانیم به مسیر ادامه بدهیم یا نه.',51,NULL,NULL,'wir wissen nicht ob wir weiterfahren können',NULL,'[{"lemma":"wir","partOfSpeech":"pronoun","surface":"Wir","translation":"ما"},{"lemma":"wissen","partOfSpeech":"verb","surface":"wissen","translation":"دانستن"},{"lemma":"nicht","partOfSpeech":"particle","suffix":",","surface":"nicht","translation":"نه / نیست"},{"lemma":"ob","partOfSpeech":"conjunction","surface":"ob","translation":"آیا / اینکه"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"weiterfahren","partOfSpeech":"verb","surface":"weiterfahren","translation":"به مسیر ادامه دادن"},{"lemma":"können","partOfSpeech":"verb","suffix":".","surface":"können","translation":"توانستن / بتوان"}]','Unsicherheit und indirekte Fragen','با جمله‌های وابسته با ob درباره نامطمئن بودن اطلاعات و امکان ادامه سفر صحبت می‌شود.','{"focus":"ob_clauses_and_travel_uncertainty","structures":["ob clause","indirect question","obwohl clause","modal verbs"]}','{"cefr":"B1","course":"de-fa","series":97}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_ben,3,'character','Am Schalter kann uns gerade niemand etwas Genaues sagen.','کنار باجه فعلاً هیچ‌کس نمی‌تواند اطلاعات دقیقی به ما بدهد.',51,NULL,NULL,NULL,NULL,'[{"lemma":"an","partOfSpeech":"preposition","surface":"Am","translation":"در / در روز"},{"lemma":"Schalter","partOfSpeech":"noun","surface":"Schalter","translation":"باجه"},{"lemma":"können","partOfSpeech":"verb","surface":"kann","translation":"توانستن / بتوان"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"uns","translation":"ما"},{"lemma":"gerade","partOfSpeech":"adverb","surface":"gerade","translation":"همین حالا"},{"lemma":"niemand","partOfSpeech":"pronoun","surface":"niemand","translation":"هیچ‌کس"},{"lemma":"etwas","partOfSpeech":"pronoun","surface":"etwas","translation":"چیزی / یک چیزی"},{"lemma":"genau","partOfSpeech":"adjective","surface":"Genaues","translation":"دقیق"},{"lemma":"sagen","partOfSpeech":"verb","suffix":".","surface":"sagen","translation":"گفتن"}]','Unsicherheit und indirekte Fragen','با جمله‌های وابسته با ob درباره نامطمئن بودن اطلاعات و امکان ادامه سفر صحبت می‌شود.','{"focus":"ob_clauses_and_travel_uncertainty","structures":["ob clause","indirect question","obwohl clause","modal verbs"]}','{"cefr":"B1","course":"de-fa","series":97}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_lena,4,'learner','Dann prüfen wir zuerst die App.','پس اول برنامه را بررسی می‌کنیم.',51,NULL,NULL,'dann prüfen wir zuerst die app',NULL,'[{"lemma":"dann","partOfSpeech":"adverb","surface":"Dann","translation":"بعد / سپس"},{"lemma":"prüfen","partOfSpeech":"verb","surface":"prüfen","translation":"بررسی کردن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"zuerst","partOfSpeech":"adverb","surface":"zuerst","translation":"اول / ابتدا"},{"lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"App","partOfSpeech":"noun","suffix":".","surface":"App","translation":"برنامه"}]','Unsicherheit und indirekte Fragen','با جمله‌های وابسته با ob درباره نامطمئن بودن اطلاعات و امکان ادامه سفر صحبت می‌شود.','{"focus":"ob_clauses_and_travel_uncertainty","structures":["ob clause","indirect question","obwohl clause","modal verbs"]}','{"cefr":"B1","course":"de-fa","series":97}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_ben,5,'character','Dort steht nur, dass die Strecke noch gesperrt ist.','آنجا فقط نوشته شده که مسیر هنوز مسدود است.',51,NULL,NULL,NULL,NULL,'[{"lemma":"dort","partOfSpeech":"adverb","surface":"Dort","translation":"آنجا"},{"lemma":"stehen","partOfSpeech":"verb","surface":"steht","translation":"قرار داشتن / ایستادن"},{"lemma":"nur","partOfSpeech":"adverb","suffix":",","surface":"nur","translation":"فقط"},{"lemma":"dass","partOfSpeech":"conjunction","surface":"dass","translation":"که"},{"lemma":"der","partOfSpeech":"article","surface":"die","translation":"حرف تعریف"},{"lemma":"Strecke","partOfSpeech":"noun","surface":"Strecke","translation":"مسیر"},{"lemma":"noch","partOfSpeech":"adverb","surface":"noch","translation":"هنوز"},{"lemma":"sperren","partOfSpeech":"verb","surface":"gesperrt","translation":"مسدود کردن"},{"lemma":"sein","partOfSpeech":"verb","suffix":".","surface":"ist","translation":"بودن"}]','Unsicherheit und indirekte Fragen','با جمله‌های وابسته با ob درباره نامطمئن بودن اطلاعات و امکان ادامه سفر صحبت می‌شود.','{"focus":"ob_clauses_and_travel_uncertainty","structures":["ob clause","indirect question","obwohl clause","modal verbs"]}','{"cefr":"B1","course":"de-fa","series":97}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_lena,6,'learner','Ich möchte wissen, wann es neue Informationen gibt.','می‌خواهم بدانم اطلاعات تازه چه زمانی منتشر می‌شود.',51,NULL,NULL,'ich möchte wissen wann es neue informationen gibt',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"lemma":"möchten","partOfSpeech":"verb","surface":"möchte","translation":"خواستن / مایل بودن"},{"lemma":"wissen","partOfSpeech":"verb","suffix":",","surface":"wissen","translation":"دانستن"},{"lemma":"wann","partOfSpeech":"adverb","surface":"wann","translation":"کی / چه زمانی"},{"lemma":"es","partOfSpeech":"pronoun","surface":"es","translation":"آن / این / ضمیر خنثی"},{"lemma":"neu","partOfSpeech":"adjective","surface":"neue","translation":"جدید / تازه"},{"lemma":"Information","partOfSpeech":"noun","surface":"Informationen","translation":"اطلاعات"},{"lemma":"geben","partOfSpeech":"verb","suffix":".","surface":"gibt","translation":"دادن"}]','Unsicherheit und indirekte Fragen','با جمله‌های وابسته با ob درباره نامطمئن بودن اطلاعات و امکان ادامه سفر صحبت می‌شود.','{"focus":"ob_clauses_and_travel_uncertainty","structures":["ob clause","indirect question","obwohl clause","modal verbs"]}','{"cefr":"B1","course":"de-fa","series":97}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_001,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_004,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_006,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_007,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_008,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_009,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_010,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_011,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_013,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_014,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_015,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_016,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_017,'new',0,1);
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
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_029,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_030,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_031,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_032,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_033,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_034,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_035,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_036,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_037,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_107,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'new_word',1,NULL,v_w_107,'عبارت کلیدی درس',NULL,51,NULL,'{"cefr":"B1","series":97}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'new_word',2,NULL,v_w_030,'واژهٔ کلیدی درس',NULL,51,NULL,'{"cefr":"B1","series":97}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',3,v_t_1,NULL,'به جملهٔ بن گوش کن',NULL,51,NULL,'{"cefr":"B1","series":97}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',4,v_t_2,NULL,'پاسخ لنا را با صدای بلند بگو',NULL,51,NULL,'{"cefr":"B1","series":97}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',5,v_t_5,NULL,'به جملهٔ بعدی گوش کن',NULL,51,NULL,'{"cefr":"B1","series":97}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',6,v_t_6,NULL,'پاسخ را با صدای بلند بگو',NULL,51,NULL,'{"cefr":"B1","series":97}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'meaning_choice',7,NULL,v_w_030,'معنی واژهٔ کلیدی را انتخاب کن',NULL,51,'{"mode":"word_translation","question":"sperren در این درس چه معنی دارد؟","choices":["مسدود کردن","خرید غذا","تعمیر خانه"],"correctIndex":0}','{"cefr":"B1","series":97}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و پاسخ بده',NULL,51,'{"source":"lesson_story","question":"چرا لنا و بن هنوز تصمیم قطعی ندارند؟","choices":["زمان ادامه سفر هنوز مشخص نیست","بلیط‌هایشان را گم کرده‌اند","ایستگاه بسته شده است"],"correctIndex":0}','{"cefr":"B1","series":97}');
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ben,v_c_lena,'Eine mögliche Verbindung','یک مسیر احتمالی','Die Freunde finden eine mögliche Verbindung und prüfen ihre Fahrkarten.','دو دوست یک مسیر احتمالی پیدا می‌کنند و اعتبار بلیط‌هایشان را بررسی می‌کنند.','story','lena-ben-b1-travel-problems',6,51,175,2,'validated','{"relationship":"friends","context":"travel-uncertainty","cefr":"B1","storyArc":"check-options-decide"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_ben,1,'character','Die App zeigt einen Zug nach Frankfurt.','برنامه یک قطار به مقصد فرانکفورت نشان می‌دهد.',51,NULL,NULL,NULL,NULL,'[{"lemma":"der","partOfSpeech":"article","surface":"Die","translation":"حرف تعریف"},{"lemma":"App","partOfSpeech":"noun","surface":"App","translation":"برنامه"},{"lemma":"zeigen","partOfSpeech":"verb","surface":"zeigt","translation":"نشان دادن"},{"lemma":"ein","partOfSpeech":"article","surface":"einen","translation":"یک / حرف تعریف نامعین"},{"lemma":"Zug","partOfSpeech":"noun","surface":"Zug","translation":"قطار"},{"lemma":"nach","partOfSpeech":"preposition","surface":"nach","translation":"پس از / به"},{"lemma":"Frankfurt","partOfSpeech":"noun","suffix":".","surface":"Frankfurt","translation":"فرانکفورت"}]','Unsicherheit und indirekte Fragen','با جمله‌های وابسته با ob درباره نامطمئن بودن اطلاعات و امکان ادامه سفر صحبت می‌شود.','{"focus":"ob_clauses_and_travel_uncertainty","structures":["ob clause","indirect question","obwohl clause","modal verbs"]}','{"cefr":"B1","course":"de-fa","series":97}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_lena,2,'learner','Ich frage, ob wir mit diesem Zug weiterfahren können.','می‌پرسم آیا می‌توانیم با این قطار ادامه بدهیم.',51,NULL,NULL,'ich frage ob wir mit diesem zug weiterfahren können',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"lemma":"fragen","partOfSpeech":"verb","suffix":",","surface":"frage","translation":"پرسیدن"},{"lemma":"ob","partOfSpeech":"conjunction","surface":"ob","translation":"آیا / اینکه"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"mit","partOfSpeech":"preposition","surface":"mit","translation":"با"},{"lemma":"dieser","partOfSpeech":"determiner","surface":"diesem","translation":"این"},{"lemma":"Zug","partOfSpeech":"noun","surface":"Zug","translation":"قطار"},{"lemma":"weiterfahren","partOfSpeech":"verb","surface":"weiterfahren","translation":"به مسیر ادامه دادن"},{"lemma":"können","partOfSpeech":"verb","suffix":".","surface":"können","translation":"توانستن / بتوان"}]','Unsicherheit und indirekte Fragen','با جمله‌های وابسته با ob درباره نامطمئن بودن اطلاعات و امکان ادامه سفر صحبت می‌شود.','{"focus":"ob_clauses_and_travel_uncertainty","structures":["ob clause","indirect question","obwohl clause","modal verbs"]}','{"cefr":"B1","course":"de-fa","series":97}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_ben,3,'character','Er fährt in vierzig Minuten von Gleis acht ab.','این قطار چهل دقیقه دیگر از سکوی هشت حرکت می‌کند.',51,NULL,NULL,NULL,NULL,'[{"lemma":"er","partOfSpeech":"pronoun","surface":"Er","translation":"او (مذکر)"},{"lemma":"fahren","partOfSpeech":"verb","surface":"fährt","translation":"رفتن با وسیله / راندن"},{"lemma":"in","partOfSpeech":"preposition","surface":"in","translation":"در / داخل"},{"lemma":"vierzig","partOfSpeech":"number","surface":"vierzig","translation":"چهل"},{"lemma":"Minute","partOfSpeech":"noun","surface":"Minuten","translation":"دقیقه"},{"lemma":"von","partOfSpeech":"preposition","surface":"von","translation":"از / از سمت"},{"lemma":"Gleis","partOfSpeech":"noun","surface":"Gleis","translation":"سکوی قطار / خط"},{"lemma":"acht","partOfSpeech":"number","surface":"acht","translation":"هشت"},{"lemma":"abfahren","partOfSpeech":"verb","suffix":".","surface":"ab","translation":"حرکت کردن"}]','Unsicherheit und indirekte Fragen','با جمله‌های وابسته با ob درباره نامطمئن بودن اطلاعات و امکان ادامه سفر صحبت می‌شود.','{"focus":"ob_clauses_and_travel_uncertainty","structures":["ob clause","indirect question","obwohl clause","modal verbs"]}','{"cefr":"B1","course":"de-fa","series":97}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_lena,4,'learner','Aber wir wissen noch nicht, ob unsere Fahrkarten gelten.','اما هنوز نمی‌دانیم بلیط‌هایمان اعتبار دارند یا نه.',51,NULL,NULL,'aber wir wissen noch nicht ob unsere fahrkarten gelten',NULL,'[{"lemma":"aber","partOfSpeech":"conjunction","surface":"Aber","translation":"اما"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"wissen","partOfSpeech":"verb","surface":"wissen","translation":"دانستن"},{"lemma":"noch","partOfSpeech":"adverb","surface":"noch","translation":"هنوز"},{"lemma":"nicht","partOfSpeech":"particle","suffix":",","surface":"nicht","translation":"نه / نیست"},{"lemma":"ob","partOfSpeech":"conjunction","surface":"ob","translation":"آیا / اینکه"},{"lemma":"unser","partOfSpeech":"determiner","surface":"unsere","translation":"مال ما / ما"},{"lemma":"Fahrkarte","partOfSpeech":"noun","surface":"Fahrkarten","translation":"بلیط"},{"lemma":"gelten","partOfSpeech":"verb","suffix":".","surface":"gelten","translation":"اعتبار داشتن"}]','Unsicherheit und indirekte Fragen','با جمله‌های وابسته با ob درباره نامطمئن بودن اطلاعات و امکان ادامه سفر صحبت می‌شود.','{"focus":"ob_clauses_and_travel_uncertainty","structures":["ob clause","indirect question","obwohl clause","modal verbs"]}','{"cefr":"B1","course":"de-fa","series":97}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_ben,5,'character','Das können wir am Schalter prüfen lassen.','می‌توانیم این موضوع را کنار باجه بررسی کنیم.',51,NULL,NULL,NULL,NULL,'[{"lemma":"das","partOfSpeech":"pronoun","surface":"Das","translation":"این / آن"},{"lemma":"können","partOfSpeech":"verb","surface":"können","translation":"توانستن / بتوان"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"an","partOfSpeech":"preposition","surface":"am","translation":"در / در روز"},{"lemma":"Schalter","partOfSpeech":"noun","surface":"Schalter","translation":"باجه"},{"lemma":"prüfen","partOfSpeech":"verb","surface":"prüfen","translation":"بررسی کردن"},{"lemma":"lassen","partOfSpeech":"verb","suffix":".","surface":"lassen","translation":"گذاشتن / امکان دادن"}]','Unsicherheit und indirekte Fragen','با جمله‌های وابسته با ob درباره نامطمئن بودن اطلاعات و امکان ادامه سفر صحبت می‌شود.','{"focus":"ob_clauses_and_travel_uncertainty","structures":["ob clause","indirect question","obwohl clause","modal verbs"]}','{"cefr":"B1","course":"de-fa","series":97}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_lena,6,'learner','Gut, dann warten wir nicht länger.','خوب، پس دیگر بیشتر منتظر نمی‌مانیم.',51,NULL,NULL,'gut dann warten wir nicht länger',NULL,'[{"lemma":"gut","partOfSpeech":"adjective","suffix":",","surface":"Gut","translation":"خوب"},{"lemma":"dann","partOfSpeech":"adverb","surface":"dann","translation":"بعد / سپس"},{"lemma":"warten","partOfSpeech":"verb","surface":"warten","translation":"منتظر ماندن / صبر کردن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"nicht","partOfSpeech":"particle","surface":"nicht","translation":"نه / نیست"},{"lemma":"länger","partOfSpeech":"adverb","suffix":".","surface":"länger","translation":"بیشتر / طولانی‌تر"}]','Unsicherheit und indirekte Fragen','با جمله‌های وابسته با ob درباره نامطمئن بودن اطلاعات و امکان ادامه سفر صحبت می‌شود.','{"focus":"ob_clauses_and_travel_uncertainty","structures":["ob clause","indirect question","obwohl clause","modal verbs"]}','{"cefr":"B1","course":"de-fa","series":97}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_024,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_038,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_039,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_040,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_041,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_032,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_042,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_011,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_008,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_043,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_044,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_013,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_045,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_046,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_047,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_048,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_049,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_050,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_051,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_052,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_053,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_054,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_010,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_055,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_056,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_057,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_058,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_014,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_015,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_022,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_059,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_060,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_021,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_061,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_062,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_108,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'new_word',1,NULL,v_w_108,'عبارت کلیدی درس',NULL,51,NULL,'{"cefr":"B1","series":97}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'new_word',2,NULL,v_w_057,'واژهٔ کلیدی درس',NULL,51,NULL,'{"cefr":"B1","series":97}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',3,v_t_7,NULL,'به جملهٔ بن گوش کن',NULL,51,NULL,'{"cefr":"B1","series":97}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',4,v_t_8,NULL,'پاسخ لنا را با صدای بلند بگو',NULL,51,NULL,'{"cefr":"B1","series":97}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',5,v_t_11,NULL,'به جملهٔ بعدی گوش کن',NULL,51,NULL,'{"cefr":"B1","series":97}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',6,v_t_12,NULL,'پاسخ را با صدای بلند بگو',NULL,51,NULL,'{"cefr":"B1","series":97}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'meaning_choice',7,NULL,v_w_057,'معنی واژهٔ کلیدی را انتخاب کن',NULL,51,'{"mode":"word_translation","question":"gelten در این درس چه معنی دارد؟","choices":["اعتبار داشتن","خرید غذا","تعمیر خانه"],"correctIndex":0}','{"cefr":"B1","series":97}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و پاسخ بده',NULL,51,'{"source":"lesson_story","question":"آن‌ها پیش از انتخاب قطار چه چیزی را بررسی می‌کنند؟","choices":["اعتبار بلیط‌ها","قیمت هتل","آب‌وهوای فردا"],"correctIndex":0}','{"cefr":"B1","series":97}');
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ben,v_c_lena,'Unsichere Ankunft','رسیدن نامطمئن','Lena und Ben rechnen mit einer späten Ankunft und informieren das Hotel.','لنا و بن احتمال دیر رسیدن را بررسی می‌کنند و به هتل خبر می‌دهند.','story','lena-ben-b1-travel-problems',7,51,175,3,'validated','{"relationship":"friends","context":"travel-uncertainty","cefr":"B1","storyArc":"check-options-decide"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_ben,1,'character','Wenn wir diesen Zug nehmen, kommen wir um Mitternacht an.','اگر این قطار را بگیریم، نیمه‌شب می‌رسیم.',51,NULL,NULL,NULL,NULL,'[{"lemma":"wenn","partOfSpeech":"conjunction","surface":"Wenn","translation":"اگر / وقتی"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"dieser","partOfSpeech":"determiner","surface":"diesen","translation":"این"},{"lemma":"Zug","partOfSpeech":"noun","surface":"Zug","translation":"قطار"},{"lemma":"nehmen","partOfSpeech":"verb","suffix":",","surface":"nehmen","translation":"گرفتن / مصرف کردن"},{"lemma":"kommen","partOfSpeech":"verb","surface":"kommen","translation":"آمدن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"um","partOfSpeech":"preposition","surface":"um","translation":"در ساعت / حوالی"},{"lemma":"Mitternacht","partOfSpeech":"noun","surface":"Mitternacht","translation":"نیمه‌شب"},{"lemma":"an","partOfSpeech":"particle","suffix":".","surface":"an","translation":"مطرح / آغاز"}]','Unsicherheit und indirekte Fragen','با جمله‌های وابسته با ob درباره نامطمئن بودن اطلاعات و امکان ادامه سفر صحبت می‌شود.','{"focus":"ob_clauses_and_travel_uncertainty","structures":["ob clause","indirect question","obwohl clause","modal verbs"]}','{"cefr":"B1","course":"de-fa","series":97}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_lena,2,'learner','Ich weiß nicht, ob wir den letzten Bus noch erreichen.','نمی‌دانم هنوز به آخرین اتوبوس می‌رسیم یا نه.',51,NULL,NULL,'ich weiß nicht ob wir den letzten bus noch erreichen',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"lemma":"wissen","partOfSpeech":"verb","surface":"weiß","translation":"دانستن"},{"lemma":"nicht","partOfSpeech":"particle","suffix":",","surface":"nicht","translation":"نه / نیست"},{"lemma":"ob","partOfSpeech":"conjunction","surface":"ob","translation":"آیا / اینکه"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"der","partOfSpeech":"article","surface":"den","translation":"حرف تعریف"},{"lemma":"letzte","partOfSpeech":"adjective","surface":"letzten","translation":"آخرین"},{"lemma":"Bus","partOfSpeech":"noun","surface":"Bus","translation":"اتوبوس"},{"lemma":"noch","partOfSpeech":"adverb","surface":"noch","translation":"هنوز"},{"lemma":"erreichen","partOfSpeech":"verb","suffix":".","surface":"erreichen","translation":"رسیدن به"}]','Unsicherheit und indirekte Fragen','با جمله‌های وابسته با ob درباره نامطمئن بودن اطلاعات و امکان ادامه سفر صحبت می‌شود.','{"focus":"ob_clauses_and_travel_uncertainty","structures":["ob clause","indirect question","obwohl clause","modal verbs"]}','{"cefr":"B1","course":"de-fa","series":97}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_ben,3,'character','Vom Bahnhof fährt um zwölf Uhr noch ein Nachtbus.','از ایستگاه قطار، ساعت دوازده هنوز یک اتوبوس شبانه حرکت می‌کند.',51,NULL,NULL,NULL,NULL,'[{"lemma":"von","partOfSpeech":"preposition","surface":"Vom","translation":"از / از سمت"},{"lemma":"Bahnhof","partOfSpeech":"noun","surface":"Bahnhof","translation":"ایستگاه قطار"},{"lemma":"fahren","partOfSpeech":"verb","surface":"fährt","translation":"رفتن با وسیله / راندن"},{"lemma":"um","partOfSpeech":"preposition","surface":"um","translation":"در ساعت / حوالی"},{"lemma":"zwölf","partOfSpeech":"number","surface":"zwölf","translation":"دوازده"},{"lemma":"Uhr","partOfSpeech":"noun","surface":"Uhr","translation":"ساعت"},{"lemma":"noch","partOfSpeech":"adverb","surface":"noch","translation":"هنوز"},{"lemma":"ein","partOfSpeech":"article","surface":"ein","translation":"یک / حرف تعریف نامعین"},{"lemma":"Nachtbus","partOfSpeech":"noun","suffix":".","surface":"Nachtbus","translation":"اتوبوس شبانه"}]','Unsicherheit und indirekte Fragen','با جمله‌های وابسته با ob درباره نامطمئن بودن اطلاعات و امکان ادامه سفر صحبت می‌شود.','{"focus":"ob_clauses_and_travel_uncertainty","structures":["ob clause","indirect question","obwohl clause","modal verbs"]}','{"cefr":"B1","course":"de-fa","series":97}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_lena,4,'learner','Dann hängt alles davon ab, ob der Zug pünktlich ist.','پس همه‌چیز بستگی دارد که قطار سر وقت باشد یا نه.',51,NULL,NULL,'dann hängt alles davon ab ob der zug pünktlich ist',NULL,'[{"lemma":"dann","partOfSpeech":"adverb","surface":"Dann","translation":"بعد / سپس"},{"lemma":"abhängen","partOfSpeech":"verb","surface":"hängt","translation":"بستگی داشتن"},{"lemma":"alles","partOfSpeech":"pronoun","surface":"alles","translation":"همه چیز"},{"lemma":"davon","partOfSpeech":"adverb","surface":"davon","translation":"به آن / از آن"},{"lemma":"ab","partOfSpeech":"particle","suffix":",","surface":"ab","translation":"جدا / ارسال"},{"lemma":"ob","partOfSpeech":"conjunction","surface":"ob","translation":"آیا / اینکه"},{"lemma":"der","partOfSpeech":"article","surface":"der","translation":"حرف تعریف"},{"lemma":"Zug","partOfSpeech":"noun","surface":"Zug","translation":"قطار"},{"lemma":"pünktlich","partOfSpeech":"adverb","surface":"pünktlich","translation":"سر وقت"},{"lemma":"sein","partOfSpeech":"verb","suffix":".","surface":"ist","translation":"بودن"}]','Unsicherheit und indirekte Fragen','با جمله‌های وابسته با ob درباره نامطمئن بودن اطلاعات و امکان ادامه سفر صحبت می‌شود.','{"focus":"ob_clauses_and_travel_uncertainty","structures":["ob clause","indirect question","obwohl clause","modal verbs"]}','{"cefr":"B1","course":"de-fa","series":97}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_ben,5,'character','Wir können dem Hotel unsere Verspätung melden.','می‌توانیم تاخیرمان را به هتل اطلاع بدهیم.',51,NULL,NULL,NULL,NULL,'[{"lemma":"wir","partOfSpeech":"pronoun","surface":"Wir","translation":"ما"},{"lemma":"können","partOfSpeech":"verb","surface":"können","translation":"توانستن / بتوان"},{"lemma":"der","partOfSpeech":"article","surface":"dem","translation":"حرف تعریف"},{"lemma":"Hotel","partOfSpeech":"noun","surface":"Hotel","translation":"هتل"},{"lemma":"unser","partOfSpeech":"determiner","surface":"unsere","translation":"مال ما / ما"},{"lemma":"Verspätung","partOfSpeech":"noun","surface":"Verspätung","translation":"تاخیر"},{"lemma":"melden","partOfSpeech":"verb","suffix":".","surface":"melden","translation":"اطلاع دادن"}]','Unsicherheit und indirekte Fragen','با جمله‌های وابسته با ob درباره نامطمئن بودن اطلاعات و امکان ادامه سفر صحبت می‌شود.','{"focus":"ob_clauses_and_travel_uncertainty","structures":["ob clause","indirect question","obwohl clause","modal verbs"]}','{"cefr":"B1","course":"de-fa","series":97}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_lena,6,'learner','Ja, ich schreibe ihnen sofort eine Nachricht.','بله، همین حالا برایشان پیام می‌نویسم.',51,NULL,NULL,'ja ich schreibe ihnen sofort eine nachricht',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"lemma":"schreiben","partOfSpeech":"verb","surface":"schreibe","translation":"نوشتن"},{"lemma":"ihnen","partOfSpeech":"pronoun","surface":"ihnen","translation":"به آن‌ها"},{"lemma":"sofort","partOfSpeech":"adverb","surface":"sofort","translation":"فورا / همین الان"},{"lemma":"ein","partOfSpeech":"article","surface":"eine","translation":"یک / حرف تعریف نامعین"},{"lemma":"Nachricht","partOfSpeech":"noun","suffix":".","surface":"Nachricht","translation":"پیام"}]','Unsicherheit und indirekte Fragen','با جمله‌های وابسته با ob درباره نامطمئن بودن اطلاعات و امکان ادامه سفر صحبت می‌شود.','{"focus":"ob_clauses_and_travel_uncertainty","structures":["ob clause","indirect question","obwohl clause","modal verbs"]}','{"cefr":"B1","course":"de-fa","series":97}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_063,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_008,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_044,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_039,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_064,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_065,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_066,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_067,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_068,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_032,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_010,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_011,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_001,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_069,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_070,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_004,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_071,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_050,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_072,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_046,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_073,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_074,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_038,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_075,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_021,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_076,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_077,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_078,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_079,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_080,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_031,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_081,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_055,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_082,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_083,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_084,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_085,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_086,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_087,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_088,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_109,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'new_word',1,NULL,v_w_109,'عبارت کلیدی درس',NULL,51,NULL,'{"cefr":"B1","series":97}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'new_word',2,NULL,v_w_075,'واژهٔ کلیدی درس',NULL,51,NULL,'{"cefr":"B1","series":97}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',3,v_t_13,NULL,'به جملهٔ بن گوش کن',NULL,51,NULL,'{"cefr":"B1","series":97}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',4,v_t_14,NULL,'پاسخ لنا را با صدای بلند بگو',NULL,51,NULL,'{"cefr":"B1","series":97}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',5,v_t_17,NULL,'به جملهٔ بعدی گوش کن',NULL,51,NULL,'{"cefr":"B1","series":97}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',6,v_t_18,NULL,'پاسخ را با صدای بلند بگو',NULL,51,NULL,'{"cefr":"B1","series":97}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'meaning_choice',7,NULL,v_w_075,'معنی واژهٔ کلیدی را انتخاب کن',NULL,51,'{"mode":"word_translation","question":"Nachtbus در این درس چه معنی دارد؟","choices":["اتوبوس شبانه","خرید غذا","تعمیر خانه"],"correctIndex":0}','{"cefr":"B1","series":97}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و پاسخ بده',NULL,51,'{"source":"lesson_story","question":"اگر دیر برسند چگونه به هتل خبر می‌دهند؟","choices":["پیام می‌فرستند","نامه پستی می‌فرستند","رزرو را پاک می‌کنند"],"correctIndex":0}','{"cefr":"B1","series":97}');
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ben,v_c_lena,'Weiter mit einem Plan','ادامه سفر با یک برنامه','Die Fahrkarten gelten, und die Freunde entscheiden sich trotz Unsicherheit für die Weiterfahrt.','بلیط‌ها معتبرند و دو دوست با وجود نامطمئن بودن شرایط تصمیم می‌گیرند سفر را ادامه بدهند.','story','lena-ben-b1-travel-problems',8,51,175,4,'validated','{"relationship":"friends","context":"travel-uncertainty","cefr":"B1","storyArc":"check-options-decide"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_ben,1,'character','Der Mitarbeiter sagt, dass unsere Fahrkarten gültig sind.','کارمند می‌گوید بلیط‌هایمان معتبر است.',51,NULL,NULL,NULL,NULL,'[{"lemma":"der","partOfSpeech":"article","surface":"Der","translation":"حرف تعریف"},{"lemma":"Mitarbeiter","partOfSpeech":"noun","surface":"Mitarbeiter","translation":"کارمند"},{"lemma":"sagen","partOfSpeech":"verb","suffix":",","surface":"sagt","translation":"گفتن"},{"lemma":"dass","partOfSpeech":"conjunction","surface":"dass","translation":"که"},{"lemma":"unser","partOfSpeech":"determiner","surface":"unsere","translation":"مال ما / ما"},{"lemma":"Fahrkarte","partOfSpeech":"noun","surface":"Fahrkarten","translation":"بلیط"},{"lemma":"gültig","partOfSpeech":"adjective","surface":"gültig","translation":"معتبر"},{"lemma":"sein","partOfSpeech":"verb","suffix":".","surface":"sind","translation":"بودن"}]','Unsicherheit und indirekte Fragen','با جمله‌های وابسته با ob درباره نامطمئن بودن اطلاعات و امکان ادامه سفر صحبت می‌شود.','{"focus":"ob_clauses_and_travel_uncertainty","structures":["ob clause","indirect question","obwohl clause","modal verbs"]}','{"cefr":"B1","course":"de-fa","series":97}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_lena,2,'learner','Dann fahren wir weiter, obwohl noch nicht alles sicher ist.','پس ادامه می‌دهیم، با اینکه هنوز همه‌چیز قطعی نیست.',51,NULL,NULL,'dann fahren wir weiter obwohl noch nicht alles sicher ist',NULL,'[{"lemma":"dann","partOfSpeech":"adverb","surface":"Dann","translation":"بعد / سپس"},{"lemma":"fahren","partOfSpeech":"verb","surface":"fahren","translation":"رفتن با وسیله / راندن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"weiter","partOfSpeech":"adverb","suffix":",","surface":"weiter","translation":"ادامه / بیشتر"},{"lemma":"obwohl","partOfSpeech":"conjunction","surface":"obwohl","translation":"با اینکه"},{"lemma":"noch","partOfSpeech":"adverb","surface":"noch","translation":"هنوز"},{"lemma":"nicht","partOfSpeech":"particle","surface":"nicht","translation":"نه / نیست"},{"lemma":"alles","partOfSpeech":"pronoun","surface":"alles","translation":"همه چیز"},{"lemma":"sicher","partOfSpeech":"adjective","surface":"sicher","translation":"مطمئن"},{"lemma":"sein","partOfSpeech":"verb","suffix":".","surface":"ist","translation":"بودن"}]','Unsicherheit und indirekte Fragen','با جمله‌های وابسته با ob درباره نامطمئن بودن اطلاعات و امکان ادامه سفر صحبت می‌شود.','{"focus":"ob_clauses_and_travel_uncertainty","structures":["ob clause","indirect question","obwohl clause","modal verbs"]}','{"cefr":"B1","course":"de-fa","series":97}');
  SET v_t_20=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_ben,3,'character','Wir müssen nur am nächsten Bahnhof umsteigen.','فقط باید در ایستگاه بعدی قطار عوض کنیم.',51,NULL,NULL,NULL,NULL,'[{"lemma":"wir","partOfSpeech":"pronoun","surface":"Wir","translation":"ما"},{"lemma":"müssen","partOfSpeech":"verb","surface":"müssen","translation":"مجبور بودن / باید"},{"lemma":"nur","partOfSpeech":"adverb","surface":"nur","translation":"فقط"},{"lemma":"an","partOfSpeech":"preposition","surface":"am","translation":"در / در روز"},{"lemma":"nächste","partOfSpeech":"adjective","surface":"nächsten","translation":"بعدی"},{"lemma":"Bahnhof","partOfSpeech":"noun","surface":"Bahnhof","translation":"ایستگاه قطار"},{"lemma":"umsteigen","partOfSpeech":"verb","suffix":".","surface":"umsteigen","translation":"قطار عوض کردن / خط عوض کردن"}]','Unsicherheit und indirekte Fragen','با جمله‌های وابسته با ob درباره نامطمئن بودن اطلاعات و امکان ادامه سفر صحبت می‌شود.','{"focus":"ob_clauses_and_travel_uncertainty","structures":["ob clause","indirect question","obwohl clause","modal verbs"]}','{"cefr":"B1","course":"de-fa","series":97}');
  SET v_t_21=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_lena,4,'learner','Ich prüfe, von welchem Gleis der Anschluss fährt.','بررسی می‌کنم قطار بعدی از کدام سکو حرکت می‌کند.',51,NULL,NULL,'ich prüfe von welchem gleis der anschluss fährt',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"lemma":"prüfen","partOfSpeech":"verb","suffix":",","surface":"prüfe","translation":"بررسی کردن"},{"lemma":"von","partOfSpeech":"preposition","surface":"von","translation":"از / از سمت"},{"lemma":"welcher","partOfSpeech":"pronoun","surface":"welchem","translation":"کدام"},{"lemma":"Gleis","partOfSpeech":"noun","surface":"Gleis","translation":"سکوی قطار / خط"},{"lemma":"der","partOfSpeech":"article","surface":"der","translation":"حرف تعریف"},{"lemma":"Anschluss","partOfSpeech":"noun","surface":"Anschluss","translation":"قطار بعدی / اتصال"},{"lemma":"fahren","partOfSpeech":"verb","suffix":".","surface":"fährt","translation":"رفتن با وسیله / راندن"}]','Unsicherheit und indirekte Fragen','با جمله‌های وابسته با ob درباره نامطمئن بودن اطلاعات و امکان ادامه سفر صحبت می‌شود.','{"focus":"ob_clauses_and_travel_uncertainty","structures":["ob clause","indirect question","obwohl clause","modal verbs"]}','{"cefr":"B1","course":"de-fa","series":97}');
  SET v_t_22=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_ben,5,'character','Jetzt haben wir wenigstens einen guten Plan.','حالا دست‌کم یک برنامه خوب داریم.',51,NULL,NULL,NULL,NULL,'[{"lemma":"jetzt","partOfSpeech":"adverb","surface":"Jetzt","translation":"حالا / اکنون"},{"lemma":"haben","partOfSpeech":"verb","surface":"haben","translation":"داشتن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"wenigstens","partOfSpeech":"adverb","surface":"wenigstens","translation":"دست‌کم"},{"lemma":"ein","partOfSpeech":"article","surface":"einen","translation":"یک / حرف تعریف نامعین"},{"lemma":"gut","partOfSpeech":"adjective","surface":"guten","translation":"خوب"},{"lemma":"Plan","partOfSpeech":"noun","suffix":".","surface":"Plan","translation":"برنامه"}]','Unsicherheit und indirekte Fragen','با جمله‌های وابسته با ob درباره نامطمئن بودن اطلاعات و امکان ادامه سفر صحبت می‌شود.','{"focus":"ob_clauses_and_travel_uncertainty","structures":["ob clause","indirect question","obwohl clause","modal verbs"]}','{"cefr":"B1","course":"de-fa","series":97}');
  SET v_t_23=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_lena,6,'learner','Genau, bei einer Änderung fragen wir wieder.','دقیقاً، اگر تغییری پیش بیاید دوباره پیگیری می‌کنیم.',51,NULL,NULL,'genau bei einer änderung fragen wir wieder',NULL,'[{"lemma":"genau","partOfSpeech":"adverb","suffix":",","surface":"Genau","translation":"دقیقا"},{"lemma":"bei","partOfSpeech":"preposition","surface":"bei","translation":"هنگام / موقع"},{"lemma":"ein","partOfSpeech":"article","surface":"einer","translation":"یک / حرف تعریف نامعین"},{"lemma":"Änderung","partOfSpeech":"noun","surface":"Änderung","translation":"تغییر"},{"lemma":"fragen","partOfSpeech":"verb","surface":"fragen","translation":"پرسیدن"},{"lemma":"wir","partOfSpeech":"pronoun","surface":"wir","translation":"ما"},{"lemma":"wieder","partOfSpeech":"adverb","suffix":".","surface":"wieder","translation":"دوباره"}]','Unsicherheit und indirekte Fragen','با جمله‌های وابسته با ob درباره نامطمئن بودن اطلاعات و امکان ادامه سفر صحبت می‌شود.','{"focus":"ob_clauses_and_travel_uncertainty","structures":["ob clause","indirect question","obwohl clause","modal verbs"]}','{"cefr":"B1","course":"de-fa","series":97}');
  SET v_t_24=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_001,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_089,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_020,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_028,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_055,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_056,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_090,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_031,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_021,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_046,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_008,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_091,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_092,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_010,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_077,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_093,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_094,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_027,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_014,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_095,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_072,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_096,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_032,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_022,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_050,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_097,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_051,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_098,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_099,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_100,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_101,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_038,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_060,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_102,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_103,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_104,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_105,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_042,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_106,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_110,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'new_word',1,NULL,v_w_110,'عبارت کلیدی درس',NULL,51,NULL,'{"cefr":"B1","series":97}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'new_word',2,NULL,v_w_090,'واژهٔ کلیدی درس',NULL,51,NULL,'{"cefr":"B1","series":97}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',3,v_t_19,NULL,'به جملهٔ بن گوش کن',NULL,51,NULL,'{"cefr":"B1","series":97}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',4,v_t_20,NULL,'پاسخ لنا را با صدای بلند بگو',NULL,51,NULL,'{"cefr":"B1","series":97}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',5,v_t_23,NULL,'به جملهٔ بعدی گوش کن',NULL,51,NULL,'{"cefr":"B1","series":97}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',6,v_t_24,NULL,'پاسخ را با صدای بلند بگو',NULL,51,NULL,'{"cefr":"B1","series":97}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'meaning_choice',7,NULL,v_w_090,'معنی واژهٔ کلیدی را انتخاب کن',NULL,51,'{"mode":"word_translation","question":"gültig در این درس چه معنی دارد؟","choices":["معتبر","خرید غذا","تعمیر خانه"],"correctIndex":0}','{"cefr":"B1","series":97}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و پاسخ بده',NULL,51,'{"source":"lesson_story","question":"چرا لنا و بن می‌توانند سفر را ادامه بدهند؟","choices":["بلیط‌هایشان معتبر است","یک خودرو خریده‌اند","هتل برایشان تاکسی فرستاده است"],"correctIndex":0}','{"cefr":"B1","series":97}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 097 requires exactly four lessons.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>24 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 097 requires exactly 24 turns.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR CHAR_LENGTH(TRIM(t.speech_target))=0);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every learner Turn needs speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities a JOIN lessons l ON l.id=a.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>32 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 097 requires exactly 32 activities.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id<>learner_character_id AND storyline_key='lena-ben-b1-travel-problems' AND storyline_order BETWEEN 5 AND 8 AND status='validated';
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Character or storyline continuity failure.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) d;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_series_097_v9();
DROP PROCEDURE IF EXISTS import_nova_series_097_v9;

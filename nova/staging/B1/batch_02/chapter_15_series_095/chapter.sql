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

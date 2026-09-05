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

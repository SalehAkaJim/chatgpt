-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 082
-- B1 > Entscheidungen & Gründe > Warum willst du das machen?
-- Requires canonical Nova v9.0 and QA-passed staged Series 081.
-- Uses the unchanged Nova v9.0 schema; contains no schema DDL.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_082_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_082_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_level BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_prior_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_mia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_sara BIGINT UNSIGNED DEFAULT NULL;
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

  DECLARE EXIT HANDLER FOR SQLEXCEPTION
  BEGIN
    ROLLBACK;
    RESIGNAL;
  END;

  START TRANSACTION;
  SELECT id INTO v_course FROM courses WHERE learning_language='de' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.'; END IF;

  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='B1' AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Level from Series 081 not found.'; END IF;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 01 from Series 081 not found.'; END IF;

  SELECT id INTO v_prior_chapter FROM chapters WHERE module_id=v_module AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_prior_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 081 Chapter not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_prior_chapter AND status IN ('validated','complete');
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 081 Chapter must be validated before Series 082.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prior_chapter AND storyline_key='mia-sara-b1-decisions' AND storyline_order BETWEEN 1 AND 4;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 081 storyline orders 1-4 are required.'; END IF;

  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 01 Chapter 02 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='Warum willst du das machen?' AND title_translation='چرا می خوای این کار رو انجام بدی؟';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 082 canonical Chapter title mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='B1 Module 01 Chapter 02 must be empty before Series 082 import.'; END IF;

  SELECT id INTO v_c_mia FROM characters WHERE course_id=v_course AND name='Mia' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_mia IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Mia not found.'; END IF;
  SELECT id INTO v_c_sara FROM characters WHERE course_id=v_course AND name='Sara' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_sara IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Sara not found.'; END IF;
  IF v_c_mia=v_c_sara THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Mia and Sara must be distinct Characters.'; END IF;

  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='warum' AND part_of_speech='adverb' AND translation='چرا' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: warum | adverb'; END IF;

  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='möchten' AND part_of_speech='verb' AND translation='خواستن / مایل بودن' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: möchten | verb'; END IF;

  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: du | pronoun'; END IF;

  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='in' AND part_of_speech='preposition' AND translation='در / داخل' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: in | preposition'; END IF;

  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='ein' AND part_of_speech='article' AND translation='یک / حرف تعریف نامعین' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ein | article'; END IF;

  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='andere' AND part_of_speech='adjective' AND translation='دیگر / متفاوت' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: andere | adjective'; END IF;

  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='Wohnung' AND part_of_speech='noun' AND translation='خانه / آپارتمان' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: Wohnung | noun'; END IF;

  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='wohnen' AND part_of_speech='verb' AND translation='زندگی کردن / ساکن بودن' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: wohnen | verb'; END IF;

  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ich | pronoun'; END IF;

  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='brauchen' AND part_of_speech='verb' AND translation='نیاز داشتن / لازم داشتن' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: brauchen | verb'; END IF;

  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='mehr' AND part_of_speech='adverb' AND translation='دیگه / بیشتر' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: mehr | adverb'; END IF;

  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='Platz' AND part_of_speech='noun' AND translation='جا / فضا' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Platz','Platz','noun','جا / فضا',41,NULL,'[{"text":"Zeit","translation":"وقت"},{"text":"Straße","translation":"خیابان"},{"text":"Balkon","translation":"بالکن"},{"text":"Arbeit","translation":"کار"},{"text":"Wohnung","translation":"خانه"}]','Ich brauche mehr Platz.','به فضای بیشتری نیاز دارم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_012=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='arbeiten' AND part_of_speech='verb' AND translation='کار کردن' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: arbeiten | verb'; END IF;

  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='oft' AND part_of_speech='adverb' AND translation='اغلب' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'oft','oft','adverb','اغلب',41,NULL,'[{"text":"immer","translation":"همیشه"},{"text":"nie","translation":"هرگز"},{"text":"selten","translation":"به ندرت"},{"text":"heute","translation":"امروز"},{"text":"morgen","translation":"فردا"}]','Ich arbeite oft in der Wohnung.','اغلب در خانه کار می کنم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_014=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: der | article'; END IF;

  SELECT id INTO v_w_016 FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_016 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: haben | verb'; END IF;

  SELECT id INTO v_w_017 FROM words WHERE course_id=v_course AND lemma='dort' AND part_of_speech='adverb' AND translation='آنجا' ORDER BY id LIMIT 1;
  IF v_w_017 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dort | adverb'; END IF;

  SELECT id INTO v_w_018 FROM words WHERE course_id=v_course AND lemma='genug' AND part_of_speech='adverb' AND translation='کافی' ORDER BY id LIMIT 1;
  IF v_w_018 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'genug','genug','adverb','کافی',41,NULL,'[{"text":"mehr","translation":"بیشتر"},{"text":"wenig","translation":"کم"},{"text":"noch","translation":"هنوز"},{"text":"nicht","translation":"نه"},{"text":"oft","translation":"اغلب"}]','Hast du dort genug Platz?','آنجا فضای کافی داری؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_018=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_019 FROM words WHERE course_id=v_course AND lemma='nein' AND part_of_speech='interjection' AND translation='نه' ORDER BY id LIMIT 1;
  IF v_w_019 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: nein | interjection'; END IF;

  SELECT id INTO v_w_020 FROM words WHERE course_id=v_course AND lemma='mein' AND part_of_speech='determiner' AND translation='مال من / من' ORDER BY id LIMIT 1;
  IF v_w_020 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: mein | determiner'; END IF;

  SELECT id INTO v_w_021 FROM words WHERE course_id=v_course AND lemma='Schreibtisch' AND part_of_speech='noun' AND translation='میز تحریر / میز کار' ORDER BY id LIMIT 1;
  IF v_w_021 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Schreibtisch','Schreibtisch','noun','میز تحریر / میز کار',41,NULL,'[{"text":"Bett","translation":"تخت"},{"text":"Stuhl","translation":"صندلی"},{"text":"Balkon","translation":"بالکن"},{"text":"Straße","translation":"خیابان"},{"text":"Fenster","translation":"پنجره"}]','Nein, mein Schreibtisch steht im Schlafzimmer.','نه، میز کارم در اتاق خواب است.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_021=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_022 FROM words WHERE course_id=v_course AND lemma='stehen' AND part_of_speech='verb' AND translation='قرار داشتن / ایستادن' ORDER BY id LIMIT 1;
  IF v_w_022 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'stehen','stehen','verb','قرار داشتن / ایستادن',41,NULL,'[{"text":"sitzen","translation":"نشستن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"wohnen","translation":"ساکن بودن"},{"text":"arbeiten","translation":"کار کردن"},{"text":"fahren","translation":"رفتن با وسیله"}]','Nein, mein Schreibtisch steht im Schlafzimmer.','نه، میز کارم در اتاق خواب است.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_022=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_023 FROM words WHERE course_id=v_course AND lemma='Schlafzimmer' AND part_of_speech='noun' AND translation='اتاق خواب' ORDER BY id LIMIT 1;
  IF v_w_023 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Schlafzimmer','Schlafzimmer','noun','اتاق خواب',41,NULL,'[{"text":"Arbeitszimmer","translation":"اتاق کار"},{"text":"Küche","translation":"آشپزخانه"},{"text":"Bad","translation":"حمام"},{"text":"Balkon","translation":"بالکن"},{"text":"Straße","translation":"خیابان"}]','Nein, mein Schreibtisch steht im Schlafzimmer.','نه، میز کارم در اتاق خواب است.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_023=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_024 FROM words WHERE course_id=v_course AND lemma='was' AND part_of_speech='pronoun' AND translation='چی / چه' ORDER BY id LIMIT 1;
  IF v_w_024 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: was | pronoun'; END IF;

  SELECT id INTO v_w_025 FROM words WHERE course_id=v_course AND lemma='stören' AND part_of_speech='verb' AND translation='مزاحم بودن / اذیت کردن' ORDER BY id LIMIT 1;
  IF v_w_025 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'stören','stören','verb','مزاحم بودن / اذیت کردن',41,NULL,'[{"text":"helfen","translation":"کمک کردن"},{"text":"gefallen","translation":"خوش آمدن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"wohnen","translation":"ساکن بودن"},{"text":"sprechen","translation":"صحبت کردن"}]','Was stört dich noch?','دیگه چی اذیتت می کنه؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_025=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_026 FROM words WHERE course_id=v_course AND lemma='noch' AND part_of_speech='adverb' AND translation='هنوز' ORDER BY id LIMIT 1;
  IF v_w_026 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: noch | adverb'; END IF;

  SELECT id INTO v_w_027 FROM words WHERE course_id=v_course AND lemma='Straße' AND part_of_speech='noun' AND translation='خیابان' ORDER BY id LIMIT 1;
  IF v_w_027 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Straße','Straße','noun','خیابان',41,NULL,'[{"text":"Wohnung","translation":"خانه"},{"text":"Zimmer","translation":"اتاق"},{"text":"Balkon","translation":"بالکن"},{"text":"Bahnhof","translation":"ایستگاه قطار"},{"text":"Hotel","translation":"هتل"}]','Die Straße ist laut.','خیابان پرسروصدا است.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_027=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_028 FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_028 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: sein | verb'; END IF;

  SELECT id INTO v_w_029 FROM words WHERE course_id=v_course AND lemma='laut' AND part_of_speech='adjective' AND translation='پر سر و صدا' ORDER BY id LIMIT 1;
  IF v_w_029 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: laut | adjective'; END IF;

  SELECT id INTO v_w_030 FROM words WHERE course_id=v_course AND lemma='es' AND part_of_speech='pronoun' AND translation='آن / این / ضمیر خنثی' ORDER BY id LIMIT 1;
  IF v_w_030 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: es | pronoun'; END IF;

  SELECT id INTO v_w_031 FROM words WHERE course_id=v_course AND lemma='abends' AND part_of_speech='adverb' AND translation='عصرها / شب ها' ORDER BY id LIMIT 1;
  IF v_w_031 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'abends','abends','adverb','عصرها / شب ها',41,NULL,'[{"text":"morgens","translation":"صبح ها"},{"text":"heute","translation":"امروز"},{"text":"morgen","translation":"فردا"},{"text":"oft","translation":"اغلب"},{"text":"nie","translation":"هرگز"}]','Ist es abends auch laut?','شب ها هم پرسروصدا است؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_031=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_032 FROM words WHERE course_id=v_course AND lemma='auch' AND part_of_speech='adverb' AND translation='هم / همچنین' ORDER BY id LIMIT 1;
  IF v_w_032 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'auch','auch','adverb','هم / همچنین',41,NULL,'[{"text":"nur","translation":"فقط"},{"text":"nicht","translation":"نه"},{"text":"noch","translation":"هنوز"},{"text":"immer","translation":"همیشه"},{"text":"nie","translation":"هرگز"}]','Ist es abends auch laut?','شب ها هم پرسروصدا است؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_032=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_033 FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_033 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: ja | interjection'; END IF;

  SELECT id INTO v_w_034 FROM words WHERE course_id=v_course AND lemma='und' AND part_of_speech='conjunction' AND translation='و' ORDER BY id LIMIT 1;
  IF v_w_034 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: und | conjunction'; END IF;

  SELECT id INTO v_w_035 FROM words WHERE course_id=v_course AND lemma='können' AND part_of_speech='verb' AND translation='توانستن / بتوان' ORDER BY id LIMIT 1;
  IF v_w_035 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: können | verb'; END IF;

  SELECT id INTO v_w_036 FROM words WHERE course_id=v_course AND lemma='schlecht' AND part_of_speech='adverb' AND translation='بد / به سختی' ORDER BY id LIMIT 1;
  IF v_w_036 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'schlecht','schlecht','adverb','بد / به سختی',41,NULL,'[{"text":"gut","translation":"خوب"},{"text":"gern","translation":"با علاقه"},{"text":"ruhig","translation":"آرام"},{"text":"laut","translation":"پرسروصدا"},{"text":"genug","translation":"کافی"}]','Ja, und ich kann schlecht schlafen.','آره، و به سختی می تونم بخوابم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_036=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_037 FROM words WHERE course_id=v_course AND lemma='schlafen' AND part_of_speech='verb' AND translation='خوابیدن' ORDER BY id LIMIT 1;
  IF v_w_037 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'schlafen','schlafen','verb','خوابیدن',41,NULL,'[{"text":"arbeiten","translation":"کار کردن"},{"text":"sitzen","translation":"نشستن"},{"text":"wohnen","translation":"ساکن بودن"},{"text":"sprechen","translation":"صحبت کردن"},{"text":"fahren","translation":"رفتن با وسیله"}]','Ja, und ich kann schlecht schlafen.','آره، و به سختی می تونم بخوابم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_037=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_038 FROM words WHERE course_id=v_course AND lemma='deshalb' AND part_of_speech='adverb' AND translation='برای همین / بنابراین' ORDER BY id LIMIT 1;
  IF v_w_038 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'deshalb','deshalb','adverb','برای همین / بنابراین',41,NULL,'[{"text":"trotzdem","translation":"با این حال"},{"text":"vielleicht","translation":"شاید"},{"text":"morgen","translation":"فردا"},{"text":"dort","translation":"آنجا"},{"text":"noch","translation":"هنوز"}]','Möchtest du deshalb umziehen?','برای همین می خوای اسباب کشی کنی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_038=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_039 FROM words WHERE course_id=v_course AND lemma='umziehen' AND part_of_speech='verb' AND translation='اسباب کشی کردن' ORDER BY id LIMIT 1;
  IF v_w_039 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'umziehen','umziehen','verb','اسباب کشی کردن',41,NULL,'[{"text":"wohnen","translation":"ساکن بودن"},{"text":"bleiben","translation":"ماندن"},{"text":"arbeiten","translation":"کار کردن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"fahren","translation":"رفتن با وسیله"}]','Möchtest du deshalb umziehen?','برای همین می خوای اسباب کشی کنی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_039=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_040 FROM words WHERE course_id=v_course AND lemma='das' AND part_of_speech='pronoun' AND translation='این / آن' ORDER BY id LIMIT 1;
  IF v_w_040 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: das | pronoun'; END IF;

  SELECT id INTO v_w_041 FROM words WHERE course_id=v_course AND lemma='wichtig' AND part_of_speech='adjective' AND translation='مهم' ORDER BY id LIMIT 1;
  IF v_w_041 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'wichtig','wichtig','adjective','مهم',41,NULL,'[{"text":"klein","translation":"کوچک"},{"text":"laut","translation":"پرسروصدا"},{"text":"ruhig","translation":"آرام"},{"text":"schlecht","translation":"بد"},{"text":"anders","translation":"متفاوت"}]','Ja, das ist ein wichtiger Grund.','آره، این یک دلیل مهمه.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_041=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_042 FROM words WHERE course_id=v_course AND lemma='Grund' AND part_of_speech='noun' AND translation='دلیل' ORDER BY id LIMIT 1;
  IF v_w_042 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Grund','Grund','noun','دلیل',41,NULL,'[{"text":"Frage","translation":"سوال"},{"text":"Antwort","translation":"پاسخ"},{"text":"Wohnung","translation":"خانه"},{"text":"Zeit","translation":"زمان"},{"text":"Platz","translation":"فضا"}]','Ja, das ist ein wichtiger Grund.','آره، این یک دلیل مهمه.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_042=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_043 FROM words WHERE course_id=v_course AND lemma='sich wünschen' AND part_of_speech='verb' AND translation='آرزو داشتن / خواستن' ORDER BY id LIMIT 1;
  IF v_w_043 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'sich wünschen','sich wünschen','verb','آرزو داشتن / خواستن',42,NULL,'[{"text":"brauchen","translation":"نیاز داشتن"},{"text":"haben","translation":"داشتن"},{"text":"entscheiden","translation":"تصمیم گرفتن"},{"text":"wohnen","translation":"ساکن بودن"},{"text":"schlafen","translation":"خوابیدن"}]','Was wünschst du dir in der neuen Wohnung?','در خونه جدید چی می خوای؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_043=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_044 FROM words WHERE course_id=v_course AND lemma='neu' AND part_of_speech='adjective' AND translation='جدید / تازه' ORDER BY id LIMIT 1;
  IF v_w_044 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'neu','neu','adjective','جدید / تازه',42,'{"comparison":"neuer, am neuesten","type":"adjective"}','[{"text":"alt","translation":"قدیمی"},{"text":"laut","translation":"پرسروصدا"},{"text":"ruhig","translation":"آرام"},{"text":"klein","translation":"کوچک"},{"text":"wichtig","translation":"مهم"}]','Was wünschst du dir in der neuen Wohnung?','در خونه جدید چی می خوای؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_044=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_045 FROM words WHERE course_id=v_course AND lemma='ruhig' AND part_of_speech='adjective' AND translation='آرام' ORDER BY id LIMIT 1;
  IF v_w_045 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'ruhig','ruhig','adjective','آرام',42,NULL,'[{"text":"laut","translation":"پرسروصدا"},{"text":"klein","translation":"کوچک"},{"text":"anders","translation":"متفاوت"},{"text":"schlecht","translation":"بد"},{"text":"wichtig","translation":"مهم"}]','Ich wünsche mir ein ruhiges Arbeitszimmer.','یک اتاق کار آرام می خوام.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_045=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_046 FROM words WHERE course_id=v_course AND lemma='Arbeitszimmer' AND part_of_speech='noun' AND translation='اتاق کار' ORDER BY id LIMIT 1;
  IF v_w_046 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Arbeitszimmer','Arbeitszimmer','noun','اتاق کار',42,NULL,'[{"text":"Schlafzimmer","translation":"اتاق خواب"},{"text":"Balkon","translation":"بالکن"},{"text":"Straße","translation":"خیابان"},{"text":"Wohnung","translation":"خانه"},{"text":"Hotel","translation":"هتل"}]','Ich wünsche mir ein ruhiges Arbeitszimmer.','یک اتاق کار آرام می خوام.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_046=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_047 FROM words WHERE course_id=v_course AND lemma='klein' AND part_of_speech='adjective' AND translation='کوچک' ORDER BY id LIMIT 1;
  IF v_w_047 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'klein','klein','adjective','کوچک',42,NULL,'[{"text":"groß","translation":"بزرگ"},{"text":"laut","translation":"پرسروصدا"},{"text":"ruhig","translation":"آرام"},{"text":"wichtig","translation":"مهم"},{"text":"anders","translation":"متفاوت"}]','Ich möchte einen kleinen Balkon.','یک بالکن کوچک می خوام.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_047=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_048 FROM words WHERE course_id=v_course AND lemma='Balkon' AND part_of_speech='noun' AND translation='بالکن' ORDER BY id LIMIT 1;
  IF v_w_048 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Balkon','Balkon','noun','بالکن',42,NULL,'[{"text":"Straße","translation":"خیابان"},{"text":"Zimmer","translation":"اتاق"},{"text":"Wohnung","translation":"خانه"},{"text":"Hotel","translation":"هتل"},{"text":"Bahnhof","translation":"ایستگاه قطار"}]','Ich möchte einen kleinen Balkon.','یک بالکن کوچک می خوام.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_048=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_049 FROM words WHERE course_id=v_course AND lemma='sitzen' AND part_of_speech='verb' AND translation='نشستن' ORDER BY id LIMIT 1;
  IF v_w_049 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'sitzen','sitzen','verb','نشستن',42,NULL,'[{"text":"stehen","translation":"ایستادن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"arbeiten","translation":"کار کردن"},{"text":"wohnen","translation":"ساکن بودن"},{"text":"fahren","translation":"رفتن با وسیله"}]','Ich sitze gern draußen.','دوست دارم بیرون بشینم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_049=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_050 FROM words WHERE course_id=v_course AND lemma='gern' AND part_of_speech='adverb' AND translation='با علاقه / با میل' ORDER BY id LIMIT 1;
  IF v_w_050 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: gern | adverb'; END IF;

  SELECT id INTO v_w_051 FROM words WHERE course_id=v_course AND lemma='draußen' AND part_of_speech='adverb' AND translation='بیرون' ORDER BY id LIMIT 1;
  IF v_w_051 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'draußen','draußen','adverb','بیرون',42,NULL,'[{"text":"drinnen","translation":"داخل"},{"text":"dort","translation":"آنجا"},{"text":"hier","translation":"اینجا"},{"text":"oben","translation":"بالا"},{"text":"unten","translation":"پایین"}]','Ich sitze gern draußen.','دوست دارم بیرون بشینم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_051=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_052 FROM words WHERE course_id=v_course AND lemma='also' AND part_of_speech='adverb' AND translation='پس / بنابراین' ORDER BY id LIMIT 1;
  IF v_w_052 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'also','also','adverb','پس / بنابراین',42,NULL,'[{"text":"aber","translation":"اما"},{"text":"oder","translation":"یا"},{"text":"noch","translation":"هنوز"},{"text":"vielleicht","translation":"شاید"},{"text":"dann","translation":"بعد"}]','Warum möchtest du also umziehen?','پس چرا می خوای اسباب کشی کنی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_052=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_053 FROM words WHERE course_id=v_course AND lemma='Ruhe' AND part_of_speech='noun' AND translation='آرامش / سکوت' ORDER BY id LIMIT 1;
  IF v_w_053 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ruhe','Ruhe','noun','آرامش / سکوت',42,NULL,'[{"text":"Lärm","translation":"سروصدا"},{"text":"Arbeit","translation":"کار"},{"text":"Zeit","translation":"زمان"},{"text":"Platz","translation":"فضا"},{"text":"Straße","translation":"خیابان"}]','Ich brauche mehr Platz und mehr Ruhe.','به فضای بیشتر و آرامش بیشتری نیاز دارم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_053=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_054 FROM words WHERE course_id=v_course AND lemma='geben' AND part_of_speech='verb' AND translation='دادن' ORDER BY id LIMIT 1;
  IF v_w_054 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: geben | verb'; END IF;

  SELECT id INTO v_w_055 FROM words WHERE course_id=v_course AND lemma='dein' AND part_of_speech='determiner' AND translation='مال تو / تو' ORDER BY id LIMIT 1;
  IF v_w_055 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required canonical tuple missing: dein | determiner'; END IF;

  SELECT id INTO v_w_056 FROM words WHERE course_id=v_course AND lemma='jetzt' AND part_of_speech='adverb' AND translation='حالا / اکنون' ORDER BY id LIMIT 1;
  IF v_w_056 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'jetzt','jetzt','adverb','حالا / اکنون',42,NULL,'[{"text":"heute","translation":"امروز"},{"text":"morgen","translation":"فردا"},{"text":"später","translation":"بعدا"},{"text":"noch","translation":"هنوز"},{"text":"oft","translation":"اغلب"}]','Ja. Jetzt weiß ich, was mir wichtig ist.','آره. حالا می دونم چه چیزی برام مهمه.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_056=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_057 FROM words WHERE course_id=v_course AND lemma='wissen' AND part_of_speech='verb' AND translation='دانستن' ORDER BY id LIMIT 1;
  IF v_w_057 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'wissen','wissen','verb','دانستن',42,NULL,'[{"text":"fragen","translation":"پرسیدن"},{"text":"sagen","translation":"گفتن"},{"text":"sprechen","translation":"صحبت کردن"},{"text":"entscheiden","translation":"تصمیم گرفتن"},{"text":"brauchen","translation":"نیاز داشتن"}]','Ja. Jetzt weiß ich, was mir wichtig ist.','آره. حالا می دونم چه چیزی برام مهمه.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_057=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_058 FROM words WHERE course_id=v_course AND lemma='Warum möchtest du in einer anderen Wohnung wohnen?' AND part_of_speech='phrase' AND translation='چرا می خوای در یک خونه دیگه زندگی کنی؟' ORDER BY id LIMIT 1;
  IF v_w_058 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Warum möchtest du in einer anderen Wohnung wohnen?','Warum möchtest du in einer anderen Wohnung wohnen?','phrase','چرا می خوای در یک خونه دیگه زندگی کنی؟',41,'{"type":"sentence_pattern"}','[{"text":"Wann möchtest du umziehen?","translation":"کی می خوای اسباب کشی کنی؟"},{"text":"Wo möchtest du wohnen?","translation":"کجا می خوای زندگی کنی؟"},{"text":"Möchtest du heute arbeiten?","translation":"امروز می خوای کار کنی؟"},{"text":"Hast du genug Zeit?","translation":"وقت کافی داری؟"},{"text":"Welche Wohnung ist frei?","translation":"کدوم خونه خالیه؟"}]','Warum möchtest du in einer anderen Wohnung wohnen?','چرا می خوای در یک خونه دیگه زندگی کنی؟',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_058=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_059 FROM words WHERE course_id=v_course AND lemma='Die Straße ist laut.' AND part_of_speech='phrase' AND translation='خیابان پرسروصدا است.' ORDER BY id LIMIT 1;
  IF v_w_059 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Die Straße ist laut.','Die Straße ist laut.','phrase','خیابان پرسروصدا است.',41,'{"type":"sentence_pattern"}','[{"text":"Die Straße ist ruhig.","translation":"خیابان آرامه."},{"text":"Die Wohnung ist klein.","translation":"خونه کوچیکه."},{"text":"Das Zimmer ist frei.","translation":"اتاق خالیه."},{"text":"Der Balkon ist groß.","translation":"بالکن بزرگه."},{"text":"Das Hotel ist laut.","translation":"هتل پرسروصدا است."}]','Die Straße ist laut.','خیابان پرسروصدا است.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_059=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_060 FROM words WHERE course_id=v_course AND lemma='Ich wünsche mir ein ruhiges Arbeitszimmer.' AND part_of_speech='phrase' AND translation='یک اتاق کار آرام می خوام.' ORDER BY id LIMIT 1;
  IF v_w_060 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich wünsche mir ein ruhiges Arbeitszimmer.','Ich wünsche mir ein ruhiges Arbeitszimmer.','phrase','یک اتاق کار آرام می خوام.',42,'{"type":"sentence_pattern"}','[{"text":"Ich wünsche mir einen Balkon.","translation":"یک بالکن می خوام."},{"text":"Ich brauche mehr Platz.","translation":"به فضای بیشتری نیاز دارم."},{"text":"Ich arbeite im Schlafzimmer.","translation":"در اتاق خواب کار می کنم."},{"text":"Ich schlafe schlecht.","translation":"بد می خوابم."},{"text":"Ich wohne in dieser Wohnung.","translation":"در این خونه زندگی می کنم."}]','Ich wünsche mir ein ruhiges Arbeitszimmer.','یک اتاق کار آرام می خوام.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_060=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_061 FROM words WHERE course_id=v_course AND lemma='Ich brauche mehr Platz und mehr Ruhe.' AND part_of_speech='phrase' AND translation='به فضای بیشتر و آرامش بیشتری نیاز دارم.' ORDER BY id LIMIT 1;
  IF v_w_061 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich brauche mehr Platz und mehr Ruhe.','Ich brauche mehr Platz und mehr Ruhe.','phrase','به فضای بیشتر و آرامش بیشتری نیاز دارم.',42,'{"type":"sentence_pattern"}','[{"text":"Ich brauche nur mehr Platz.","translation":"فقط به فضای بیشتری نیاز دارم."},{"text":"Ich wünsche mir einen Balkon.","translation":"یک بالکن می خوام."},{"text":"Die Straße ist zu laut.","translation":"خیابان بیش از حد پرسروصدا است."},{"text":"Ich kann schlecht schlafen.","translation":"به سختی می تونم بخوابم."},{"text":"Ich möchte dort arbeiten.","translation":"می خوام اونجا کار کنم."}]','Ich brauche mehr Platz und mehr Ruhe.','به فضای بیشتر و آرامش بیشتری نیاز دارم.',NULL,NULL,'{"cefr":"B1","introducedInSeries":82}');
    SET v_w_061=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Mehr Platz','فضای بیشتر','Sara fragt nach Mias erstem Grund. Mia erklärt, dass sie zu wenig Platz zum Arbeiten hat.','سارا درباره اولین دلیل میا می پرسد. میا توضیح می دهد که برای کار کردن فضای کافی ندارد.','story','mia-sara-b1-decisions',5,41,150,1,'validated','{"relationship":"friends","context":"reasons-for-moving","cefr":"B1","storyArc":"reasons-space-noise-wishes-summary"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,1,'character','Warum möchtest du in einer anderen Wohnung wohnen?','چرا می خوای در یک خونه دیگه زندگی کنی؟',41,NULL,NULL,NULL,NULL,'[{"lemma":"warum","partOfSpeech":"adverb","surface":"Warum","translation":"چرا"},{"form":"present_2sg","lemma":"möchten","meaning":"می خوای","partOfSpeech":"verb","surface":"möchtest","translation":"خواستن / مایل بودن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"in","partOfSpeech":"preposition","surface":"in","translation":"در / داخل"},{"form":"dative_feminine","lemma":"ein","meaning":"یک","partOfSpeech":"article","surface":"einer","translation":"یک / حرف تعریف نامعین"},{"form":"dative_feminine","lemma":"andere","meaning":"دیگه","partOfSpeech":"adjective","surface":"anderen","translation":"دیگر / متفاوت"},{"lemma":"Wohnung","partOfSpeech":"noun","surface":"Wohnung","translation":"خانه / آپارتمان"},{"lemma":"wohnen","partOfSpeech":"verb","suffix":"?","surface":"wohnen","translation":"زندگی کردن / ساکن بودن"}]','چرا؟','با warum دلیل یک تصمیم را می پرسیم.','{"position":1,"questionWord":"warum"}','{"cefr":"B1"}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,2,'learner','Ich brauche mehr Platz.','به فضای بیشتری نیاز دارم.',41,NULL,NULL,'ich brauche mehr platz',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"brauchen","partOfSpeech":"verb","surface":"brauche","translation":"نیاز داشتن / لازم داشتن"},{"lemma":"mehr","partOfSpeech":"adverb","surface":"mehr","translation":"دیگه / بیشتر"},{"lemma":"Platz","partOfSpeech":"noun","suffix":".","surface":"Platz","translation":"جا / فضا"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,3,'character','Warum brauchst du mehr Platz?','چرا به فضای بیشتری نیاز داری؟',41,NULL,NULL,NULL,NULL,'[{"lemma":"warum","partOfSpeech":"adverb","surface":"Warum","translation":"چرا"},{"form":"present_2sg","lemma":"brauchen","partOfSpeech":"verb","surface":"brauchst","translation":"نیاز داشتن / لازم داشتن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"mehr","partOfSpeech":"adverb","surface":"mehr","translation":"دیگه / بیشتر"},{"lemma":"Platz","partOfSpeech":"noun","suffix":"?","surface":"Platz","translation":"جا / فضا"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,4,'learner','Ich arbeite oft in der Wohnung.','اغلب در خانه کار می کنم.',41,NULL,NULL,'ich arbeite oft in der wohnung',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"arbeiten","partOfSpeech":"verb","surface":"arbeite","translation":"کار کردن"},{"lemma":"oft","partOfSpeech":"adverb","surface":"oft","translation":"اغلب"},{"lemma":"in","partOfSpeech":"preposition","surface":"in","translation":"در / داخل"},{"form":"dative_feminine","lemma":"der","partOfSpeech":"article","surface":"der","translation":"حرف تعریف"},{"lemma":"Wohnung","partOfSpeech":"noun","suffix":".","surface":"Wohnung","translation":"خانه / آپارتمان"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,5,'character','Hast du dort genug Platz?','آنجا فضای کافی داری؟',41,NULL,NULL,NULL,NULL,'[{"form":"present_2sg","lemma":"haben","partOfSpeech":"verb","surface":"Hast","translation":"داشتن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"dort","partOfSpeech":"adverb","surface":"dort","translation":"آنجا"},{"lemma":"genug","partOfSpeech":"adverb","surface":"genug","translation":"کافی"},{"lemma":"Platz","partOfSpeech":"noun","suffix":"?","surface":"Platz","translation":"جا / فضا"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,6,'learner','Nein, mein Schreibtisch steht im Schlafzimmer.','نه، میز کارم در اتاق خواب است.',41,NULL,NULL,'nein mein schreibtisch steht im schlafzimmer',NULL,'[{"lemma":"nein","partOfSpeech":"interjection","suffix":",","surface":"Nein","translation":"نه"},{"lemma":"mein","partOfSpeech":"determiner","surface":"mein","translation":"مال من / من"},{"lemma":"Schreibtisch","partOfSpeech":"noun","surface":"Schreibtisch","translation":"میز تحریر / میز کار"},{"form":"present_3sg","lemma":"stehen","partOfSpeech":"verb","surface":"steht","translation":"قرار داشتن / ایستادن"},{"form":"dative_neuter","lemma":"in","meaning":"در","partOfSpeech":"preposition","surface":"im","translation":"در / داخل"},{"lemma":"Schlafzimmer","partOfSpeech":"noun","suffix":".","surface":"Schlafzimmer","translation":"اتاق خواب"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_6=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Die laute Straße','خیابان پرسروصدا','Mia nennt den Lärm als zweiten Grund und verbindet ihn mit ihrem schlechten Schlaf.','میا سروصدا را دلیل دوم می داند و آن را به خواب بدش ربط می دهد.','story','mia-sara-b1-decisions',6,41,150,2,'validated','{"relationship":"friends","context":"reasons-for-moving","cefr":"B1","storyArc":"reasons-space-noise-wishes-summary"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,1,'character','Was stört dich noch?','دیگه چی اذیتت می کنه؟',41,NULL,NULL,NULL,NULL,'[{"lemma":"was","partOfSpeech":"pronoun","surface":"Was","translation":"چی / چه"},{"form":"present_3sg","lemma":"stören","partOfSpeech":"verb","surface":"stört","translation":"مزاحم بودن / اذیت کردن"},{"form":"accusative_2sg","lemma":"du","meaning":"تو را","partOfSpeech":"pronoun","surface":"dich","translation":"تو"},{"lemma":"noch","partOfSpeech":"adverb","suffix":"?","surface":"noch","translation":"هنوز"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,2,'learner','Die Straße ist laut.','خیابان پرسروصدا است.',41,NULL,NULL,'die straße ist laut',NULL,'[{"form":"nominative_feminine","lemma":"der","partOfSpeech":"article","surface":"Die","translation":"حرف تعریف"},{"lemma":"Straße","partOfSpeech":"noun","surface":"Straße","translation":"خیابان"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"ist","translation":"بودن"},{"lemma":"laut","partOfSpeech":"adjective","suffix":".","surface":"laut","translation":"پر سر و صدا"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,3,'character','Ist es abends auch laut?','شب ها هم پرسروصدا است؟',41,NULL,NULL,NULL,NULL,'[{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"Ist","translation":"بودن"},{"lemma":"es","partOfSpeech":"pronoun","surface":"es","translation":"آن / این / ضمیر خنثی"},{"lemma":"abends","partOfSpeech":"adverb","surface":"abends","translation":"عصرها / شب ها"},{"lemma":"auch","partOfSpeech":"adverb","surface":"auch","translation":"هم / همچنین"},{"lemma":"laut","partOfSpeech":"adjective","suffix":"?","surface":"laut","translation":"پر سر و صدا"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,4,'learner','Ja, und ich kann schlecht schlafen.','آره، و به سختی می تونم بخوابم.',41,NULL,NULL,'ja und ich kann schlecht schlafen',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"und","partOfSpeech":"conjunction","surface":"und","translation":"و"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"present_1sg","lemma":"können","meaning":"می تونم","partOfSpeech":"verb","surface":"kann","translation":"توانستن / بتوان"},{"lemma":"schlecht","partOfSpeech":"adverb","surface":"schlecht","translation":"بد / به سختی"},{"lemma":"schlafen","partOfSpeech":"verb","suffix":".","surface":"schlafen","translation":"خوابیدن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,5,'character','Möchtest du deshalb umziehen?','برای همین می خوای اسباب کشی کنی؟',41,NULL,NULL,NULL,NULL,'[{"form":"present_2sg","lemma":"möchten","meaning":"می خوای","partOfSpeech":"verb","surface":"Möchtest","translation":"خواستن / مایل بودن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"deshalb","partOfSpeech":"adverb","surface":"deshalb","translation":"برای همین / بنابراین"},{"lemma":"umziehen","partOfSpeech":"verb","suffix":"?","surface":"umziehen","translation":"اسباب کشی کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,6,'learner','Ja, das ist ein wichtiger Grund.','آره، این یک دلیل مهمه.',41,NULL,NULL,'ja das ist ein wichtiger grund',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"das","partOfSpeech":"pronoun","surface":"das","translation":"این / آن"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"ist","translation":"بودن"},{"lemma":"ein","partOfSpeech":"article","surface":"ein","translation":"یک / حرف تعریف نامعین"},{"form":"nominative_masculine","lemma":"wichtig","partOfSpeech":"adjective","surface":"wichtiger","translation":"مهم"},{"lemma":"Grund","partOfSpeech":"noun","suffix":".","surface":"Grund","translation":"دلیل"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_12=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Ein ruhiges Arbeitszimmer','یک اتاق کار آرام','Sara fragt nach Mias Wünschen. Mia beschreibt ein Arbeitszimmer und einen Balkon.','سارا درباره خواسته های میا می پرسد. میا یک اتاق کار و یک بالکن را توصیف می کند.','story','mia-sara-b1-decisions',7,42,150,3,'validated','{"relationship":"friends","context":"reasons-for-moving","cefr":"B1","storyArc":"reasons-space-noise-wishes-summary"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,1,'character','Was wünschst du dir in der neuen Wohnung?','در خونه جدید چی می خوای؟',42,NULL,NULL,NULL,NULL,'[{"lemma":"was","partOfSpeech":"pronoun","surface":"Was","translation":"چی / چه"},{"form":"present_2sg","lemma":"sich wünschen","meaning":"می خوای","partOfSpeech":"verb","surface":"wünschst","translation":"آرزو داشتن / خواستن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"form":"reflexive_dative_2sg","lemma":"du","meaning":"برای خودت","partOfSpeech":"pronoun","surface":"dir","translation":"تو"},{"lemma":"in","partOfSpeech":"preposition","surface":"in","translation":"در / داخل"},{"form":"dative_feminine","lemma":"der","partOfSpeech":"article","surface":"der","translation":"حرف تعریف"},{"form":"dative_feminine","lemma":"neu","meaning":"جدید","partOfSpeech":"adjective","surface":"neuen","translation":"جدید / تازه"},{"lemma":"Wohnung","partOfSpeech":"noun","suffix":"?","surface":"Wohnung","translation":"خانه / آپارتمان"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,2,'learner','Ich wünsche mir ein ruhiges Arbeitszimmer.','یک اتاق کار آرام می خوام.',42,NULL,NULL,'ich wünsche mir ein ruhiges arbeitszimmer',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"sich wünschen","meaning":"می خوام","partOfSpeech":"verb","surface":"wünsche","translation":"آرزو داشتن / خواستن"},{"form":"reflexive_dative_1sg","lemma":"ich","meaning":"برای خودم","partOfSpeech":"pronoun","surface":"mir","translation":"من"},{"lemma":"ein","partOfSpeech":"article","surface":"ein","translation":"یک / حرف تعریف نامعین"},{"form":"accusative_neuter","lemma":"ruhig","partOfSpeech":"adjective","surface":"ruhiges","translation":"آرام"},{"lemma":"Arbeitszimmer","partOfSpeech":"noun","suffix":".","surface":"Arbeitszimmer","translation":"اتاق کار"}]','sich etwas wünschen','برای بیان خواسته می گوییم: Ich wünsche mir ...','{"pattern":"ich + wünsche + mir + object"}','{"cefr":"B1"}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,3,'character','Und was noch?','و دیگه چی؟',42,NULL,NULL,NULL,NULL,'[{"lemma":"und","partOfSpeech":"conjunction","surface":"Und","translation":"و"},{"lemma":"was","partOfSpeech":"pronoun","surface":"was","translation":"چی / چه"},{"lemma":"noch","partOfSpeech":"adverb","suffix":"?","surface":"noch","translation":"هنوز"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,4,'learner','Ich möchte einen kleinen Balkon.','یک بالکن کوچک می خوام.',42,NULL,NULL,'ich möchte einen kleinen balkon',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"möchten","partOfSpeech":"verb","surface":"möchte","translation":"خواستن / مایل بودن"},{"form":"accusative_masculine","lemma":"ein","partOfSpeech":"article","surface":"einen","translation":"یک / حرف تعریف نامعین"},{"form":"accusative_masculine","lemma":"klein","partOfSpeech":"adjective","surface":"kleinen","translation":"کوچک"},{"lemma":"Balkon","partOfSpeech":"noun","suffix":".","surface":"Balkon","translation":"بالکن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,5,'character','Warum ist dir ein Balkon wichtig?','چرا بالکن برات مهمه؟',42,NULL,NULL,NULL,NULL,'[{"lemma":"warum","partOfSpeech":"adverb","surface":"Warum","translation":"چرا"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","surface":"ist","translation":"بودن"},{"form":"dative_2sg","lemma":"du","meaning":"برای تو","partOfSpeech":"pronoun","surface":"dir","translation":"تو"},{"lemma":"ein","partOfSpeech":"article","surface":"ein","translation":"یک / حرف تعریف نامعین"},{"lemma":"Balkon","partOfSpeech":"noun","surface":"Balkon","translation":"بالکن"},{"lemma":"wichtig","partOfSpeech":"adjective","suffix":"?","surface":"wichtig","translation":"مهم"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,6,'learner','Ich sitze gern draußen.','دوست دارم بیرون بشینم.',42,NULL,NULL,'ich sitze gern draußen',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"sitzen","partOfSpeech":"verb","surface":"sitze","translation":"نشستن"},{"lemma":"gern","partOfSpeech":"adverb","surface":"gern","translation":"با علاقه / با میل"},{"lemma":"draußen","partOfSpeech":"adverb","suffix":".","surface":"draußen","translation":"بیرون"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_18=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Meine wichtigsten Gründe','مهم ترین دلیل های من','Mia fasst ihre Gründe zusammen und versteht klarer, was ihr wichtig ist.','میا دلیل هایش را جمع بندی می کند و بهتر می فهمد چه چیزی برایش مهم است.','story','mia-sara-b1-decisions',8,42,150,4,'validated','{"relationship":"friends","context":"reasons-for-moving","cefr":"B1","storyArc":"reasons-space-noise-wishes-summary"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,1,'character','Warum möchtest du also umziehen?','پس چرا می خوای اسباب کشی کنی؟',42,NULL,NULL,NULL,NULL,'[{"lemma":"warum","partOfSpeech":"adverb","surface":"Warum","translation":"چرا"},{"form":"present_2sg","lemma":"möchten","partOfSpeech":"verb","surface":"möchtest","translation":"خواستن / مایل بودن"},{"lemma":"du","partOfSpeech":"pronoun","surface":"du","translation":"تو"},{"lemma":"also","partOfSpeech":"adverb","surface":"also","translation":"پس / بنابراین"},{"lemma":"umziehen","partOfSpeech":"verb","suffix":"?","surface":"umziehen","translation":"اسباب کشی کردن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,2,'learner','Ich brauche mehr Platz und mehr Ruhe.','به فضای بیشتر و آرامش بیشتری نیاز دارم.',42,NULL,NULL,'ich brauche mehr platz und mehr ruhe',NULL,'[{"lemma":"ich","partOfSpeech":"pronoun","surface":"Ich","translation":"من"},{"form":"present_1sg","lemma":"brauchen","partOfSpeech":"verb","surface":"brauche","translation":"نیاز داشتن / لازم داشتن"},{"lemma":"mehr","partOfSpeech":"adverb","surface":"mehr","translation":"دیگه / بیشتر"},{"lemma":"Platz","partOfSpeech":"noun","surface":"Platz","translation":"جا / فضا"},{"lemma":"und","partOfSpeech":"conjunction","surface":"und","translation":"و"},{"lemma":"mehr","partOfSpeech":"adverb","surface":"mehr","translation":"دیگه / بیشتر"},{"lemma":"Ruhe","partOfSpeech":"noun","suffix":".","surface":"Ruhe","translation":"آرامش / سکوت"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_20=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,3,'character','Gibt es noch einen Grund?','دلیل دیگه ای هم هست؟',42,NULL,NULL,NULL,NULL,'[{"form":"present_3sg","lemma":"geben","partOfSpeech":"verb","surface":"Gibt","translation":"دادن"},{"lemma":"es","partOfSpeech":"pronoun","surface":"es","translation":"آن / این / ضمیر خنثی"},{"lemma":"noch","partOfSpeech":"adverb","surface":"noch","translation":"هنوز"},{"form":"accusative_masculine","lemma":"ein","partOfSpeech":"article","surface":"einen","translation":"یک / حرف تعریف نامعین"},{"lemma":"Grund","partOfSpeech":"noun","suffix":"?","surface":"Grund","translation":"دلیل"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_21=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,4,'learner','Ja, ich möchte einen Balkon.','آره، یک بالکن می خوام.',42,NULL,NULL,'ja ich möchte einen balkon',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":",","surface":"Ja","translation":"بله / آره"},{"lemma":"ich","partOfSpeech":"pronoun","surface":"ich","translation":"من"},{"form":"present_1sg","lemma":"möchten","partOfSpeech":"verb","surface":"möchte","translation":"خواستن / مایل بودن"},{"form":"accusative_masculine","lemma":"ein","partOfSpeech":"article","surface":"einen","translation":"یک / حرف تعریف نامعین"},{"lemma":"Balkon","partOfSpeech":"noun","suffix":".","surface":"Balkon","translation":"بالکن"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_22=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,5,'character','Sind das deine wichtigsten Gründe?','این ها مهم ترین دلیل هات هستند؟',42,NULL,NULL,NULL,NULL,'[{"form":"present_3pl","lemma":"sein","partOfSpeech":"verb","surface":"Sind","translation":"بودن"},{"lemma":"das","meaning":"این ها","partOfSpeech":"pronoun","surface":"das","translation":"این / آن"},{"form":"nominative_plural","lemma":"dein","meaning":"مال تو","partOfSpeech":"determiner","surface":"deine","translation":"مال تو / تو"},{"form":"superlative_plural","lemma":"wichtig","partOfSpeech":"adjective","surface":"wichtigsten","translation":"مهم"},{"form":"plural","lemma":"Grund","partOfSpeech":"noun","suffix":"?","surface":"Gründe","translation":"دلیل"}]',NULL,NULL,NULL,'{"cefr":"B1"}');
  SET v_t_23=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,6,'learner','Ja. Jetzt weiß ich, was mir wichtig ist.','آره. حالا می دونم چه چیزی برام مهمه.',42,NULL,NULL,'ja jetzt weiß ich was mir wichtig ist',NULL,'[{"lemma":"ja","partOfSpeech":"interjection","suffix":".","surface":"Ja","translation":"بله / آره"},{"lemma":"jetzt","partOfSpeech":"adverb","surface":"Jetzt","translation":"حالا / اکنون"},{"form":"present_1sg","lemma":"wissen","partOfSpeech":"verb","surface":"weiß","translation":"دانستن"},{"lemma":"ich","partOfSpeech":"pronoun","suffix":",","surface":"ich","translation":"من"},{"lemma":"was","partOfSpeech":"pronoun","surface":"was","translation":"چی / چه"},{"form":"dative_1sg","lemma":"ich","meaning":"برای من","partOfSpeech":"pronoun","surface":"mir","translation":"من"},{"lemma":"wichtig","partOfSpeech":"adjective","surface":"wichtig","translation":"مهم"},{"form":"present_3sg","lemma":"sein","partOfSpeech":"verb","suffix":".","surface":"ist","translation":"بودن"}]','was-Satz','was یک جمله وابسته را شروع می کند و فعل صرف شده در پایان می آید.','{"connector":"was","verbPosition":"final"}','{"cefr":"B1"}');
  SET v_t_24=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_001,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_003,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_004,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_007,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_009,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_010,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_011,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_012,'new',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_014,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_015,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_016,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_017,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_018,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_019,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_020,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_021,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_022,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_023,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_058,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_024,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_025,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_003,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_026,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_015,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_027,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_028,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_029,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_030,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_031,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_032,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_033,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_034,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_035,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_036,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_037,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_038,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_039,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_040,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_041,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_042,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_059,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_024,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_043,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_003,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_015,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_044,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_007,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_009,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_005,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_045,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_046,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_034,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_026,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_047,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_048,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_028,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_041,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_049,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_050,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_051,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_060,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_002,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_052,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_039,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_009,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_010,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_011,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_034,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_053,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_054,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_030,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_026,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_005,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_042,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_033,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_048,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_028,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_040,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_055,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_041,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_056,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_057,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_024,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_061,'new',1,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_058,'عبارت کلیدی درس',NULL,41,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',2,NULL,v_w_012,'واژه کلیدی درس',NULL,41,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',3,v_t_1,NULL,'به پرسش سارا گوش کن',NULL,41,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',4,v_t_2,NULL,'پاسخ میا را با صدای بلند بگو',NULL,41,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',5,v_t_3,NULL,'به پرسش بعدی گوش کن',NULL,41,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',6,v_t_4,NULL,'دلیل را با صدای بلند بگو',NULL,41,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',7,NULL,v_w_012,'معنی واژه کلیدی را انتخاب کن',NULL,41,'{"mode":"word_translation","question":"Platz در این درس چه معنی دارد؟","choices":["جا / فضا","فضای بیشتر","زمان"],"correctIndex":0}','{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,41,'{"source":"lesson_story","question":"چرا میا به فضای بیشتری نیاز دارد؟","choices":["چون در خانه کار می کند.","چون یک هتل می خواهد.","چون فردا سفر می کند."],"correctIndex":0}','{"cefr":"B1","series":82}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_059,'عبارت کلیدی درس',NULL,41,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',2,NULL,v_w_025,'واژه کلیدی درس',NULL,41,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',3,v_t_7,NULL,'به پرسش سارا گوش کن',NULL,41,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',4,v_t_8,NULL,'پاسخ میا را با صدای بلند بگو',NULL,41,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',5,v_t_9,NULL,'به پرسش بعدی گوش کن',NULL,41,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',6,v_t_10,NULL,'دلیل را با صدای بلند بگو',NULL,41,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',7,NULL,v_w_025,'معنی واژه کلیدی را انتخاب کن',NULL,41,'{"mode":"word_translation","question":"stört در این درس چه معنی دارد؟","choices":["مزاحم بودن / اذیت کردن","خیابان پرسروصدا","زمان"],"correctIndex":0}','{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,41,'{"source":"lesson_story","question":"شب ها چه چیزی برای میا مشکل ایجاد می کند؟","choices":["صدای خیابان","اندازه بالکن","میز کار"],"correctIndex":0}','{"cefr":"B1","series":82}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_060,'عبارت کلیدی درس',NULL,42,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',2,NULL,v_w_043,'واژه کلیدی درس',NULL,42,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',3,v_t_13,NULL,'به پرسش سارا گوش کن',NULL,42,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',4,v_t_14,NULL,'پاسخ میا را با صدای بلند بگو',NULL,42,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',5,v_t_15,NULL,'به پرسش بعدی گوش کن',NULL,42,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',6,v_t_16,NULL,'دلیل را با صدای بلند بگو',NULL,42,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',7,NULL,v_w_043,'معنی واژه کلیدی را انتخاب کن',NULL,42,'{"mode":"word_translation","question":"wünschst در این درس چه معنی دارد؟","choices":["آرزو داشتن / خواستن","یک اتاق کار آرام","زمان"],"correctIndex":0}','{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,42,'{"source":"lesson_story","question":"میا در خانه جدید چه اتاقی می خواهد؟","choices":["یک اتاق کار آرام","یک اتاق خواب بزرگ","یک آشپزخانه کوچک"],"correctIndex":0}','{"cefr":"B1","series":82}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',1,NULL,v_w_061,'عبارت کلیدی درس',NULL,42,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',2,NULL,v_w_042,'واژه کلیدی درس',NULL,42,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_19,NULL,'به پرسش سارا گوش کن',NULL,42,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_20,NULL,'پاسخ میا را با صدای بلند بگو',NULL,42,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_21,NULL,'به پرسش بعدی گوش کن',NULL,42,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_22,NULL,'دلیل را با صدای بلند بگو',NULL,42,NULL,'{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',7,NULL,v_w_042,'معنی واژه کلیدی را انتخاب کن',NULL,42,'{"mode":"word_translation","question":"Grund در این درس چه معنی دارد؟","choices":["دلیل","مهم ترین دلیل های من","زمان"],"correctIndex":0}','{"cefr":"B1","series":82}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,42,'{"source":"lesson_story","question":"دو دلیل اصلی میا برای اسباب کشی چیست؟","choices":["فضای بیشتر و آرامش بیشتر","کار کمتر و سفر بیشتر","هتل و ایستگاه قطار"],"correctIndex":0}','{"cefr":"B1","series":82}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 082 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND storyline_key='mia-sara-b1-decisions' AND storyline_order BETWEEN 5 AND 8;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 082 storyline continuity.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>24 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 082 turn count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>32 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 082 activity count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (ac.config IS NULL OR JSON_EXTRACT(ac.config,'$.question') IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without task.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter AND lw.is_target=1;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 082 explicit-target count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (
    SELECT lw.lesson_id,lw.word_id,COUNT(*) AS n
    FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id
    WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1
  ) duplicate_pairs;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple detected.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;

CALL import_nova_series_082_v9();
DROP PROCEDURE IF EXISTS import_nova_series_082_v9;

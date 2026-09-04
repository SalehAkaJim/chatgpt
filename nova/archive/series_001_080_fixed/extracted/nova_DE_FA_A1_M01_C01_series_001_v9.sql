-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 001
-- A1 > Erste Schritte > Hallo & Tschüss
-- Absolute beginner: no prior German knowledge assumed.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_001_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_001_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_lena BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_ben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_anna BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_jonas BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_hallo BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_tschuess BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_morgen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_guten_morgen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wie BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gehen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_es BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_du BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wie_geht_es_dir BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danke BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_super BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_bis BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_spaeter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_bis_spaeter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_lena BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_anna BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_jonas BIGINT UNSIGNED DEFAULT NULL;
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

  DECLARE EXIT HANDLER FOR SQLEXCEPTION
  BEGIN
    ROLLBACK;
    RESIGNAL;
  END;

  START TRANSACTION;

  SELECT id INTO v_course
  FROM courses
  WHERE learning_language='de' AND base_language='fa'
  ORDER BY id LIMIT 1;

  IF v_course IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.';
  END IF;

  SELECT id INTO v_level
  FROM levels WHERE course_id=v_course AND sort_order=1 ORDER BY id LIMIT 1;
  SELECT id INTO v_module
  FROM modules WHERE level_id=v_level AND sort_order=1 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter
  FROM chapters WHERE module_id=v_module AND sort_order=1 ORDER BY id LIMIT 1;

  IF v_chapter IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Chapter 1 not found.';
  END IF;

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Chapter 1 must be empty before Series 001 import.';
  END IF;

  SELECT id INTO v_c_lena
  FROM characters
  WHERE course_id=v_course AND name='Lena' AND gender='female'
  ORDER BY id LIMIT 1;
  IF v_c_lena IS NULL THEN
    INSERT INTO characters(course_id,name,gender,avatar_url,voice_key,profile,metadata)
    VALUES(v_course,'Lena','female',NULL,NULL,'{"role":"language_student"}','{"relationships":[{"name":"Ben","type":"classmate"}]}');
    SET v_c_lena=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_c_ben
  FROM characters
  WHERE course_id=v_course AND name='Ben' AND gender='male'
  ORDER BY id LIMIT 1;
  IF v_c_ben IS NULL THEN
    INSERT INTO characters(course_id,name,gender,avatar_url,voice_key,profile,metadata)
    VALUES(v_course,'Ben','male',NULL,NULL,'{"role":"language_student"}','{"relationships":[{"name":"Lena","type":"classmate"}]}');
    SET v_c_ben=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_c_anna
  FROM characters
  WHERE course_id=v_course AND name='Anna' AND gender='female'
  ORDER BY id LIMIT 1;
  IF v_c_anna IS NULL THEN
    INSERT INTO characters(course_id,name,gender,avatar_url,voice_key,profile,metadata)
    VALUES(v_course,'Anna','female',NULL,NULL,'{"role":"office_worker"}','{"relationships":[{"name":"Jonas","type":"spouse"}]}');
    SET v_c_anna=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_c_jonas
  FROM characters
  WHERE course_id=v_course AND name='Jonas' AND gender='male'
  ORDER BY id LIMIT 1;
  IF v_c_jonas IS NULL THEN
    INSERT INTO characters(course_id,name,gender,avatar_url,voice_key,profile,metadata)
    VALUES(v_course,'Jonas','male',NULL,NULL,'{"role":"office_worker"}','{"relationships":[{"name":"Anna","type":"spouse"}]}');
    SET v_c_jonas=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_hallo
  FROM words
  WHERE course_id=v_course AND lemma='Hallo'
    AND part_of_speech='interjection' AND translation='سلام'
  ORDER BY id LIMIT 1;
  IF v_w_hallo IS NULL THEN
    INSERT INTO words
    (course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES
    (v_course,'Hallo','Hallo','interjection','سلام',1,
     NULL,'[{"text":"Tschüss","translation":"خداحافظ"},{"text":"Danke","translation":"ممنون"},{"text":"Bitte","translation":"لطفا"},{"text":"Ja","translation":"بله"},{"text":"Nein","translation":"نه"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_hallo=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_tschuess
  FROM words
  WHERE course_id=v_course AND lemma='Tschüss'
    AND part_of_speech='interjection' AND translation='خداحافظ'
  ORDER BY id LIMIT 1;
  IF v_w_tschuess IS NULL THEN
    INSERT INTO words
    (course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES
    (v_course,'Tschüss','Tschüss','interjection','خداحافظ',1,
     NULL,'[{"text":"Hallo","translation":"سلام"},{"text":"Danke","translation":"ممنون"},{"text":"Bitte","translation":"لطفا"},{"text":"Ja","translation":"بله"},{"text":"Nein","translation":"نه"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_tschuess=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_gut
  FROM words
  WHERE course_id=v_course AND lemma='gut'
    AND part_of_speech='adjective' AND translation='خوب'
  ORDER BY id LIMIT 1;
  IF v_w_gut IS NULL THEN
    INSERT INTO words
    (course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES
    (v_course,'gut','gut','adjective','خوب',1,
     '{"forms":["gut","gute","guter","gutes","guten","gutem"]}','[{"text":"schlecht","translation":"بد"},{"text":"müde","translation":"خسته"},{"text":"krank","translation":"بیمار"},{"text":"schön","translation":"خوب / زیبا"},{"text":"super","translation":"عالی"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_gut=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_morgen
  FROM words
  WHERE course_id=v_course AND lemma='Morgen'
    AND part_of_speech='noun' AND translation='صبح'
  ORDER BY id LIMIT 1;
  IF v_w_morgen IS NULL THEN
    INSERT INTO words
    (course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES
    (v_course,'Morgen','Morgen','noun','صبح',1,
     '{"article":"der","plural":"Morgen"}','[{"text":"Abend","translation":"عصر / شب"},{"text":"Nacht","translation":"شب"},{"text":"Mittag","translation":"ظهر"},{"text":"Tag","translation":"روز"},{"text":"Woche","translation":"هفته"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_morgen=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_guten_morgen
  FROM words
  WHERE course_id=v_course AND lemma='Guten Morgen'
    AND part_of_speech='phrase' AND translation='صبح بخیر'
  ORDER BY id LIMIT 1;
  IF v_w_guten_morgen IS NULL THEN
    INSERT INTO words
    (course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES
    (v_course,'Guten Morgen','Guten Morgen','phrase','صبح بخیر',1,
     NULL,'[{"text":"Guten Abend","translation":"عصر بخیر"},{"text":"Gute Nacht","translation":"شب بخیر"},{"text":"Hallo","translation":"سلام"},{"text":"Tschüss","translation":"خداحافظ"},{"text":"Bis später","translation":"بعدا می بینمت"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_guten_morgen=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_wie
  FROM words
  WHERE course_id=v_course AND lemma='wie'
    AND part_of_speech='adverb' AND translation='چطور / چگونه'
  ORDER BY id LIMIT 1;
  IF v_w_wie IS NULL THEN
    INSERT INTO words
    (course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES
    (v_course,'wie','wie','adverb','چطور / چگونه',1,
     NULL,'[{"text":"wo","translation":"کجا"},{"text":"was","translation":"چی"},{"text":"wer","translation":"چه کسی"},{"text":"wann","translation":"چه زمانی"},{"text":"warum","translation":"چرا"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_wie=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_gehen
  FROM words
  WHERE course_id=v_course AND lemma='gehen'
    AND part_of_speech='verb' AND translation='رفتن'
  ORDER BY id LIMIT 1;
  IF v_w_gehen IS NULL THEN
    INSERT INTO words
    (course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES
    (v_course,'gehen','gehen','verb','رفتن',1,
     '{"present":{"ich":"gehe","du":"gehst","er_sie_es":"geht","wir":"gehen","ihr":"geht","sie_Sie":"gehen"}}','[{"text":"kommen","translation":"آمدن"},{"text":"bleiben","translation":"ماندن"},{"text":"machen","translation":"انجام دادن"},{"text":"sehen","translation":"دیدن"},{"text":"sprechen","translation":"صحبت کردن"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_gehen=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_es
  FROM words
  WHERE course_id=v_course AND lemma='es'
    AND part_of_speech='pronoun' AND translation='آن / این'
  ORDER BY id LIMIT 1;
  IF v_w_es IS NULL THEN
    INSERT INTO words
    (course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES
    (v_course,'es','es','pronoun','آن / این',1,
     NULL,'[{"text":"ich","translation":"من"},{"text":"du","translation":"تو"},{"text":"er","translation":"او"},{"text":"sie","translation":"او / آنها"},{"text":"wir","translation":"ما"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_es=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_du
  FROM words
  WHERE course_id=v_course AND lemma='du'
    AND part_of_speech='pronoun' AND translation='تو'
  ORDER BY id LIMIT 1;
  IF v_w_du IS NULL THEN
    INSERT INTO words
    (course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES
    (v_course,'du','du','pronoun','تو',1,
     '{"nominative":"du","accusative":"dich","dative":"dir"}','[{"text":"ich","translation":"من"},{"text":"er","translation":"او"},{"text":"sie","translation":"او / آنها"},{"text":"wir","translation":"ما"},{"text":"ihr","translation":"شما"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_du=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_wie_geht_es_dir
  FROM words
  WHERE course_id=v_course AND lemma='Wie geht es dir?'
    AND part_of_speech='phrase' AND translation='حالت چطوره؟'
  ORDER BY id LIMIT 1;
  IF v_w_wie_geht_es_dir IS NULL THEN
    INSERT INTO words
    (course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES
    (v_course,'Wie geht es dir?','Wie geht es dir?','phrase','حالت چطوره؟',1,
     NULL,'[{"text":"Wie heißt du?","translation":"اسمت چیه؟"},{"text":"Woher kommst du?","translation":"اهل کجایی؟"},{"text":"Guten Morgen!","translation":"صبح بخیر!"},{"text":"Bis später!","translation":"بعدا می بینمت!"},{"text":"Tschüss!","translation":"خداحافظ!"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_wie_geht_es_dir=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_danke
  FROM words
  WHERE course_id=v_course AND lemma='danke'
    AND part_of_speech='interjection' AND translation='ممنون'
  ORDER BY id LIMIT 1;
  IF v_w_danke IS NULL THEN
    INSERT INTO words
    (course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES
    (v_course,'danke','danke','interjection','ممنون',1,
     NULL,'[{"text":"bitte","translation":"لطفا / خواهش می کنم"},{"text":"hallo","translation":"سلام"},{"text":"tschüss","translation":"خداحافظ"},{"text":"ja","translation":"بله"},{"text":"nein","translation":"نه"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_danke=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_super
  FROM words
  WHERE course_id=v_course AND lemma='super'
    AND part_of_speech='adjective' AND translation='عالی'
  ORDER BY id LIMIT 1;
  IF v_w_super IS NULL THEN
    INSERT INTO words
    (course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES
    (v_course,'super','super','adjective','عالی',1,
     NULL,'[{"text":"gut","translation":"خوب"},{"text":"schlecht","translation":"بد"},{"text":"schön","translation":"خوب / زیبا"},{"text":"müde","translation":"خسته"},{"text":"krank","translation":"بیمار"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_super=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_bis
  FROM words
  WHERE course_id=v_course AND lemma='bis'
    AND part_of_speech='preposition' AND translation='تا'
  ORDER BY id LIMIT 1;
  IF v_w_bis IS NULL THEN
    INSERT INTO words
    (course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES
    (v_course,'bis','bis','preposition','تا',1,
     NULL,'[{"text":"mit","translation":"با"},{"text":"ohne","translation":"بدون"},{"text":"für","translation":"برای"},{"text":"von","translation":"از"},{"text":"bei","translation":"نزد / در"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_bis=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_spaeter
  FROM words
  WHERE course_id=v_course AND lemma='später'
    AND part_of_speech='adverb' AND translation='بعدا'
  ORDER BY id LIMIT 1;
  IF v_w_spaeter IS NULL THEN
    INSERT INTO words
    (course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES
    (v_course,'später','später','adverb','بعدا',1,
     NULL,'[{"text":"jetzt","translation":"الان"},{"text":"heute","translation":"امروز"},{"text":"morgen","translation":"فردا"},{"text":"früh","translation":"زود"},{"text":"sofort","translation":"فوری"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_spaeter=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_bis_spaeter
  FROM words
  WHERE course_id=v_course AND lemma='Bis später'
    AND part_of_speech='phrase' AND translation='بعدا می بینمت'
  ORDER BY id LIMIT 1;
  IF v_w_bis_spaeter IS NULL THEN
    INSERT INTO words
    (course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES
    (v_course,'Bis später','Bis später','phrase','بعدا می بینمت',1,
     NULL,'[{"text":"Bis morgen","translation":"تا فردا"},{"text":"Guten Morgen","translation":"صبح بخیر"},{"text":"Gute Nacht","translation":"شب بخیر"},{"text":"Hallo","translation":"سلام"},{"text":"Tschüss","translation":"خداحافظ"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_bis_spaeter=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_ja
  FROM words
  WHERE course_id=v_course AND lemma='ja'
    AND part_of_speech='interjection' AND translation='بله / آره'
  ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN
    INSERT INTO words
    (course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES
    (v_course,'ja','ja','interjection','بله / آره',1,
     NULL,'[{"text":"nein","translation":"نه"},{"text":"vielleicht","translation":"شاید"},{"text":"danke","translation":"ممنون"},{"text":"bitte","translation":"لطفا"},{"text":"hallo","translation":"سلام"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_ja=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_lena
  FROM words
  WHERE course_id=v_course AND lemma='Lena'
    AND part_of_speech='proper_noun' AND translation='لنا (نام زنانه)'
  ORDER BY id LIMIT 1;
  IF v_w_lena IS NULL THEN
    INSERT INTO words
    (course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES
    (v_course,'Lena','Lena','proper_noun','لنا (نام زنانه)',1,
     NULL,'[{"text":"Anna","translation":"آنا (نام زنانه)"},{"text":"Mia","translation":"میا (نام زنانه)"},{"text":"Laura","translation":"لورا (نام زنانه)"},{"text":"Emma","translation":"اما (نام زنانه)"},{"text":"Sofia","translation":"سوفیا (نام زنانه)"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_lena=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_ben
  FROM words
  WHERE course_id=v_course AND lemma='Ben'
    AND part_of_speech='proper_noun' AND translation='بن (نام مردانه)'
  ORDER BY id LIMIT 1;
  IF v_w_ben IS NULL THEN
    INSERT INTO words
    (course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES
    (v_course,'Ben','Ben','proper_noun','بن (نام مردانه)',1,
     NULL,'[{"text":"Jonas","translation":"یوناس (نام مردانه)"},{"text":"Paul","translation":"پاول (نام مردانه)"},{"text":"Lukas","translation":"لوکاس (نام مردانه)"},{"text":"Felix","translation":"فلیکس (نام مردانه)"},{"text":"Max","translation":"مکس (نام مردانه)"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_ben=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_anna
  FROM words
  WHERE course_id=v_course AND lemma='Anna'
    AND part_of_speech='proper_noun' AND translation='آنا (نام زنانه)'
  ORDER BY id LIMIT 1;
  IF v_w_anna IS NULL THEN
    INSERT INTO words
    (course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES
    (v_course,'Anna','Anna','proper_noun','آنا (نام زنانه)',1,
     NULL,'[{"text":"Lena","translation":"لنا (نام زنانه)"},{"text":"Mia","translation":"میا (نام زنانه)"},{"text":"Laura","translation":"لورا (نام زنانه)"},{"text":"Emma","translation":"اما (نام زنانه)"},{"text":"Sofia","translation":"سوفیا (نام زنانه)"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_anna=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_jonas
  FROM words
  WHERE course_id=v_course AND lemma='Jonas'
    AND part_of_speech='proper_noun' AND translation='یوناس (نام مردانه)'
  ORDER BY id LIMIT 1;
  IF v_w_jonas IS NULL THEN
    INSERT INTO words
    (course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES
    (v_course,'Jonas','Jonas','proper_noun','یوناس (نام مردانه)',1,
     NULL,'[{"text":"Ben","translation":"بن (نام مردانه)"},{"text":"Paul","translation":"پاول (نام مردانه)"},{"text":"Lukas","translation":"لوکاس (نام مردانه)"},{"text":"Felix","translation":"فلیکس (نام مردانه)"},{"text":"Max","translation":"مکس (نام مردانه)"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_jonas=LAST_INSERT_ID();
  END IF;

  -- ------------------------------------------------------------
  -- Lesson 1: Vor dem Kurs
  -- ------------------------------------------------------------
  INSERT INTO lessons
  (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES
  (v_chapter,v_c_lena,v_c_ben,
   'Vor dem Kurs','قبل از کلاس',
   'Lena und Ben sehen sich vor dem Kurs. Sie sagen nur Hallo und Tschüss.','لنا و بن قبل از کلاس همدیگر را می بینند. فقط سلام می کنند و خداحافظی می کنند.',
   'story','lena-ben-language-class',1,1,
   90,1,'validated',
   '{"relationship":"classmates","storyArc":"beginning-development-ending","startingPoint":"absolute-beginner"}');
  SET v_l_1=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_lena,1,'character','Hallo!','سلام!',1,
   NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"!"}]',
   NULL,NULL,NULL,NULL);
  SET v_t_1=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_ben,2,'learner','Hallo!','سلام!',1,
   NULL,NULL,'hallo',NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"!"}]',
   NULL,NULL,NULL,NULL);
  SET v_t_2=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_lena,3,'character','Tschüss!','خداحافظ!',1,
   NULL,NULL,NULL,NULL,'[{"surface":"Tschüss","lemma":"Tschüss","translation":"خداحافظ","partOfSpeech":"interjection","suffix":"!"}]',
   NULL,NULL,NULL,NULL);
  SET v_t_3=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_ben,4,'learner','Tschüss!','خداحافظ!',1,
   NULL,NULL,'tschüss',NULL,'[{"surface":"Tschüss","lemma":"Tschüss","translation":"خداحافظ","partOfSpeech":"interjection","suffix":"!"}]',
   NULL,NULL,NULL,NULL);
  SET v_t_4=LAST_INSERT_ID();

  -- ------------------------------------------------------------
  -- Lesson 2: Am Morgen
  -- ------------------------------------------------------------
  INSERT INTO lessons
  (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES
  (v_chapter,v_c_anna,v_c_jonas,
   'Am Morgen','صبح در خانه',
   'Anna und Jonas begrüßen sich am Morgen. Kurz danach verabschieden sie sich.','آنا و یوناس صبح به هم سلام می کنند. کمی بعد از هم خداحافظی می کنند.',
   'story','anna-jonas-couple',1,1,
   90,2,'validated',
   '{"relationship":"spouses","storyArc":"beginning-development-ending","startingPoint":"absolute-beginner"}');
  SET v_l_2=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_anna,1,'character','Guten Morgen, Jonas!','صبح بخیر، یوناس!',1,
   NULL,NULL,NULL,NULL,'[{"surface":"Guten","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"در این عبارت: بخیر","form":"inflected_adjective"},{"surface":"Morgen","lemma":"Morgen","translation":"صبح","partOfSpeech":"noun","suffix":","},{"surface":"Jonas","lemma":"Jonas","translation":"یوناس (نام مردانه)","partOfSpeech":"proper_noun","suffix":"!"}]',
   NULL,NULL,NULL,NULL);
  SET v_t_5=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_jonas,2,'learner','Guten Morgen, Anna!','صبح بخیر، آنا!',1,
   NULL,NULL,'guten morgen anna',NULL,'[{"surface":"Guten","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"در این عبارت: بخیر","form":"inflected_adjective"},{"surface":"Morgen","lemma":"Morgen","translation":"صبح","partOfSpeech":"noun","suffix":","},{"surface":"Anna","lemma":"Anna","translation":"آنا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',
   NULL,NULL,NULL,NULL);
  SET v_t_6=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_anna,3,'character','Tschüss!','خداحافظ!',1,
   NULL,NULL,NULL,NULL,'[{"surface":"Tschüss","lemma":"Tschüss","translation":"خداحافظ","partOfSpeech":"interjection","suffix":"!"}]',
   NULL,NULL,NULL,NULL);
  SET v_t_7=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_jonas,4,'learner','Tschüss!','خداحافظ!',1,
   NULL,NULL,'tschüss',NULL,'[{"surface":"Tschüss","lemma":"Tschüss","translation":"خداحافظ","partOfSpeech":"interjection","suffix":"!"}]',
   NULL,NULL,NULL,NULL);
  SET v_t_8=LAST_INSERT_ID();

  -- ------------------------------------------------------------
  -- Lesson 3: Wie geht es dir?
  -- ------------------------------------------------------------
  INSERT INTO lessons
  (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES
  (v_chapter,v_c_lena,v_c_ben,
   'Wie geht es dir?','حالت چطوره؟',
   'Lena und Ben treffen sich wieder. Dieses Mal fragt Lena kurz, wie es Ben geht.','لنا و بن دوباره همدیگر را می بینند. این بار لنا خیلی کوتاه حال بن را می پرسد.',
   'story','lena-ben-language-class',2,1,
   132,3,'validated',
   '{"relationship":"classmates","storyArc":"beginning-development-ending","startingPoint":"absolute-beginner"}');
  SET v_l_3=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_lena,1,'character','Hallo! Wie geht es dir?','سلام! حالت چطوره؟',1,
   NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"!"},{"surface":"Wie","lemma":"wie","translation":"چطور / چگونه","partOfSpeech":"adverb"},{"surface":"geht","lemma":"gehen","translation":"رفتن","partOfSpeech":"verb","meaning":"در این عبارت: می گذرد / است","form":"present_3sg"},{"surface":"es","lemma":"es","translation":"آن / این","partOfSpeech":"pronoun","meaning":"در این عبارت بخشی از ساختار جمله است"},{"surface":"dir","lemma":"du","translation":"تو","partOfSpeech":"pronoun","meaning":"به تو / برای تو","form":"dative","suffix":"?"}]',
   'فعلا عبارت را کامل یاد بگیر','«Wie geht es dir?» یعنی «حالت چطوره؟». فعلا لازم نیست ساختار دستوری آن را حفظ کنی؛ عبارت را کامل یاد بگیر.',NULL,NULL);
  SET v_t_9=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_ben,2,'learner','Gut, danke.','خوبم، ممنون.',1,
   NULL,NULL,'gut danke',NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","suffix":","},{"surface":"danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',
   NULL,NULL,NULL,NULL);
  SET v_t_10=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_lena,3,'character','Super!','عالی!',1,
   NULL,NULL,NULL,NULL,'[{"surface":"Super","lemma":"super","translation":"عالی","partOfSpeech":"adjective","suffix":"!"}]',
   NULL,NULL,NULL,NULL);
  SET v_t_11=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_ben,4,'learner','Danke!','ممنون!',1,
   NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',
   NULL,NULL,NULL,NULL);
  SET v_t_12=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_lena,5,'character','Tschüss!','خداحافظ!',1,
   NULL,NULL,NULL,NULL,'[{"surface":"Tschüss","lemma":"Tschüss","translation":"خداحافظ","partOfSpeech":"interjection","suffix":"!"}]',
   NULL,NULL,NULL,NULL);
  SET v_t_13=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_ben,6,'learner','Tschüss!','خداحافظ!',1,
   NULL,NULL,'tschüss',NULL,'[{"surface":"Tschüss","lemma":"Tschüss","translation":"خداحافظ","partOfSpeech":"interjection","suffix":"!"}]',
   NULL,NULL,NULL,NULL);
  SET v_t_14=LAST_INSERT_ID();

  -- ------------------------------------------------------------
  -- Lesson 4: Bis später
  -- ------------------------------------------------------------
  INSERT INTO lessons
  (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES
  (v_chapter,v_c_anna,v_c_jonas,
   'Bis später','بعدا می بینمت',
   'Jonas geht aus dem Haus. Anna und Jonas verabschieden sich und sagen, dass sie sich später wiedersehen.','یوناس از خانه بیرون می رود. آنا و یوناس خداحافظی می کنند و می گویند بعدا دوباره همدیگر را می بینند.',
   'story','anna-jonas-couple',2,1,
   96,4,'validated',
   '{"relationship":"spouses","storyArc":"beginning-development-ending","startingPoint":"absolute-beginner"}');
  SET v_l_4=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_anna,1,'character','Guten Morgen!','صبح بخیر!',1,
   NULL,NULL,NULL,NULL,'[{"surface":"Guten","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"در این عبارت: بخیر","form":"inflected_adjective"},{"surface":"Morgen","lemma":"Morgen","translation":"صبح","partOfSpeech":"noun","suffix":"!"}]',
   NULL,NULL,NULL,NULL);
  SET v_t_15=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_jonas,2,'learner','Guten Morgen!','صبح بخیر!',1,
   NULL,NULL,'guten morgen',NULL,'[{"surface":"Guten","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"در این عبارت: بخیر","form":"inflected_adjective"},{"surface":"Morgen","lemma":"Morgen","translation":"صبح","partOfSpeech":"noun","suffix":"!"}]',
   NULL,NULL,NULL,NULL);
  SET v_t_16=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_anna,3,'character','Bis später!','بعدا می بینمت!',1,
   NULL,NULL,NULL,NULL,'[{"surface":"Bis","lemma":"bis","translation":"تا","partOfSpeech":"preposition"},{"surface":"später","lemma":"später","translation":"بعدا","partOfSpeech":"adverb","suffix":"!"}]',
   NULL,NULL,NULL,NULL);
  SET v_t_17=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_jonas,4,'learner','Ja, bis später!','آره، بعدا می بینمت!',1,
   NULL,NULL,'ja bis später',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"bis","lemma":"bis","translation":"تا","partOfSpeech":"preposition"},{"surface":"später","lemma":"später","translation":"بعدا","partOfSpeech":"adverb","suffix":"!"}]',
   NULL,NULL,NULL,NULL);
  SET v_t_18=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_hallo,'new',1,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_tschuess,'new',1,2);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_gut,'passive',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_morgen,'passive',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_jonas,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_anna,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_tschuess,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_guten_morgen,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_hallo,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_wie,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_gehen,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_es,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_du,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_gut,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_danke,'new',1,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_super,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_tschuess,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_wie_geht_es_dir,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_gut,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_morgen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_bis,'passive',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_spaeter,'passive',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_ja,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_bis_spaeter,'new',1,1);

  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES
  (v_l_1,'new_word',1,NULL,v_w_hallo,'کلمه جدید',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES
  (v_l_1,'new_word',2,NULL,v_w_tschuess,'کلمه جدید',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES
  (v_l_1,'listen',3,v_t_1,NULL,'به لنا گوش کن',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES
  (v_l_1,'speak',4,v_t_2,NULL,'جواب بن را بخوان',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES
  (v_l_1,'listen',5,v_t_3,NULL,'به لنا گوش کن',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES
  (v_l_1,'speak',6,v_t_4,NULL,'جواب بن را بخوان',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES
  (v_l_1,'meaning_choice',7,v_t_1,NULL,'معنی درست را انتخاب کن',NULL,1,'{"mode":"turn_translation","question":"«Hallo!» یعنی چی؟","choices":["سلام!","خداحافظ!"],"correctIndex":0}',NULL);

  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES
  (v_l_2,'new_word',1,NULL,v_w_guten_morgen,'عبارت جدید',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES
  (v_l_2,'listen',2,v_t_5,NULL,'به آنا گوش کن',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES
  (v_l_2,'speak',3,v_t_6,NULL,'جواب یوناس را بخوان',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES
  (v_l_2,'listen',4,v_t_7,NULL,'به آنا گوش کن',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES
  (v_l_2,'speak',5,v_t_8,NULL,'جواب یوناس را بخوان',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES
  (v_l_2,'meaning_choice',6,v_t_5,NULL,'معنی درست را انتخاب کن',NULL,1,'{"mode":"turn_translation","question":"«Guten Morgen!» یعنی چی؟","choices":["صبح بخیر!","سلام!","خداحافظ!"],"correctIndex":0}',NULL);

  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES
  (v_l_3,'new_word',1,NULL,v_w_wie_geht_es_dir,'عبارت جدید',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES
  (v_l_3,'new_word',2,NULL,v_w_gut,'کلمه جدید',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES
  (v_l_3,'new_word',3,NULL,v_w_danke,'کلمه جدید',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES
  (v_l_3,'listen',4,v_t_9,NULL,'به لنا گوش کن',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES
  (v_l_3,'speak',5,v_t_10,NULL,'جواب بن را بخوان',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES
  (v_l_3,'listen',6,v_t_11,NULL,'به لنا گوش کن',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES
  (v_l_3,'speak',7,v_t_12,NULL,'جواب بن را بخوان',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES
  (v_l_3,'listen',8,v_t_13,NULL,'به پایان مکالمه گوش کن',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES
  (v_l_3,'speak',9,v_t_14,NULL,'مکالمه را تمام کن',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES
  (v_l_3,'meaning_choice',10,v_t_9,NULL,'معنی درست را انتخاب کن',NULL,1,'{"mode":"turn_translation","question":"«Wie geht es dir?» یعنی چی؟","choices":["حالت چطوره؟","صبح بخیر!","خداحافظ!"],"correctIndex":0}',NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES
  (v_l_3,'reading_comprehension',11,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,1,'{"source":"lesson_story","question":"بن چه جوابی به حال و احوال لنا می دهد؟","choices":["خوبم، ممنون.","صبح بخیر.","خداحافظ."],"correctIndex":0}',NULL);

  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES
  (v_l_4,'new_word',1,NULL,v_w_bis_spaeter,'عبارت جدید',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES
  (v_l_4,'new_word',2,NULL,v_w_ja,'کلمه جدید',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES
  (v_l_4,'listen',3,v_t_15,NULL,'به آنا گوش کن',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES
  (v_l_4,'speak',4,v_t_16,NULL,'جواب یوناس را بخوان',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES
  (v_l_4,'listen',5,v_t_17,NULL,'به آنا گوش کن',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES
  (v_l_4,'speak',6,v_t_18,NULL,'جواب یوناس را بخوان',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES
  (v_l_4,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,1,'{"source":"lesson_story","question":"آنا و یوناس چه زمانی دوباره همدیگر را می بینند؟","choices":["بعدا","فردا","الان"],"correctIndex":0}',NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES
  (v_l_4,'word_order',8,v_t_18,NULL,'جمله را به ترتیب درست بساز',NULL,1,'{"source":"turn_tokens","shuffle":true}',NULL);

  -- ------------------------------------------------------------
  -- Runtime QA
  -- ------------------------------------------------------------
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 001 lesson count.';
  END IF;

  SELECT COUNT(*) INTO v_count
  FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.';
  END IF;

  SELECT COUNT(*) INTO v_count
  FROM turns t JOIN lessons l ON l.id=t.lesson_id
  WHERE l.chapter_id=v_chapter
    AND ((t.role='character' AND t.character_id<>l.prompt_character_id)
      OR (t.role='learner' AND t.character_id<>l.learner_character_id));
  IF v_count<>0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Turn Character mismatch.';
  END IF;

  SELECT COUNT(*) INTO v_count
  FROM turns t JOIN lessons l ON l.id=t.lesson_id
  WHERE l.chapter_id=v_chapter AND t.role='learner'
    AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.';
  END IF;

  SELECT COUNT(*) INTO v_count
  FROM activities a JOIN lessons l ON l.id=a.lesson_id
  WHERE l.chapter_id=v_chapter
    AND a.activity_type='reading_comprehension'
    AND (a.config IS NULL OR JSON_EXTRACT(a.config,'$.question') IS NULL);
  IF v_count<>0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without task.';
  END IF;

  UPDATE chapters SET status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;

CALL import_nova_series_001_v9();
DROP PROCEDURE IF EXISTS import_nova_series_001_v9;
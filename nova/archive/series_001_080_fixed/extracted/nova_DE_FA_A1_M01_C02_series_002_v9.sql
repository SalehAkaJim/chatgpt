-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 002
-- A1 > Erste Schritte > Ich heiße ...
-- Absolute beginner continuation
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_002_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_002_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_lena BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_ben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_anna BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_mia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_paul BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_sofia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_hallo BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_tschuess BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danke BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_lena BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_anna BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_heissen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_heisse BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wie BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_du BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wie_heisst_du BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_freuen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_freut_mich BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_mia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_paul BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sofia BIGINT UNSIGNED DEFAULT NULL;
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

  DECLARE EXIT HANDLER FOR SQLEXCEPTION
  BEGIN
    ROLLBACK;
    RESIGNAL;
  END;

  START TRANSACTION;

  SELECT id INTO v_course FROM courses
  WHERE learning_language='de' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.';
  END IF;

  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND sort_order=1 ORDER BY id LIMIT 1;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=1 ORDER BY id LIMIT 1;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=1 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=2 ORDER BY id LIMIT 1;

  IF v_chapter IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Chapter 2 not found.';
  END IF;

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 001 before Series 002.';
  END IF;

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Chapter 2 must be empty before Series 002 import.';
  END IF;

  SELECT id INTO v_c_lena FROM characters
  WHERE course_id=v_course AND name='Lena' AND gender='female'
  ORDER BY id LIMIT 1;
  IF v_c_lena IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Lena not found.';
  END IF;

  SELECT id INTO v_c_ben FROM characters
  WHERE course_id=v_course AND name='Ben' AND gender='male'
  ORDER BY id LIMIT 1;
  IF v_c_ben IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Ben not found.';
  END IF;

  SELECT id INTO v_c_anna FROM characters
  WHERE course_id=v_course AND name='Anna' AND gender='female'
  ORDER BY id LIMIT 1;
  IF v_c_anna IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Anna not found.';
  END IF;

  SELECT id INTO v_c_mia FROM characters
  WHERE course_id=v_course AND name='Mia' AND gender='female'
  ORDER BY id LIMIT 1;
  IF v_c_mia IS NULL THEN
    INSERT INTO characters(course_id,name,gender,avatar_url,voice_key,profile,metadata)
    VALUES(v_course,'Mia','female',NULL,NULL,'{"role":"language_student"}','{"context":"language_course","introducedInChapter":2}');
    SET v_c_mia=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_c_paul FROM characters
  WHERE course_id=v_course AND name='Paul' AND gender='male'
  ORDER BY id LIMIT 1;
  IF v_c_paul IS NULL THEN
    INSERT INTO characters(course_id,name,gender,avatar_url,voice_key,profile,metadata)
    VALUES(v_course,'Paul','male',NULL,NULL,'{"role":"language_student"}','{"context":"language_course","introducedInChapter":2}');
    SET v_c_paul=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_c_sofia FROM characters
  WHERE course_id=v_course AND name='Sofia' AND gender='female'
  ORDER BY id LIMIT 1;
  IF v_c_sofia IS NULL THEN
    INSERT INTO characters(course_id,name,gender,avatar_url,voice_key,profile,metadata)
    VALUES(v_course,'Sofia','female',NULL,NULL,'{"role":"neighbor"}','{"context":"apartment_building","introducedInChapter":2}');
    SET v_c_sofia=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_hallo FROM words
  WHERE course_id=v_course AND lemma='Hallo' AND part_of_speech='interjection' AND translation='سلام'
  ORDER BY id LIMIT 1;
  IF v_w_hallo IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Hallo not found.';
  END IF;

  SELECT id INTO v_w_tschuess FROM words
  WHERE course_id=v_course AND lemma='Tschüss' AND part_of_speech='interjection' AND translation='خداحافظ'
  ORDER BY id LIMIT 1;
  IF v_w_tschuess IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Tschüss not found.';
  END IF;

  SELECT id INTO v_w_danke FROM words
  WHERE course_id=v_course AND lemma='danke' AND part_of_speech='interjection' AND translation='ممنون'
  ORDER BY id LIMIT 1;
  IF v_w_danke IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word danke not found.';
  END IF;

  SELECT id INTO v_w_lena FROM words
  WHERE course_id=v_course AND lemma='Lena' AND part_of_speech='proper_noun' AND translation='لنا (نام زنانه)'
  ORDER BY id LIMIT 1;
  IF v_w_lena IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Lena not found.';
  END IF;

  SELECT id INTO v_w_ben FROM words
  WHERE course_id=v_course AND lemma='Ben' AND part_of_speech='proper_noun' AND translation='بن (نام مردانه)'
  ORDER BY id LIMIT 1;
  IF v_w_ben IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Ben not found.';
  END IF;

  SELECT id INTO v_w_anna FROM words
  WHERE course_id=v_course AND lemma='Anna' AND part_of_speech='proper_noun' AND translation='آنا (نام زنانه)'
  ORDER BY id LIMIT 1;
  IF v_w_anna IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Anna not found.';
  END IF;

  SELECT id INTO v_w_ich FROM words
  WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من'
  ORDER BY id LIMIT 1;
  IF v_w_ich IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'ich','ich','pronoun','من',1,
           '{"nominative":"ich","accusative":"mich","dative":"mir"}','[{"text":"du","translation":"تو"},{"text":"er","translation":"او"},{"text":"sie","translation":"او / آنها"},{"text":"wir","translation":"ما"},{"text":"ihr","translation":"شما"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_ich=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_heissen FROM words
  WHERE course_id=v_course AND lemma='heißen' AND part_of_speech='verb' AND translation='نام داشتن'
  ORDER BY id LIMIT 1;
  IF v_w_heissen IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'heißen','heißen','verb','نام داشتن',1,
           '{"present":{"ich":"heiße","du":"heißt","er_sie_es":"heißt","wir":"heißen","ihr":"heißt","sie_Sie":"heißen"}}','[{"text":"sein","translation":"بودن"},{"text":"kommen","translation":"آمدن"},{"text":"gehen","translation":"رفتن"},{"text":"sprechen","translation":"صحبت کردن"},{"text":"wohnen","translation":"زندگی کردن"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_heissen=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_ich_heisse FROM words
  WHERE course_id=v_course AND lemma='Ich heiße ...' AND part_of_speech='phrase' AND translation='اسم من ... است'
  ORDER BY id LIMIT 1;
  IF v_w_ich_heisse IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich heiße ...','Ich heiße ...','phrase','اسم من ... است',1,
           NULL,'[{"text":"Wie heißt du?","translation":"اسمت چیه؟"},{"text":"Wie geht es dir?","translation":"حالت چطوره؟"},{"text":"Guten Morgen!","translation":"صبح بخیر!"},{"text":"Bis später!","translation":"بعدا می بینمت!"},{"text":"Tschüss!","translation":"خداحافظ!"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_ich_heisse=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_wie FROM words
  WHERE course_id=v_course AND lemma='wie' AND part_of_speech='adverb' AND translation='چطور / چگونه'
  ORDER BY id LIMIT 1;
  IF v_w_wie IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'wie','wie','adverb','چطور / چگونه',1,
           NULL,'[{"text":"wo","translation":"کجا"},{"text":"was","translation":"چی"},{"text":"wer","translation":"چه کسی"},{"text":"wann","translation":"چه زمانی"},{"text":"warum","translation":"چرا"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_wie=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_du FROM words
  WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو'
  ORDER BY id LIMIT 1;
  IF v_w_du IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'du','du','pronoun','تو',1,
           '{"nominative":"du","accusative":"dich","dative":"dir"}','[{"text":"ich","translation":"من"},{"text":"er","translation":"او"},{"text":"sie","translation":"او / آنها"},{"text":"wir","translation":"ما"},{"text":"ihr","translation":"شما"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_du=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_wie_heisst_du FROM words
  WHERE course_id=v_course AND lemma='Wie heißt du?' AND part_of_speech='phrase' AND translation='اسمت چیه؟'
  ORDER BY id LIMIT 1;
  IF v_w_wie_heisst_du IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Wie heißt du?','Wie heißt du?','phrase','اسمت چیه؟',1,
           NULL,'[{"text":"Ich heiße ...","translation":"اسم من ... است"},{"text":"Wie geht es dir?","translation":"حالت چطوره؟"},{"text":"Woher kommst du?","translation":"اهل کجایی؟"},{"text":"Guten Morgen!","translation":"صبح بخیر!"},{"text":"Tschüss!","translation":"خداحافظ!"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_wie_heisst_du=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_freuen FROM words
  WHERE course_id=v_course AND lemma='freuen' AND part_of_speech='verb' AND translation='خوشحال کردن / خوشحال شدن'
  ORDER BY id LIMIT 1;
  IF v_w_freuen IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'freuen','freuen','verb','خوشحال کردن / خوشحال شدن',1,
           '{"phraseForm":"Freut mich!"}','[{"text":"heißen","translation":"نام داشتن"},{"text":"kommen","translation":"آمدن"},{"text":"gehen","translation":"رفتن"},{"text":"sprechen","translation":"صحبت کردن"},{"text":"danken","translation":"تشکر کردن"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_freuen=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_freut_mich FROM words
  WHERE course_id=v_course AND lemma='Freut mich!' AND part_of_speech='phrase' AND translation='خوشبختم!'
  ORDER BY id LIMIT 1;
  IF v_w_freut_mich IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Freut mich!','Freut mich!','phrase','خوشبختم!',1,
           NULL,'[{"text":"Danke!","translation":"ممنون!"},{"text":"Hallo!","translation":"سلام!"},{"text":"Tschüss!","translation":"خداحافظ!"},{"text":"Guten Morgen!","translation":"صبح بخیر!"},{"text":"Wie heißt du?","translation":"اسمت چیه؟"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_freut_mich=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_mia FROM words
  WHERE course_id=v_course AND lemma='Mia' AND part_of_speech='proper_noun' AND translation='میا (نام زنانه)'
  ORDER BY id LIMIT 1;
  IF v_w_mia IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Mia','Mia','proper_noun','میا (نام زنانه)',1,
           NULL,'[{"text":"Lena","translation":"لنا (نام زنانه)"},{"text":"Anna","translation":"آنا (نام زنانه)"},{"text":"Laura","translation":"لورا (نام زنانه)"},{"text":"Emma","translation":"اما (نام زنانه)"},{"text":"Sofia","translation":"سوفیا (نام زنانه)"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_mia=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_paul FROM words
  WHERE course_id=v_course AND lemma='Paul' AND part_of_speech='proper_noun' AND translation='پاول (نام مردانه)'
  ORDER BY id LIMIT 1;
  IF v_w_paul IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Paul','Paul','proper_noun','پاول (نام مردانه)',1,
           NULL,'[{"text":"Ben","translation":"بن (نام مردانه)"},{"text":"Jonas","translation":"یوناس (نام مردانه)"},{"text":"Lukas","translation":"لوکاس (نام مردانه)"},{"text":"Felix","translation":"فلیکس (نام مردانه)"},{"text":"Max","translation":"مکس (نام مردانه)"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_paul=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_sofia FROM words
  WHERE course_id=v_course AND lemma='Sofia' AND part_of_speech='proper_noun' AND translation='سوفیا (نام زنانه)'
  ORDER BY id LIMIT 1;
  IF v_w_sofia IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Sofia','Sofia','proper_noun','سوفیا (نام زنانه)',1,
           NULL,'[{"text":"Lena","translation":"لنا (نام زنانه)"},{"text":"Anna","translation":"آنا (نام زنانه)"},{"text":"Mia","translation":"میا (نام زنانه)"},{"text":"Laura","translation":"لورا (نام زنانه)"},{"text":"Emma","translation":"اما (نام زنانه)"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_sofia=LAST_INSERT_ID();
  END IF;

  -- Lesson 1: Eine neue Kursteilnehmerin
  INSERT INTO lessons
  (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES
  (v_chapter,v_c_lena,v_c_mia,'Eine neue Kursteilnehmerin','یک نفر جدید در کلاس',
   'Lena trifft Mia vor dem Kurs. Beide sagen kurz ihren Namen.','لنا قبل از کلاس با میا آشنا می شود. هر دو خیلی کوتاه اسم خودشان را می گویند.','story','lena-mia-language-class',1,
   1,96,1,'validated',
   '{"relationship":"new classmates","storyArc":"beginning-development-ending","startingPoint":"absolute-beginner"}');
  SET v_l_1=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_lena,1,'character','Hallo!','سلام!',1,
   NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_mia,2,'learner','Hallo!','سلام!',1,
   NULL,NULL,'hallo',NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_lena,3,'character','Ich heiße Lena.','اسم من لنا است.',1,
   NULL,NULL,NULL,NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"heiße","lemma":"heißen","translation":"نام داشتن","partOfSpeech":"verb","meaning":"اسمم ... است","form":"present_1sg"},{"surface":"Lena","lemma":"Lena","translation":"لنا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_mia,4,'learner','Ich heiße Mia.','اسم من میا است.',1,
   NULL,NULL,'ich heiße mia',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"heiße","lemma":"heißen","translation":"نام داشتن","partOfSpeech":"verb","meaning":"اسمم ... است","form":"present_1sg"},{"surface":"Mia","lemma":"Mia","translation":"میا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_lena,5,'character','Tschüss, Mia!','خداحافظ، میا!',1,
   NULL,NULL,NULL,NULL,'[{"surface":"Tschüss","lemma":"Tschüss","translation":"خداحافظ","partOfSpeech":"interjection","suffix":","},{"surface":"Mia","lemma":"Mia","translation":"میا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_mia,6,'learner','Tschüss, Lena!','خداحافظ، لنا!',1,
   NULL,NULL,'tschüss lena',NULL,'[{"surface":"Tschüss","lemma":"Tschüss","translation":"خداحافظ","partOfSpeech":"interjection","suffix":","},{"surface":"Lena","lemma":"Lena","translation":"لنا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_6=LAST_INSERT_ID();

  -- Lesson 2: Ein neuer Kursteilnehmer
  INSERT INTO lessons
  (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES
  (v_chapter,v_c_paul,v_c_ben,'Ein neuer Kursteilnehmer','یک نفر جدید دیگر',
   'Paul trifft Ben vor dem Kurs. Paul sagt seinen Namen und fragt nach Bens Namen.','پاول قبل از کلاس بن را می بیند. اسم خودش را می گوید و اسم بن را می پرسد.','story','ben-paul-language-class',1,
   1,108,2,'validated',
   '{"relationship":"new classmates","storyArc":"beginning-development-ending","startingPoint":"absolute-beginner"}');
  SET v_l_2=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_paul,1,'character','Hallo!','سلام!',1,
   NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_ben,2,'learner','Hallo!','سلام!',1,
   NULL,NULL,'hallo',NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_paul,3,'character','Ich heiße Paul. Wie heißt du?','اسم من پاول است. اسم تو چیه؟',1,
   NULL,NULL,NULL,NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"heiße","lemma":"heißen","translation":"نام داشتن","partOfSpeech":"verb","meaning":"اسمم ... است","form":"present_1sg"},{"surface":"Paul","lemma":"Paul","translation":"پاول (نام مردانه)","partOfSpeech":"proper_noun","suffix":"."},{"surface":"Wie","lemma":"wie","translation":"چطور / چگونه","partOfSpeech":"adverb"},{"surface":"heißt","lemma":"heißen","translation":"نام داشتن","partOfSpeech":"verb","meaning":"اسمت ... است","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_ben,4,'learner','Ich heiße Ben.','اسم من بن است.',1,
   NULL,NULL,'ich heiße ben',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"heiße","lemma":"heißen","translation":"نام داشتن","partOfSpeech":"verb","meaning":"اسمم ... است","form":"present_1sg"},{"surface":"Ben","lemma":"Ben","translation":"بن (نام مردانه)","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_paul,5,'character','Tschüss, Ben!','خداحافظ، بن!',1,
   NULL,NULL,NULL,NULL,'[{"surface":"Tschüss","lemma":"Tschüss","translation":"خداحافظ","partOfSpeech":"interjection","suffix":","},{"surface":"Ben","lemma":"Ben","translation":"بن (نام مردانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_ben,6,'learner','Tschüss, Paul!','خداحافظ، پاول!',1,
   NULL,NULL,'tschüss paul',NULL,'[{"surface":"Tschüss","lemma":"Tschüss","translation":"خداحافظ","partOfSpeech":"interjection","suffix":","},{"surface":"Paul","lemma":"Paul","translation":"پاول (نام مردانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_12=LAST_INSERT_ID();

  -- Lesson 3: In der Pause
  INSERT INTO lessons
  (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES
  (v_chapter,v_c_mia,v_c_paul,'In der Pause','وقت استراحت',
   'Mia und Paul treffen sich in der Pause. Sie stellen sich vor und sagen, dass sie sich über das Kennenlernen freuen.','میا و پاول وقت استراحت همدیگر را می بینند. خودشان را معرفی می کنند و از آشنایی خوشحال می شوند.','story','mia-paul-language-class',1,
   1,90,3,'validated',
   '{"relationship":"new classmates","storyArc":"beginning-development-ending","startingPoint":"absolute-beginner"}');
  SET v_l_3=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_mia,1,'character','Hallo! Ich heiße Mia.','سلام! اسم من میا است.',1,
   NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"!"},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"heiße","lemma":"heißen","translation":"نام داشتن","partOfSpeech":"verb","meaning":"اسمم ... است","form":"present_1sg"},{"surface":"Mia","lemma":"Mia","translation":"میا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_paul,2,'learner','Hallo! Ich heiße Paul.','سلام! اسم من پاول است.',1,
   NULL,NULL,'hallo ich heiße paul',NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"!"},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"heiße","lemma":"heißen","translation":"نام داشتن","partOfSpeech":"verb","meaning":"اسمم ... است","form":"present_1sg"},{"surface":"Paul","lemma":"Paul","translation":"پاول (نام مردانه)","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_mia,3,'character','Freut mich!','خوشبختم!',1,
   NULL,NULL,NULL,NULL,'[{"surface":"Freut","lemma":"freuen","translation":"خوشحال کردن / خوشحال شدن","partOfSpeech":"verb","meaning":"در این عبارت: خوشحالم","form":"present_3sg"},{"surface":"mich","lemma":"ich","translation":"من","partOfSpeech":"pronoun","meaning":"من را / مرا","form":"accusative","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_paul,4,'learner','Freut mich!','خوشبختم!',1,
   NULL,NULL,'freut mich',NULL,'[{"surface":"Freut","lemma":"freuen","translation":"خوشحال کردن / خوشحال شدن","partOfSpeech":"verb","meaning":"در این عبارت: خوشحالم","form":"present_3sg"},{"surface":"mich","lemma":"ich","translation":"من","partOfSpeech":"pronoun","meaning":"من را / مرا","form":"accusative","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_16=LAST_INSERT_ID();

  -- Lesson 4: Eine neue Nachbarin
  INSERT INTO lessons
  (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES
  (v_chapter,v_c_sofia,v_c_anna,'Eine neue Nachbarin','همسایه جدید',
   'Sofia ist neu im Haus. Sie trifft Anna und beide stellen sich vor.','سوفیا تازه به این ساختمان آمده. او آنا را می بیند و هر دو خودشان را معرفی می کنند.','story','anna-sofia-neighbors',1,
   1,90,4,'validated',
   '{"relationship":"new neighbors","storyArc":"beginning-development-ending","startingPoint":"absolute-beginner"}');
  SET v_l_4=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_sofia,1,'character','Hallo! Ich heiße Sofia. Wie heißt du?','سلام! اسم من سوفیا است. اسم تو چیه؟',1,
   NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"!"},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"heiße","lemma":"heißen","translation":"نام داشتن","partOfSpeech":"verb","meaning":"اسمم ... است","form":"present_1sg"},{"surface":"Sofia","lemma":"Sofia","translation":"سوفیا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"."},{"surface":"Wie","lemma":"wie","translation":"چطور / چگونه","partOfSpeech":"adverb"},{"surface":"heißt","lemma":"heißen","translation":"نام داشتن","partOfSpeech":"verb","meaning":"اسمت ... است","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_anna,2,'learner','Ich heiße Anna.','اسم من آنا است.',1,
   NULL,NULL,'ich heiße anna',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"heiße","lemma":"heißen","translation":"نام داشتن","partOfSpeech":"verb","meaning":"اسمم ... است","form":"present_1sg"},{"surface":"Anna","lemma":"Anna","translation":"آنا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_sofia,3,'character','Freut mich!','خوشبختم!',1,
   NULL,NULL,NULL,NULL,'[{"surface":"Freut","lemma":"freuen","translation":"خوشحال کردن / خوشحال شدن","partOfSpeech":"verb","meaning":"در این عبارت: خوشحالم","form":"present_3sg"},{"surface":"mich","lemma":"ich","translation":"من","partOfSpeech":"pronoun","meaning":"من را / مرا","form":"accusative","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_anna,4,'learner','Freut mich!','خوشبختم!',1,
   NULL,NULL,'freut mich',NULL,'[{"surface":"Freut","lemma":"freuen","translation":"خوشحال کردن / خوشحال شدن","partOfSpeech":"verb","meaning":"در این عبارت: خوشحالم","form":"present_3sg"},{"surface":"mich","lemma":"ich","translation":"من","partOfSpeech":"pronoun","meaning":"من را / مرا","form":"accusative","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_20=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_sofia,5,'character','Tschüss, Anna!','خداحافظ، آنا!',1,
   NULL,NULL,NULL,NULL,'[{"surface":"Tschüss","lemma":"Tschüss","translation":"خداحافظ","partOfSpeech":"interjection","suffix":","},{"surface":"Anna","lemma":"Anna","translation":"آنا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_21=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_anna,6,'learner','Tschüss, Sofia!','خداحافظ، سوفیا!',1,
   NULL,NULL,'tschüss sofia',NULL,'[{"surface":"Tschüss","lemma":"Tschüss","translation":"خداحافظ","partOfSpeech":"interjection","suffix":","},{"surface":"Sofia","lemma":"Sofia","translation":"سوفیا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_22=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_hallo,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_ich,'passive',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_heissen,'passive',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_lena,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_mia,'passive',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_tschuess,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_ich_heisse,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_hallo,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_ich,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_heissen,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_paul,'passive',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_wie,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_du,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_ben,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_tschuess,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_wie_heisst_du,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_hallo,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_ich,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_heissen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_mia,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_paul,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_freuen,'passive',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_freut_mich,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_hallo,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_ich,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_heissen,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_sofia,'passive',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_wie,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_anna,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_freuen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_tschuess,'review',0,2);

  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_ich_heisse,'عبارت جدید',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به لنا گوش کن',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'جواب میا را بخوان',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به معرفی لنا گوش کن',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'خودت را جای میا معرفی کن',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',6,v_t_5,NULL,'به لنا گوش کن',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',7,v_t_6,NULL,'مکالمه را تمام کن',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',8,v_t_3,NULL,'معنی درست را انتخاب کن',NULL,1,'{"mode":"turn_translation","question":"«Ich heiße Lena.» یعنی چی؟","choices":["اسم من لنا است.","حالم خوب است.","خداحافظ، لنا!"],"correctIndex":0}',NULL);

  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_wie_heisst_du,'عبارت جدید',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_7,NULL,'به پاول گوش کن',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_8,NULL,'جواب بن را بخوان',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_9,NULL,'به معرفی و سوال پاول گوش کن',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_10,NULL,'جواب بن را بخوان',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',6,v_t_11,NULL,'به پاول گوش کن',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',7,v_t_12,NULL,'مکالمه را تمام کن',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',8,v_t_9,NULL,'معنی سوال را انتخاب کن',NULL,1,'{"mode":"phrase_meaning","question":"«Wie heißt du?» یعنی چی؟","choices":["اسمت چیه؟","حالت چطوره؟","اهل کجایی؟"],"correctIndex":0}',NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',9,v_t_10,NULL,'جمله را به ترتیب درست بساز',NULL,1,'{"source":"turn_tokens","shuffle":true}',NULL);

  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',1,v_t_13,NULL,'به میا گوش کن',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',2,v_t_14,NULL,'خودت را جای پاول معرفی کن',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',3,NULL,v_w_freut_mich,'عبارت جدید',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_15,NULL,'به میا گوش کن',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_16,NULL,'جواب پاول را بخوان',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_15,NULL,'معنی درست را انتخاب کن',NULL,1,'{"mode":"phrase_meaning","question":"«Freut mich!» یعنی چی؟","choices":["خوشبختم!","ممنون!","خداحافظ!"],"correctIndex":0}',NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,1,'{"source":"lesson_story","question":"اسم پسر در این مکالمه چیست؟","choices":["پاول","بن","یوناس"],"correctIndex":0}',NULL);

  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_17,NULL,'به سوفیا گوش کن',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_18,NULL,'جواب آنا را بخوان',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_19,NULL,'به سوفیا گوش کن',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_20,NULL,'جواب آنا را بخوان',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_21,NULL,'به پایان مکالمه گوش کن',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_22,NULL,'مکالمه را تمام کن',NULL,1,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,1,'{"source":"lesson_story","question":"همسایه جدید آنا چه اسمی دارد؟","choices":["سوفیا","میا","لنا"],"correctIndex":0}',NULL);

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 002 lesson count.';
  END IF;

  SELECT COUNT(*) INTO v_count FROM lessons
  WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
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
  WHERE l.chapter_id=v_chapter AND a.activity_type='reading_comprehension'
    AND (a.config IS NULL OR JSON_EXTRACT(a.config,'$.question') IS NULL);
  IF v_count<>0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without task.';
  END IF;

  UPDATE chapters SET status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;

CALL import_nova_series_002_v9();
DROP PROCEDURE IF EXISTS import_nova_series_002_v9;
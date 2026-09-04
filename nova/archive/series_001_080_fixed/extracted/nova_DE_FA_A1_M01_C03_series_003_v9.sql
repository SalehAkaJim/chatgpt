-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 003
-- A1 > Erste Schritte > Woher kommst du?
-- Absolute beginner continuation
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_003_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_003_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_mia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_paul BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_sara BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_max BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_hallo BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_tschuess BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danke BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_du BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_mia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_paul BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_woher BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kommen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_aus BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_iran BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_deutschland BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_woher_kommst_du BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_komme_aus BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sara BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_max BIGINT UNSIGNED DEFAULT NULL;
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

  SELECT id INTO v_course FROM courses
  WHERE learning_language='de' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.';
  END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND sort_order=1 ORDER BY id LIMIT 1;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=1 ORDER BY id LIMIT 1;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=2 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Chapter 3 not found.';
  END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 002 before Series 003.';
  END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Chapter 3 must be empty before Series 003 import.';
  END IF;

  SELECT id INTO v_c_mia FROM characters
  WHERE course_id=v_course AND name='Mia' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_mia IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Mia not found.';
  END IF;

  SELECT id INTO v_c_paul FROM characters
  WHERE course_id=v_course AND name='Paul' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_paul IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Paul not found.';
  END IF;

  SELECT id INTO v_c_sara FROM characters
  WHERE course_id=v_course AND name='Sara' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_sara IS NULL THEN
    INSERT INTO characters(course_id,name,gender,avatar_url,voice_key,profile,metadata)
    VALUES(v_course,'Sara','female',NULL,NULL,'{"role":"language_student"}','{"context":"language_course","originCountry":"Iran","introducedInChapter":3}');
    SET v_c_sara=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_c_max FROM characters
  WHERE course_id=v_course AND name='Max' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_max IS NULL THEN
    INSERT INTO characters(course_id,name,gender,avatar_url,voice_key,profile,metadata)
    VALUES(v_course,'Max','male',NULL,NULL,'{"role":"language_student"}','{"context":"language_course","originCountry":"Germany","introducedInChapter":3}');
    SET v_c_max=LAST_INSERT_ID();
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

  SELECT id INTO v_w_ja FROM words
  WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره'
  ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.';
  END IF;

  SELECT id INTO v_w_ich FROM words
  WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من'
  ORDER BY id LIMIT 1;
  IF v_w_ich IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ich not found.';
  END IF;

  SELECT id INTO v_w_du FROM words
  WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو'
  ORDER BY id LIMIT 1;
  IF v_w_du IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word du not found.';
  END IF;

  SELECT id INTO v_w_mia FROM words
  WHERE course_id=v_course AND lemma='Mia' AND part_of_speech='proper_noun' AND translation='میا (نام زنانه)'
  ORDER BY id LIMIT 1;
  IF v_w_mia IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Mia not found.';
  END IF;

  SELECT id INTO v_w_paul FROM words
  WHERE course_id=v_course AND lemma='Paul' AND part_of_speech='proper_noun' AND translation='پاول (نام مردانه)'
  ORDER BY id LIMIT 1;
  IF v_w_paul IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Paul not found.';
  END IF;

  SELECT id INTO v_w_woher FROM words
  WHERE course_id=v_course AND lemma='woher' AND part_of_speech='adverb' AND translation='از کجا'
  ORDER BY id LIMIT 1;
  IF v_w_woher IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'woher','woher','adverb','از کجا',2,
           NULL,'[{"text":"wo","translation":"کجا"},{"text":"wie","translation":"چطور"},{"text":"was","translation":"چی"},{"text":"wer","translation":"چه کسی"},{"text":"wann","translation":"چه زمانی"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_woher=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_kommen FROM words
  WHERE course_id=v_course AND lemma='kommen' AND part_of_speech='verb' AND translation='آمدن'
  ORDER BY id LIMIT 1;
  IF v_w_kommen IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'kommen','kommen','verb','آمدن',2,
           '{"present":{"ich":"komme","du":"kommst","er_sie_es":"kommt","wir":"kommen","ihr":"kommt","sie_Sie":"kommen"}}','[{"text":"gehen","translation":"رفتن"},{"text":"wohnen","translation":"زندگی کردن"},{"text":"heißen","translation":"نام داشتن"},{"text":"sprechen","translation":"صحبت کردن"},{"text":"machen","translation":"انجام دادن"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_kommen=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_aus FROM words
  WHERE course_id=v_course AND lemma='aus' AND part_of_speech='preposition' AND translation='از'
  ORDER BY id LIMIT 1;
  IF v_w_aus IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'aus','aus','preposition','از',2,
           NULL,'[{"text":"in","translation":"در"},{"text":"mit","translation":"با"},{"text":"für","translation":"برای"},{"text":"ohne","translation":"بدون"},{"text":"bei","translation":"نزد / در"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_aus=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_iran FROM words
  WHERE course_id=v_course AND lemma='Iran' AND part_of_speech='proper_noun' AND translation='ایران'
  ORDER BY id LIMIT 1;
  IF v_w_iran IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Iran','Iran','proper_noun','ایران',2,
           '{"type":"country","articleInBasicUse":"none"}','[{"text":"Deutschland","translation":"آلمان"},{"text":"Türkei","translation":"ترکیه"},{"text":"Italien","translation":"ایتالیا"},{"text":"Spanien","translation":"اسپانیا"},{"text":"Frankreich","translation":"فرانسه"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_iran=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_deutschland FROM words
  WHERE course_id=v_course AND lemma='Deutschland' AND part_of_speech='proper_noun' AND translation='آلمان'
  ORDER BY id LIMIT 1;
  IF v_w_deutschland IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Deutschland','Deutschland','proper_noun','آلمان',2,
           '{"type":"country","articleInBasicUse":"none"}','[{"text":"Iran","translation":"ایران"},{"text":"Türkei","translation":"ترکیه"},{"text":"Italien","translation":"ایتالیا"},{"text":"Spanien","translation":"اسپانیا"},{"text":"Frankreich","translation":"فرانسه"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_deutschland=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_woher_kommst_du FROM words
  WHERE course_id=v_course AND lemma='Woher kommst du?' AND part_of_speech='phrase' AND translation='اهل کجایی؟'
  ORDER BY id LIMIT 1;
  IF v_w_woher_kommst_du IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Woher kommst du?','Woher kommst du?','phrase','اهل کجایی؟',2,
           NULL,'[{"text":"Wie heißt du?","translation":"اسمت چیه؟"},{"text":"Wie geht es dir?","translation":"حالت چطوره؟"},{"text":"Wo wohnst du?","translation":"کجا زندگی می کنی؟"},{"text":"Guten Morgen!","translation":"صبح بخیر!"},{"text":"Tschüss!","translation":"خداحافظ!"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_woher_kommst_du=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_ich_komme_aus FROM words
  WHERE course_id=v_course AND lemma='Ich komme aus ...' AND part_of_speech='phrase' AND translation='من اهل ... هستم'
  ORDER BY id LIMIT 1;
  IF v_w_ich_komme_aus IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich komme aus ...','Ich komme aus ...','phrase','من اهل ... هستم',2,
           NULL,'[{"text":"Ich heiße ...","translation":"اسم من ... است"},{"text":"Wie heißt du?","translation":"اسمت چیه؟"},{"text":"Woher kommst du?","translation":"اهل کجایی؟"},{"text":"Guten Morgen!","translation":"صبح بخیر!"},{"text":"Bis später!","translation":"بعدا می بینمت!"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_ich_komme_aus=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_sara FROM words
  WHERE course_id=v_course AND lemma='Sara' AND part_of_speech='proper_noun' AND translation='سارا (نام زنانه)'
  ORDER BY id LIMIT 1;
  IF v_w_sara IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Sara','Sara','proper_noun','سارا (نام زنانه)',2,
           NULL,'[{"text":"Mia","translation":"میا (نام زنانه)"},{"text":"Lena","translation":"لنا (نام زنانه)"},{"text":"Anna","translation":"آنا (نام زنانه)"},{"text":"Sofia","translation":"سوفیا (نام زنانه)"},{"text":"Laura","translation":"لورا (نام زنانه)"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_sara=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_max FROM words
  WHERE course_id=v_course AND lemma='Max' AND part_of_speech='proper_noun' AND translation='مکس (نام مردانه)'
  ORDER BY id LIMIT 1;
  IF v_w_max IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Max','Max','proper_noun','مکس (نام مردانه)',2,
           NULL,'[{"text":"Paul","translation":"پاول (نام مردانه)"},{"text":"Ben","translation":"بن (نام مردانه)"},{"text":"Jonas","translation":"یوناس (نام مردانه)"},{"text":"Lukas","translation":"لوکاس (نام مردانه)"},{"text":"Felix","translation":"فلیکس (نام مردانه)"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_max=LAST_INSERT_ID();
  END IF;

  -- Lesson 1: Mia fragt Sara
  INSERT INTO lessons
  (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES
  (v_chapter,v_c_mia,v_c_sara,'Mia fragt Sara','میا از سارا می پرسد',
   'Mia lernt Sara im Sprachkurs kennen und fragt, woher sie kommt.','میا در کلاس زبان با سارا آشنا می شود و می پرسد اهل کجاست.','story','mia-sara-language-class',1,
   2,96,1,'validated',
   '{"relationship":"new classmates","storyArc":"beginning-development-ending","startingPoint":"absolute-beginner"}');
  SET v_l_1=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_mia,1,'character','Hallo, Sara!','سلام، سارا!',2,
   NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":","},{"surface":"Sara","lemma":"Sara","translation":"سارا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_sara,2,'learner','Hallo, Mia!','سلام، میا!',2,
   NULL,NULL,'hallo mia',NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":","},{"surface":"Mia","lemma":"Mia","translation":"میا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_mia,3,'character','Woher kommst du?','اهل کجایی؟',2,
   NULL,NULL,NULL,NULL,'[{"surface":"Woher","lemma":"woher","translation":"از کجا","partOfSpeech":"adverb"},{"surface":"kommst","lemma":"kommen","translation":"آمدن","partOfSpeech":"verb","meaning":"می آیی","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun","suffix":"?"}]','فعلا جمله را کامل یاد بگیر','«Woher kommst du?» یعنی «اهل کجایی؟». فعلا لازم نیست ساختار جمله را حفظ کنی.',NULL,NULL);
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_sara,4,'learner','Iran.','ایران.',2,
   NULL,NULL,'iran',NULL,'[{"surface":"Iran","lemma":"Iran","translation":"ایران","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_mia,5,'character','Danke!','ممنون!',2,
   NULL,NULL,NULL,NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_sara,6,'learner','Tschüss!','خداحافظ!',2,
   NULL,NULL,'tschüss',NULL,'[{"surface":"Tschüss","lemma":"Tschüss","translation":"خداحافظ","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_6=LAST_INSERT_ID();

  -- Lesson 2: Sara antwortet vollständig
  INSERT INTO lessons
  (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES
  (v_chapter,v_c_paul,v_c_sara,'Sara antwortet vollständig','سارا کامل جواب می دهد',
   'Paul fragt Sara nach ihrer Herkunft. Dieses Mal antwortet Sara mit einem ganzen Satz.','پاول از سارا می پرسد اهل کجاست. این بار سارا با یک جمله کامل جواب می دهد.','story','paul-sara-language-class',1,
   2,90,2,'validated',
   '{"relationship":"classmates","storyArc":"beginning-development-ending","startingPoint":"absolute-beginner"}');
  SET v_l_2=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_paul,1,'character','Hallo, Sara! Woher kommst du?','سلام، سارا! اهل کجایی؟',2,
   NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":","},{"surface":"Sara","lemma":"Sara","translation":"سارا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"},{"surface":"Woher","lemma":"woher","translation":"از کجا","partOfSpeech":"adverb"},{"surface":"kommst","lemma":"kommen","translation":"آمدن","partOfSpeech":"verb","meaning":"می آیی","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_sara,2,'learner','Ich komme aus Iran.','من اهل ایران هستم.',2,
   NULL,NULL,'ich komme aus iran',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"komme","lemma":"kommen","translation":"آمدن","partOfSpeech":"verb","meaning":"می آیم","form":"present_1sg"},{"surface":"aus","lemma":"aus","translation":"از","partOfSpeech":"preposition"},{"surface":"Iran","lemma":"Iran","translation":"ایران","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_paul,3,'character','Danke!','ممنون!',2,
   NULL,NULL,NULL,NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_sara,4,'learner','Tschüss!','خداحافظ!',2,
   NULL,NULL,'tschüss',NULL,'[{"surface":"Tschüss","lemma":"Tschüss","translation":"خداحافظ","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_10=LAST_INSERT_ID();

  -- Lesson 3: Max aus Deutschland
  INSERT INTO lessons
  (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES
  (v_chapter,v_c_mia,v_c_max,'Max aus Deutschland','مکس از آلمان',
   'Mia trifft Max. Sie fragt nach seiner Herkunft und Max antwortet.','میا با مکس آشنا می شود. از او می پرسد اهل کجاست و مکس جواب می دهد.','story','mia-max-language-class',1,
   2,90,3,'validated',
   '{"relationship":"new classmates","storyArc":"beginning-development-ending","startingPoint":"absolute-beginner"}');
  SET v_l_3=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_mia,1,'character','Hallo! Woher kommst du?','سلام! اهل کجایی؟',2,
   NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"!"},{"surface":"Woher","lemma":"woher","translation":"از کجا","partOfSpeech":"adverb"},{"surface":"kommst","lemma":"kommen","translation":"آمدن","partOfSpeech":"verb","meaning":"می آیی","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_max,2,'learner','Ich komme aus Deutschland.','من اهل آلمان هستم.',2,
   NULL,NULL,'ich komme aus deutschland',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"komme","lemma":"kommen","translation":"آمدن","partOfSpeech":"verb","meaning":"می آیم","form":"present_1sg"},{"surface":"aus","lemma":"aus","translation":"از","partOfSpeech":"preposition"},{"surface":"Deutschland","lemma":"Deutschland","translation":"آلمان","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_mia,3,'character','Deutschland?','آلمان؟',2,
   NULL,NULL,NULL,NULL,'[{"surface":"Deutschland","lemma":"Deutschland","translation":"آلمان","partOfSpeech":"proper_noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_max,4,'learner','Ja.','بله.',2,
   NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_14=LAST_INSERT_ID();

  -- Lesson 4: Sara und Max
  INSERT INTO lessons
  (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES
  (v_chapter,v_c_sara,v_c_max,'Sara und Max','سارا و مکس',
   'Sara und Max treffen sich im Kurs. Beide sagen, woher sie kommen.','سارا و مکس در کلاس همدیگر را می بینند. هر دو می گویند اهل کجا هستند.','story','sara-max-language-class',1,
   2,90,4,'validated',
   '{"relationship":"classmates","storyArc":"beginning-development-ending","startingPoint":"absolute-beginner"}');
  SET v_l_4=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_sara,1,'character','Hallo! Ich komme aus Iran.','سلام! من اهل ایران هستم.',2,
   NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"!"},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"komme","lemma":"kommen","translation":"آمدن","partOfSpeech":"verb","meaning":"می آیم","form":"present_1sg"},{"surface":"aus","lemma":"aus","translation":"از","partOfSpeech":"preposition"},{"surface":"Iran","lemma":"Iran","translation":"ایران","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_max,2,'learner','Ich komme aus Deutschland.','من اهل آلمان هستم.',2,
   NULL,NULL,'ich komme aus deutschland',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"komme","lemma":"kommen","translation":"آمدن","partOfSpeech":"verb","meaning":"می آیم","form":"present_1sg"},{"surface":"aus","lemma":"aus","translation":"از","partOfSpeech":"preposition"},{"surface":"Deutschland","lemma":"Deutschland","translation":"آلمان","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_sara,3,'character','Tschüss, Max!','خداحافظ، مکس!',2,
   NULL,NULL,NULL,NULL,'[{"surface":"Tschüss","lemma":"Tschüss","translation":"خداحافظ","partOfSpeech":"interjection","suffix":","},{"surface":"Max","lemma":"Max","translation":"مکس (نام مردانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_max,4,'learner','Tschüss, Sara!','خداحافظ، سارا!',2,
   NULL,NULL,'tschüss sara',NULL,'[{"surface":"Tschüss","lemma":"Tschüss","translation":"خداحافظ","partOfSpeech":"interjection","suffix":","},{"surface":"Sara","lemma":"Sara","translation":"سارا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_18=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_hallo,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_sara,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_mia,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_woher,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_kommen,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_iran,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_tschuess,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_woher_kommst_du,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_hallo,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_sara,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_woher,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_kommen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_aus,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_iran,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_tschuess,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_ich_komme_aus,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_hallo,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_woher,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_kommen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_aus,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_deutschland,'new',1,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_ja,'review',0,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_hallo,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_ich,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_kommen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_aus,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_iran,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_deutschland,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_tschuess,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_max,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_sara,'review',0,1);

  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_woher_kommst_du,'عبارت جدید',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به میا گوش کن',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'جواب سارا را بخوان',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به سوال میا گوش کن',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'جواب کوتاه سارا را بخوان',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',6,v_t_5,NULL,'به میا گوش کن',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',7,v_t_6,NULL,'مکالمه را تمام کن',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',8,v_t_3,NULL,'معنی درست را انتخاب کن',NULL,2,'{"mode":"phrase_meaning","question":"«Woher kommst du?» یعنی چی؟","choices":["اهل کجایی؟","اسمت چیه؟","حالت چطوره؟"],"correctIndex":0}',NULL);

  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_ich_komme_aus,'عبارت جدید',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_7,NULL,'به پاول گوش کن',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_8,NULL,'این بار کامل جواب بده',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_9,NULL,'به پاول گوش کن',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_10,NULL,'مکالمه را تمام کن',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_8,NULL,'معنی درست را انتخاب کن',NULL,2,'{"mode":"turn_translation","question":"«Ich komme aus Iran.» یعنی چی؟","choices":["من اهل ایران هستم.","اسم من ایران است.","من به ایران می روم."],"correctIndex":0}',NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',7,v_t_8,NULL,'جمله را به ترتیب درست بساز',NULL,2,'{"source":"turn_tokens","shuffle":true}',NULL);

  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_deutschland,'کلمه جدید',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_11,NULL,'به میا گوش کن',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_12,NULL,'جواب مکس را بخوان',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_13,NULL,'به میا گوش کن',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_14,NULL,'جواب کوتاه بده',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,NULL,v_w_deutschland,'معنی درست را انتخاب کن',NULL,2,'{"mode":"word_translation","question":"Deutschland","choices":["آلمان","ایران","ترکیه"],"correctIndex":0}',NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,2,'{"source":"lesson_story","question":"مکس اهل کجاست؟","choices":["آلمان","ایران","فرانسه"],"correctIndex":0}',NULL);

  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_15,NULL,'به سارا گوش کن',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_16,NULL,'جواب مکس را بخوان',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_17,NULL,'به سارا گوش کن',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_18,NULL,'مکالمه را تمام کن',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',5,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,2,'{"source":"lesson_story","question":"سارا اهل کجاست؟","choices":["ایران","آلمان","ایتالیا"],"correctIndex":0}',NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',6,NULL,NULL,'یک بار دیگر متن را بخوان',NULL,2,'{"source":"lesson_story","question":"مکس اهل کجاست؟","choices":["آلمان","ایران","اسپانیا"],"correctIndex":0}',NULL);

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 003 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id
  WHERE l.chapter_id=v_chapter AND ((t.role='character' AND t.character_id<>l.prompt_character_id) OR (t.role='learner' AND t.character_id<>l.learner_character_id));
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Turn Character mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id
  WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities a JOIN lessons l ON l.id=a.lesson_id
  WHERE l.chapter_id=v_chapter AND a.activity_type='reading_comprehension' AND (a.config IS NULL OR JSON_EXTRACT(a.config,'$.question') IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without task.'; END IF;
  UPDATE chapters SET status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;

CALL import_nova_series_003_v9();
DROP PROCEDURE IF EXISTS import_nova_series_003_v9;
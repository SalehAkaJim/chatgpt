-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 010
-- A1 > Essen & Trinken > Im Supermarkt
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_010_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_010_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_sara BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_max BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_mia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_eva BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_hallo BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danke BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_oder BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_milch BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sara BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_max BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_mia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wo BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_artikel_der BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_hier BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_apfel BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_banane BIGINT UNSIGNED DEFAULT NULL;
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

  DECLARE EXIT HANDLER FOR SQLEXCEPTION
  BEGIN
    ROLLBACK;
    RESIGNAL;
  END;

  START TRANSACTION;

  SELECT id INTO v_course FROM courses
  WHERE learning_language='de' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND sort_order=1 ORDER BY id LIMIT 1;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 006 before Series 010.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=4 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=5 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Module 02 Chapter 05 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 009 before Series 010.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Module 02 Chapter 05 must be empty before Series 010 import.'; END IF;

  SELECT id INTO v_c_sara FROM characters
  WHERE course_id=v_course AND name='Sara' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_sara IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Sara not found.'; END IF;

  SELECT id INTO v_c_max FROM characters
  WHERE course_id=v_course AND name='Max' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_max IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Max not found.'; END IF;

  SELECT id INTO v_c_mia FROM characters
  WHERE course_id=v_course AND name='Mia' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_mia IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Mia not found.'; END IF;

  SELECT id INTO v_c_eva FROM characters
  WHERE course_id=v_course AND name='Eva' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_eva IS NULL THEN
    INSERT INTO characters(course_id,name,gender,avatar_url,voice_key,profile,metadata)
    VALUES(v_course,'Eva','female',NULL,NULL,'{"role":"supermarket_employee"}','{"context":"supermarket","workplace":"local supermarket","introducedInModule":2,"introducedInChapter":5}');
    SET v_c_eva=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_hallo FROM words
  WHERE course_id=v_course AND lemma='Hallo' AND part_of_speech='interjection' AND translation='سلام'
  ORDER BY id LIMIT 1;
  IF v_w_hallo IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Hallo not found.'; END IF;

  SELECT id INTO v_w_danke FROM words
  WHERE course_id=v_course AND lemma='danke' AND part_of_speech='interjection' AND translation='ممنون'
  ORDER BY id LIMIT 1;
  IF v_w_danke IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word danke not found.'; END IF;

  SELECT id INTO v_w_ja FROM words
  WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره'
  ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;

  SELECT id INTO v_w_oder FROM words
  WHERE course_id=v_course AND lemma='oder' AND part_of_speech='conjunction' AND translation='یا'
  ORDER BY id LIMIT 1;
  IF v_w_oder IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word oder not found.'; END IF;

  SELECT id INTO v_w_sein FROM words
  WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن'
  ORDER BY id LIMIT 1;
  IF v_w_sein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word sein not found.'; END IF;

  SELECT id INTO v_w_milch FROM words
  WHERE course_id=v_course AND lemma='Milch' AND part_of_speech='noun' AND translation='شیر'
  ORDER BY id LIMIT 1;
  IF v_w_milch IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Milch not found.'; END IF;

  SELECT id INTO v_w_sara FROM words
  WHERE course_id=v_course AND lemma='Sara' AND part_of_speech='proper_noun' AND translation='سارا (نام زنانه)'
  ORDER BY id LIMIT 1;
  IF v_w_sara IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Sara not found.'; END IF;

  SELECT id INTO v_w_max FROM words
  WHERE course_id=v_course AND lemma='Max' AND part_of_speech='proper_noun' AND translation='مکس (نام مردانه)'
  ORDER BY id LIMIT 1;
  IF v_w_max IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Max not found.'; END IF;

  SELECT id INTO v_w_mia FROM words
  WHERE course_id=v_course AND lemma='Mia' AND part_of_speech='proper_noun' AND translation='میا (نام زنانه)'
  ORDER BY id LIMIT 1;
  IF v_w_mia IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Mia not found.'; END IF;

  SELECT id INTO v_w_wo FROM words
  WHERE course_id=v_course AND lemma='wo' AND part_of_speech='adverb' AND translation='کجا'
  ORDER BY id LIMIT 1;
  IF v_w_wo IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'wo','wo','adverb','کجا',6,
           NULL,'[{"text":"wie","translation":"چطور"},{"text":"was","translation":"چی"},{"text":"wer","translation":"چه کسی"},{"text":"wann","translation":"چه زمانی"},{"text":"warum","translation":"چرا"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_wo=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_artikel_der FROM words
  WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف'
  ORDER BY id LIMIT 1;
  IF v_w_artikel_der IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'der','der','article','حرف تعریف',6,
           '{"type":"definite_article","basicForms":{"masculine":"der","feminine":"die","neuter":"das"}}','[{"text":"ein","translation":"یک / حرف تعریف نامعین"},{"text":"mein","translation":"مال من / من"},{"text":"dein","translation":"مال تو / تو"},{"text":"kein","translation":"هیچ / نه یک"},{"text":"dieser","translation":"این"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_artikel_der=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_hier FROM words
  WHERE course_id=v_course AND lemma='hier' AND part_of_speech='adverb' AND translation='اینجا'
  ORDER BY id LIMIT 1;
  IF v_w_hier IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'hier','hier','adverb','اینجا',6,
           NULL,'[{"text":"dort","translation":"آنجا"},{"text":"heute","translation":"امروز"},{"text":"jetzt","translation":"الان"},{"text":"später","translation":"بعدا"},{"text":"oben","translation":"بالا"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_hier=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_apfel FROM words
  WHERE course_id=v_course AND lemma='Apfel' AND part_of_speech='noun' AND translation='سیب'
  ORDER BY id LIMIT 1;
  IF v_w_apfel IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Apfel','Apfel','noun','سیب',6,
           '{"article":"der","plural":"Äpfel"}','[{"text":"Banane","translation":"موز"},{"text":"Orange","translation":"پرتقال"},{"text":"Birne","translation":"گلابی"},{"text":"Tomate","translation":"گوجه"},{"text":"Kartoffel","translation":"سیب زمینی"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_apfel=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_banane FROM words
  WHERE course_id=v_course AND lemma='Banane' AND part_of_speech='noun' AND translation='موز'
  ORDER BY id LIMIT 1;
  IF v_w_banane IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Banane','Banane','noun','موز',6,
           '{"article":"die","plural":"Bananen"}','[{"text":"Apfel","translation":"سیب"},{"text":"Orange","translation":"پرتقال"},{"text":"Birne","translation":"گلابی"},{"text":"Tomate","translation":"گوجه"},{"text":"Kartoffel","translation":"سیب زمینی"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_banane=LAST_INSERT_ID();
  END IF;

  -- Lesson 1: Sara sucht Milch
  INSERT INTO lessons
  (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES
  (v_chapter,v_c_eva,v_c_sara,'Sara sucht Milch','سارا دنبال شیر می گردد',
   'Sara ist im Supermarkt und fragt Eva, wo die Milch ist.','سارا در سوپرمارکت است و از اوا می پرسد شیر کجاست.','story','sara-eva-supermarket',1,
   6,90,1,'validated',
   '{"relationship":"customer-employee","storyArc":"beginning-development-ending","startingPoint":"absolute-beginner"}');
  SET v_l_1=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_eva,1,'character','Hallo!','سلام!',6,
   NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_sara,2,'learner','Hallo! Wo ist die Milch?','سلام! شیر کجاست؟',6,
   NULL,NULL,'hallo wo ist die milch',NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"!"},{"surface":"Wo","lemma":"wo","translation":"کجا","partOfSpeech":"adverb"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است","form":"present_3sg"},{"surface":"die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"feminine_nominative"},{"surface":"Milch","lemma":"Milch","translation":"شیر","partOfSpeech":"noun","suffix":"?"}]','فعلا عبارت را کامل یاد بگیر','«Wo ist die Milch?» یعنی «شیر کجاست؟». فعلا لازم نیست شکل حرف تعریف را حفظ کنی.',NULL,NULL);
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_eva,3,'character','Hier.','اینجا.',6,
   NULL,NULL,NULL,NULL,'[{"surface":"Hier","lemma":"hier","translation":"اینجا","partOfSpeech":"adverb","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_sara,4,'learner','Danke!','ممنون!',6,
   NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_4=LAST_INSERT_ID();

  -- Lesson 2: Max sucht einen Apfel
  INSERT INTO lessons
  (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES
  (v_chapter,v_c_eva,v_c_max,'Max sucht einen Apfel','مکس دنبال سیب می گردد',
   'Max fragt Eva im Supermarkt nach einem Apfel.','مکس در سوپرمارکت از اوا می پرسد سیب کجاست.','story','max-eva-supermarket',1,
   6,90,2,'validated',
   '{"relationship":"customer-employee","storyArc":"beginning-development-ending","startingPoint":"absolute-beginner"}');
  SET v_l_2=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_eva,1,'character','Hallo!','سلام!',6,
   NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_max,2,'learner','Wo ist der Apfel?','سیب کجاست؟',6,
   NULL,NULL,'wo ist der apfel',NULL,'[{"surface":"Wo","lemma":"wo","translation":"کجا","partOfSpeech":"adverb"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است","form":"present_3sg"},{"surface":"der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"masculine_nominative"},{"surface":"Apfel","lemma":"Apfel","translation":"سیب","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_eva,3,'character','Hier.','اینجا.',6,
   NULL,NULL,NULL,NULL,'[{"surface":"Hier","lemma":"hier","translation":"اینجا","partOfSpeech":"adverb","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_max,4,'learner','Danke!','ممنون!',6,
   NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_8=LAST_INSERT_ID();

  -- Lesson 3: Mia sucht Bananen
  INSERT INTO lessons
  (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES
  (v_chapter,v_c_eva,v_c_mia,'Mia sucht Bananen','میا دنبال موز می گردد',
   'Mia fragt Eva nach der Banane und bekommt eine kurze Antwort.','میا از اوا می پرسد موز کجاست و یک جواب کوتاه می گیرد.','story','mia-eva-supermarket',1,
   6,90,3,'validated',
   '{"relationship":"customer-employee","storyArc":"beginning-development-ending","startingPoint":"absolute-beginner"}');
  SET v_l_3=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_eva,1,'character','Hallo!','سلام!',6,
   NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_mia,2,'learner','Wo ist die Banane?','موز کجاست؟',6,
   NULL,NULL,'wo ist die banane',NULL,'[{"surface":"Wo","lemma":"wo","translation":"کجا","partOfSpeech":"adverb"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است","form":"present_3sg"},{"surface":"die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"feminine_nominative"},{"surface":"Banane","lemma":"Banane","translation":"موز","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_eva,3,'character','Hier.','اینجا.',6,
   NULL,NULL,NULL,NULL,'[{"surface":"Hier","lemma":"hier","translation":"اینجا","partOfSpeech":"adverb","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_mia,4,'learner','Danke!','ممنون!',6,
   NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_12=LAST_INSERT_ID();

  -- Lesson 4: Sara und Max kaufen ein
  INSERT INTO lessons
  (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES
  (v_chapter,v_c_max,v_c_sara,'Sara und Max kaufen ein','سارا و مکس خرید می کنند',
   'Sara und Max entscheiden im Supermarkt gemeinsam zwischen bekannten Lebensmitteln.','سارا و مکس در سوپرمارکت بین خوراکی های آشنا انتخاب می کنند.','story','sara-max-supermarket',1,
   6,90,4,'validated',
   '{"relationship":"classmates","storyArc":"beginning-development-ending","startingPoint":"absolute-beginner"}');
  SET v_l_4=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_max,1,'character','Apfel oder Banane?','سیب یا موز؟',6,
   NULL,NULL,NULL,NULL,'[{"surface":"Apfel","lemma":"Apfel","translation":"سیب","partOfSpeech":"noun"},{"surface":"oder","lemma":"oder","translation":"یا","partOfSpeech":"conjunction"},{"surface":"Banane","lemma":"Banane","translation":"موز","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_sara,2,'learner','Banane.','موز.',6,
   NULL,NULL,'banane',NULL,'[{"surface":"Banane","lemma":"Banane","translation":"موز","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_max,3,'character','Milch?','شیر؟',6,
   NULL,NULL,NULL,NULL,'[{"surface":"Milch","lemma":"Milch","translation":"شیر","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_sara,4,'learner','Ja.','بله.',6,
   NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_16=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_hallo,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_wo,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_sein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_artikel_der,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_milch,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_hier,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_danke,'review',0,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_hallo,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_wo,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_sein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_artikel_der,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_apfel,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_hier,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_danke,'review',0,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_hallo,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_wo,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_sein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_artikel_der,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_banane,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_hier,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_danke,'review',0,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_apfel,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_oder,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_banane,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_milch,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_ja,'review',0,1);

  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_milch,'کلمه جدید',NULL,6,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به اوا گوش کن',NULL,6,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'جای شیر را بپرس',NULL,6,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به جواب اوا گوش کن',NULL,6,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'تشکر کن',NULL,6,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,NULL,v_w_milch,'معنی درست را انتخاب کن',NULL,6,'{"mode":"word_translation","question":"Milch","choices":["شیر","آب","چای"],"correctIndex":0}',NULL);

  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_apfel,'کلمه جدید',NULL,6,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به اوا گوش کن',NULL,6,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'جای سیب را بپرس',NULL,6,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به جواب اوا گوش کن',NULL,6,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'تشکر کن',NULL,6,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,NULL,v_w_apfel,'معنی درست را انتخاب کن',NULL,6,'{"mode":"word_translation","question":"Apfel","choices":["سیب","موز","نان"],"correctIndex":0}',NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',7,v_t_6,NULL,'سوال را به ترتیب درست بساز',NULL,6,'{"source":"turn_tokens","shuffle":true}',NULL);

  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_banane,'کلمه جدید',NULL,6,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_9,NULL,'به اوا گوش کن',NULL,6,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_10,NULL,'جای موز را بپرس',NULL,6,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_11,NULL,'به جواب اوا گوش کن',NULL,6,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_12,NULL,'تشکر کن',NULL,6,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,NULL,v_w_banane,'معنی درست را انتخاب کن',NULL,6,'{"mode":"word_translation","question":"Banane","choices":["موز","سیب","شیر"],"correctIndex":0}',NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,6,'{"source":"lesson_story","question":"میا دنبال چه چیزی است؟","choices":["موز","سیب","شیر"],"correctIndex":0}',NULL);

  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_13,NULL,'به دو گزینه گوش کن',NULL,6,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_14,NULL,'موز را انتخاب کن',NULL,6,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_15,NULL,'به مکس گوش کن',NULL,6,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_16,NULL,'جواب بده',NULL,6,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',5,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,6,'{"source":"lesson_story","question":"سارا کدام میوه را انتخاب می کند؟","choices":["موز","سیب","پرتقال"],"correctIndex":0}',NULL);

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 010 lesson count.'; END IF;
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

CALL import_nova_series_010_v9();
DROP PROCEDURE IF EXISTS import_nova_series_010_v9;
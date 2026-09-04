-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 007
-- A1 > Essen & Trinken > Getränke bestellen
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_007_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_007_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_nina BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_sara BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_max BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_mia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_hallo BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danke BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_bitte BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_moechten BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kaffee BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sara BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_max BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_mia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_tee BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wasser BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_saft BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_oder BIGINT UNSIGNED DEFAULT NULL;
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
  DECLARE v_t_25 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_26 BIGINT UNSIGNED DEFAULT NULL;

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
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 006 before Series 007.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=1 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Module 02 Chapter 02 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 006 before Series 007.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Module 02 Chapter 02 must be empty before Series 007 import.'; END IF;

  SELECT id INTO v_c_nina FROM characters
  WHERE course_id=v_course AND name='Nina' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_nina IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Nina not found.'; END IF;

  SELECT id INTO v_c_sara FROM characters
  WHERE course_id=v_course AND name='Sara' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_sara IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Sara not found.'; END IF;

  SELECT id INTO v_c_max FROM characters
  WHERE course_id=v_course AND name='Max' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_max IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Max not found.'; END IF;

  SELECT id INTO v_c_mia FROM characters
  WHERE course_id=v_course AND name='Mia' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_mia IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Mia not found.'; END IF;

  SELECT id INTO v_w_hallo FROM words
  WHERE course_id=v_course AND lemma='Hallo' AND part_of_speech='interjection' AND translation='سلام'
  ORDER BY id LIMIT 1;
  IF v_w_hallo IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Hallo not found.'; END IF;

  SELECT id INTO v_w_danke FROM words
  WHERE course_id=v_course AND lemma='danke' AND part_of_speech='interjection' AND translation='ممنون'
  ORDER BY id LIMIT 1;
  IF v_w_danke IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word danke not found.'; END IF;

  SELECT id INTO v_w_bitte FROM words
  WHERE course_id=v_course AND lemma='bitte' AND part_of_speech='interjection' AND translation='لطفا / خواهش می کنم'
  ORDER BY id LIMIT 1;
  IF v_w_bitte IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word bitte not found.'; END IF;

  SELECT id INTO v_w_ich FROM words
  WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من'
  ORDER BY id LIMIT 1;
  IF v_w_ich IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ich not found.'; END IF;

  SELECT id INTO v_w_moechten FROM words
  WHERE course_id=v_course AND lemma='möchten' AND part_of_speech='verb' AND translation='خواستن / مایل بودن'
  ORDER BY id LIMIT 1;
  IF v_w_moechten IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word möchten not found.'; END IF;

  SELECT id INTO v_w_kaffee FROM words
  WHERE course_id=v_course AND lemma='Kaffee' AND part_of_speech='noun' AND translation='قهوه'
  ORDER BY id LIMIT 1;
  IF v_w_kaffee IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Kaffee not found.'; END IF;

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

  SELECT id INTO v_w_tee FROM words
  WHERE course_id=v_course AND lemma='Tee' AND part_of_speech='noun' AND translation='چای'
  ORDER BY id LIMIT 1;
  IF v_w_tee IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Tee','Tee','noun','چای',4,
           '{"article":"der","plural":"Tees"}','[{"text":"Kaffee","translation":"قهوه"},{"text":"Wasser","translation":"آب"},{"text":"Milch","translation":"شیر"},{"text":"Saft","translation":"آبمیوه"},{"text":"Limonade","translation":"لیموناد"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_tee=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_wasser FROM words
  WHERE course_id=v_course AND lemma='Wasser' AND part_of_speech='noun' AND translation='آب'
  ORDER BY id LIMIT 1;
  IF v_w_wasser IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Wasser','Wasser','noun','آب',4,
           '{"article":"das","plural":"Wässer"}','[{"text":"Kaffee","translation":"قهوه"},{"text":"Tee","translation":"چای"},{"text":"Milch","translation":"شیر"},{"text":"Saft","translation":"آبمیوه"},{"text":"Limonade","translation":"لیموناد"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_wasser=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_saft FROM words
  WHERE course_id=v_course AND lemma='Saft' AND part_of_speech='noun' AND translation='آبمیوه'
  ORDER BY id LIMIT 1;
  IF v_w_saft IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Saft','Saft','noun','آبمیوه',4,
           '{"article":"der","plural":"Säfte"}','[{"text":"Kaffee","translation":"قهوه"},{"text":"Tee","translation":"چای"},{"text":"Wasser","translation":"آب"},{"text":"Milch","translation":"شیر"},{"text":"Limonade","translation":"لیموناد"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_saft=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_oder FROM words
  WHERE course_id=v_course AND lemma='oder' AND part_of_speech='conjunction' AND translation='یا'
  ORDER BY id LIMIT 1;
  IF v_w_oder IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'oder','oder','conjunction','یا',4,
           NULL,'[{"text":"und","translation":"و"},{"text":"aber","translation":"اما"},{"text":"denn","translation":"چون"},{"text":"sondern","translation":"بلکه"},{"text":"weil","translation":"چون"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_oder=LAST_INSERT_ID();
  END IF;

  -- Lesson 1: Sara bestellt Tee
  INSERT INTO lessons
  (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES
  (v_chapter,v_c_nina,v_c_sara,'Sara bestellt Tee','سارا چای سفارش می دهد',
   'Sara kommt wieder ins Café. Diesmal bestellt sie Tee statt Kaffee.','سارا دوباره به کافه می آید. این بار به جای قهوه چای سفارش می دهد.','story','sara-nina-cafe',4,
   4,96,1,'validated',
   '{"relationship":"customer-barista","storyArc":"beginning-development-ending","startingPoint":"absolute-beginner"}');
  SET v_l_1=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_nina,1,'character','Hallo, Sara!','سلام، سارا!',4,
   NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":","},{"surface":"Sara","lemma":"Sara","translation":"سارا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_sara,2,'learner','Hallo!','سلام!',4,
   NULL,NULL,'hallo',NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_nina,3,'character','Tee?','چای؟',4,
   NULL,NULL,NULL,NULL,'[{"surface":"Tee","lemma":"Tee","translation":"چای","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_sara,4,'learner','Tee, bitte.','چای، لطفا.',4,
   NULL,NULL,'tee bitte',NULL,'[{"surface":"Tee","lemma":"Tee","translation":"چای","partOfSpeech":"noun","suffix":","},{"surface":"bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_nina,5,'character','Danke!','ممنون!',4,
   NULL,NULL,NULL,NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_sara,6,'learner','Danke!','ممنون!',4,
   NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_6=LAST_INSERT_ID();

  -- Lesson 2: Max bestellt Wasser
  INSERT INTO lessons
  (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES
  (v_chapter,v_c_nina,v_c_max,'Max bestellt Wasser','مکس آب سفارش می دهد',
   'Max kommt ins Café und bestellt Wasser mit dem bereits bekannten Satzmuster.','مکس وارد کافه می شود و با همان الگوی قبلی آب سفارش می دهد.','story','max-nina-cafe',2,
   4,108,2,'validated',
   '{"relationship":"customer-barista","storyArc":"beginning-development-ending","startingPoint":"absolute-beginner"}');
  SET v_l_2=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_nina,1,'character','Hallo, Max!','سلام، مکس!',4,
   NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":","},{"surface":"Max","lemma":"Max","translation":"مکس (نام مردانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_max,2,'learner','Hallo!','سلام!',4,
   NULL,NULL,'hallo',NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_nina,3,'character','Wasser?','آب؟',4,
   NULL,NULL,NULL,NULL,'[{"surface":"Wasser","lemma":"Wasser","translation":"آب","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_max,4,'learner','Ich möchte Wasser.','من آب می خواهم.',4,
   NULL,NULL,'ich möchte wasser',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"möchte","lemma":"möchten","translation":"خواستن / مایل بودن","partOfSpeech":"verb","meaning":"می خواهم","form":"present_1sg"},{"surface":"Wasser","lemma":"Wasser","translation":"آب","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_nina,5,'character','Danke!','ممنون!',4,
   NULL,NULL,NULL,NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_max,6,'learner','Danke!','ممنون!',4,
   NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_12=LAST_INSERT_ID();

  -- Lesson 3: Mia bestellt Saft
  INSERT INTO lessons
  (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES
  (v_chapter,v_c_nina,v_c_mia,'Mia bestellt Saft','میا آبمیوه سفارش می دهد',
   'Mia kommt zum ersten Mal zu Nina ins Café. Nina nennt zwei Getränke und Mia wählt Saft.','میا برای اولین بار به کافه نینا می آید. نینا دو نوشیدنی می گوید و میا آبمیوه را انتخاب می کند.','story','mia-nina-cafe',1,
   4,108,3,'validated',
   '{"relationship":"customer-barista","storyArc":"beginning-development-ending","startingPoint":"absolute-beginner"}');
  SET v_l_3=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_nina,1,'character','Hallo!','سلام!',4,
   NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_mia,2,'learner','Hallo!','سلام!',4,
   NULL,NULL,'hallo',NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_nina,3,'character','Tee oder Saft?','چای یا آبمیوه؟',4,
   NULL,NULL,NULL,NULL,'[{"surface":"Tee","lemma":"Tee","translation":"چای","partOfSpeech":"noun"},{"surface":"oder","lemma":"oder","translation":"یا","partOfSpeech":"conjunction"},{"surface":"Saft","lemma":"Saft","translation":"آبمیوه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_mia,4,'learner','Saft, bitte.','آبمیوه، لطفا.',4,
   NULL,NULL,'saft bitte',NULL,'[{"surface":"Saft","lemma":"Saft","translation":"آبمیوه","partOfSpeech":"noun","suffix":","},{"surface":"bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_nina,5,'character','Danke!','ممنون!',4,
   NULL,NULL,NULL,NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_mia,6,'learner','Danke!','ممنون!',4,
   NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_18=LAST_INSERT_ID();

  -- Lesson 4: Sara wählt ein Getränk
  INSERT INTO lessons
  (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES
  (v_chapter,v_c_nina,v_c_sara,'Sara wählt ein Getränk','سارا یک نوشیدنی انتخاب می کند',
   'Sara kennt jetzt mehrere Getränke und bestellt ohne neuen Lernstoff.','سارا حالا چند نوشیدنی را می شناسد و بدون مطلب جدید سفارش می دهد.','story','sara-nina-cafe',5,
   4,108,4,'validated',
   '{"relationship":"customer-barista","storyArc":"beginning-development-ending","startingPoint":"absolute-beginner"}');
  SET v_l_4=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_nina,1,'character','Hallo, Sara!','سلام، سارا!',4,
   NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":","},{"surface":"Sara","lemma":"Sara","translation":"سارا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_sara,2,'learner','Hallo!','سلام!',4,
   NULL,NULL,'hallo',NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_20=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_nina,3,'character','Kaffee oder Wasser?','قهوه یا آب؟',4,
   NULL,NULL,NULL,NULL,'[{"surface":"Kaffee","lemma":"Kaffee","translation":"قهوه","partOfSpeech":"noun"},{"surface":"oder","lemma":"oder","translation":"یا","partOfSpeech":"conjunction"},{"surface":"Wasser","lemma":"Wasser","translation":"آب","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_21=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_sara,4,'learner','Wasser, bitte.','آب، لطفا.',4,
   NULL,NULL,'wasser bitte',NULL,'[{"surface":"Wasser","lemma":"Wasser","translation":"آب","partOfSpeech":"noun","suffix":","},{"surface":"bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_22=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_nina,5,'character','Tee oder Saft?','چای یا آبمیوه؟',4,
   NULL,NULL,NULL,NULL,'[{"surface":"Tee","lemma":"Tee","translation":"چای","partOfSpeech":"noun"},{"surface":"oder","lemma":"oder","translation":"یا","partOfSpeech":"conjunction"},{"surface":"Saft","lemma":"Saft","translation":"آبمیوه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_23=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_sara,6,'learner','Tee, bitte.','چای، لطفا.',4,
   NULL,NULL,'tee bitte',NULL,'[{"surface":"Tee","lemma":"Tee","translation":"چای","partOfSpeech":"noun","suffix":","},{"surface":"bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_24=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_nina,7,'character','Danke!','ممنون!',4,
   NULL,NULL,NULL,NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_25=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_sara,8,'learner','Danke!','ممنون!',4,
   NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_26=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_hallo,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_sara,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_tee,'new',1,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_bitte,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_danke,'review',0,2);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_hallo,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_max,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_wasser,'new',1,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_moechten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_danke,'review',0,2);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_hallo,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_tee,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_oder,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_saft,'new',1,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_bitte,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_danke,'review',0,2);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_hallo,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_sara,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_kaffee,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_oder,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_wasser,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_bitte,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_tee,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_saft,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_danke,'review',0,2);

  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_tee,'کلمه جدید',NULL,4,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به نینا گوش کن',NULL,4,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'سلام کن',NULL,4,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به نینا گوش کن',NULL,4,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'چای سفارش بده',NULL,4,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',6,v_t_5,NULL,'به نینا گوش کن',NULL,4,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',7,v_t_6,NULL,'مکالمه را تمام کن',NULL,4,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',8,NULL,v_w_tee,'معنی درست را انتخاب کن',NULL,4,'{"mode":"word_translation","question":"Tee","choices":["چای","قهوه","آب"],"correctIndex":0}',NULL);

  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_wasser,'کلمه جدید',NULL,4,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_7,NULL,'به نینا گوش کن',NULL,4,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_8,NULL,'سلام کن',NULL,4,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_9,NULL,'به نینا گوش کن',NULL,4,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_10,NULL,'با جمله کامل آب سفارش بده',NULL,4,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',6,v_t_11,NULL,'به نینا گوش کن',NULL,4,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',7,v_t_12,NULL,'مکالمه را تمام کن',NULL,4,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',8,v_t_10,NULL,'جمله را به ترتیب درست بساز',NULL,4,'{"source":"turn_tokens","shuffle":true}',NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',9,NULL,v_w_wasser,'معنی درست را انتخاب کن',NULL,4,'{"mode":"word_translation","question":"Wasser","choices":["آب","چای","قهوه"],"correctIndex":0}',NULL);

  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_saft,'کلمه جدید',NULL,4,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_13,NULL,'به نینا گوش کن',NULL,4,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_14,NULL,'سلام کن',NULL,4,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_15,NULL,'به دو گزینه گوش کن',NULL,4,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_16,NULL,'آبمیوه را انتخاب کن',NULL,4,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',6,v_t_17,NULL,'به نینا گوش کن',NULL,4,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',7,v_t_18,NULL,'مکالمه را تمام کن',NULL,4,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',8,NULL,v_w_saft,'معنی درست را انتخاب کن',NULL,4,'{"mode":"word_translation","question":"Saft","choices":["آبمیوه","آب","شیر"],"correctIndex":0}',NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',9,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,4,'{"source":"lesson_story","question":"میا چه نوشیدنی انتخاب می کند؟","choices":["آبمیوه","چای","قهوه"],"correctIndex":0}',NULL);

  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_19,NULL,'به نینا گوش کن',NULL,4,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_20,NULL,'سلام کن',NULL,4,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_21,NULL,'به دو گزینه گوش کن',NULL,4,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_22,NULL,'یکی را انتخاب کن',NULL,4,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_23,NULL,'دوباره به دو گزینه گوش کن',NULL,4,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_24,NULL,'این بار چای را انتخاب کن',NULL,4,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',7,v_t_25,NULL,'به نینا گوش کن',NULL,4,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',8,v_t_26,NULL,'مکالمه را تمام کن',NULL,4,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',9,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,4,'{"source":"lesson_story","question":"سارا در این مکالمه کدام دو نوشیدنی را انتخاب می کند؟","choices":["آب و چای","قهوه و آبمیوه","شیر و قهوه"],"correctIndex":0}',NULL);

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 007 lesson count.'; END IF;
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

CALL import_nova_series_007_v9();
DROP PROCEDURE IF EXISTS import_nova_series_007_v9;
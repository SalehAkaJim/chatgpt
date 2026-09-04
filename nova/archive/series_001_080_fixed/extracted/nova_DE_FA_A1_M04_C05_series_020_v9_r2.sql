-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 020 r2
-- FIX: completed Module status is 'complete', not invalid 'validated'.
-- A1 > Unterwegs > Im Taxi
-- Completes Module 04.
-- Includes duplicate lesson_words symbolic PK QA.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_020_v9_r2;
DELIMITER $$
CREATE PROCEDURE import_nova_series_020_v9_r2()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_sara BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_mia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_markus BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_hallo BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_bitte BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danke BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_bus BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_oder BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_bahnhof BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_hier BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_der BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_taxi BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_zu BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_zum_bahnhof_bitte BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_hier_bitte BIGINT UNSIGNED DEFAULT NULL;
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

  SELECT id INTO v_course FROM courses WHERE learning_language='de' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND sort_order=1 ORDER BY id LIMIT 1;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=4 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 016 before Series 020.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=4 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=5 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Module 04 Chapter 05 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 019 before Series 020.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Module 04 Chapter 05 must be empty before Series 020 import.'; END IF;

  SELECT id INTO v_c_sara FROM characters WHERE course_id=v_course AND name='Sara' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_sara IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Sara not found.'; END IF;

  SELECT id INTO v_c_mia FROM characters WHERE course_id=v_course AND name='Mia' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_mia IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Mia not found.'; END IF;

  SELECT id INTO v_c_markus FROM characters WHERE course_id=v_course AND name='Markus' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_markus IS NULL THEN
    INSERT INTO characters(course_id,name,gender,avatar_url,voice_key,profile,metadata)
    VALUES(v_course,'Markus','male',NULL,NULL,'{"role":"taxi_driver"}','{"context":"taxi","introducedInModule":4,"introducedInChapter":5}');
    SET v_c_markus=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_hallo FROM words WHERE course_id=v_course AND lemma='Hallo' AND part_of_speech='interjection' AND translation='سلام' ORDER BY id LIMIT 1;
  IF v_w_hallo IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Hallo not found.'; END IF;

  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;

  SELECT id INTO v_w_bitte FROM words WHERE course_id=v_course AND lemma='bitte' AND part_of_speech='interjection' AND translation='لطفا / خواهش می کنم' ORDER BY id LIMIT 1;
  IF v_w_bitte IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word bitte not found.'; END IF;

  SELECT id INTO v_w_danke FROM words WHERE course_id=v_course AND lemma='danke' AND part_of_speech='interjection' AND translation='ممنون' ORDER BY id LIMIT 1;
  IF v_w_danke IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word danke not found.'; END IF;

  SELECT id INTO v_w_bus FROM words WHERE course_id=v_course AND lemma='Bus' AND part_of_speech='noun' AND translation='اتوبوس' ORDER BY id LIMIT 1;
  IF v_w_bus IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Bus not found.'; END IF;

  SELECT id INTO v_w_oder FROM words WHERE course_id=v_course AND lemma='oder' AND part_of_speech='conjunction' AND translation='یا' ORDER BY id LIMIT 1;
  IF v_w_oder IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word oder not found.'; END IF;

  SELECT id INTO v_w_bahnhof FROM words WHERE course_id=v_course AND lemma='Bahnhof' AND part_of_speech='noun' AND translation='ایستگاه قطار' ORDER BY id LIMIT 1;
  IF v_w_bahnhof IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Bahnhof not found.'; END IF;

  SELECT id INTO v_w_hier FROM words WHERE course_id=v_course AND lemma='hier' AND part_of_speech='adverb' AND translation='اینجا' ORDER BY id LIMIT 1;
  IF v_w_hier IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word hier not found.'; END IF;

  SELECT id INTO v_w_sein FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_sein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word sein not found.'; END IF;

  SELECT id INTO v_w_der FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_der IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word der not found.'; END IF;

  SELECT id INTO v_w_taxi FROM words WHERE course_id=v_course AND lemma='Taxi' AND part_of_speech='noun' AND translation='تاکسی' ORDER BY id LIMIT 1;
  IF v_w_taxi IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Taxi','Taxi','noun','تاکسی',12,'{"article":"das","plural":"Taxis"}','[{"text":"Bus","translation":"اتوبوس"},{"text":"Bahn","translation":"قطار / حمل و نقل ریلی"},{"text":"Auto","translation":"ماشین"},{"text":"Fahrrad","translation":"دوچرخه"},{"text":"Straßenbahn","translation":"تراموا"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_taxi=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_zu FROM words WHERE course_id=v_course AND lemma='zu' AND part_of_speech='preposition' AND translation='به / به سمت' ORDER BY id LIMIT 1;
  IF v_w_zu IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'zu','zu','preposition','به / به سمت',12,NULL,'[{"text":"in","translation":"در / داخل"},{"text":"mit","translation":"با"},{"text":"aus","translation":"از"},{"text":"bis","translation":"تا"},{"text":"nach","translation":"به / بعد از"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_zu=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_zum_bahnhof_bitte FROM words WHERE course_id=v_course AND lemma='Zum Bahnhof, bitte.' AND part_of_speech='phrase' AND translation='به ایستگاه قطار، لطفا.' ORDER BY id LIMIT 1;
  IF v_w_zum_bahnhof_bitte IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Zum Bahnhof, bitte.','Zum Bahnhof, bitte.','phrase','به ایستگاه قطار، لطفا.',12,NULL,'[{"text":"Eine Fahrkarte, bitte.","translation":"یک بلیط، لطفا."},{"text":"Mit Karte, bitte.","translation":"با کارت، لطفا."},{"text":"Bus, bitte.","translation":"اتوبوس، لطفا."},{"text":"Bahn, bitte.","translation":"قطار، لطفا."},{"text":"Kaffee, bitte.","translation":"قهوه، لطفا."}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_zum_bahnhof_bitte=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_hier_bitte FROM words WHERE course_id=v_course AND lemma='Hier, bitte.' AND part_of_speech='phrase' AND translation='همین جا، لطفا.' ORDER BY id LIMIT 1;
  IF v_w_hier_bitte IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Hier, bitte.','Hier, bitte.','phrase','همین جا، لطفا.',12,NULL,'[{"text":"Geradeaus.","translation":"مستقیم."},{"text":"Links.","translation":"چپ."},{"text":"Zum Bahnhof, bitte.","translation":"به ایستگاه قطار، لطفا."},{"text":"Danke!","translation":"ممنون!"},{"text":"Bis später!","translation":"بعدا می بینمت!"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_hier_bitte=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_mia,v_c_sara,'Bus oder Taxi?','اتوبوس یا تاکسی؟','Mia und Sara entscheiden, wie sie weiterfahren. Sara wählt diesmal ein Taxi.','میا و سارا تصمیم می گیرند چطور ادامه مسیر بدهند. سارا این بار تاکسی را انتخاب می کند.','story','sara-mia-city-transport',1,12,110,1,'validated','{"storyArc":"beginning-development-ending"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,1,'character','Bus oder Taxi?','اتوبوس یا تاکسی؟',12,NULL,NULL,NULL,NULL,'[{"surface":"Bus","lemma":"Bus","translation":"اتوبوس","partOfSpeech":"noun"},{"surface":"oder","lemma":"oder","translation":"یا","partOfSpeech":"conjunction"},{"surface":"Taxi","lemma":"Taxi","translation":"تاکسی","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,2,'learner','Taxi.','تاکسی.',12,NULL,NULL,'taxi',NULL,'[{"surface":"Taxi","lemma":"Taxi","translation":"تاکسی","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,3,'character','Taxi?','تاکسی؟',12,NULL,NULL,NULL,NULL,'[{"surface":"Taxi","lemma":"Taxi","translation":"تاکسی","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,4,'learner','Ja.','بله.',12,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_4=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_markus,v_c_sara,'Zum Bahnhof, bitte','به ایستگاه قطار، لطفا','Sara steigt in das Taxi. Sie sagt Markus direkt ihr Ziel.','سارا سوار تاکسی می شود و مستقیم مقصدش را به مارکوس می گوید.','story','sara-markus-taxi',1,12,110,2,'validated','{"storyArc":"beginning-development-ending"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_markus,1,'character','Hallo!','سلام!',12,NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,2,'learner','Zum Bahnhof, bitte.','به ایستگاه قطار، لطفا.',12,NULL,NULL,'zum bahnhof bitte',NULL,'[{"surface":"Zum","lemma":"zu","translation":"به / به سمت","partOfSpeech":"preposition","meaning":"به / به سمت","form":"contraction_zu_dem"},{"surface":"Bahnhof","lemma":"Bahnhof","translation":"ایستگاه قطار","partOfSpeech":"noun","suffix":","},{"surface":"bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","suffix":"."}]','مقصد را به صورت یک عبارت کامل بگو','«Zum Bahnhof, bitte.» یعنی «به ایستگاه قطار، لطفا». فعلا لازم نیست ساختار «zum» را جدا حفظ کنی.',NULL,NULL);
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_markus,3,'character','Ja.','بله.',12,NULL,NULL,NULL,NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,4,'learner','Danke!','ممنون!',12,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_8=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_markus,v_c_mia,'Hier, bitte','همین جا، لطفا','Mia ist im Taxi. Am Ziel sagt sie dem Fahrer, dass sie hier aussteigen möchte.','میا داخل تاکسی است. وقتی به مقصد می رسد به راننده می گوید همین جا توقف کند.','story','mia-markus-taxi',1,12,110,3,'validated','{"storyArc":"beginning-development-ending"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_markus,1,'character','Hier?','اینجا؟',12,NULL,NULL,NULL,NULL,'[{"surface":"Hier","lemma":"hier","translation":"اینجا","partOfSpeech":"adverb","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,2,'learner','Ja. Hier, bitte.','بله. همین جا، لطفا.',12,NULL,NULL,'ja hier bitte',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Hier","lemma":"hier","translation":"اینجا","partOfSpeech":"adverb","meaning":"همین جا","suffix":","},{"surface":"bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","suffix":"."}]','این عبارت برای توقف خیلی کاربردی است','«Hier, bitte.» در تاکسی یعنی «همین جا، لطفا»؛ یعنی می خواهی همین جا توقف کند.',NULL,NULL);
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_markus,3,'character','Ja.','بله.',12,NULL,NULL,NULL,NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,4,'learner','Danke!','ممنون!',12,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_12=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_markus,v_c_sara,'Mit dem Taxi zum Bahnhof','با تاکسی تا ایستگاه قطار','Sara fährt mit Markus zum Bahnhof und beendet die Fahrt mit den schon bekannten Ausdrücken.','سارا با مارکوس تا ایستگاه قطار می رود و سفر را با عبارت های آشنا تمام می کند.','story','sara-markus-taxi',2,12,110,4,'validated','{"storyArc":"beginning-development-ending"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_markus,1,'character','Hallo!','سلام!',12,NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,2,'learner','Zum Bahnhof, bitte.','به ایستگاه قطار، لطفا.',12,NULL,NULL,'zum bahnhof bitte',NULL,'[{"surface":"Zum","lemma":"zu","translation":"به / به سمت","partOfSpeech":"preposition","meaning":"به / به سمت","form":"contraction_zu_dem"},{"surface":"Bahnhof","lemma":"Bahnhof","translation":"ایستگاه قطار","partOfSpeech":"noun","suffix":","},{"surface":"bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_markus,3,'character','Hier ist der Bahnhof.','اینجا ایستگاه قطار است.',12,NULL,NULL,NULL,NULL,'[{"surface":"Hier","lemma":"hier","translation":"اینجا","partOfSpeech":"adverb"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است","form":"present_3sg"},{"surface":"der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article"},{"surface":"Bahnhof","lemma":"Bahnhof","translation":"ایستگاه قطار","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,4,'learner','Ja. Hier, bitte.','بله. همین جا، لطفا.',12,NULL,NULL,'ja hier bitte',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Hier","lemma":"hier","translation":"اینجا","partOfSpeech":"adverb","meaning":"همین جا","suffix":","},{"surface":"bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_markus,5,'character','Ja.','بله.',12,NULL,NULL,NULL,NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,6,'learner','Danke!','ممنون!',12,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_18=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_bus,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_oder,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_taxi,'new',1,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ja,'review',0,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_hallo,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_zu,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_bahnhof,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_bitte,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_zum_bahnhof_bitte,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_hier,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_bitte,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_hier_bitte,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_hallo,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_zu,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_bahnhof,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_bitte,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_hier,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_sein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_der,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_danke,'review',0,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_taxi,'کلمه جدید',NULL,12,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به دو گزینه گوش کن',NULL,12,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'تاکسی را انتخاب کن',NULL,12,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به میا گوش کن',NULL,12,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'تایید کن',NULL,12,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,NULL,v_w_taxi,'معنی درست را انتخاب کن',NULL,12,'{"mode":"word_translation","question":"Taxi","choices":["تاکسی","اتوبوس","قطار"],"correctIndex":0}',NULL);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_zum_bahnhof_bitte,'عبارت جدید',NULL,12,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به راننده گوش کن',NULL,12,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'مقصد را بگو',NULL,12,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به راننده گوش کن',NULL,12,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'تشکر کن',NULL,12,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_6,NULL,'معنی درست را انتخاب کن',NULL,12,'{"mode":"turn_translation","question":"«Zum Bahnhof, bitte.» یعنی چی؟","choices":["به ایستگاه قطار، لطفا.","یک بلیط، لطفا.","با کارت، لطفا."],"correctIndex":0}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',7,v_t_6,NULL,'عبارت مقصد را به ترتیب درست بساز',NULL,12,'{"source":"turn_tokens","shuffle":true}',NULL);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_hier_bitte,'عبارت جدید',NULL,12,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_9,NULL,'به راننده گوش کن',NULL,12,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_10,NULL,'بگو همین جا توقف کند',NULL,12,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_11,NULL,'به راننده گوش کن',NULL,12,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_12,NULL,'تشکر کن',NULL,12,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_10,NULL,'معنی درست را انتخاب کن',NULL,12,'{"mode":"turn_translation","question":"«Hier, bitte.» در تاکسی یعنی چی؟","choices":["همین جا، لطفا.","مستقیم برو.","به ایستگاه قطار، لطفا."],"correctIndex":0}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,12,'{"source":"lesson_story","question":"میا از راننده چه می خواهد؟","choices":["همین جا توقف کند.","به ایستگاه برود.","به چپ بپیچد."],"correctIndex":0}',NULL);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_13,NULL,'به راننده گوش کن',NULL,12,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_14,NULL,'مقصد را بگو',NULL,12,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_15,NULL,'به رسیدن به مقصد گوش کن',NULL,12,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_16,NULL,'بگو همین جا توقف کند',NULL,12,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_17,NULL,'به راننده گوش کن',NULL,12,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_18,NULL,'تشکر کن',NULL,12,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,12,'{"source":"lesson_story","question":"سارا با تاکسی کجا می رود؟","choices":["ایستگاه قطار","رستوران","سوپرمارکت"],"correctIndex":0}',NULL);

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 020 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (ac.config IS NULL OR JSON_EXTRACT(ac.config,'$.question') IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without task.'; END IF;
  UPDATE chapters SET status='validated' WHERE id=v_chapter;
  UPDATE modules SET status='complete' WHERE id=v_module;
  COMMIT;
END$$
DELIMITER ;

CALL import_nova_series_020_v9_r2();
DROP PROCEDURE IF EXISTS import_nova_series_020_v9_r2;
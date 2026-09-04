-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 072
-- A2 > Reisen & Verkehr > Von welchem Gleis fährt der Zug?
-- Requires Series 071.
-- Continues lena-ben-a2-train-trip orders 5-8.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_072_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_072_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_lena BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_ben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_der BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_zug BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_fahren BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_welcher BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gleis BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_drei BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_haben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_verspaetung BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_der_zug_hat_verspaetung BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_von BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_von_welchem_gleis_faehrt_der_zug BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_der_zug_faehrt_von_gleis_drei BIGINT UNSIGNED DEFAULT NULL;
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

  DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN ROLLBACK; RESIGNAL; END;
  START TRANSACTION;
  SELECT id INTO v_course FROM courses WHERE learning_language='de' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='A2' AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Level not found.'; END IF;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=7 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 071 before Series 072.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=1 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 07 Chapter 02 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 071 before Series 072.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_prev_chapter AND status IN ('validated','complete');
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 071 Chapter must be validated/complete before Series 072.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 07 Chapter 02 must be empty before Series 072 import.'; END IF;

  SELECT id INTO v_c_lena FROM characters WHERE course_id=v_course AND name='Lena' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_lena IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Lena not found.'; END IF;
  SELECT id INTO v_c_ben FROM characters WHERE course_id=v_course AND name='Ben' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_ben IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Ben not found.'; END IF;
  SELECT id INTO v_w_der FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_der IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word der not found.'; END IF;
  SELECT id INTO v_w_zug FROM words WHERE course_id=v_course AND lemma='Zug' AND part_of_speech='noun' AND translation='قطار' ORDER BY id LIMIT 1;
  IF v_w_zug IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Zug not found.'; END IF;
  SELECT id INTO v_w_fahren FROM words WHERE course_id=v_course AND lemma='fahren' AND part_of_speech='verb' AND translation='رفتن با وسیله / راندن' ORDER BY id LIMIT 1;
  IF v_w_fahren IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word fahren not found.'; END IF;
  SELECT id INTO v_w_welcher FROM words WHERE course_id=v_course AND lemma='welcher' AND part_of_speech='determiner' AND translation='کدام / چه' ORDER BY id LIMIT 1;
  IF v_w_welcher IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word welcher not found.'; END IF;
  SELECT id INTO v_w_gleis FROM words WHERE course_id=v_course AND lemma='Gleis' AND part_of_speech='noun' AND translation='سکوی قطار / خط' ORDER BY id LIMIT 1;
  IF v_w_gleis IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Gleis not found.'; END IF;
  SELECT id INTO v_w_drei FROM words WHERE course_id=v_course AND lemma='drei' AND part_of_speech='number' AND translation='سه' ORDER BY id LIMIT 1;
  IF v_w_drei IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word drei not found.'; END IF;
  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;
  SELECT id INTO v_w_gut FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_gut IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gut not found.'; END IF;
  SELECT id INTO v_w_haben FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_haben IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word haben not found.'; END IF;
  SELECT id INTO v_w_verspaetung FROM words WHERE course_id=v_course AND lemma='Verspätung' AND part_of_speech='noun' AND translation='تاخیر' ORDER BY id LIMIT 1;
  IF v_w_verspaetung IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Verspätung not found.'; END IF;
  SELECT id INTO v_w_der_zug_hat_verspaetung FROM words WHERE course_id=v_course AND lemma='Der Zug hat Verspätung.' AND part_of_speech='phrase' AND translation='قطار تاخیر دارد.' ORDER BY id LIMIT 1;
  IF v_w_der_zug_hat_verspaetung IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Der Zug hat Verspätung. not found.'; END IF;
  SELECT id INTO v_w_von FROM words WHERE course_id=v_course AND lemma='von' AND part_of_speech='preposition' AND translation='از / از سمت' ORDER BY id LIMIT 1;
  IF v_w_von IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'von','von','preposition','از / از سمت',39,'{"case":"dative","usage":"departure_source"}','[{"text":"mit","translation":"با"},{"text":"nach","translation":"به / به سمت"},{"text":"um","translation":"در ساعت / حوالی"},{"text":"bei","translation":"نزد / پیش"},{"text":"für","translation":"برای"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":72,"module":7}');
    SET v_w_von=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_von_welchem_gleis_faehrt_der_zug FROM words WHERE course_id=v_course AND lemma='Von welchem Gleis fährt der Zug?' AND part_of_speech='phrase' AND translation='قطار از کدام سکو حرکت می کند؟' ORDER BY id LIMIT 1;
  IF v_w_von_welchem_gleis_faehrt_der_zug IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Von welchem Gleis fährt der Zug?','Von welchem Gleis fährt der Zug?','phrase','قطار از کدام سکو حرکت می کند؟',40,'{"preposition":"von","case":"dative","questionDeterminer":"welcher","questionDeterminerForm":"welchem","noun":"Gleis","verb":"fahren","verbForm":"fährt","subject":"der Zug"}','[{"text":"Wo ist Gleis drei?","translation":"سکوی سه کجاست؟"},{"text":"Hat der Zug Verspätung?","translation":"قطار تاخیر داره؟"},{"text":"Wann kommt der Zug?","translation":"قطار کی میاد؟"},{"text":"Kommt der Zug später?","translation":"قطار دیرتر میاد؟"},{"text":"Von Gleis drei.","translation":"از سکوی سه."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":72,"module":7}');
    SET v_w_von_welchem_gleis_faehrt_der_zug=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_der_zug_faehrt_von_gleis_drei FROM words WHERE course_id=v_course AND lemma='Der Zug fährt von Gleis drei.' AND part_of_speech='phrase' AND translation='قطار از سکوی سه حرکت می کند.' ORDER BY id LIMIT 1;
  IF v_w_der_zug_faehrt_von_gleis_drei IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Der Zug fährt von Gleis drei.','Der Zug fährt von Gleis drei.','phrase','قطار از سکوی سه حرکت می کند.',40,'{"subject":"der Zug","verb":"fahren","verbForm":"fährt","source":"von Gleis drei","preposition":"von"}','[{"text":"Der Zug hat Verspätung.","translation":"قطار تاخیر دارد."},{"text":"Der Zug kommt später.","translation":"قطار دیرتر میاد."},{"text":"Von Gleis drei.","translation":"از سکوی سه."},{"text":"Gleis drei.","translation":"سکوی سه."},{"text":"Der Zug fährt heute.","translation":"قطار امروز حرکت می کند."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":72,"module":7}');
    SET v_w_der_zug_faehrt_von_gleis_drei=LAST_INSERT_ID();
  END IF;
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ben,v_c_lena,'Von Gleis drei','از سکوی سه','Der Zug hat Verspätung. Lena und Ben prüfen jetzt, von welchem Gleis er abfährt.','قطار تاخیر دارد. لنا و بن حالا بررسی می کنند قطار از کدام سکو حرکت می کند.','story','lena-ben-a2-train-trip',5,39,110,1,'validated','{"context":"train-platform","cefr":"A2","module":7,"focus":"von-welchem-gleis"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_ben,1,'character','Der Zug hat Verspätung.','قطار تاخیر دارد.',39,NULL,NULL,NULL,NULL,'[{"surface":"Der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"masculine_nominative"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun"},{"surface":"hat","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارد","form":"present_3sg"},{"surface":"Verspätung","lemma":"Verspätung","translation":"تاخیر","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_lena,2,'learner','Von Gleis drei?','از سکوی سه؟',39,NULL,NULL,'von gleis drei',NULL,'[{"surface":"Von","lemma":"von","translation":"از / از سمت","partOfSpeech":"preposition","meaning":"از","form":"departure_source"},{"surface":"Gleis","lemma":"Gleis","translation":"سکوی قطار / خط","partOfSpeech":"noun"},{"surface":"drei","lemma":"drei","translation":"سه","partOfSpeech":"number","suffix":"?"}]','von برای مبدا حرکت','اینجا «von» مبدا حرکت را نشان می دهد: «von Gleis drei» یعنی «از سکوی سه».',NULL,'{"cefr":"A2","module":7}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_ben,3,'character','Ja.','بله.',39,NULL,NULL,NULL,NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_lena,4,'learner','Gut.','باشه.',39,NULL,NULL,'gut',NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"باشه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ben,v_c_lena,'Von welchem Gleis fährt der Zug?','قطار از کدام سکو حرکت می کند؟','Lena fragt jetzt vollständig nach dem Abfahrtsgleis. Ben gibt eine kurze und klare Antwort.','لنا حالا کامل درباره سکوی حرکت قطار می پرسد. بن یک جواب کوتاه و روشن می دهد.','story','lena-ben-a2-train-trip',6,40,110,2,'validated','{"context":"train-platform","cefr":"A2","module":7,"focus":"von-welchem-gleis"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_ben,1,'character','Der Zug hat Verspätung.','قطار تاخیر دارد.',40,NULL,NULL,NULL,NULL,'[{"surface":"Der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"masculine_nominative"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun"},{"surface":"hat","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارد","form":"present_3sg"},{"surface":"Verspätung","lemma":"Verspätung","translation":"تاخیر","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_lena,2,'learner','Von welchem Gleis fährt der Zug?','قطار از کدام سکو حرکت می کند؟',40,NULL,NULL,'von welchem gleis fährt der zug',NULL,'[{"surface":"Von","lemma":"von","translation":"از / از سمت","partOfSpeech":"preposition","meaning":"از","form":"departure_source"},{"surface":"welchem","lemma":"welcher","translation":"کدام / چه","partOfSpeech":"determiner","meaning":"کدام","form":"neuter_dative_after_von"},{"surface":"Gleis","lemma":"Gleis","translation":"سکوی قطار / خط","partOfSpeech":"noun"},{"surface":"fährt","lemma":"fahren","translation":"رفتن با وسیله / راندن","partOfSpeech":"verb","meaning":"حرکت می کند","form":"present_3sg"},{"surface":"der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"masculine_nominative"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun","suffix":"?"}]','welchem بعد از von','«Gleis» خنثی است و بعد از «von» فرم موردنیاز «welchem» می شود. فقط همین فرم کاربردی را در این موقعیت یاد می گیریم.',NULL,'{"cefr":"A2","module":7}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_ben,3,'character','Von Gleis drei.','از سکوی سه.',40,NULL,NULL,NULL,NULL,'[{"surface":"Von","lemma":"von","translation":"از / از سمت","partOfSpeech":"preposition","meaning":"از","form":"departure_source"},{"surface":"Gleis","lemma":"Gleis","translation":"سکوی قطار / خط","partOfSpeech":"noun"},{"surface":"drei","lemma":"drei","translation":"سه","partOfSpeech":"number","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_lena,4,'learner','Gut.','باشه.',40,NULL,NULL,'gut',NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"باشه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_lena,v_c_ben,'Der Zug fährt von Gleis drei','قطار از سکوی سه حرکت می کند','Lena fragt nach dem Gleis. Ben antwortet diesmal mit einem vollständigen Satz.','لنا درباره سکو می پرسد. بن این بار با یک جمله کامل جواب می دهد.','story','lena-ben-a2-train-trip',7,40,110,3,'validated','{"context":"train-platform","cefr":"A2","module":7,"focus":"von-welchem-gleis"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_lena,1,'character','Von welchem Gleis fährt der Zug?','قطار از کدام سکو حرکت می کند؟',40,NULL,NULL,NULL,NULL,'[{"surface":"Von","lemma":"von","translation":"از / از سمت","partOfSpeech":"preposition","meaning":"از","form":"departure_source"},{"surface":"welchem","lemma":"welcher","translation":"کدام / چه","partOfSpeech":"determiner","meaning":"کدام","form":"neuter_dative_after_von"},{"surface":"Gleis","lemma":"Gleis","translation":"سکوی قطار / خط","partOfSpeech":"noun"},{"surface":"fährt","lemma":"fahren","translation":"رفتن با وسیله / راندن","partOfSpeech":"verb","meaning":"حرکت می کند","form":"present_3sg"},{"surface":"der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"masculine_nominative"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_ben,2,'learner','Der Zug fährt von Gleis drei.','قطار از سکوی سه حرکت می کند.',40,NULL,NULL,'der zug fährt von gleis drei',NULL,'[{"surface":"Der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"masculine_nominative"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun"},{"surface":"fährt","lemma":"fahren","translation":"رفتن با وسیله / راندن","partOfSpeech":"verb","meaning":"حرکت می کند","form":"present_3sg"},{"surface":"von","lemma":"von","translation":"از / از سمت","partOfSpeech":"preposition","meaning":"از","form":"departure_source"},{"surface":"Gleis","lemma":"Gleis","translation":"سکوی قطار / خط","partOfSpeech":"noun"},{"surface":"drei","lemma":"drei","translation":"سه","partOfSpeech":"number","suffix":"."}]','جواب کامل با fahren','«Der Zug fährt von Gleis drei.» همان اطلاعات کوتاه «Von Gleis drei.» را به شکل یک جمله کامل می دهد.',NULL,'{"cefr":"A2","module":7}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_lena,3,'character','Gleis drei?','سکوی سه؟',40,NULL,NULL,NULL,NULL,'[{"surface":"Gleis","lemma":"Gleis","translation":"سکوی قطار / خط","partOfSpeech":"noun"},{"surface":"drei","lemma":"drei","translation":"سه","partOfSpeech":"number","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_ben,4,'learner','Ja.','بله.',40,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ben,v_c_lena,'Das richtige Gleis','سکوی درست','Lena und Ben kennen jetzt sowohl die Verspätung als auch das richtige Abfahrtsgleis. Der nächste Reiseschritt kann beginnen.','لنا و بن حالا هم از تاخیر خبر دارند و هم سکوی درست حرکت را می دانند. قدم بعدی سفر می تواند شروع شود.','story','lena-ben-a2-train-trip',8,40,110,4,'validated','{"context":"train-platform","cefr":"A2","module":7,"focus":"von-welchem-gleis"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_ben,1,'character','Der Zug hat Verspätung.','قطار تاخیر دارد.',40,NULL,NULL,NULL,NULL,'[{"surface":"Der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"masculine_nominative"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun"},{"surface":"hat","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارد","form":"present_3sg"},{"surface":"Verspätung","lemma":"Verspätung","translation":"تاخیر","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_lena,2,'learner','Von welchem Gleis fährt der Zug?','قطار از کدام سکو حرکت می کند؟',40,NULL,NULL,'von welchem gleis fährt der zug',NULL,'[{"surface":"Von","lemma":"von","translation":"از / از سمت","partOfSpeech":"preposition","meaning":"از","form":"departure_source"},{"surface":"welchem","lemma":"welcher","translation":"کدام / چه","partOfSpeech":"determiner","meaning":"کدام","form":"neuter_dative_after_von"},{"surface":"Gleis","lemma":"Gleis","translation":"سکوی قطار / خط","partOfSpeech":"noun"},{"surface":"fährt","lemma":"fahren","translation":"رفتن با وسیله / راندن","partOfSpeech":"verb","meaning":"حرکت می کند","form":"present_3sg"},{"surface":"der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"masculine_nominative"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_ben,3,'character','Der Zug fährt von Gleis drei.','قطار از سکوی سه حرکت می کند.',40,NULL,NULL,NULL,NULL,'[{"surface":"Der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"masculine_nominative"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun"},{"surface":"fährt","lemma":"fahren","translation":"رفتن با وسیله / راندن","partOfSpeech":"verb","meaning":"حرکت می کند","form":"present_3sg"},{"surface":"von","lemma":"von","translation":"از / از سمت","partOfSpeech":"preposition","meaning":"از","form":"departure_source"},{"surface":"Gleis","lemma":"Gleis","translation":"سکوی قطار / خط","partOfSpeech":"noun"},{"surface":"drei","lemma":"drei","translation":"سه","partOfSpeech":"number","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_lena,4,'learner','Gut.','باشه.',40,NULL,NULL,'gut',NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"باشه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_der,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_zug,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_haben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_verspaetung,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_von,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_gleis,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_drei,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_der_zug_hat_verspaetung,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_der,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_zug,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_haben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_verspaetung,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_von,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_welcher,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_gleis,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_fahren,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_drei,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_von_welchem_gleis_faehrt_der_zug,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_von,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_welcher,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_gleis,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_fahren,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_der,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_zug,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_drei,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_von_welchem_gleis_faehrt_der_zug,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_der_zug_faehrt_von_gleis_drei,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_der,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_zug,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_haben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_verspaetung,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_von,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_welcher,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_gleis,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_fahren,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_drei,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_der_zug_hat_verspaetung,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_von_welchem_gleis_faehrt_der_zug,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_der_zug_faehrt_von_gleis_drei,'review',0,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_von,'حرف اضافه جدید',NULL,39,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به وضعیت قطار گوش کن',NULL,39,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'بپرس از سکوی سه؟',NULL,39,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به تایید بن گوش کن',NULL,39,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'واکنش کوتاه بده',NULL,39,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,NULL,v_w_von,'معنی درست را انتخاب کن',NULL,39,'{"mode":"word_translation","question":"von","choices":["از / از سمت","برای","با"],"correctIndex":0}','{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_von_welchem_gleis_faehrt_der_zug,'عبارت جدید',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به وضعیت قطار گوش کن',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'سکوی حرکت را کامل بپرس',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به جواب سکوی قطار گوش کن',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'واکنش کوتاه بده',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_6,NULL,'معنی سوال را انتخاب کن',NULL,40,'{"mode":"turn_translation","question":"«Von welchem Gleis fährt der Zug?» یعنی چی؟","choices":["قطار از کدام سکو حرکت می کند؟","قطار کی میاد؟","قطار تاخیر داره؟"],"correctIndex":0}','{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',7,v_t_6,NULL,'سوال سکوی قطار را به ترتیب درست بساز',NULL,40,'{"source":"turn_tokens","shuffle":true}','{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_der_zug_faehrt_von_gleis_drei,'عبارت جدید',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_9,NULL,'به سوال لنا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_10,NULL,'با جمله کامل سکوی حرکت را بگو',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_11,NULL,'به سوال تاییدی لنا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_12,NULL,'تایید کن',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_10,NULL,'معنی جواب را انتخاب کن',NULL,40,'{"mode":"turn_translation","question":"«Der Zug fährt von Gleis drei.» یعنی چی؟","choices":["قطار از سکوی سه حرکت می کند.","قطار سه دقیقه تاخیر دارد.","قطار در سکوی سه رسیده است."],"correctIndex":0}','{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,40,'{"source":"lesson_story","question":"قطار از کدام سکو حرکت می کند؟","choices":["سکوی سه.","سکوی دو.","هنوز مشخص نیست."],"correctIndex":0}','{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_13,NULL,'به وضعیت قطار گوش کن',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_14,NULL,'سکوی حرکت را بپرس',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_15,NULL,'به جواب کامل بن گوش کن',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_16,NULL,'واکنش کوتاه بده',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',5,NULL,NULL,'کل گفتگو را بخوان و جواب بده',NULL,40,'{"source":"lesson_story","question":"لنا و بن حالا چه اطلاعاتی دارند؟","choices":["قطار تاخیر دارد و از سکوی سه حرکت می کند.","قطار لغو شده است.","قطار از سکوی دو حرکت می کند."],"correctIndex":0}','{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',6,v_t_15,NULL,'جواب بن را بررسی کن',NULL,40,'{"mode":"turn_translation","question":"«Der Zug fährt von Gleis drei.» یعنی چی؟","choices":["قطار از سکوی سه حرکت می کند.","قطار تاخیر ندارد.","قطار فردا حرکت می کند."],"correctIndex":0}','{"cefr":"A2","module":7}');
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 072 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  UPDATE chapters SET status='validated' WHERE id=v_chapter;
  UPDATE modules SET status='active' WHERE id=v_module;
  UPDATE levels SET status='active' WHERE id=v_level;
  COMMIT;
END$$
DELIMITER ;

CALL import_nova_series_072_v9();
DROP PROCEDURE IF EXISTS import_nova_series_072_v9;
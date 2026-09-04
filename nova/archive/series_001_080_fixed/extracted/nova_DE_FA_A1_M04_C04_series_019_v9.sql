-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 019
-- A1 > Unterwegs > Am Bahnhof
-- Includes symbolic duplicate-PK QA for lesson_words.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_019_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_019_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_sara BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_mia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_nora BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_hallo BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_bitte BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danke BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_bus BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_oder BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wo BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_drei BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_geradeaus BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_fahrkarte BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_euro BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_zug BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gleis BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wo_ist_gleis_drei BIGINT UNSIGNED DEFAULT NULL;
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
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 016 before Series 019.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=3 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=4 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Module 04 Chapter 04 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 018 before Series 019.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Module 04 Chapter 04 must be empty before Series 019 import.'; END IF;

  SELECT id INTO v_c_sara FROM characters WHERE course_id=v_course AND name='Sara' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_sara IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Sara not found.'; END IF;

  SELECT id INTO v_c_mia FROM characters WHERE course_id=v_course AND name='Mia' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_mia IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Mia not found.'; END IF;

  SELECT id INTO v_c_nora FROM characters WHERE course_id=v_course AND name='Nora' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_nora IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Nora not found.'; END IF;

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

  SELECT id INTO v_w_wo FROM words WHERE course_id=v_course AND lemma='wo' AND part_of_speech='adverb' AND translation='کجا' ORDER BY id LIMIT 1;
  IF v_w_wo IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word wo not found.'; END IF;

  SELECT id INTO v_w_sein FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_sein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word sein not found.'; END IF;

  SELECT id INTO v_w_drei FROM words WHERE course_id=v_course AND lemma='drei' AND part_of_speech='number' AND translation='سه' ORDER BY id LIMIT 1;
  IF v_w_drei IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word drei not found.'; END IF;

  SELECT id INTO v_w_geradeaus FROM words WHERE course_id=v_course AND lemma='geradeaus' AND part_of_speech='adverb' AND translation='مستقیم' ORDER BY id LIMIT 1;
  IF v_w_geradeaus IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word geradeaus not found.'; END IF;

  SELECT id INTO v_w_ein FROM words WHERE course_id=v_course AND lemma='ein' AND part_of_speech='article' AND translation='یک / حرف تعریف نامعین' ORDER BY id LIMIT 1;
  IF v_w_ein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ein not found.'; END IF;

  SELECT id INTO v_w_fahrkarte FROM words WHERE course_id=v_course AND lemma='Fahrkarte' AND part_of_speech='noun' AND translation='بلیط' ORDER BY id LIMIT 1;
  IF v_w_fahrkarte IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Fahrkarte not found.'; END IF;

  SELECT id INTO v_w_euro FROM words WHERE course_id=v_course AND lemma='Euro' AND part_of_speech='noun' AND translation='یورو' ORDER BY id LIMIT 1;
  IF v_w_euro IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Euro not found.'; END IF;

  SELECT id INTO v_w_zug FROM words WHERE course_id=v_course AND lemma='Zug' AND part_of_speech='noun' AND translation='قطار' ORDER BY id LIMIT 1;
  IF v_w_zug IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Zug','Zug','noun','قطار',11,'{"article":"der","plural":"Züge"}','[{"text":"Bus","translation":"اتوبوس"},{"text":"Bahn","translation":"قطار / حمل و نقل ریلی"},{"text":"Taxi","translation":"تاکسی"},{"text":"Auto","translation":"ماشین"},{"text":"Straßenbahn","translation":"تراموا"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_zug=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_gleis FROM words WHERE course_id=v_course AND lemma='Gleis' AND part_of_speech='noun' AND translation='سکوی قطار / خط' ORDER BY id LIMIT 1;
  IF v_w_gleis IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Gleis','Gleis','noun','سکوی قطار / خط',11,'{"article":"das","plural":"Gleise"}','[{"text":"Bahnhof","translation":"ایستگاه قطار"},{"text":"Haltestelle","translation":"ایستگاه"},{"text":"Fahrkarte","translation":"بلیط"},{"text":"Zug","translation":"قطار"},{"text":"Ausgang","translation":"خروجی"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_gleis=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_wo_ist_gleis_drei FROM words WHERE course_id=v_course AND lemma='Wo ist Gleis drei?' AND part_of_speech='phrase' AND translation='سکوی سه کجاست؟' ORDER BY id LIMIT 1;
  IF v_w_wo_ist_gleis_drei IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Wo ist Gleis drei?','Wo ist Gleis drei?','phrase','سکوی سه کجاست؟',12,NULL,'[{"text":"Wo ist der Bahnhof?","translation":"ایستگاه قطار کجاست؟"},{"text":"Wie spät ist es?","translation":"ساعت چنده؟"},{"text":"Was kostet die Fahrkarte?","translation":"بلیط چقدر قیمت دارد؟"},{"text":"Hast du Zeit?","translation":"وقت داری؟"},{"text":"Bus oder Bahn?","translation":"اتوبوس یا قطار؟"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_wo_ist_gleis_drei=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_mia,v_c_sara,'Bus oder Zug?','اتوبوس یا قطار؟','Mia und Sara sind unterwegs. Mia fragt, ob Sara den Bus oder den Zug nimmt.','میا و سارا در راه هستند. میا می پرسد سارا اتوبوس را انتخاب می کند یا قطار را.','story','sara-mia-station',1,11,110,1,'validated','{"storyArc":"beginning-development-ending"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,1,'character','Bus oder Zug?','اتوبوس یا قطار؟',11,NULL,NULL,NULL,NULL,'[{"surface":"Bus","lemma":"Bus","translation":"اتوبوس","partOfSpeech":"noun"},{"surface":"oder","lemma":"oder","translation":"یا","partOfSpeech":"conjunction"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,2,'learner','Zug.','قطار.',11,NULL,NULL,'zug',NULL,'[{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,3,'character','Zug?','قطار؟',11,NULL,NULL,NULL,NULL,'[{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,4,'learner','Ja.','بله.',11,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_4=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_mia,v_c_sara,'Gleis drei','سکوی سه','Mia sieht die Gleisangabe. Sara wiederholt sie, damit sie den richtigen Ort findet.','میا شماره سکو را می بیند. سارا آن را تکرار می کند تا جای درست را پیدا کند.','story','sara-mia-station',2,11,110,2,'validated','{"storyArc":"beginning-development-ending"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,1,'character','Gleis drei.','سکوی سه.',11,NULL,NULL,NULL,NULL,'[{"surface":"Gleis","lemma":"Gleis","translation":"سکوی قطار / خط","partOfSpeech":"noun"},{"surface":"drei","lemma":"drei","translation":"سه","partOfSpeech":"number","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,2,'learner','Gleis drei?','سکوی سه؟',11,NULL,NULL,'gleis drei',NULL,'[{"surface":"Gleis","lemma":"Gleis","translation":"سکوی قطار / خط","partOfSpeech":"noun"},{"surface":"drei","lemma":"drei","translation":"سه","partOfSpeech":"number","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,3,'character','Ja.','بله.',11,NULL,NULL,NULL,NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,4,'learner','Danke!','ممنون!',11,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_8=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_nora,v_c_sara,'Wo ist Gleis drei?','سکوی سه کجاست؟','Sara fragt Nora am Bahnhof direkt nach Gleis drei.','سارا در ایستگاه مستقیم از نورا درباره سکوی سه می پرسد.','story','sara-nora-station',1,12,110,3,'validated','{"storyArc":"beginning-development-ending"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_nora,1,'character','Hallo!','سلام!',12,NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,2,'learner','Wo ist Gleis drei?','سکوی سه کجاست؟',12,NULL,NULL,'wo ist gleis drei',NULL,'[{"surface":"Wo","lemma":"wo","translation":"کجا","partOfSpeech":"adverb"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است","form":"present_3sg"},{"surface":"Gleis","lemma":"Gleis","translation":"سکوی قطار / خط","partOfSpeech":"noun"},{"surface":"drei","lemma":"drei","translation":"سه","partOfSpeech":"number","suffix":"?"}]','الگوی قبلی را در ایستگاه استفاده کن','قبلا «Wo ist ...?» را یاد گرفتی. حالا با «Gleis drei» می پرسی: «Wo ist Gleis drei?»',NULL,NULL);
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_nora,3,'character','Geradeaus.','مستقیم.',12,NULL,NULL,NULL,NULL,'[{"surface":"Geradeaus","lemma":"geradeaus","translation":"مستقیم","partOfSpeech":"adverb","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,4,'learner','Danke!','ممنون!',12,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_12=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_nora,v_c_sara,'Von der Fahrkarte zum Gleis','از بلیط تا سکو','Sara kauft die bekannte Fahrkarte und fragt danach direkt nach ihrem Gleis.','سارا بلیط آشنا را می گیرد و بعد مستقیم محل سکویش را می پرسد.','story','sara-nora-station',2,12,110,4,'validated','{"storyArc":"beginning-development-ending"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_nora,1,'character','Hallo!','سلام!',12,NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,2,'learner','Eine Fahrkarte, bitte.','یک بلیط، لطفا.',12,NULL,NULL,'eine fahrkarte bitte',NULL,'[{"surface":"Eine","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","meaning":"یک","form":"feminine_nominative"},{"surface":"Fahrkarte","lemma":"Fahrkarte","translation":"بلیط","partOfSpeech":"noun","suffix":","},{"surface":"bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_nora,3,'character','Drei Euro.','سه یورو.',12,NULL,NULL,NULL,NULL,'[{"surface":"Drei","lemma":"drei","translation":"سه","partOfSpeech":"number"},{"surface":"Euro","lemma":"Euro","translation":"یورو","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,4,'learner','Wo ist Gleis drei?','سکوی سه کجاست؟',12,NULL,NULL,'wo ist gleis drei',NULL,'[{"surface":"Wo","lemma":"wo","translation":"کجا","partOfSpeech":"adverb"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است","form":"present_3sg"},{"surface":"Gleis","lemma":"Gleis","translation":"سکوی قطار / خط","partOfSpeech":"noun"},{"surface":"drei","lemma":"drei","translation":"سه","partOfSpeech":"number","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_nora,5,'character','Geradeaus.','مستقیم.',12,NULL,NULL,NULL,NULL,'[{"surface":"Geradeaus","lemma":"geradeaus","translation":"مستقیم","partOfSpeech":"adverb","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,6,'learner','Danke!','ممنون!',12,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_18=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_bus,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_oder,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_zug,'new',1,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ja,'review',0,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_gleis,'new',1,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_drei,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_danke,'review',0,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_hallo,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_wo,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_sein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_gleis,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_drei,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_geradeaus,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_wo_ist_gleis_drei,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_hallo,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_fahrkarte,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_bitte,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_drei,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_euro,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wo,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_sein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_gleis,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_geradeaus,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_danke,'review',0,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_zug,'کلمه جدید',NULL,11,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به دو گزینه گوش کن',NULL,11,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'قطار را انتخاب کن',NULL,11,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به میا گوش کن',NULL,11,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'تایید کن',NULL,11,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,NULL,v_w_zug,'معنی درست را انتخاب کن',NULL,11,'{"mode":"word_translation","question":"Zug","choices":["قطار","اتوبوس","تاکسی"],"correctIndex":0}',NULL);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_gleis,'کلمه جدید',NULL,11,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به شماره سکو گوش کن',NULL,11,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'شماره سکو را تکرار کن',NULL,11,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به میا گوش کن',NULL,11,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'تشکر کن',NULL,11,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,NULL,v_w_gleis,'معنی درست را انتخاب کن',NULL,11,'{"mode":"word_translation","question":"Gleis","choices":["سکوی قطار / خط","بلیط","ایستگاه اتوبوس"],"correctIndex":0}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,11,'{"source":"lesson_story","question":"سارا باید به کدام سکو برود؟","choices":["سکوی سه","سکوی یک","مشخص نیست"],"correctIndex":0}',NULL);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_wo_ist_gleis_drei,'عبارت جدید',NULL,12,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_9,NULL,'به نورا گوش کن',NULL,12,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_10,NULL,'محل سکوی سه را بپرس',NULL,12,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_11,NULL,'به مسیر گوش کن',NULL,12,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_12,NULL,'تشکر کن',NULL,12,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_10,NULL,'معنی درست را انتخاب کن',NULL,12,'{"mode":"turn_translation","question":"«Wo ist Gleis drei?» یعنی چی؟","choices":["سکوی سه کجاست؟","بلیط چقدر است؟","قطار چه ساعتی است؟"],"correctIndex":0}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'word_order',7,v_t_10,NULL,'سوال را به ترتیب درست بساز',NULL,12,'{"source":"turn_tokens","shuffle":true}',NULL);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_13,NULL,'به نورا گوش کن',NULL,12,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_14,NULL,'بلیط بخواه',NULL,12,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_15,NULL,'به قیمت گوش کن',NULL,12,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_16,NULL,'محل سکو را بپرس',NULL,12,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_17,NULL,'به مسیر گوش کن',NULL,12,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_18,NULL,'تشکر کن',NULL,12,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,12,'{"source":"lesson_story","question":"بعد از گرفتن بلیط، سارا دنبال چه چیزی می گردد؟","choices":["سکوی سه","اتوبوس","رستوران"],"correctIndex":0}',NULL);

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 019 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (ac.config IS NULL OR JSON_EXTRACT(ac.config,'$.question') IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without task.'; END IF;
  UPDATE chapters SET status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;

CALL import_nova_series_019_v9();
DROP PROCEDURE IF EXISTS import_nova_series_019_v9;
-- NOVA v9.0 / EN-FA / START SERIES 004 / How are you today?
-- Independently authored for Persian speakers; requires validated en-fa Series 003.
-- Data import only; canonical schema v9.0 remains unchanged.
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_en_fa_series_004_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_en_fa_series_004_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_level BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_previous_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_ava BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_mina BIGINT UNSIGNED DEFAULT NULL;
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

  DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN ROLLBACK; RESIGNAL; END;
  START TRANSACTION;
  SELECT id INTO v_course FROM courses WHERE learning_language='en' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 003 en-fa Course missing.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='ST' AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 003 Start Level missing.'; END IF;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 003 Start Module 01 missing.'; END IF;
  SELECT id INTO v_previous_chapter FROM chapters WHERE module_id=v_module AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_previous_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 003 Chapter missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_previous_chapter AND status='validated' AND storyline_key='mina-ava-english-class' AND storyline_order BETWEEN 1 AND 4;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 003 must be validated with its exact storyline orders.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_previous_chapter AND status='validated' AND title='Nice to meet you';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 003 canonical prerequisite mismatch.'; END IF;

  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=4 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN
    INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES(v_module,'How are you today?','امروز حالت چطوره؟','Mina and Ava ask how each other feels today and practice short, friendly answers.','مینا و آوا حال امروز همدیگر را می‌پرسند و پاسخ‌های کوتاه و دوستانه را تمرین می‌کنند.',4,4,4,4,'planned','{"course":"en-fa","level":"Start","series":4}');
    SET v_chapter=LAST_INSERT_ID();
  END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='How are you today?' AND title_translation='امروز حالت چطوره؟';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 004 Chapter identity mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 004 Chapter must be empty before import.'; END IF;
  SELECT id INTO v_c_ava FROM characters WHERE course_id=v_course AND name='Ava' AND gender='female' ORDER BY id LIMIT 1;
  SELECT id INTO v_c_mina FROM characters WHERE course_id=v_course AND name='Mina' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_ava IS NULL OR v_c_mina IS NULL OR v_c_ava=v_c_mina THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required distinct English Characters missing.'; END IF;

  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='hello' AND part_of_speech='interjection' AND translation='سلام' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: hello'; END IF;
  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='Mina' AND part_of_speech='proper_noun' AND translation='مینا (نام زنانه)' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: Mina'; END IF;
  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='Ava' AND part_of_speech='proper_noun' AND translation='آوا (نام زنانه)' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: Ava'; END IF;
  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='how' AND part_of_speech='adverb' AND translation='چطور / چگونه' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'how','how','adverb','چطور / چگونه',4,'{"type":"question_word"}','[{"lemma":"what","translation":"چه"},{"lemma":"where","translation":"کجا"},{"lemma":"when","translation":"کی"}]','How are you today?','امروز حالت چطوره؟',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":4,"explicitTarget":false}');
    SET v_w_004=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='be' AND part_of_speech='verb' AND translation='بودن / هستم' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: be'; END IF;
  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='you' AND part_of_speech='pronoun' AND translation='تو / شما' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: you'; END IF;
  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='today' AND part_of_speech='adverb' AND translation='امروز' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'today','today','adverb','امروز',4,'{"type":"time_adverb"}','[{"lemma":"tomorrow","translation":"فردا"},{"lemma":"yesterday","translation":"دیروز"},{"lemma":"later","translation":"بعدا"}]','I''m great today.','امروز عالی‌ام.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":4,"explicitTarget":false}');
    SET v_w_007=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='I''m' AND part_of_speech='phrase' AND translation='من هستم' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: I''m'; END IF;
  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='fine' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'fine','fine','adjective','خوب',4,'{"use":"state_after_be"}','[{"lemma":"tired","translation":"خسته"},{"lemma":"busy","translation":"مشغول"},{"lemma":"sad","translation":"ناراحت"}]','I''m fine, thanks.','خوبم، ممنون.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":4,"explicitTarget":false}');
    SET v_w_009=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='thanks' AND part_of_speech='interjection' AND translation='ممنون' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'thanks','thanks','interjection','ممنون',4,'{"register":"neutral_friendly"}','[{"lemma":"hello","translation":"سلام"},{"lemma":"goodbye","translation":"خداحافظ"},{"lemma":"sorry","translation":"ببخشید"}]','I''m fine, thanks.','خوبم، ممنون.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":4,"explicitTarget":false}');
    SET v_w_010=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='How are you today?' AND part_of_speech='phrase' AND translation='امروز حالت چطوره؟' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'How are you today?','How are you today?','phrase','امروز حالت چطوره؟',4,'{"pattern":"how + be + person + time"}','[{"lemma":"What''s your name?","translation":"اسمت چیه؟"},{"lemma":"Are you Mina?","translation":"تو مینا هستی؟"},{"lemma":"Goodbye, Mina!","translation":"خداحافظ، مینا!"}]','How are you today?','امروز حالت چطوره؟',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":4,"explicitTarget":true}');
    SET v_w_011=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='great' AND part_of_speech='adjective' AND translation='عالی' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'great','great','adjective','عالی',4,'{"use":"positive_state"}','[{"lemma":"bad","translation":"بد"},{"lemma":"tired","translation":"خسته"},{"lemma":"late","translation":"دیر"}]','I''m great today.','امروز عالی‌ام.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":4,"explicitTarget":false}');
    SET v_w_012=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='I''m fine, thanks.' AND part_of_speech='phrase' AND translation='خوبم، ممنون.' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'I''m fine, thanks.','I''m fine, thanks.','phrase','خوبم، ممنون.',4,'{"pattern":"state + thanks"}','[{"lemma":"I''m Mina.","translation":"من مینا هستم."},{"lemma":"I''m great today.","translation":"امروز عالی‌ام."},{"lemma":"Goodbye, Ava!","translation":"خداحافظ، آوا!"}]','I''m fine, thanks.','خوبم، ممنون.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":4,"explicitTarget":true}');
    SET v_w_013=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='hi' AND part_of_speech='interjection' AND translation='سلام (خودمانی)' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: hi'; END IF;
  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='I''m great today.' AND part_of_speech='phrase' AND translation='امروز عالی‌ام.' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'I''m great today.','I''m great today.','phrase','امروز عالی‌ام.',4,'{"pattern":"be + positive_state + time"}','[{"lemma":"I''m fine, thanks.","translation":"خوبم، ممنون."},{"lemma":"I''m Ava.","translation":"من آوا هستم."},{"lemma":"How are you?","translation":"حالت چطوره؟"}]','I''m great today.','امروز عالی‌ام.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":4,"explicitTarget":true}');
    SET v_w_015=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_016 FROM words WHERE course_id=v_course AND lemma='and' AND part_of_speech='conjunction' AND translation='و' ORDER BY id LIMIT 1;
  IF v_w_016 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'and','and','conjunction','و',4,'{"type":"coordinating_conjunction"}','[{"lemma":"but","translation":"اما"},{"lemma":"or","translation":"یا"},{"lemma":"because","translation":"چون"}]','And you?','تو چطور؟',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":4,"explicitTarget":false}');
    SET v_w_016=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_017 FROM words WHERE course_id=v_course AND lemma='good' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_017 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: good'; END IF;
  SELECT id INTO v_w_018 FROM words WHERE course_id=v_course AND lemma='goodbye' AND part_of_speech='interjection' AND translation='خداحافظ' ORDER BY id LIMIT 1;
  IF v_w_018 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: goodbye'; END IF;
  SELECT id INTO v_w_019 FROM words WHERE course_id=v_course AND lemma='Fine, thanks. And you?' AND part_of_speech='phrase' AND translation='خوبم، ممنون. تو چطور؟' ORDER BY id LIMIT 1;
  IF v_w_019 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Fine, thanks. And you?','Fine, thanks. And you?','phrase','خوبم، ممنون. تو چطور؟',4,'{"pattern":"short_answer + return_question"}','[{"lemma":"I''m fine, thanks.","translation":"خوبم، ممنون."},{"lemma":"Nice to meet you too.","translation":"من هم از آشنایی باهات خوشحالم."},{"lemma":"What''s your name?","translation":"اسمت چیه؟"}]','Fine, thanks. And you?','خوبم، ممنون. تو چطور؟',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":4,"explicitTarget":true}');
    SET v_w_019=LAST_INSERT_ID();
  END IF;

  -- Lesson 1: A friendly check-in
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ava,v_c_mina,'A friendly check-in','یک حال‌پرسی دوستانه','Ava greets Mina and asks how she feels today. Mina gives a short positive answer.','آوا به مینا سلام می‌کند و حال امروزش را می‌پرسد. مینا یک پاسخ کوتاه و مثبت می‌دهد.','story','mina-ava-english-class',5,4,138,1,'validated','{"course":"en-fa","series":4,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_ava,1,'character','Hello, Mina!','سلام، مینا!',4,NULL,NULL,NULL,NULL,'[{"surface":"Hello","lemma":"hello","translation":"سلام","partOfSpeech":"interjection","suffix":","},{"surface":"Mina","lemma":"Mina","translation":"مینا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mina,2,'learner','Hello, Ava!','سلام، آوا!',4,NULL,NULL,'hello ava',NULL,'[{"surface":"Hello","lemma":"hello","translation":"سلام","partOfSpeech":"interjection","suffix":","},{"surface":"Ava","lemma":"Ava","translation":"آوا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_ava,3,'character','How are you today?','امروز حالت چطوره؟',4,NULL,NULL,NULL,NULL,'[{"surface":"How","lemma":"how","translation":"چطور / چگونه","partOfSpeech":"adverb"},{"surface":"are","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"هستی"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"today","lemma":"today","translation":"امروز","partOfSpeech":"adverb","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mina,4,'learner','I''m fine, thanks.','خوبم، ممنون.',4,NULL,NULL,'i''m fine thanks',NULL,'[{"surface":"I''m","lemma":"I''m","translation":"من هستم","partOfSpeech":"phrase"},{"surface":"fine","lemma":"fine","translation":"خوب","partOfSpeech":"adjective","suffix":","},{"surface":"thanks","lemma":"thanks","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_001,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_004,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_007,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_009,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_010,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_011,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'new_word',1,NULL,v_w_011,'عبارت کلیدی درس',NULL,4,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',2,v_t_1,NULL,'به آوا گوش کن',NULL,4,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',3,v_t_2,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,4,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',4,v_t_3,NULL,'به آوا گوش کن',NULL,4,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',5,v_t_4,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,4,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'meaning_choice',6,NULL,v_w_004,'معنی درست را انتخاب کن',NULL,4,'{"mode":"word_translation","question":"how یعنی چی؟","choices":["چطور / چگونه","چه","کجا"],"correctIndex":0}','{"course":"en-fa","series":4,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'word_order',7,v_t_2,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,4,'{"source":"turn","tokens":["Hello","Ava"],"answer":"Hello, Ava!"}','{"course":"en-fa","series":4,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,4,'{"source":"lesson_story","question":"آوا درباره چه زمانی از مینا می‌پرسد؟","choices":["امروز","فردا","دیروز"],"correctIndex":0}','{"course":"en-fa","series":4,"level":"Start","skill":"reading"}');

  -- Lesson 2: A short answer
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ava,v_c_mina,'A short answer','یک پاسخ کوتاه','Ava asks a direct question and Mina answers politely with fine and thanks.','آوا یک سوال مستقیم می‌پرسد و مینا با «خوبم» و «ممنون» مودبانه پاسخ می‌دهد.','story','mina-ava-english-class',6,4,138,2,'validated','{"course":"en-fa","series":4,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_ava,1,'character','How are you today?','امروز حالت چطوره؟',4,NULL,NULL,NULL,NULL,'[{"surface":"How","lemma":"how","translation":"چطور / چگونه","partOfSpeech":"adverb"},{"surface":"are","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"هستی"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"today","lemma":"today","translation":"امروز","partOfSpeech":"adverb","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mina,2,'learner','I''m fine, thanks.','خوبم، ممنون.',4,NULL,NULL,'i''m fine thanks',NULL,'[{"surface":"I''m","lemma":"I''m","translation":"من هستم","partOfSpeech":"phrase"},{"surface":"fine","lemma":"fine","translation":"خوب","partOfSpeech":"adjective","suffix":","},{"surface":"thanks","lemma":"thanks","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_ava,3,'character','Great!','عالی!',4,NULL,NULL,NULL,NULL,'[{"surface":"Great","lemma":"great","translation":"عالی","partOfSpeech":"adjective","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mina,4,'learner','Thanks!','ممنون!',4,NULL,NULL,'thanks',NULL,'[{"surface":"Thanks","lemma":"thanks","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_007,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_010,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_012,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_013,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'new_word',1,NULL,v_w_013,'عبارت کلیدی درس',NULL,4,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',2,v_t_5,NULL,'به آوا گوش کن',NULL,4,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',3,v_t_6,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,4,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',4,v_t_7,NULL,'به آوا گوش کن',NULL,4,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',5,v_t_8,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,4,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'meaning_choice',6,NULL,v_w_009,'معنی درست را انتخاب کن',NULL,4,'{"mode":"word_translation","question":"fine یعنی چی؟","choices":["خوب","خسته","مشغول"],"correctIndex":0}','{"course":"en-fa","series":4,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'word_order',7,v_t_6,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,4,'{"source":"turn","tokens":["I''m","fine","thanks"],"answer":"I''m fine, thanks."}','{"course":"en-fa","series":4,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,4,'{"source":"lesson_story","question":"مینا حالش را با کدام کلمه بیان می‌کند؟","choices":["خوب","خسته","ناراحت"],"correctIndex":0}','{"course":"en-fa","series":4,"level":"Start","skill":"reading"}');

  -- Lesson 3: Great today
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ava,v_c_mina,'Great today','امروز عالی','Mina changes her answer from fine to great and includes the time word today.','مینا پاسخ «خوب» را به «عالی» تغییر می‌دهد و کلمه زمانی «امروز» را هم به کار می‌برد.','story','mina-ava-english-class',7,4,138,3,'validated','{"course":"en-fa","series":4,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_ava,1,'character','Hi, Mina!','سلام، مینا!',4,NULL,NULL,NULL,NULL,'[{"surface":"Hi","lemma":"hi","translation":"سلام (خودمانی)","partOfSpeech":"interjection","suffix":","},{"surface":"Mina","lemma":"Mina","translation":"مینا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,2,'learner','Hi, Ava!','سلام، آوا!',4,NULL,NULL,'hi ava',NULL,'[{"surface":"Hi","lemma":"hi","translation":"سلام (خودمانی)","partOfSpeech":"interjection","suffix":","},{"surface":"Ava","lemma":"Ava","translation":"آوا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_ava,3,'character','How are you today?','امروز حالت چطوره؟',4,NULL,NULL,NULL,NULL,'[{"surface":"How","lemma":"how","translation":"چطور / چگونه","partOfSpeech":"adverb"},{"surface":"are","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"هستی"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"today","lemma":"today","translation":"امروز","partOfSpeech":"adverb","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,4,'learner','I''m great today.','امروز عالی‌ام.',4,NULL,NULL,'i''m great today',NULL,'[{"surface":"I''m","lemma":"I''m","translation":"من هستم","partOfSpeech":"phrase"},{"surface":"great","lemma":"great","translation":"عالی","partOfSpeech":"adjective"},{"surface":"today","lemma":"today","translation":"امروز","partOfSpeech":"adverb","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_007,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_014,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_015,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'new_word',1,NULL,v_w_015,'عبارت کلیدی درس',NULL,4,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',2,v_t_9,NULL,'به آوا گوش کن',NULL,4,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',3,v_t_10,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,4,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',4,v_t_11,NULL,'به آوا گوش کن',NULL,4,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',5,v_t_12,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,4,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'meaning_choice',6,NULL,v_w_007,'معنی درست را انتخاب کن',NULL,4,'{"mode":"word_translation","question":"today یعنی چی؟","choices":["امروز","فردا","دیروز"],"correctIndex":0}','{"course":"en-fa","series":4,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'word_order',7,v_t_10,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,4,'{"source":"turn","tokens":["Hi","Ava"],"answer":"Hi, Ava!"}','{"course":"en-fa","series":4,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,4,'{"source":"lesson_story","question":"مینا امروز چه حالی دارد؟","choices":["عالی","بد","خسته"],"correctIndex":0}','{"course":"en-fa","series":4,"level":"Start","skill":"reading"}');

  -- Lesson 4: Ask the question back
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ava,v_c_mina,'Ask the question back','پرسش را برگردان','Mina answers Ava and asks the same question back with And you before they say goodbye.','مینا به آوا پاسخ می‌دهد و با «تو چطور» همان پرسش را برمی‌گرداند، سپس خداحافظی می‌کنند.','story','mina-ava-english-class',8,4,162,4,'validated','{"course":"en-fa","series":4,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_ava,1,'character','Hello, Mina!','سلام، مینا!',4,NULL,NULL,NULL,NULL,'[{"surface":"Hello","lemma":"hello","translation":"سلام","partOfSpeech":"interjection","suffix":","},{"surface":"Mina","lemma":"Mina","translation":"مینا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,2,'learner','Hi, Ava!','سلام، آوا!',4,NULL,NULL,'hi ava',NULL,'[{"surface":"Hi","lemma":"hi","translation":"سلام (خودمانی)","partOfSpeech":"interjection","suffix":","},{"surface":"Ava","lemma":"Ava","translation":"آوا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_ava,3,'character','How are you today?','امروز حالت چطوره؟',4,NULL,NULL,NULL,NULL,'[{"surface":"How","lemma":"how","translation":"چطور / چگونه","partOfSpeech":"adverb"},{"surface":"are","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"هستی"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"today","lemma":"today","translation":"امروز","partOfSpeech":"adverb","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,4,'learner','Fine, thanks. And you?','خوبم، ممنون. تو چطور؟',4,NULL,NULL,'fine thanks and you',NULL,'[{"surface":"Fine","lemma":"fine","translation":"خوب","partOfSpeech":"adjective","suffix":","},{"surface":"thanks","lemma":"thanks","translation":"ممنون","partOfSpeech":"interjection","suffix":"."},{"surface":"And","lemma":"and","translation":"و","partOfSpeech":"conjunction"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_ava,5,'character','I''m good, thanks.','خوبم، ممنون.',4,NULL,NULL,NULL,NULL,'[{"surface":"I''m","lemma":"I''m","translation":"من هستم","partOfSpeech":"phrase"},{"surface":"good","lemma":"good","translation":"خوب","partOfSpeech":"adjective","suffix":","},{"surface":"thanks","lemma":"thanks","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,6,'learner','Goodbye, Ava!','خداحافظ، آوا!',4,NULL,NULL,'goodbye ava',NULL,'[{"surface":"Goodbye","lemma":"goodbye","translation":"خداحافظ","partOfSpeech":"interjection","suffix":","},{"surface":"Ava","lemma":"Ava","translation":"آوا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_003,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_006,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_007,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_010,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_014,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_016,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_017,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_018,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_019,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'new_word',1,NULL,v_w_019,'عبارت کلیدی درس',NULL,4,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',2,v_t_13,NULL,'به آوا گوش کن',NULL,4,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',3,v_t_14,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,4,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',4,v_t_15,NULL,'به آوا گوش کن',NULL,4,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',5,v_t_16,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,4,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',6,v_t_17,NULL,'به آوا گوش کن',NULL,4,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',7,v_t_18,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,4,NULL,'{"course":"en-fa","series":4,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'meaning_choice',8,NULL,v_w_016,'معنی درست را انتخاب کن',NULL,4,'{"mode":"word_translation","question":"and یعنی چی؟","choices":["و","اما","یا"],"correctIndex":0}','{"course":"en-fa","series":4,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'word_order',9,v_t_14,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,4,'{"source":"turn","tokens":["Hi","Ava"],"answer":"Hi, Ava!"}','{"course":"en-fa","series":4,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'reading_comprehension',10,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,4,'{"source":"lesson_story","question":"مینا بعد از گفتن حال خودش چه می‌پرسد؟","choices":["تو چطور","اسمت چیه","امروز چه روزی است"],"correctIndex":0}','{"course":"en-fa","series":4,"level":"Start","skill":"reading"}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 004 Lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two distinct Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND storyline_key='mina-ava-english-class' AND storyline_order BETWEEN 5 AND 8;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 004 storyline continuity.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>18 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 004 Turn count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND (JSON_VALID(t.tokens)=0 OR JSON_LENGTH(t.tokens)=0);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Turn without valid clickable tokens.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id JOIN JSON_TABLE(t.tokens,'$[*]' COLUMNS(lemma VARCHAR(180) PATH '$.lemma',part_of_speech VARCHAR(48) PATH '$.partOfSpeech',translation VARCHAR(255) PATH '$.translation')) jt LEFT JOIN words w ON w.course_id=v_course AND w.lemma=jt.lemma AND w.part_of_speech=jt.part_of_speech AND w.translation=jt.translation LEFT JOIN lesson_words lw ON lw.lesson_id=t.lesson_id AND lw.word_id=w.id WHERE l.chapter_id=v_chapter AND (w.id IS NULL OR lw.word_id IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Clickable token lacks exact Word tuple mapping.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>34 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 004 Activity count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (JSON_EXTRACT(ac.config,'$.question') IS NULL OR JSON_LENGTH(JSON_EXTRACT(ac.config,'$.choices'))<2);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without learner task.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons l WHERE l.chapter_id=v_chapter AND (NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='listen') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='speak') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='word_order') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='reading_comprehension'));
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Lesson missing Speaking, Listening, Writing, or Reading practice.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter AND lw.is_target=1;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 004 explicit-target count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) d;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_en_fa_series_004_v9();
DROP PROCEDURE IF EXISTS import_nova_en_fa_series_004_v9;

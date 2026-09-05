-- NOVA v9.0 / EN-FA / START SERIES 019 / I have a small kitchen
-- Independently authored for Persian speakers; requires validated en-fa Series 018.
-- Data import only; canonical schema v9.0 remains unchanged.
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_en_fa_series_019_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_en_fa_series_019_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_level BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_previous_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_previous_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_chloe BIGINT UNSIGNED DEFAULT NULL;
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

  DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN ROLLBACK; RESIGNAL; END;
  START TRANSACTION;
  SELECT id INTO v_course FROM courses WHERE learning_language='en' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 018 en-fa Course missing.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='ST' AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 018 Start Level missing.'; END IF;
  SELECT id INTO v_previous_module FROM modules WHERE level_id=v_level AND sort_order=4 ORDER BY id LIMIT 1;
  IF v_previous_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 018 prerequisite Module missing.'; END IF;
  SELECT id INTO v_previous_chapter FROM chapters WHERE module_id=v_previous_module AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_previous_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 018 Chapter missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_previous_chapter AND status='validated' AND storyline_key='mina-chloe-room-picture' AND storyline_order BETWEEN 1 AND 4;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 018 must be validated with its exact storyline orders.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_previous_chapter AND status='validated' AND title='It''s on the table';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 018 canonical prerequisite mismatch.'; END IF;

  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=4 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 019 target Module 04 missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM modules WHERE id=v_module AND title='Home & Things' AND title_translation='خانه و وسایل';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 019 target Module identity mismatch.'; END IF;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=4 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN
    INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES(v_module,'I have a small kitchen','من یک آشپزخانه کوچک دارم','Mina tells Chloe about her small kitchen and the furniture she has there.','مینا درباره آشپزخانه کوچکش و وسایلی که آنجا دارد با کلویی حرف می‌زند.',4,19,19,4,'planned','{"course":"en-fa","level":"Start","series":19,"levelChapterOrder":19}');
    SET v_chapter=LAST_INSERT_ID();
  END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='I have a small kitchen' AND title_translation='من یک آشپزخانه کوچک دارم';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 019 Chapter identity mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 019 Chapter must be empty before import.'; END IF;
  SELECT id INTO v_c_chloe FROM characters WHERE course_id=v_course AND name='Chloe' AND gender='female' ORDER BY id LIMIT 1;
  SELECT id INTO v_c_mina FROM characters WHERE course_id=v_course AND name='Mina' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_chloe IS NULL OR v_c_mina IS NULL OR v_c_chloe=v_c_mina THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required distinct English Characters missing.'; END IF;

  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='do' AND part_of_speech='auxiliary' AND translation='فعل کمکی برای پرسش' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: do'; END IF;
  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='you' AND part_of_speech='pronoun' AND translation='تو / شما' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: you'; END IF;
  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='have' AND part_of_speech='verb' AND translation='داشتن / دارم' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'have','have','verb','داشتن / دارم',19,'{"present_i_you_we_they":"have","present_he_she_it":"has"}','[{"lemma":"want","translation":"خواستن"},{"lemma":"see","translation":"دیدن"},{"lemma":"speak","translation":"صحبت کردن"}]','I have a table.','من یک میز دارم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":19,"explicitTarget":false}');
    SET v_w_003=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='a' AND part_of_speech='article' AND translation='یک / مقداری' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: a'; END IF;
  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='kitchen' AND part_of_speech='noun' AND translation='آشپزخانه' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'kitchen','kitchen','noun','آشپزخانه',19,'{"article":"a","plural":"kitchens"}','[{"lemma":"room","translation":"اتاق"},{"lemma":"table","translation":"میز"},{"lemma":"chair","translation":"صندلی"}]','I have a small kitchen.','من یک آشپزخانه کوچک دارم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":19,"explicitTarget":false}');
    SET v_w_005=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='I' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: I'; END IF;
  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='small' AND part_of_speech='adjective' AND translation='کوچک' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'small','small','adjective','کوچک',19,'{"comparative":"smaller"}','[{"lemma":"big","translation":"بزرگ"},{"lemma":"nice","translation":"خوب"},{"lemma":"new","translation":"جدید"}]','My kitchen is small.','آشپزخانه من کوچک است.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":19,"explicitTarget":false}');
    SET v_w_007=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='yes' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: yes'; END IF;
  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='I have a small kitchen.' AND part_of_speech='phrase' AND translation='من یک آشپزخانه کوچک دارم.' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'I have a small kitchen.','I have a small kitchen.','phrase','من یک آشپزخانه کوچک دارم.',19,'{"pattern":"I + have + a + adjective + noun"}','[{"lemma":"I have a small room.","translation":"من یک اتاق کوچک دارم."},{"lemma":"You have a small kitchen.","translation":"تو یک آشپزخانه کوچک داری."},{"lemma":"I a small kitchen have.","translation":"من یک کوچک آشپزخانه دارم."}]','I have a small kitchen.','من یک آشپزخانه کوچک دارم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":19,"explicitTarget":true}');
    SET v_w_009=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='table' AND part_of_speech='noun' AND translation='میز' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: table'; END IF;
  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='and' AND part_of_speech='conjunction' AND translation='و' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: and'; END IF;
  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='chair' AND part_of_speech='noun' AND translation='صندلی' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: chair'; END IF;
  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='Do you have a table?' AND part_of_speech='phrase' AND translation='تو میز داری؟' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Do you have a table?','Do you have a table?','phrase','تو میز داری؟',19,'{"pattern":"do + you + have + a + noun"}','[{"lemma":"Do you have a chair?","translation":"تو صندلی داری؟"},{"lemma":"You have a table.","translation":"تو میز داری."},{"lemma":"Do have you a table?","translation":"آیا داری تو میز؟"}]','Do you have a table?','تو میز داری؟',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":19,"explicitTarget":true}');
    SET v_w_013=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='Yes, I have a table.' AND part_of_speech='phrase' AND translation='بله، من میز دارم.' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Yes, I have a table.','Yes, I have a table.','phrase','بله، من میز دارم.',19,'{"pattern":"yes + I + have + a + noun"}','[{"lemma":"Yes, I have a chair.","translation":"بله، من صندلی دارم."},{"lemma":"No, I have a table.","translation":"نه، من میز دارم."},{"lemma":"Yes, I a table have.","translation":"بله، من یک میز دارم."}]','Yes, I have a table.','بله، من میز دارم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":19,"explicitTarget":true}');
    SET v_w_014=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='my' AND part_of_speech='determiner' AND translation='من / ـم' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: my'; END IF;
  SELECT id INTO v_w_016 FROM words WHERE course_id=v_course AND lemma='be' AND part_of_speech='verb' AND translation='بودن / هستم' ORDER BY id LIMIT 1;
  IF v_w_016 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: be'; END IF;
  SELECT id INTO v_w_017 FROM words WHERE course_id=v_course AND lemma='My kitchen is small.' AND part_of_speech='phrase' AND translation='آشپزخانه من کوچک است.' ORDER BY id LIMIT 1;
  IF v_w_017 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'My kitchen is small.','My kitchen is small.','phrase','آشپزخانه من کوچک است.',19,'{"pattern":"possessive + noun + be + adjective"}','[{"lemma":"My room is small.","translation":"اتاق من کوچک است."},{"lemma":"Your kitchen is small.","translation":"آشپزخانه تو کوچک است."},{"lemma":"My kitchen small is.","translation":"آشپزخانه من کوچک است."}]','My kitchen is small.','آشپزخانه من کوچک است.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":19,"explicitTarget":true}');
    SET v_w_017=LAST_INSERT_ID();
  END IF;

  -- Lesson 1: A small kitchen
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_chloe,v_c_mina,'A small kitchen','یک آشپزخانه کوچک','Chloe asks about Mina''s kitchen, and Mina gives a short description.','کلویی درباره آشپزخانه مینا می‌پرسد و مینا آن را کوتاه توصیف می‌کند.','story','mina-chloe-room-picture',5,19,138,1,'validated','{"course":"en-fa","series":19,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_chloe,1,'character','Do you have a kitchen?','تو آشپزخانه داری؟',19,NULL,NULL,NULL,NULL,'[{"surface":"Do","lemma":"do","translation":"فعل کمکی برای پرسش","partOfSpeech":"auxiliary"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"have","lemma":"have","translation":"داشتن / دارم","partOfSpeech":"verb"},{"surface":"a","lemma":"a","translation":"یک / مقداری","partOfSpeech":"article"},{"surface":"kitchen","lemma":"kitchen","translation":"آشپزخانه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mina,2,'learner','I have a small kitchen.','من یک آشپزخانه کوچک دارم.',19,NULL,NULL,'i have a small kitchen',NULL,'[{"surface":"I","lemma":"I","translation":"من","partOfSpeech":"pronoun"},{"surface":"have","lemma":"have","translation":"داشتن / دارم","partOfSpeech":"verb"},{"surface":"a","lemma":"a","translation":"یک / مقداری","partOfSpeech":"article"},{"surface":"small","lemma":"small","translation":"کوچک","partOfSpeech":"adjective"},{"surface":"kitchen","lemma":"kitchen","translation":"آشپزخانه","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_chloe,3,'character','A small kitchen?','یک آشپزخانه کوچک؟',19,NULL,NULL,NULL,NULL,'[{"surface":"A","lemma":"a","translation":"یک / مقداری","partOfSpeech":"article"},{"surface":"small","lemma":"small","translation":"کوچک","partOfSpeech":"adjective"},{"surface":"kitchen","lemma":"kitchen","translation":"آشپزخانه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mina,4,'learner','Yes, small.','بله، کوچک است.',19,NULL,NULL,'yes small',NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"small","lemma":"small","translation":"کوچک","partOfSpeech":"adjective","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_003,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_004,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_005,'new',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_007,'new',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_009,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'new_word',1,NULL,v_w_009,'عبارت کلیدی درس',NULL,19,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',2,v_t_1,NULL,'به کلویی گوش کن',NULL,19,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',3,v_t_2,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,19,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',4,v_t_3,NULL,'به کلویی گوش کن',NULL,19,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',5,v_t_4,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,19,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'meaning_choice',6,NULL,v_w_005,'معنی درست را انتخاب کن',NULL,19,'{"mode":"word_translation","question":"kitchen یعنی چی؟","choices":["آشپزخانه","اتاق","میز"],"correctIndex":0}','{"course":"en-fa","series":19,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'word_order',7,v_t_2,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,19,'{"source":"turn","tokens":["I","have","a","small","kitchen"],"answer":"I have a small kitchen."}','{"course":"en-fa","series":19,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,19,'{"source":"lesson_story","question":"آشپزخانه مینا چگونه است؟","choices":["کوچک","بزرگ","جدید"],"correctIndex":0}','{"course":"en-fa","series":19,"level":"Start","skill":"reading"}');

  -- Lesson 2: A table in the kitchen
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_chloe,v_c_mina,'A table in the kitchen','یک میز در آشپزخانه','Mina asks what Chloe has in her kitchen.','مینا می‌پرسد کلویی در آشپزخانه‌اش چه چیزی دارد.','story','mina-chloe-room-picture',6,19,150,2,'validated','{"course":"en-fa","series":19,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_chloe,1,'character','I have a small kitchen.','من یک آشپزخانه کوچک دارم.',19,NULL,NULL,NULL,NULL,'[{"surface":"I","lemma":"I","translation":"من","partOfSpeech":"pronoun"},{"surface":"have","lemma":"have","translation":"داشتن / دارم","partOfSpeech":"verb"},{"surface":"a","lemma":"a","translation":"یک / مقداری","partOfSpeech":"article"},{"surface":"small","lemma":"small","translation":"کوچک","partOfSpeech":"adjective"},{"surface":"kitchen","lemma":"kitchen","translation":"آشپزخانه","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mina,2,'learner','Do you have a table?','تو میز داری؟',19,NULL,NULL,'do you have a table',NULL,'[{"surface":"Do","lemma":"do","translation":"فعل کمکی برای پرسش","partOfSpeech":"auxiliary"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"have","lemma":"have","translation":"داشتن / دارم","partOfSpeech":"verb"},{"surface":"a","lemma":"a","translation":"یک / مقداری","partOfSpeech":"article"},{"surface":"table","lemma":"table","translation":"میز","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_chloe,3,'character','Yes, I have a table.','بله، من میز دارم.',19,NULL,NULL,NULL,NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"I","lemma":"I","translation":"من","partOfSpeech":"pronoun"},{"surface":"have","lemma":"have","translation":"داشتن / دارم","partOfSpeech":"verb"},{"surface":"a","lemma":"a","translation":"یک / مقداری","partOfSpeech":"article"},{"surface":"table","lemma":"table","translation":"میز","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mina,4,'learner','And a chair?','و صندلی؟',19,NULL,NULL,'and a chair',NULL,'[{"surface":"And","lemma":"and","translation":"و","partOfSpeech":"conjunction"},{"surface":"a","lemma":"a","translation":"یک / مقداری","partOfSpeech":"article"},{"surface":"chair","lemma":"chair","translation":"صندلی","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_chloe,5,'character','Yes, a table and a chair.','بله، یک میز و یک صندلی.',19,NULL,NULL,NULL,NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"a","lemma":"a","translation":"یک / مقداری","partOfSpeech":"article"},{"surface":"table","lemma":"table","translation":"میز","partOfSpeech":"noun"},{"surface":"and","lemma":"and","translation":"و","partOfSpeech":"conjunction"},{"surface":"a","lemma":"a","translation":"یک / مقداری","partOfSpeech":"article"},{"surface":"chair","lemma":"chair","translation":"صندلی","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_003,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_004,'review',0,6);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_006,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_007,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_008,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_010,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_011,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_012,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_013,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'new_word',1,NULL,v_w_013,'عبارت کلیدی درس',NULL,19,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',2,v_t_5,NULL,'به کلویی گوش کن',NULL,19,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',3,v_t_6,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,19,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',4,v_t_7,NULL,'به کلویی گوش کن',NULL,19,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',5,v_t_8,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,19,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',6,v_t_9,NULL,'به کلویی گوش کن',NULL,19,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'meaning_choice',7,NULL,v_w_003,'معنی درست را انتخاب کن',NULL,19,'{"mode":"word_translation","question":"have یعنی چی؟","choices":["داشتن / دارم","خواستن","دیدن"],"correctIndex":0}','{"course":"en-fa","series":19,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'word_order',8,v_t_6,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,19,'{"source":"turn","tokens":["Do","you","have","a","table"],"answer":"Do you have a table?"}','{"course":"en-fa","series":19,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'reading_comprehension',9,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,19,'{"source":"lesson_story","question":"کلویی در آشپزخانه چه وسایلی دارد؟","choices":["یک میز و یک صندلی","یک تخت و یک چراغ","فقط یک صندلی"],"correctIndex":0}','{"course":"en-fa","series":19,"level":"Start","skill":"reading"}');

  -- Lesson 3: Yes, I have a table
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_chloe,v_c_mina,'Yes, I have a table','بله، من میز دارم','Chloe checks the furniture, and Mina answers with a complete have sentence.','کلویی وسایل را بررسی می‌کند و مینا با یک جمله کامل دارای دارم پاسخ می‌دهد.','story','mina-chloe-room-picture',7,19,162,3,'validated','{"course":"en-fa","series":19,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_chloe,1,'character','Do you have a table?','تو میز داری؟',19,NULL,NULL,NULL,NULL,'[{"surface":"Do","lemma":"do","translation":"فعل کمکی برای پرسش","partOfSpeech":"auxiliary"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"have","lemma":"have","translation":"داشتن / دارم","partOfSpeech":"verb"},{"surface":"a","lemma":"a","translation":"یک / مقداری","partOfSpeech":"article"},{"surface":"table","lemma":"table","translation":"میز","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,2,'learner','Yes, I have a table.','بله، من میز دارم.',19,NULL,NULL,'yes i have a table',NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"I","lemma":"I","translation":"من","partOfSpeech":"pronoun"},{"surface":"have","lemma":"have","translation":"داشتن / دارم","partOfSpeech":"verb"},{"surface":"a","lemma":"a","translation":"یک / مقداری","partOfSpeech":"article"},{"surface":"table","lemma":"table","translation":"میز","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_chloe,3,'character','And a chair?','و صندلی؟',19,NULL,NULL,NULL,NULL,'[{"surface":"And","lemma":"and","translation":"و","partOfSpeech":"conjunction"},{"surface":"a","lemma":"a","translation":"یک / مقداری","partOfSpeech":"article"},{"surface":"chair","lemma":"chair","translation":"صندلی","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,4,'learner','Yes, a chair.','بله، یک صندلی.',19,NULL,NULL,'yes a chair',NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"a","lemma":"a","translation":"یک / مقداری","partOfSpeech":"article"},{"surface":"chair","lemma":"chair","translation":"صندلی","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_chloe,5,'character','A small table?','یک میز کوچک؟',19,NULL,NULL,NULL,NULL,'[{"surface":"A","lemma":"a","translation":"یک / مقداری","partOfSpeech":"article"},{"surface":"small","lemma":"small","translation":"کوچک","partOfSpeech":"adjective"},{"surface":"table","lemma":"table","translation":"میز","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,6,'learner','Yes, a small table.','بله، یک میز کوچک.',19,NULL,NULL,'yes a small table',NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"a","lemma":"a","translation":"یک / مقداری","partOfSpeech":"article"},{"surface":"small","lemma":"small","translation":"کوچک","partOfSpeech":"adjective"},{"surface":"table","lemma":"table","translation":"میز","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_003,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_004,'review',0,6);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_007,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_008,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_010,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_011,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_012,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_014,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'new_word',1,NULL,v_w_014,'عبارت کلیدی درس',NULL,19,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',2,v_t_10,NULL,'به کلویی گوش کن',NULL,19,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',3,v_t_11,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,19,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',4,v_t_12,NULL,'به کلویی گوش کن',NULL,19,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',5,v_t_13,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,19,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',6,v_t_14,NULL,'به کلویی گوش کن',NULL,19,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',7,v_t_15,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,19,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'meaning_choice',8,NULL,v_w_003,'معنی درست را انتخاب کن',NULL,19,'{"mode":"word_translation","question":"have یعنی چی؟","choices":["داشتن / دارم","خواستن","دیدن"],"correctIndex":0}','{"course":"en-fa","series":19,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'word_order',9,v_t_11,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,19,'{"source":"turn","tokens":["Yes","I","have","a","table"],"answer":"Yes, I have a table."}','{"course":"en-fa","series":19,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'reading_comprehension',10,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,19,'{"source":"lesson_story","question":"مینا داشتن کدام وسیله را تایید می‌کند؟","choices":["میز","تخت","چراغ"],"correctIndex":0}','{"course":"en-fa","series":19,"level":"Start","skill":"reading"}');

  -- Lesson 4: My kitchen is small
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_chloe,v_c_mina,'My kitchen is small','آشپزخانه من کوچک است','Mina combines the new room word and adjective in one clear sentence.','مینا واژه جدید اتاق و صفت را در یک جمله روشن کنار هم می‌آورد.','story','mina-chloe-room-picture',8,19,138,4,'validated','{"course":"en-fa","series":19,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_chloe,1,'character','A small kitchen?','یک آشپزخانه کوچک؟',19,NULL,NULL,NULL,NULL,'[{"surface":"A","lemma":"a","translation":"یک / مقداری","partOfSpeech":"article"},{"surface":"small","lemma":"small","translation":"کوچک","partOfSpeech":"adjective"},{"surface":"kitchen","lemma":"kitchen","translation":"آشپزخانه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,2,'learner','My kitchen is small.','آشپزخانه من کوچک است.',19,NULL,NULL,'my kitchen is small',NULL,'[{"surface":"My","lemma":"my","translation":"من / ـم","partOfSpeech":"determiner"},{"surface":"kitchen","lemma":"kitchen","translation":"آشپزخانه","partOfSpeech":"noun"},{"surface":"is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"است"},{"surface":"small","lemma":"small","translation":"کوچک","partOfSpeech":"adjective","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_chloe,3,'character','A table and a chair?','یک میز و یک صندلی؟',19,NULL,NULL,NULL,NULL,'[{"surface":"A","lemma":"a","translation":"یک / مقداری","partOfSpeech":"article"},{"surface":"table","lemma":"table","translation":"میز","partOfSpeech":"noun"},{"surface":"and","lemma":"and","translation":"و","partOfSpeech":"conjunction"},{"surface":"a","lemma":"a","translation":"یک / مقداری","partOfSpeech":"article"},{"surface":"chair","lemma":"chair","translation":"صندلی","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,4,'learner','Yes, a table and a chair.','بله، یک میز و یک صندلی.',19,NULL,NULL,'yes a table and a chair',NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"a","lemma":"a","translation":"یک / مقداری","partOfSpeech":"article"},{"surface":"table","lemma":"table","translation":"میز","partOfSpeech":"noun"},{"surface":"and","lemma":"and","translation":"و","partOfSpeech":"conjunction"},{"surface":"a","lemma":"a","translation":"یک / مقداری","partOfSpeech":"article"},{"surface":"chair","lemma":"chair","translation":"صندلی","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_004,'review',0,5);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_005,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_007,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_010,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_011,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_012,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_015,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_016,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_017,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'new_word',1,NULL,v_w_017,'عبارت کلیدی درس',NULL,19,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',2,v_t_16,NULL,'به کلویی گوش کن',NULL,19,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',3,v_t_17,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,19,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',4,v_t_18,NULL,'به کلویی گوش کن',NULL,19,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',5,v_t_19,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,19,NULL,'{"course":"en-fa","series":19,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'meaning_choice',6,NULL,v_w_007,'معنی درست را انتخاب کن',NULL,19,'{"mode":"word_translation","question":"small یعنی چی؟","choices":["کوچک","بزرگ","خوب"],"correctIndex":0}','{"course":"en-fa","series":19,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'word_order',7,v_t_17,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,19,'{"source":"turn","tokens":["My","kitchen","is","small"],"answer":"My kitchen is small."}','{"course":"en-fa","series":19,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,19,'{"source":"lesson_story","question":"مینا آشپزخانه‌اش را چگونه توصیف می‌کند؟","choices":["کوچک","بزرگ","قدیمی"],"correctIndex":0}','{"course":"en-fa","series":19,"level":"Start","skill":"reading"}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 019 Lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two distinct Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND storyline_key='mina-chloe-room-picture' AND storyline_order BETWEEN 5 AND 8;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 019 storyline continuity.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>19 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 019 Turn count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND (JSON_VALID(t.tokens)=0 OR JSON_LENGTH(t.tokens)=0);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Turn without valid clickable tokens.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id JOIN JSON_TABLE(t.tokens,'$[*]' COLUMNS(lemma VARCHAR(180) PATH '$.lemma',part_of_speech VARCHAR(48) PATH '$.partOfSpeech',translation VARCHAR(255) PATH '$.translation')) jt LEFT JOIN words w ON w.course_id=v_course AND w.lemma=jt.lemma AND w.part_of_speech=jt.part_of_speech AND w.translation=jt.translation LEFT JOIN lesson_words lw ON lw.lesson_id=t.lesson_id AND lw.word_id=w.id WHERE l.chapter_id=v_chapter AND (w.id IS NULL OR lw.word_id IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Clickable token lacks exact Word tuple mapping.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>35 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 019 Activity count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (JSON_EXTRACT(ac.config,'$.question') IS NULL OR JSON_LENGTH(JSON_EXTRACT(ac.config,'$.choices'))<2);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without learner task.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons l WHERE l.chapter_id=v_chapter AND (NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='listen') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='speak') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='word_order') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='reading_comprehension'));
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Lesson missing Speaking, Listening, Writing, or Reading practice.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter AND lw.is_target=1;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 019 explicit-target count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) d;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_en_fa_series_019_v9();
DROP PROCEDURE IF EXISTS import_nova_en_fa_series_019_v9;
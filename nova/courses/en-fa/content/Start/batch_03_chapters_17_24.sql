-- NOVA v9.0 / EN-FA / START BATCH 03 / SERIES 017-024
-- Concatenated QA-passed chapter imports; execute in order. No schema DDL.

-- NOVA v9.0 / EN-FA / START SERIES 017 / Where is my key?
-- Independently authored for Persian speakers; requires validated en-fa Series 016.
-- Data import only; canonical schema v9.0 remains unchanged.
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_en_fa_series_017_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_en_fa_series_017_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_level BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_previous_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_previous_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_noah BIGINT UNSIGNED DEFAULT NULL;
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
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 016 en-fa Course missing.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='ST' AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 016 Start Level missing.'; END IF;
  SELECT id INTO v_previous_module FROM modules WHERE level_id=v_level AND sort_order=4 ORDER BY id LIMIT 1;
  IF v_previous_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 016 prerequisite Module missing.'; END IF;
  SELECT id INTO v_previous_chapter FROM chapters WHERE module_id=v_previous_module AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_previous_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 016 Chapter missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_previous_chapter AND status='validated' AND storyline_key='mina-noah-room-tour' AND storyline_order BETWEEN 1 AND 4;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 016 must be validated with its exact storyline orders.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_previous_chapter AND status='validated' AND title='This is my room';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 016 canonical prerequisite mismatch.'; END IF;

  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=4 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 017 target Module 04 missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM modules WHERE id=v_module AND title='Home & Things' AND title_translation='خانه و وسایل';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 017 target Module identity mismatch.'; END IF;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN
    INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES(v_module,'Where is my key?','کلیدم کجاست؟','Mina and Noah look around the room for Mina''s key and practise a simple where question.','مینا و نوح در اتاق دنبال کلید مینا می‌گردند و یک پرسش ساده با کجا را تمرین می‌کنند.',4,17,17,2,'planned','{"course":"en-fa","level":"Start","series":17,"levelChapterOrder":17}');
    SET v_chapter=LAST_INSERT_ID();
  END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='Where is my key?' AND title_translation='کلیدم کجاست؟';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 017 Chapter identity mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 017 Chapter must be empty before import.'; END IF;
  SELECT id INTO v_c_noah FROM characters WHERE course_id=v_course AND name='Noah' AND gender='male' ORDER BY id LIMIT 1;
  SELECT id INTO v_c_mina FROM characters WHERE course_id=v_course AND name='Mina' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_noah IS NULL OR v_c_mina IS NULL OR v_c_noah=v_c_mina THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required distinct English Characters missing.'; END IF;

  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='where' AND part_of_speech='adverb' AND translation='کجا' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: where'; END IF;
  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='be' AND part_of_speech='verb' AND translation='بودن / هستم' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: be'; END IF;
  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='your' AND part_of_speech='determiner' AND translation='تو / ـت' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: your'; END IF;
  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='key' AND part_of_speech='noun' AND translation='کلید' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'key','key','noun','کلید',17,'{"article":"a","plural":"keys"}','[{"lemma":"room","translation":"اتاق"},{"lemma":"table","translation":"میز"},{"lemma":"lamp","translation":"چراغ"}]','Where is my key?','کلید من کجاست؟',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":17,"explicitTarget":false}');
    SET v_w_004=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='my' AND part_of_speech='determiner' AND translation='من / ـم' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: my'; END IF;
  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='this' AND part_of_speech='pronoun' AND translation='این' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: this'; END IF;
  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='no' AND part_of_speech='interjection' AND translation='نه' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'no','no','interjection','نه',17,'{"use":"negative answer"}','[{"lemma":"yes","translation":"بله"},{"lemma":"thanks","translation":"ممنون"},{"lemma":"hello","translation":"سلام"}]','No, not my key.','نه، کلید من نیست.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":17,"explicitTarget":false}');
    SET v_w_007=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='not' AND part_of_speech='adverb' AND translation='نه / نیست' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'not','not','adverb','نه / نیست',17,'{"use":"negation after be"}','[{"lemma":"yes","translation":"بله"},{"lemma":"here","translation":"اینجا"},{"lemma":"where","translation":"کجا"}]','This is not my key.','این کلید من نیست.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":17,"explicitTarget":false}');
    SET v_w_008=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='Where is my key?' AND part_of_speech='phrase' AND translation='کلید من کجاست؟' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Where is my key?','Where is my key?','phrase','کلید من کجاست؟',17,'{"pattern":"where + be + possessive + noun"}','[{"lemma":"Where is your key?","translation":"کلید تو کجاست؟"},{"lemma":"This is my key.","translation":"این کلید من است."},{"lemma":"Where my key is?","translation":"کجا کلید من است؟"}]','Where is my key?','کلید من کجاست؟',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":17,"explicitTarget":true}');
    SET v_w_009=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='a' AND part_of_speech='article' AND translation='یک / مقداری' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: a'; END IF;
  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='yes' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: yes'; END IF;
  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='and' AND part_of_speech='conjunction' AND translation='و' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: and'; END IF;
  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='here' AND part_of_speech='adverb' AND translation='اینجا' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'here','here','adverb','اینجا',17,'{"use":"place near the speaker"}','[{"lemma":"where","translation":"کجا"},{"lemma":"there","translation":"آنجا"},{"lemma":"home","translation":"خانه"}]','Here is my key.','کلید من اینجاست.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":17,"explicitTarget":false}');
    SET v_w_013=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='Is this your key?' AND part_of_speech='phrase' AND translation='این کلید تو است؟' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Is this your key?','Is this your key?','phrase','این کلید تو است؟',17,'{"pattern":"be + this + possessive + noun"}','[{"lemma":"Is this my key?","translation":"این کلید من است؟"},{"lemma":"This is your key.","translation":"این کلید تو است."},{"lemma":"Is your this key?","translation":"آیا تو این کلید؟"}]','Is this your key?','این کلید تو است؟',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":17,"explicitTarget":true}');
    SET v_w_014=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='No, this is not my key.' AND part_of_speech='phrase' AND translation='نه، این کلید من نیست.' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'No, this is not my key.','No, this is not my key.','phrase','نه، این کلید من نیست.',17,'{"pattern":"no + this + be + not + possessive + noun"}','[{"lemma":"Yes, this is my key.","translation":"بله، این کلید من است."},{"lemma":"No, this is your key.","translation":"نه، این کلید تو است."},{"lemma":"No, this not is my key.","translation":"نه، این نیست است کلید من."}]','No, this is not my key.','نه، این کلید من نیست.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":17,"explicitTarget":true}');
    SET v_w_015=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_016 FROM words WHERE course_id=v_course AND lemma='thanks' AND part_of_speech='interjection' AND translation='ممنون' ORDER BY id LIMIT 1;
  IF v_w_016 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: thanks'; END IF;
  SELECT id INTO v_w_017 FROM words WHERE course_id=v_course AND lemma='Here is my key.' AND part_of_speech='phrase' AND translation='کلید من اینجاست.' ORDER BY id LIMIT 1;
  IF v_w_017 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Here is my key.','Here is my key.','phrase','کلید من اینجاست.',17,'{"pattern":"here + be + possessive + noun"}','[{"lemma":"Here is your key.","translation":"کلید تو اینجاست."},{"lemma":"Where is my key?","translation":"کلید من کجاست؟"},{"lemma":"Here my key is.","translation":"اینجا کلید من است."}]','Here is my key.','کلید من اینجاست.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":17,"explicitTarget":true}');
    SET v_w_017=LAST_INSERT_ID();
  END IF;

  -- Lesson 1: A missing key
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_noah,v_c_mina,'A missing key','یک کلید گمشده','Noah asks about Mina''s key as the room tour continues.','با ادامه بازدید اتاق، نوح درباره کلید مینا می‌پرسد.','story','mina-noah-room-tour',5,17,138,1,'validated','{"course":"en-fa","series":17,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_noah,1,'character','Where is your key?','کلید تو کجاست؟',17,NULL,NULL,NULL,NULL,'[{"surface":"Where","lemma":"where","translation":"کجا","partOfSpeech":"adverb"},{"surface":"is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"است"},{"surface":"your","lemma":"your","translation":"تو / ـت","partOfSpeech":"determiner"},{"surface":"key","lemma":"key","translation":"کلید","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mina,2,'learner','Where is my key?','کلید من کجاست؟',17,NULL,NULL,'where is my key',NULL,'[{"surface":"Where","lemma":"where","translation":"کجا","partOfSpeech":"adverb"},{"surface":"is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"است"},{"surface":"my","lemma":"my","translation":"من / ـم","partOfSpeech":"determiner"},{"surface":"key","lemma":"key","translation":"کلید","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_noah,3,'character','This key?','این کلید؟',17,NULL,NULL,NULL,NULL,'[{"surface":"This","lemma":"this","translation":"این","partOfSpeech":"pronoun"},{"surface":"key","lemma":"key","translation":"کلید","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mina,4,'learner','No, not my key.','نه، کلید من نیست.',17,NULL,NULL,'no not my key',NULL,'[{"surface":"No","lemma":"no","translation":"نه","partOfSpeech":"interjection","suffix":","},{"surface":"not","lemma":"not","translation":"نه / نیست","partOfSpeech":"adverb"},{"surface":"my","lemma":"my","translation":"من / ـم","partOfSpeech":"determiner"},{"surface":"key","lemma":"key","translation":"کلید","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_001,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_002,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_004,'new',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_005,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_007,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_008,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_009,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'new_word',1,NULL,v_w_009,'عبارت کلیدی درس',NULL,17,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',2,v_t_1,NULL,'به نوح گوش کن',NULL,17,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',3,v_t_2,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,17,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',4,v_t_3,NULL,'به نوح گوش کن',NULL,17,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',5,v_t_4,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,17,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'meaning_choice',6,NULL,v_w_004,'معنی درست را انتخاب کن',NULL,17,'{"mode":"word_translation","question":"key یعنی چی؟","choices":["کلید","اتاق","میز"],"correctIndex":0}','{"course":"en-fa","series":17,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'word_order',7,v_t_2,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,17,'{"source":"turn","tokens":["Where","is","my","key"],"answer":"Where is my key?"}','{"course":"en-fa","series":17,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,17,'{"source":"lesson_story","question":"مینا دنبال چه چیزی می‌گردد؟","choices":["کلیدش","چراغش","تختش"],"correctIndex":0}','{"course":"en-fa","series":17,"level":"Start","skill":"reading"}');

  -- Lesson 2: Is this your key?
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_noah,v_c_mina,'Is this your key?','این کلید تو است؟','Noah finds one key, and Mina checks whose key it is.','نوح یک کلید پیدا می‌کند و مینا می‌پرسد کلید چه کسی است.','story','mina-noah-room-tour',6,17,150,2,'validated','{"course":"en-fa","series":17,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_noah,1,'character','A key!','یک کلید!',17,NULL,NULL,NULL,NULL,'[{"surface":"A","lemma":"a","translation":"یک / مقداری","partOfSpeech":"article"},{"surface":"key","lemma":"key","translation":"کلید","partOfSpeech":"noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mina,2,'learner','Is this your key?','این کلید تو است؟',17,NULL,NULL,'is this your key',NULL,'[{"surface":"Is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"است"},{"surface":"this","lemma":"this","translation":"این","partOfSpeech":"pronoun"},{"surface":"your","lemma":"your","translation":"تو / ـت","partOfSpeech":"determiner"},{"surface":"key","lemma":"key","translation":"کلید","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_noah,3,'character','Yes, my key.','بله، کلید من است.',17,NULL,NULL,NULL,NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"my","lemma":"my","translation":"من / ـم","partOfSpeech":"determiner"},{"surface":"key","lemma":"key","translation":"کلید","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mina,4,'learner','And my key?','و کلید من؟',17,NULL,NULL,'and my key',NULL,'[{"surface":"And","lemma":"and","translation":"و","partOfSpeech":"conjunction"},{"surface":"my","lemma":"my","translation":"من / ـم","partOfSpeech":"determiner"},{"surface":"key","lemma":"key","translation":"کلید","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_noah,5,'character','Not here.','اینجا نیست.',17,NULL,NULL,NULL,NULL,'[{"surface":"Not","lemma":"not","translation":"نه / نیست","partOfSpeech":"adverb"},{"surface":"here","lemma":"here","translation":"اینجا","partOfSpeech":"adverb","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_004,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_005,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_010,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_011,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_013,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_014,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'new_word',1,NULL,v_w_014,'عبارت کلیدی درس',NULL,17,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',2,v_t_5,NULL,'به نوح گوش کن',NULL,17,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',3,v_t_6,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,17,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',4,v_t_7,NULL,'به نوح گوش کن',NULL,17,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',5,v_t_8,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,17,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',6,v_t_9,NULL,'به نوح گوش کن',NULL,17,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'meaning_choice',7,NULL,v_w_004,'معنی درست را انتخاب کن',NULL,17,'{"mode":"word_translation","question":"key یعنی چی؟","choices":["کلید","اتاق","میز"],"correctIndex":0}','{"course":"en-fa","series":17,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'word_order',8,v_t_6,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,17,'{"source":"turn","tokens":["Is","this","your","key"],"answer":"Is this your key?"}','{"course":"en-fa","series":17,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'reading_comprehension',9,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,17,'{"source":"lesson_story","question":"کلید پیدا شده برای چه کسی است؟","choices":["نوح","مینا","مایا"],"correctIndex":0}','{"course":"en-fa","series":17,"level":"Start","skill":"reading"}');

  -- Lesson 3: Not my key
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_noah,v_c_mina,'Not my key','کلید من نیست','Noah checks two more keys, but neither one belongs to Mina.','نوح دو کلید دیگر را بررسی می‌کند، اما هیچ‌کدام برای مینا نیست.','story','mina-noah-room-tour',7,17,162,3,'validated','{"course":"en-fa","series":17,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_noah,1,'character','Is this your key?','این کلید تو است؟',17,NULL,NULL,NULL,NULL,'[{"surface":"Is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"است"},{"surface":"this","lemma":"this","translation":"این","partOfSpeech":"pronoun"},{"surface":"your","lemma":"your","translation":"تو / ـت","partOfSpeech":"determiner"},{"surface":"key","lemma":"key","translation":"کلید","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,2,'learner','No, this is not my key.','نه، این کلید من نیست.',17,NULL,NULL,'no this is not my key',NULL,'[{"surface":"No","lemma":"no","translation":"نه","partOfSpeech":"interjection","suffix":","},{"surface":"this","lemma":"this","translation":"این","partOfSpeech":"pronoun"},{"surface":"is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"است"},{"surface":"not","lemma":"not","translation":"نه / نیست","partOfSpeech":"adverb"},{"surface":"my","lemma":"my","translation":"من / ـم","partOfSpeech":"determiner"},{"surface":"key","lemma":"key","translation":"کلید","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_noah,3,'character','Where is your key?','کلید تو کجاست؟',17,NULL,NULL,NULL,NULL,'[{"surface":"Where","lemma":"where","translation":"کجا","partOfSpeech":"adverb"},{"surface":"is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"است"},{"surface":"your","lemma":"your","translation":"تو / ـت","partOfSpeech":"determiner"},{"surface":"key","lemma":"key","translation":"کلید","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,4,'learner','Not here.','اینجا نیست.',17,NULL,NULL,'not here',NULL,'[{"surface":"Not","lemma":"not","translation":"نه / نیست","partOfSpeech":"adverb"},{"surface":"here","lemma":"here","translation":"اینجا","partOfSpeech":"adverb","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_noah,5,'character','And this key?','و این کلید؟',17,NULL,NULL,NULL,NULL,'[{"surface":"And","lemma":"and","translation":"و","partOfSpeech":"conjunction"},{"surface":"this","lemma":"this","translation":"این","partOfSpeech":"pronoun"},{"surface":"key","lemma":"key","translation":"کلید","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,6,'learner','No, not my key.','نه، کلید من نیست.',17,NULL,NULL,'no not my key',NULL,'[{"surface":"No","lemma":"no","translation":"نه","partOfSpeech":"interjection","suffix":","},{"surface":"not","lemma":"not","translation":"نه / نیست","partOfSpeech":"adverb"},{"surface":"my","lemma":"my","translation":"من / ـم","partOfSpeech":"determiner"},{"surface":"key","lemma":"key","translation":"کلید","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_002,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_003,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_004,'review',0,5);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_005,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_006,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_007,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_008,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_015,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'new_word',1,NULL,v_w_015,'عبارت کلیدی درس',NULL,17,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',2,v_t_10,NULL,'به نوح گوش کن',NULL,17,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',3,v_t_11,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,17,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',4,v_t_12,NULL,'به نوح گوش کن',NULL,17,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',5,v_t_13,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,17,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',6,v_t_14,NULL,'به نوح گوش کن',NULL,17,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',7,v_t_15,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,17,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'meaning_choice',8,NULL,v_w_008,'معنی درست را انتخاب کن',NULL,17,'{"mode":"word_translation","question":"not یعنی چی؟","choices":["نه / نیست","بله","اینجا"],"correctIndex":0}','{"course":"en-fa","series":17,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'word_order',9,v_t_11,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,17,'{"source":"turn","tokens":["No","this","is","not","my","key"],"answer":"No, this is not my key."}','{"course":"en-fa","series":17,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'reading_comprehension',10,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,17,'{"source":"lesson_story","question":"آیا نوح کلید مینا را در این بخش پیدا می‌کند؟","choices":["نه","بله","مشخص نیست"],"correctIndex":0}','{"course":"en-fa","series":17,"level":"Start","skill":"reading"}');

  -- Lesson 4: Here it is
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_noah,v_c_mina,'Here it is','اینجاست','Noah finds the right key and Mina ends the search.','نوح کلید درست را پیدا می‌کند و جست‌وجوی مینا تمام می‌شود.','story','mina-noah-room-tour',8,17,138,4,'validated','{"course":"en-fa","series":17,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_noah,1,'character','And this key?','و این کلید؟',17,NULL,NULL,NULL,NULL,'[{"surface":"And","lemma":"and","translation":"و","partOfSpeech":"conjunction"},{"surface":"this","lemma":"this","translation":"این","partOfSpeech":"pronoun"},{"surface":"key","lemma":"key","translation":"کلید","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,2,'learner','Here is my key!','کلید من اینجاست!',17,NULL,NULL,'here is my key',NULL,'[{"surface":"Here","lemma":"here","translation":"اینجا","partOfSpeech":"adverb"},{"surface":"is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"است"},{"surface":"my","lemma":"my","translation":"من / ـم","partOfSpeech":"determiner"},{"surface":"key","lemma":"key","translation":"کلید","partOfSpeech":"noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_noah,3,'character','Yes, your key.','بله، کلید تو است.',17,NULL,NULL,NULL,NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"your","lemma":"your","translation":"تو / ـت","partOfSpeech":"determiner"},{"surface":"key","lemma":"key","translation":"کلید","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,4,'learner','Thanks.','ممنون.',17,NULL,NULL,'thanks',NULL,'[{"surface":"Thanks","lemma":"thanks","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_004,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_011,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_016,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_017,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'new_word',1,NULL,v_w_017,'عبارت کلیدی درس',NULL,17,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',2,v_t_16,NULL,'به نوح گوش کن',NULL,17,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',3,v_t_17,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,17,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',4,v_t_18,NULL,'به نوح گوش کن',NULL,17,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',5,v_t_19,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,17,NULL,'{"course":"en-fa","series":17,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'meaning_choice',6,NULL,v_w_013,'معنی درست را انتخاب کن',NULL,17,'{"mode":"word_translation","question":"here یعنی چی؟","choices":["اینجا","کجا","آنجا"],"correctIndex":0}','{"course":"en-fa","series":17,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'word_order',7,v_t_17,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,17,'{"source":"turn","tokens":["Here","is","my","key"],"answer":"Here is my key!"}','{"course":"en-fa","series":17,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,17,'{"source":"lesson_story","question":"در پایان چه چیزی پیدا می‌شود؟","choices":["کلید مینا","چراغ","میز"],"correctIndex":0}','{"course":"en-fa","series":17,"level":"Start","skill":"reading"}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 017 Lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two distinct Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND storyline_key='mina-noah-room-tour' AND storyline_order BETWEEN 5 AND 8;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 017 storyline continuity.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>19 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 017 Turn count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND (JSON_VALID(t.tokens)=0 OR JSON_LENGTH(t.tokens)=0);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Turn without valid clickable tokens.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id JOIN JSON_TABLE(t.tokens,'$[*]' COLUMNS(lemma VARCHAR(180) PATH '$.lemma',part_of_speech VARCHAR(48) PATH '$.partOfSpeech',translation VARCHAR(255) PATH '$.translation')) jt LEFT JOIN words w ON w.course_id=v_course AND w.lemma=jt.lemma AND w.part_of_speech=jt.part_of_speech AND w.translation=jt.translation LEFT JOIN lesson_words lw ON lw.lesson_id=t.lesson_id AND lw.word_id=w.id WHERE l.chapter_id=v_chapter AND (w.id IS NULL OR lw.word_id IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Clickable token lacks exact Word tuple mapping.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>35 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 017 Activity count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (JSON_EXTRACT(ac.config,'$.question') IS NULL OR JSON_LENGTH(JSON_EXTRACT(ac.config,'$.choices'))<2);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without learner task.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons l WHERE l.chapter_id=v_chapter AND (NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='listen') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='speak') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='word_order') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='reading_comprehension'));
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Lesson missing Speaking, Listening, Writing, or Reading practice.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter AND lw.is_target=1;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 017 explicit-target count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) d;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_en_fa_series_017_v9();
DROP PROCEDURE IF EXISTS import_nova_en_fa_series_017_v9;

-- NOVA v9.0 / EN-FA / START SERIES 018 / It's on the table
-- Independently authored for Persian speakers; requires validated en-fa Series 017.
-- Data import only; canonical schema v9.0 remains unchanged.
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_en_fa_series_018_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_en_fa_series_018_v9()
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
  DECLARE v_w_018 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_019 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_020 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_021 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_022 BIGINT UNSIGNED DEFAULT NULL;
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
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 017 en-fa Course missing.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='ST' AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 017 Start Level missing.'; END IF;
  SELECT id INTO v_previous_module FROM modules WHERE level_id=v_level AND sort_order=4 ORDER BY id LIMIT 1;
  IF v_previous_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 017 prerequisite Module missing.'; END IF;
  SELECT id INTO v_previous_chapter FROM chapters WHERE module_id=v_previous_module AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_previous_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 017 Chapter missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_previous_chapter AND status='validated' AND storyline_key='mina-noah-room-tour' AND storyline_order BETWEEN 5 AND 8;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 017 must be validated with its exact storyline orders.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_previous_chapter AND status='validated' AND title='Where is my key?';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 017 canonical prerequisite mismatch.'; END IF;

  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=4 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 018 target Module 04 missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM modules WHERE id=v_module AND title='Home & Things' AND title_translation='خانه و وسایل';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 018 target Module identity mismatch.'; END IF;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN
    INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES(v_module,'It''s on the table','روی میزه','Mina meets her coworker Chloe and practises locating a key in a simple room picture.','مینا با همکارش کلویی آشنا می‌شود و جای کلید را در یک تصویر ساده از اتاق تمرین می‌کند.',4,18,18,3,'planned','{"course":"en-fa","level":"Start","series":18,"levelChapterOrder":18}');
    SET v_chapter=LAST_INSERT_ID();
  END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='It''s on the table' AND title_translation='روی میزه';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 018 Chapter identity mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 018 Chapter must be empty before import.'; END IF;
  SELECT id INTO v_c_chloe FROM characters WHERE course_id=v_course AND name='Chloe' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_chloe IS NULL THEN
    INSERT INTO characters(course_id,name,gender,avatar_url,voice_key,profile,metadata)
    VALUES(v_course,'Chloe','female',NULL,NULL,'{"role":"coworker"}','{"context":"friendly workplace conversations","introducedSeries":18,"voiceArchetype":"professional"}');
    SET v_c_chloe=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_c_mina FROM characters WHERE course_id=v_course AND name='Mina' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_chloe IS NULL OR v_c_mina IS NULL OR v_c_chloe=v_c_mina THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required distinct English Characters missing.'; END IF;

  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='hello' AND part_of_speech='interjection' AND translation='سلام' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: hello'; END IF;
  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='Mina' AND part_of_speech='proper_noun' AND translation='مینا (نام زنانه)' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: Mina'; END IF;
  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='Chloe' AND part_of_speech='proper_noun' AND translation='کلویی (نام زنانه)' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Chloe','Chloe','proper_noun','کلویی (نام زنانه)',18,'{"type":"person name"}','[{"lemma":"Mina","translation":"مینا"},{"lemma":"Maya","translation":"مایا"},{"lemma":"Ava","translation":"آوا"}]','Hello, Chloe.','سلام، کلویی.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":18,"explicitTarget":false}');
    SET v_w_003=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='where' AND part_of_speech='adverb' AND translation='کجا' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: where'; END IF;
  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='be' AND part_of_speech='verb' AND translation='بودن / هستم' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: be'; END IF;
  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='the' AND part_of_speech='article' AND translation='آن / ـِ مشخص' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'the','the','article','آن / ـِ مشخص',18,'{"use":"definite article"}','[{"lemma":"a","translation":"یک"},{"lemma":"this","translation":"این"},{"lemma":"my","translation":"من / ـم"}]','The key is here.','کلید اینجاست.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":18,"explicitTarget":false}');
    SET v_w_006=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='key' AND part_of_speech='noun' AND translation='کلید' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: key'; END IF;
  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='it''s' AND part_of_speech='phrase' AND translation='آن است / ساعت' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: it''s'; END IF;
  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='on' AND part_of_speech='preposition' AND translation='روی' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'on','on','preposition','روی',18,'{"use":"place on a surface"}','[{"lemma":"under","translation":"زیر"},{"lemma":"in","translation":"در"},{"lemma":"here","translation":"اینجا"}]','It''s on the table.','روی میز است.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":18,"explicitTarget":false}');
    SET v_w_009=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='table' AND part_of_speech='noun' AND translation='میز' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: table'; END IF;
  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='yes' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: yes'; END IF;
  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='It''s on the table.' AND part_of_speech='phrase' AND translation='روی میز است.' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'It''s on the table.','It''s on the table.','phrase','روی میز است.',18,'{"pattern":"it + be + on + the + noun"}','[{"lemma":"It''s under the table.","translation":"زیر میز است."},{"lemma":"It''s on the chair.","translation":"روی صندلی است."},{"lemma":"It''s the table on.","translation":"آن میز روی است."}]','It''s on the table.','روی میز است.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":18,"explicitTarget":true}');
    SET v_w_012=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='under' AND part_of_speech='preposition' AND translation='زیر' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'under','under','preposition','زیر',18,'{"use":"place below something"}','[{"lemma":"on","translation":"روی"},{"lemma":"in","translation":"در"},{"lemma":"here","translation":"اینجا"}]','The key is under the chair.','کلید زیر صندلی است.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":18,"explicitTarget":false}');
    SET v_w_013=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='chair' AND part_of_speech='noun' AND translation='صندلی' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: chair'; END IF;
  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='The key is under the chair.' AND part_of_speech='phrase' AND translation='کلید زیر صندلی است.' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'The key is under the chair.','The key is under the chair.','phrase','کلید زیر صندلی است.',18,'{"pattern":"the + noun + be + under + the + noun"}','[{"lemma":"The key is on the chair.","translation":"کلید روی صندلی است."},{"lemma":"The key is under the table.","translation":"کلید زیر میز است."},{"lemma":"The key under is the chair.","translation":"کلید زیر است صندلی."}]','The key is under the chair.','کلید زیر صندلی است.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":18,"explicitTarget":true}');
    SET v_w_015=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_016 FROM words WHERE course_id=v_course AND lemma='not' AND part_of_speech='adverb' AND translation='نه / نیست' ORDER BY id LIMIT 1;
  IF v_w_016 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: not'; END IF;
  SELECT id INTO v_w_017 FROM words WHERE course_id=v_course AND lemma='here' AND part_of_speech='adverb' AND translation='اینجا' ORDER BY id LIMIT 1;
  IF v_w_017 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: here'; END IF;
  SELECT id INTO v_w_018 FROM words WHERE course_id=v_course AND lemma='it' AND part_of_speech='pronoun' AND translation='آن / آن است' ORDER BY id LIMIT 1;
  IF v_w_018 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: it'; END IF;
  SELECT id INTO v_w_019 FROM words WHERE course_id=v_course AND lemma='bed' AND part_of_speech='noun' AND translation='تخت' ORDER BY id LIMIT 1;
  IF v_w_019 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: bed'; END IF;
  SELECT id INTO v_w_020 FROM words WHERE course_id=v_course AND lemma='no' AND part_of_speech='interjection' AND translation='نه' ORDER BY id LIMIT 1;
  IF v_w_020 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: no'; END IF;
  SELECT id INTO v_w_021 FROM words WHERE course_id=v_course AND lemma='Is it on the bed?' AND part_of_speech='phrase' AND translation='روی تخت است؟' ORDER BY id LIMIT 1;
  IF v_w_021 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Is it on the bed?','Is it on the bed?','phrase','روی تخت است؟',18,'{"pattern":"be + it + on + the + noun"}','[{"lemma":"Is it under the bed?","translation":"زیر تخت است؟"},{"lemma":"It is on the bed.","translation":"روی تخت است."},{"lemma":"Is on it the bed?","translation":"آیا روی آن تخت؟"}]','Is it on the bed?','روی تخت است؟',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":18,"explicitTarget":true}');
    SET v_w_021=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_022 FROM words WHERE course_id=v_course AND lemma='The key is on the table.' AND part_of_speech='phrase' AND translation='کلید روی میز است.' ORDER BY id LIMIT 1;
  IF v_w_022 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'The key is on the table.','The key is on the table.','phrase','کلید روی میز است.',18,'{"pattern":"the + noun + be + on + the + noun"}','[{"lemma":"The key is under the table.","translation":"کلید زیر میز است."},{"lemma":"The key is on the bed.","translation":"کلید روی تخت است."},{"lemma":"The key on is the table.","translation":"کلید روی است میز."}]','The key is on the table.','کلید روی میز است.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":18,"explicitTarget":true}');
    SET v_w_022=LAST_INSERT_ID();
  END IF;

  -- Lesson 1: Meet Chloe
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_chloe,v_c_mina,'Meet Chloe','آشنایی با کلویی','Mina meets Chloe, and they locate the first key in a room picture.','مینا با کلویی آشنا می‌شود و آن‌ها جای اولین کلید را در تصویر اتاق پیدا می‌کنند.','story','mina-chloe-room-picture',1,18,150,1,'validated','{"course":"en-fa","series":18,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_chloe,1,'character','Hello, Mina.','سلام، مینا.',18,NULL,NULL,NULL,NULL,'[{"surface":"Hello","lemma":"hello","translation":"سلام","partOfSpeech":"interjection","suffix":","},{"surface":"Mina","lemma":"Mina","translation":"مینا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mina,2,'learner','Hello, Chloe.','سلام، کلویی.',18,NULL,NULL,'hello chloe',NULL,'[{"surface":"Hello","lemma":"hello","translation":"سلام","partOfSpeech":"interjection","suffix":","},{"surface":"Chloe","lemma":"Chloe","translation":"کلویی (نام زنانه)","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_chloe,3,'character','Where is the key?','کلید کجاست؟',18,NULL,NULL,NULL,NULL,'[{"surface":"Where","lemma":"where","translation":"کجا","partOfSpeech":"adverb"},{"surface":"is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"است"},{"surface":"the","lemma":"the","translation":"آن / ـِ مشخص","partOfSpeech":"article"},{"surface":"key","lemma":"key","translation":"کلید","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mina,4,'learner','It''s on the table.','روی میز است.',18,NULL,NULL,'it''s on the table',NULL,'[{"surface":"It''s","lemma":"it''s","translation":"آن است / ساعت","partOfSpeech":"phrase"},{"surface":"on","lemma":"on","translation":"روی","partOfSpeech":"preposition"},{"surface":"the","lemma":"the","translation":"آن / ـِ مشخص","partOfSpeech":"article"},{"surface":"table","lemma":"table","translation":"میز","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_chloe,5,'character','Yes, on the table.','بله، روی میز است.',18,NULL,NULL,NULL,NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"on","lemma":"on","translation":"روی","partOfSpeech":"preposition"},{"surface":"the","lemma":"the","translation":"آن / ـِ مشخص","partOfSpeech":"article"},{"surface":"table","lemma":"table","translation":"میز","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_001,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_003,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_006,'new',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_007,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_009,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_010,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_011,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_012,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'new_word',1,NULL,v_w_012,'عبارت کلیدی درس',NULL,18,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',2,v_t_1,NULL,'به کلویی گوش کن',NULL,18,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',3,v_t_2,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,18,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',4,v_t_3,NULL,'به کلویی گوش کن',NULL,18,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',5,v_t_4,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,18,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',6,v_t_5,NULL,'به کلویی گوش کن',NULL,18,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'meaning_choice',7,NULL,v_w_009,'معنی درست را انتخاب کن',NULL,18,'{"mode":"word_translation","question":"on یعنی چی؟","choices":["روی","زیر","در"],"correctIndex":0}','{"course":"en-fa","series":18,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'word_order',8,v_t_2,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,18,'{"source":"turn","tokens":["Hello","Chloe"],"answer":"Hello, Chloe."}','{"course":"en-fa","series":18,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'reading_comprehension',9,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,18,'{"source":"lesson_story","question":"اولین کلید کجاست؟","choices":["روی میز","زیر صندلی","روی تخت"],"correctIndex":0}','{"course":"en-fa","series":18,"level":"Start","skill":"reading"}');

  -- Lesson 2: Under the chair
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_chloe,v_c_mina,'Under the chair','زیر صندلی','Chloe asks about another key, and Mina uses under for the first time.','کلویی درباره کلیدی دیگر می‌پرسد و مینا برای اولین بار از زیر استفاده می‌کند.','story','mina-chloe-room-picture',2,18,138,2,'validated','{"course":"en-fa","series":18,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_chloe,1,'character','Where is the key?','کلید کجاست؟',18,NULL,NULL,NULL,NULL,'[{"surface":"Where","lemma":"where","translation":"کجا","partOfSpeech":"adverb"},{"surface":"is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"است"},{"surface":"the","lemma":"the","translation":"آن / ـِ مشخص","partOfSpeech":"article"},{"surface":"key","lemma":"key","translation":"کلید","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mina,2,'learner','The key is under the chair.','کلید زیر صندلی است.',18,NULL,NULL,'the key is under the chair',NULL,'[{"surface":"The","lemma":"the","translation":"آن / ـِ مشخص","partOfSpeech":"article"},{"surface":"key","lemma":"key","translation":"کلید","partOfSpeech":"noun"},{"surface":"is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"است"},{"surface":"under","lemma":"under","translation":"زیر","partOfSpeech":"preposition"},{"surface":"the","lemma":"the","translation":"آن / ـِ مشخص","partOfSpeech":"article"},{"surface":"chair","lemma":"chair","translation":"صندلی","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_chloe,3,'character','Under the chair?','زیر صندلی؟',18,NULL,NULL,NULL,NULL,'[{"surface":"Under","lemma":"under","translation":"زیر","partOfSpeech":"preposition"},{"surface":"the","lemma":"the","translation":"آن / ـِ مشخص","partOfSpeech":"article"},{"surface":"chair","lemma":"chair","translation":"صندلی","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mina,4,'learner','Yes.','بله.',18,NULL,NULL,'yes',NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_005,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_006,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_007,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_011,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_013,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_014,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_015,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'new_word',1,NULL,v_w_015,'عبارت کلیدی درس',NULL,18,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',2,v_t_6,NULL,'به کلویی گوش کن',NULL,18,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',3,v_t_7,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,18,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',4,v_t_8,NULL,'به کلویی گوش کن',NULL,18,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',5,v_t_9,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,18,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'meaning_choice',6,NULL,v_w_013,'معنی درست را انتخاب کن',NULL,18,'{"mode":"word_translation","question":"under یعنی چی؟","choices":["زیر","روی","در"],"correctIndex":0}','{"course":"en-fa","series":18,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'word_order',7,v_t_7,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,18,'{"source":"turn","tokens":["The","key","is","under","the","chair"],"answer":"The key is under the chair."}','{"course":"en-fa","series":18,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,18,'{"source":"lesson_story","question":"کلید دوم کجاست؟","choices":["زیر صندلی","روی میز","زیر تخت"],"correctIndex":0}','{"course":"en-fa","series":18,"level":"Start","skill":"reading"}');

  -- Lesson 3: On the bed?
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_chloe,v_c_mina,'On the bed?','روی تخت؟','Mina checks the bed while Chloe rules out two places.','مینا تخت را بررسی می‌کند و کلویی دو جای نادرست را کنار می‌گذارد.','story','mina-chloe-room-picture',3,18,162,3,'validated','{"course":"en-fa","series":18,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_chloe,1,'character','The key is not here.','کلید اینجا نیست.',18,NULL,NULL,NULL,NULL,'[{"surface":"The","lemma":"the","translation":"آن / ـِ مشخص","partOfSpeech":"article"},{"surface":"key","lemma":"key","translation":"کلید","partOfSpeech":"noun"},{"surface":"is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"است"},{"surface":"not","lemma":"not","translation":"نه / نیست","partOfSpeech":"adverb"},{"surface":"here","lemma":"here","translation":"اینجا","partOfSpeech":"adverb","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,2,'learner','Is it on the bed?','روی تخت است؟',18,NULL,NULL,'is it on the bed',NULL,'[{"surface":"Is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"است"},{"surface":"it","lemma":"it","translation":"آن / آن است","partOfSpeech":"pronoun"},{"surface":"on","lemma":"on","translation":"روی","partOfSpeech":"preposition"},{"surface":"the","lemma":"the","translation":"آن / ـِ مشخص","partOfSpeech":"article"},{"surface":"bed","lemma":"bed","translation":"تخت","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_chloe,3,'character','No, not on the bed.','نه، روی تخت نیست.',18,NULL,NULL,NULL,NULL,'[{"surface":"No","lemma":"no","translation":"نه","partOfSpeech":"interjection","suffix":","},{"surface":"not","lemma":"not","translation":"نه / نیست","partOfSpeech":"adverb"},{"surface":"on","lemma":"on","translation":"روی","partOfSpeech":"preposition"},{"surface":"the","lemma":"the","translation":"آن / ـِ مشخص","partOfSpeech":"article"},{"surface":"bed","lemma":"bed","translation":"تخت","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,4,'learner','Under the bed?','زیر تخت؟',18,NULL,NULL,'under the bed',NULL,'[{"surface":"Under","lemma":"under","translation":"زیر","partOfSpeech":"preposition"},{"surface":"the","lemma":"the","translation":"آن / ـِ مشخص","partOfSpeech":"article"},{"surface":"bed","lemma":"bed","translation":"تخت","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_chloe,5,'character','No.','نه.',18,NULL,NULL,NULL,NULL,'[{"surface":"No","lemma":"no","translation":"نه","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,6,'learner','Where is the key?','کلید کجاست؟',18,NULL,NULL,'where is the key',NULL,'[{"surface":"Where","lemma":"where","translation":"کجا","partOfSpeech":"adverb"},{"surface":"is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"است"},{"surface":"the","lemma":"the","translation":"آن / ـِ مشخص","partOfSpeech":"article"},{"surface":"key","lemma":"key","translation":"کلید","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_005,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_006,'review',0,5);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_007,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_009,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_016,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_017,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_018,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_019,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_020,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_021,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'new_word',1,NULL,v_w_021,'عبارت کلیدی درس',NULL,18,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',2,v_t_10,NULL,'به کلویی گوش کن',NULL,18,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',3,v_t_11,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,18,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',4,v_t_12,NULL,'به کلویی گوش کن',NULL,18,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',5,v_t_13,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,18,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',6,v_t_14,NULL,'به کلویی گوش کن',NULL,18,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',7,v_t_15,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,18,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'meaning_choice',8,NULL,v_w_009,'معنی درست را انتخاب کن',NULL,18,'{"mode":"word_translation","question":"on یعنی چی؟","choices":["روی","زیر","در"],"correctIndex":0}','{"course":"en-fa","series":18,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'word_order',9,v_t_11,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,18,'{"source":"turn","tokens":["Is","it","on","the","bed"],"answer":"Is it on the bed?"}','{"course":"en-fa","series":18,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'reading_comprehension',10,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,18,'{"source":"lesson_story","question":"آیا کلید روی تخت است؟","choices":["نه","بله","مشخص نیست"],"correctIndex":0}','{"course":"en-fa","series":18,"level":"Start","skill":"reading"}');

  -- Lesson 4: The key on the table
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_chloe,v_c_mina,'The key on the table','کلید روی میز','Mina gives the complete place sentence and finishes the picture task.','مینا جمله کامل مکان را می‌گوید و تمرین تصویر را تمام می‌کند.','story','mina-chloe-room-picture',4,18,138,4,'validated','{"course":"en-fa","series":18,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_chloe,1,'character','Where is the key?','کلید کجاست؟',18,NULL,NULL,NULL,NULL,'[{"surface":"Where","lemma":"where","translation":"کجا","partOfSpeech":"adverb"},{"surface":"is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"است"},{"surface":"the","lemma":"the","translation":"آن / ـِ مشخص","partOfSpeech":"article"},{"surface":"key","lemma":"key","translation":"کلید","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,2,'learner','The key is on the table.','کلید روی میز است.',18,NULL,NULL,'the key is on the table',NULL,'[{"surface":"The","lemma":"the","translation":"آن / ـِ مشخص","partOfSpeech":"article"},{"surface":"key","lemma":"key","translation":"کلید","partOfSpeech":"noun"},{"surface":"is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"است"},{"surface":"on","lemma":"on","translation":"روی","partOfSpeech":"preposition"},{"surface":"the","lemma":"the","translation":"آن / ـِ مشخص","partOfSpeech":"article"},{"surface":"table","lemma":"table","translation":"میز","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_chloe,3,'character','Yes, on the table.','بله، روی میز است.',18,NULL,NULL,NULL,NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"on","lemma":"on","translation":"روی","partOfSpeech":"preposition"},{"surface":"the","lemma":"the","translation":"آن / ـِ مشخص","partOfSpeech":"article"},{"surface":"table","lemma":"table","translation":"میز","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,4,'learner','Here is the key.','کلید اینجاست.',18,NULL,NULL,'here is the key',NULL,'[{"surface":"Here","lemma":"here","translation":"اینجا","partOfSpeech":"adverb"},{"surface":"is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"است"},{"surface":"the","lemma":"the","translation":"آن / ـِ مشخص","partOfSpeech":"article"},{"surface":"key","lemma":"key","translation":"کلید","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_005,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_006,'review',0,5);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_007,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_009,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_010,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_011,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_017,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_022,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'new_word',1,NULL,v_w_022,'عبارت کلیدی درس',NULL,18,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',2,v_t_16,NULL,'به کلویی گوش کن',NULL,18,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',3,v_t_17,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,18,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',4,v_t_18,NULL,'به کلویی گوش کن',NULL,18,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',5,v_t_19,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,18,NULL,'{"course":"en-fa","series":18,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'meaning_choice',6,NULL,v_w_009,'معنی درست را انتخاب کن',NULL,18,'{"mode":"word_translation","question":"on یعنی چی؟","choices":["روی","زیر","در"],"correctIndex":0}','{"course":"en-fa","series":18,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'word_order',7,v_t_17,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,18,'{"source":"turn","tokens":["The","key","is","on","the","table"],"answer":"The key is on the table."}','{"course":"en-fa","series":18,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,18,'{"source":"lesson_story","question":"مینا در پایان جای کلید را چگونه می‌گوید؟","choices":["کلید روی میز است","کلید زیر میز است","کلید روی تخت است"],"correctIndex":0}','{"course":"en-fa","series":18,"level":"Start","skill":"reading"}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 018 Lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two distinct Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND storyline_key='mina-chloe-room-picture' AND storyline_order BETWEEN 1 AND 4;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 018 storyline continuity.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>19 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 018 Turn count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND (JSON_VALID(t.tokens)=0 OR JSON_LENGTH(t.tokens)=0);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Turn without valid clickable tokens.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id JOIN JSON_TABLE(t.tokens,'$[*]' COLUMNS(lemma VARCHAR(180) PATH '$.lemma',part_of_speech VARCHAR(48) PATH '$.partOfSpeech',translation VARCHAR(255) PATH '$.translation')) jt LEFT JOIN words w ON w.course_id=v_course AND w.lemma=jt.lemma AND w.part_of_speech=jt.part_of_speech AND w.translation=jt.translation LEFT JOIN lesson_words lw ON lw.lesson_id=t.lesson_id AND lw.word_id=w.id WHERE l.chapter_id=v_chapter AND (w.id IS NULL OR lw.word_id IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Clickable token lacks exact Word tuple mapping.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>35 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 018 Activity count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (JSON_EXTRACT(ac.config,'$.question') IS NULL OR JSON_LENGTH(JSON_EXTRACT(ac.config,'$.choices'))<2);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without learner task.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons l WHERE l.chapter_id=v_chapter AND (NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='listen') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='speak') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='word_order') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='reading_comprehension'));
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Lesson missing Speaking, Listening, Writing, or Reading practice.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter AND lw.is_target=1;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 018 explicit-target count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) d;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_en_fa_series_018_v9();
DROP PROCEDURE IF EXISTS import_nova_en_fa_series_018_v9;

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

-- NOVA v9.0 / EN-FA / START SERIES 020 / There are two windows
-- Independently authored for Persian speakers; requires validated en-fa Series 019.
-- Data import only; canonical schema v9.0 remains unchanged.
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_en_fa_series_020_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_en_fa_series_020_v9()
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

  DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN ROLLBACK; RESIGNAL; END;
  START TRANSACTION;
  SELECT id INTO v_course FROM courses WHERE learning_language='en' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 019 en-fa Course missing.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='ST' AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 019 Start Level missing.'; END IF;
  SELECT id INTO v_previous_module FROM modules WHERE level_id=v_level AND sort_order=4 ORDER BY id LIMIT 1;
  IF v_previous_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 019 prerequisite Module missing.'; END IF;
  SELECT id INTO v_previous_chapter FROM chapters WHERE module_id=v_previous_module AND sort_order=4 ORDER BY id LIMIT 1;
  IF v_previous_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 019 Chapter missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_previous_chapter AND status='validated' AND storyline_key='mina-chloe-room-picture' AND storyline_order BETWEEN 5 AND 8;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 019 must be validated with its exact storyline orders.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_previous_chapter AND status='validated' AND title='I have a small kitchen';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 019 canonical prerequisite mismatch.'; END IF;

  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=4 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 020 target Module 04 missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM modules WHERE id=v_module AND title='Home & Things' AND title_translation='خانه و وسایل';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 020 target Module identity mismatch.'; END IF;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=5 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN
    INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES(v_module,'There are two windows','دو تا پنجره هست','Mina and Chloe finish the room picture by counting windows, a door, and chairs.','مینا و کلویی با شمردن پنجره‌ها، یک در و صندلی‌ها تصویر اتاق را کامل می‌کنند.',4,20,20,5,'planned','{"course":"en-fa","level":"Start","series":20,"levelChapterOrder":20}');
    SET v_chapter=LAST_INSERT_ID();
  END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='There are two windows' AND title_translation='دو تا پنجره هست';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 020 Chapter identity mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 020 Chapter must be empty before import.'; END IF;
  SELECT id INTO v_c_chloe FROM characters WHERE course_id=v_course AND name='Chloe' AND gender='female' ORDER BY id LIMIT 1;
  SELECT id INTO v_c_mina FROM characters WHERE course_id=v_course AND name='Mina' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_chloe IS NULL OR v_c_mina IS NULL OR v_c_chloe=v_c_mina THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required distinct English Characters missing.'; END IF;

  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='one' AND part_of_speech='numeral' AND translation='یک' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: one'; END IF;
  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='window' AND part_of_speech='noun' AND translation='پنجره' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'window','window','noun','پنجره',20,'{"article":"a","plural":"windows"}','[{"lemma":"door","translation":"در"},{"lemma":"table","translation":"میز"},{"lemma":"chair","translation":"صندلی"}]','There are two windows.','دو پنجره وجود دارد.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":20,"explicitTarget":false}');
    SET v_w_002=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='there' AND part_of_speech='adverb' AND translation='وجود دارد / آنجا' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'there','there','adverb','وجود دارد / آنجا',20,'{"pattern":"there is / there are"}','[{"lemma":"here","translation":"اینجا"},{"lemma":"where","translation":"کجا"},{"lemma":"under","translation":"زیر"}]','There are two windows.','دو پنجره وجود دارد.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":20,"explicitTarget":false}');
    SET v_w_003=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='be' AND part_of_speech='verb' AND translation='بودن / هستم' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: be'; END IF;
  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='two' AND part_of_speech='numeral' AND translation='دو' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: two'; END IF;
  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='yes' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: yes'; END IF;
  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='There are two windows.' AND part_of_speech='phrase' AND translation='دو پنجره وجود دارد.' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'There are two windows.','There are two windows.','phrase','دو پنجره وجود دارد.',20,'{"pattern":"there + be plural + number + plural noun"}','[{"lemma":"There is one window.","translation":"یک پنجره وجود دارد."},{"lemma":"There are two doors.","translation":"دو در وجود دارد."},{"lemma":"There two windows are.","translation":"آنجا دو پنجره هستند."}]','There are two windows.','دو پنجره وجود دارد.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":20,"explicitTarget":true}');
    SET v_w_007=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='and' AND part_of_speech='conjunction' AND translation='و' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: and'; END IF;
  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='a' AND part_of_speech='article' AND translation='یک / مقداری' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: a'; END IF;
  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='door' AND part_of_speech='noun' AND translation='در' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'door','door','noun','در',20,'{"article":"a","plural":"doors"}','[{"lemma":"window","translation":"پنجره"},{"lemma":"room","translation":"اتاق"},{"lemma":"table","translation":"میز"}]','There is one door.','یک در وجود دارد.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":20,"explicitTarget":false}');
    SET v_w_010=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='There is one door.' AND part_of_speech='phrase' AND translation='یک در وجود دارد.' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'There is one door.','There is one door.','phrase','یک در وجود دارد.',20,'{"pattern":"there + be singular + number + singular noun"}','[{"lemma":"There are two doors.","translation":"دو در وجود دارد."},{"lemma":"There is one window.","translation":"یک پنجره وجود دارد."},{"lemma":"There one door is.","translation":"آنجا یک در است."}]','There is one door.','یک در وجود دارد.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":20,"explicitTarget":true}');
    SET v_w_011=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='chair' AND part_of_speech='noun' AND translation='صندلی' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: chair'; END IF;
  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='no' AND part_of_speech='interjection' AND translation='نه' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: no'; END IF;
  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='Are there two chairs?' AND part_of_speech='phrase' AND translation='دو صندلی وجود دارد؟' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Are there two chairs?','Are there two chairs?','phrase','دو صندلی وجود دارد؟',20,'{"pattern":"be plural + there + number + plural noun"}','[{"lemma":"Are there two windows?","translation":"دو پنجره وجود دارد؟"},{"lemma":"There are two chairs.","translation":"دو صندلی وجود دارد."},{"lemma":"Are two chairs there?","translation":"آیا دو صندلی آنجا هستند؟"}]','Are there two chairs?','دو صندلی وجود دارد؟',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":20,"explicitTarget":true}');
    SET v_w_014=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='Yes, there are two chairs.' AND part_of_speech='phrase' AND translation='بله، دو صندلی وجود دارد.' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Yes, there are two chairs.','Yes, there are two chairs.','phrase','بله، دو صندلی وجود دارد.',20,'{"pattern":"yes + there + be plural + number + plural noun"}','[{"lemma":"Yes, there are two windows.","translation":"بله، دو پنجره وجود دارد."},{"lemma":"No, there is one chair.","translation":"نه، یک صندلی وجود دارد."},{"lemma":"Yes, there two chairs are.","translation":"بله، آنجا دو صندلی هستند."}]','Yes, there are two chairs.','بله، دو صندلی وجود دارد.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":20,"explicitTarget":true}');
    SET v_w_015=LAST_INSERT_ID();
  END IF;

  -- Lesson 1: Two windows
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_chloe,v_c_mina,'Two windows','دو پنجره','Chloe points to the windows, and Mina counts them in a complete sentence.','کلویی پنجره‌ها را نشان می‌دهد و مینا آن‌ها را در یک جمله کامل می‌شمارد.','story','mina-chloe-room-picture',9,20,138,1,'validated','{"course":"en-fa","series":20,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_chloe,1,'character','One window?','یک پنجره؟',20,NULL,NULL,NULL,NULL,'[{"surface":"One","lemma":"one","translation":"یک","partOfSpeech":"numeral"},{"surface":"window","lemma":"window","translation":"پنجره","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mina,2,'learner','There are two windows.','دو پنجره وجود دارد.',20,NULL,NULL,'there are two windows',NULL,'[{"surface":"There","lemma":"there","translation":"وجود دارد / آنجا","partOfSpeech":"adverb"},{"surface":"are","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"هستند"},{"surface":"two","lemma":"two","translation":"دو","partOfSpeech":"numeral"},{"surface":"windows","lemma":"window","translation":"پنجره","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_chloe,3,'character','Two windows?','دو پنجره؟',20,NULL,NULL,NULL,NULL,'[{"surface":"Two","lemma":"two","translation":"دو","partOfSpeech":"numeral"},{"surface":"windows","lemma":"window","translation":"پنجره","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mina,4,'learner','Yes, two windows.','بله، دو پنجره.',20,NULL,NULL,'yes two windows',NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"two","lemma":"two","translation":"دو","partOfSpeech":"numeral"},{"surface":"windows","lemma":"window","translation":"پنجره","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_002,'new',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_003,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_005,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_007,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'new_word',1,NULL,v_w_007,'عبارت کلیدی درس',NULL,20,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',2,v_t_1,NULL,'به کلویی گوش کن',NULL,20,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',3,v_t_2,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,20,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',4,v_t_3,NULL,'به کلویی گوش کن',NULL,20,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',5,v_t_4,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,20,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'meaning_choice',6,NULL,v_w_002,'معنی درست را انتخاب کن',NULL,20,'{"mode":"word_translation","question":"window یعنی چی؟","choices":["پنجره","در","میز"],"correctIndex":0}','{"course":"en-fa","series":20,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'word_order',7,v_t_2,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,20,'{"source":"turn","tokens":["There","are","two","windows"],"answer":"There are two windows."}','{"course":"en-fa","series":20,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,20,'{"source":"lesson_story","question":"در تصویر چند پنجره وجود دارد؟","choices":["دو پنجره","یک پنجره","سه پنجره"],"correctIndex":0}','{"course":"en-fa","series":20,"level":"Start","skill":"reading"}');

  -- Lesson 2: One door
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_chloe,v_c_mina,'One door','یک در','Mina adds the door and then checks the window count again.','مینا در را هم اضافه می‌کند و بعد دوباره تعداد پنجره‌ها را بررسی می‌کند.','story','mina-chloe-room-picture',10,20,162,2,'validated','{"course":"en-fa","series":20,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_chloe,1,'character','And a door?','و یک در؟',20,NULL,NULL,NULL,NULL,'[{"surface":"And","lemma":"and","translation":"و","partOfSpeech":"conjunction"},{"surface":"a","lemma":"a","translation":"یک / مقداری","partOfSpeech":"article"},{"surface":"door","lemma":"door","translation":"در","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mina,2,'learner','There is one door.','یک در وجود دارد.',20,NULL,NULL,'there is one door',NULL,'[{"surface":"There","lemma":"there","translation":"وجود دارد / آنجا","partOfSpeech":"adverb"},{"surface":"is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"است"},{"surface":"one","lemma":"one","translation":"یک","partOfSpeech":"numeral"},{"surface":"door","lemma":"door","translation":"در","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_chloe,3,'character','One door?','یک در؟',20,NULL,NULL,NULL,NULL,'[{"surface":"One","lemma":"one","translation":"یک","partOfSpeech":"numeral"},{"surface":"door","lemma":"door","translation":"در","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mina,4,'learner','Yes, one door.','بله، یک در.',20,NULL,NULL,'yes one door',NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"one","lemma":"one","translation":"یک","partOfSpeech":"numeral"},{"surface":"door","lemma":"door","translation":"در","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_chloe,5,'character','And two windows?','و دو پنجره؟',20,NULL,NULL,NULL,NULL,'[{"surface":"And","lemma":"and","translation":"و","partOfSpeech":"conjunction"},{"surface":"two","lemma":"two","translation":"دو","partOfSpeech":"numeral"},{"surface":"windows","lemma":"window","translation":"پنجره","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mina,6,'learner','Yes.','بله.',20,NULL,NULL,'yes',NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_001,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_006,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_008,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_010,'new',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_011,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'new_word',1,NULL,v_w_011,'عبارت کلیدی درس',NULL,20,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',2,v_t_5,NULL,'به کلویی گوش کن',NULL,20,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',3,v_t_6,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,20,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',4,v_t_7,NULL,'به کلویی گوش کن',NULL,20,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',5,v_t_8,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,20,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',6,v_t_9,NULL,'به کلویی گوش کن',NULL,20,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',7,v_t_10,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,20,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'meaning_choice',8,NULL,v_w_010,'معنی درست را انتخاب کن',NULL,20,'{"mode":"word_translation","question":"door یعنی چی؟","choices":["در","پنجره","اتاق"],"correctIndex":0}','{"course":"en-fa","series":20,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'word_order',9,v_t_6,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,20,'{"source":"turn","tokens":["There","is","one","door"],"answer":"There is one door."}','{"course":"en-fa","series":20,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'reading_comprehension',10,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,20,'{"source":"lesson_story","question":"چند در در تصویر وجود دارد؟","choices":["یک در","دو در","هیچ دری"],"correctIndex":0}','{"course":"en-fa","series":20,"level":"Start","skill":"reading"}');

  -- Lesson 3: Are there two chairs?
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_chloe,v_c_mina,'Are there two chairs?','دو صندلی وجود دارد؟','Mina asks a full there are question and Chloe corrects the count.','مینا یک پرسش کامل با وجود دارد می‌سازد و کلویی تعداد را اصلاح می‌کند.','story','mina-chloe-room-picture',11,20,150,3,'validated','{"course":"en-fa","series":20,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_chloe,1,'character','There are two windows.','دو پنجره وجود دارد.',20,NULL,NULL,NULL,NULL,'[{"surface":"There","lemma":"there","translation":"وجود دارد / آنجا","partOfSpeech":"adverb"},{"surface":"are","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"هستند"},{"surface":"two","lemma":"two","translation":"دو","partOfSpeech":"numeral"},{"surface":"windows","lemma":"window","translation":"پنجره","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,2,'learner','Are there two chairs?','دو صندلی وجود دارد؟',20,NULL,NULL,'are there two chairs',NULL,'[{"surface":"Are","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"هستند"},{"surface":"there","lemma":"there","translation":"وجود دارد / آنجا","partOfSpeech":"adverb"},{"surface":"two","lemma":"two","translation":"دو","partOfSpeech":"numeral"},{"surface":"chairs","lemma":"chair","translation":"صندلی","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_chloe,3,'character','No, one chair.','نه، یک صندلی.',20,NULL,NULL,NULL,NULL,'[{"surface":"No","lemma":"no","translation":"نه","partOfSpeech":"interjection","suffix":","},{"surface":"one","lemma":"one","translation":"یک","partOfSpeech":"numeral"},{"surface":"chair","lemma":"chair","translation":"صندلی","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,4,'learner','One chair?','یک صندلی؟',20,NULL,NULL,'one chair',NULL,'[{"surface":"One","lemma":"one","translation":"یک","partOfSpeech":"numeral"},{"surface":"chair","lemma":"chair","translation":"صندلی","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_chloe,5,'character','Yes.','بله.',20,NULL,NULL,NULL,NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_001,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_003,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_004,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_005,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_012,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_014,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'new_word',1,NULL,v_w_014,'عبارت کلیدی درس',NULL,20,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',2,v_t_11,NULL,'به کلویی گوش کن',NULL,20,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',3,v_t_12,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,20,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',4,v_t_13,NULL,'به کلویی گوش کن',NULL,20,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',5,v_t_14,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,20,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',6,v_t_15,NULL,'به کلویی گوش کن',NULL,20,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'meaning_choice',7,NULL,v_w_003,'معنی درست را انتخاب کن',NULL,20,'{"mode":"word_translation","question":"there یعنی چی؟","choices":["وجود دارد / آنجا","اینجا","کجا"],"correctIndex":0}','{"course":"en-fa","series":20,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'word_order',8,v_t_12,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,20,'{"source":"turn","tokens":["Are","there","two","chairs"],"answer":"Are there two chairs?"}','{"course":"en-fa","series":20,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'reading_comprehension',9,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,20,'{"source":"lesson_story","question":"در این بخش چند صندلی وجود دارد؟","choices":["یک صندلی","دو صندلی","هیچ صندلی"],"correctIndex":0}','{"course":"en-fa","series":20,"level":"Start","skill":"reading"}');

  -- Lesson 4: The complete room
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_chloe,v_c_mina,'The complete room','اتاق کامل','Mina confirms the final counts for chairs, windows, and the door.','مینا تعداد نهایی صندلی‌ها، پنجره‌ها و در را تایید می‌کند.','story','mina-chloe-room-picture',12,20,162,4,'validated','{"course":"en-fa","series":20,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_chloe,1,'character','Are there two chairs?','دو صندلی وجود دارد؟',20,NULL,NULL,NULL,NULL,'[{"surface":"Are","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"هستند"},{"surface":"there","lemma":"there","translation":"وجود دارد / آنجا","partOfSpeech":"adverb"},{"surface":"two","lemma":"two","translation":"دو","partOfSpeech":"numeral"},{"surface":"chairs","lemma":"chair","translation":"صندلی","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,2,'learner','Yes, there are two chairs.','بله، دو صندلی وجود دارد.',20,NULL,NULL,'yes there are two chairs',NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"there","lemma":"there","translation":"وجود دارد / آنجا","partOfSpeech":"adverb"},{"surface":"are","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"هستند"},{"surface":"two","lemma":"two","translation":"دو","partOfSpeech":"numeral"},{"surface":"chairs","lemma":"chair","translation":"صندلی","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_chloe,3,'character','And two windows?','و دو پنجره؟',20,NULL,NULL,NULL,NULL,'[{"surface":"And","lemma":"and","translation":"و","partOfSpeech":"conjunction"},{"surface":"two","lemma":"two","translation":"دو","partOfSpeech":"numeral"},{"surface":"windows","lemma":"window","translation":"پنجره","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,4,'learner','Yes, two windows.','بله، دو پنجره.',20,NULL,NULL,'yes two windows',NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"two","lemma":"two","translation":"دو","partOfSpeech":"numeral"},{"surface":"windows","lemma":"window","translation":"پنجره","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_chloe,5,'character','And one door?','و یک در؟',20,NULL,NULL,NULL,NULL,'[{"surface":"And","lemma":"and","translation":"و","partOfSpeech":"conjunction"},{"surface":"one","lemma":"one","translation":"یک","partOfSpeech":"numeral"},{"surface":"door","lemma":"door","translation":"در","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  SET v_t_20=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,6,'learner','Yes, one door.','بله، یک در.',20,NULL,NULL,'yes one door',NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"one","lemma":"one","translation":"یک","partOfSpeech":"numeral"},{"surface":"door","lemma":"door","translation":"در","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  SET v_t_21=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_001,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_002,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_003,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_004,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_005,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_006,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_008,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_010,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_012,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_015,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'new_word',1,NULL,v_w_015,'عبارت کلیدی درس',NULL,20,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',2,v_t_16,NULL,'به کلویی گوش کن',NULL,20,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',3,v_t_17,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,20,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',4,v_t_18,NULL,'به کلویی گوش کن',NULL,20,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',5,v_t_19,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,20,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',6,v_t_20,NULL,'به کلویی گوش کن',NULL,20,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',7,v_t_21,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,20,NULL,'{"course":"en-fa","series":20,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'meaning_choice',8,NULL,v_w_003,'معنی درست را انتخاب کن',NULL,20,'{"mode":"word_translation","question":"there یعنی چی؟","choices":["وجود دارد / آنجا","اینجا","کجا"],"correctIndex":0}','{"course":"en-fa","series":20,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'word_order',9,v_t_17,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,20,'{"source":"turn","tokens":["Yes","there","are","two","chairs"],"answer":"Yes, there are two chairs."}','{"course":"en-fa","series":20,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'reading_comprehension',10,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,20,'{"source":"lesson_story","question":"در نسخه نهایی چند صندلی وجود دارد؟","choices":["دو صندلی","یک صندلی","سه صندلی"],"correctIndex":0}','{"course":"en-fa","series":20,"level":"Start","skill":"reading"}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 020 Lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two distinct Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND storyline_key='mina-chloe-room-picture' AND storyline_order BETWEEN 9 AND 12;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 020 storyline continuity.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>21 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 020 Turn count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND (JSON_VALID(t.tokens)=0 OR JSON_LENGTH(t.tokens)=0);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Turn without valid clickable tokens.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id JOIN JSON_TABLE(t.tokens,'$[*]' COLUMNS(lemma VARCHAR(180) PATH '$.lemma',part_of_speech VARCHAR(48) PATH '$.partOfSpeech',translation VARCHAR(255) PATH '$.translation')) jt LEFT JOIN words w ON w.course_id=v_course AND w.lemma=jt.lemma AND w.part_of_speech=jt.part_of_speech AND w.translation=jt.translation LEFT JOIN lesson_words lw ON lw.lesson_id=t.lesson_id AND lw.word_id=w.id WHERE l.chapter_id=v_chapter AND (w.id IS NULL OR lw.word_id IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Clickable token lacks exact Word tuple mapping.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>37 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 020 Activity count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (JSON_EXTRACT(ac.config,'$.question') IS NULL OR JSON_LENGTH(JSON_EXTRACT(ac.config,'$.choices'))<2);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without learner task.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons l WHERE l.chapter_id=v_chapter AND (NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='listen') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='speak') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='word_order') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='reading_comprehension'));
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Lesson missing Speaking, Listening, Writing, or Reading practice.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter AND lw.is_target=1;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 020 explicit-target count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) d;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_en_fa_series_020_v9();
DROP PROCEDURE IF EXISTS import_nova_en_fa_series_020_v9;

-- NOVA v9.0 / EN-FA / START SERIES 021 / I wake up at seven
-- Independently authored for Persian speakers; requires validated en-fa Series 020.
-- Data import only; canonical schema v9.0 remains unchanged.
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_en_fa_series_021_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_en_fa_series_021_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_level BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_previous_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_previous_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_noah BIGINT UNSIGNED DEFAULT NULL;
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
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 020 en-fa Course missing.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='ST' AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 020 Start Level missing.'; END IF;
  SELECT id INTO v_previous_module FROM modules WHERE level_id=v_level AND sort_order=4 ORDER BY id LIMIT 1;
  IF v_previous_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 020 prerequisite Module missing.'; END IF;
  SELECT id INTO v_previous_chapter FROM chapters WHERE module_id=v_previous_module AND sort_order=5 ORDER BY id LIMIT 1;
  IF v_previous_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 020 Chapter missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_previous_chapter AND status='validated' AND storyline_key='mina-chloe-room-picture' AND storyline_order BETWEEN 9 AND 12;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 020 must be validated with its exact storyline orders.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_previous_chapter AND status='validated' AND title='There are two windows';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 020 canonical prerequisite mismatch.'; END IF;

  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=5 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN
    INSERT INTO modules(level_id,title,title_translation,description,description_translation,emoji,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES(v_level,'Daily Life','زندگی روزانه','Simple daily routines, times, habits, and everyday preferences.','کارهای ساده روزانه، زمان‌ها، عادت‌ها و علاقه‌های روزمره.','☀️',21,25,5,'active','{"course":"en-fa","seriesRange":[21,25]}');
    SET v_module=LAST_INSERT_ID();
  END IF;
  SELECT COUNT(*) INTO v_count FROM modules WHERE id=v_module AND title='Daily Life' AND title_translation='زندگی روزانه';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 021 target Module identity mismatch.'; END IF;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN
    INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES(v_module,'I wake up at seven','من ساعت هفت بیدار می‌شم','Mina tells Noah when she wakes up and practises a short morning routine.','مینا به نوح می‌گوید چه ساعتی بیدار می‌شود و یک برنامه کوتاه صبحگاهی را تمرین می‌کند.',4,21,21,1,'planned','{"course":"en-fa","level":"Start","series":21,"levelChapterOrder":21}');
    SET v_chapter=LAST_INSERT_ID();
  END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='I wake up at seven' AND title_translation='من ساعت هفت بیدار می‌شم';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 021 Chapter identity mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 021 Chapter must be empty before import.'; END IF;
  SELECT id INTO v_c_noah FROM characters WHERE course_id=v_course AND name='Noah' AND gender='male' ORDER BY id LIMIT 1;
  SELECT id INTO v_c_mina FROM characters WHERE course_id=v_course AND name='Mina' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_noah IS NULL OR v_c_mina IS NULL OR v_c_noah=v_c_mina THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required distinct English Characters missing.'; END IF;

  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='what' AND part_of_speech='pronoun' AND translation='چه / چی' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: what'; END IF;
  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='time' AND part_of_speech='noun' AND translation='زمان / ساعت' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: time'; END IF;
  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='I' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: I'; END IF;
  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='wake' AND part_of_speech='verb' AND translation='بیدار شدن' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'wake','wake','verb','بیدار شدن',21,'{"present_i_you_we_they":"wake","present_he_she_it":"wakes","common_particle":"up"}','[{"lemma":"sleep","translation":"خوابیدن"},{"lemma":"go","translation":"رفتن"},{"lemma":"work","translation":"کار کردن"}]','I wake up at seven.','من ساعت هفت بیدار می‌شوم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":21,"explicitTarget":false}');
    SET v_w_004=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='up' AND part_of_speech='particle' AND translation='بالا / در عبارت بیدار شدن' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'up','up','particle','بالا / در عبارت بیدار شدن',21,'{"use":"particle in wake up"}','[{"lemma":"down","translation":"پایین"},{"lemma":"at","translation":"در / ساعت"},{"lemma":"to","translation":"به"}]','I wake up early.','من زود بیدار می‌شوم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":21,"explicitTarget":false}');
    SET v_w_005=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='at' AND part_of_speech='preposition' AND translation='در / ساعت' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: at'; END IF;
  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='seven' AND part_of_speech='numeral' AND translation='هفت' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: seven'; END IF;
  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='yes' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: yes'; END IF;
  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='I wake up at seven.' AND part_of_speech='phrase' AND translation='من ساعت هفت بیدار می‌شوم.' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'I wake up at seven.','I wake up at seven.','phrase','من ساعت هفت بیدار می‌شوم.',21,'{"pattern":"I + wake + up + at + time"}','[{"lemma":"I wake up at eight.","translation":"من ساعت هشت بیدار می‌شوم."},{"lemma":"I go to work at seven.","translation":"من ساعت هفت سر کار می‌روم."},{"lemma":"I at seven wake up.","translation":"من ساعت هفت بیدار می‌شوم."}]','I wake up at seven.','من ساعت هفت بیدار می‌شوم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":21,"explicitTarget":true}');
    SET v_w_009=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='do' AND part_of_speech='auxiliary' AND translation='فعل کمکی برای پرسش' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: do'; END IF;
  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='you' AND part_of_speech='pronoun' AND translation='تو / شما' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: you'; END IF;
  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='What time do you wake up?' AND part_of_speech='phrase' AND translation='چه ساعتی بیدار می‌شوی؟' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'What time do you wake up?','What time do you wake up?','phrase','چه ساعتی بیدار می‌شوی؟',21,'{"pattern":"what time + do + you + wake up"}','[{"lemma":"What time do you go to work?","translation":"چه ساعتی سر کار می‌روی؟"},{"lemma":"Do you wake up at seven?","translation":"ساعت هفت بیدار می‌شوی؟"},{"lemma":"What time you do wake up?","translation":"چه ساعت تو بیدار می‌شوی؟"}]','What time do you wake up?','چه ساعتی بیدار می‌شوی؟',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":21,"explicitTarget":true}');
    SET v_w_012=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='early' AND part_of_speech='adverb' AND translation='زود' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'early','early','adverb','زود',21,'{"use":"time adverb"}','[{"lemma":"late","translation":"دیر"},{"lemma":"today","translation":"امروز"},{"lemma":"now","translation":"حالا"}]','I wake up early.','من زود بیدار می‌شوم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":21,"explicitTarget":false}');
    SET v_w_013=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='every' AND part_of_speech='determiner' AND translation='هر' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'every','every','determiner','هر',21,'{"use":"before a singular time noun"}','[{"lemma":"one","translation":"یک"},{"lemma":"this","translation":"این"},{"lemma":"my","translation":"من / ـم"}]','I wake up at seven every day.','من هر روز ساعت هفت بیدار می‌شوم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":21,"explicitTarget":false}');
    SET v_w_014=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='day' AND part_of_speech='noun' AND translation='روز' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: day'; END IF;
  SELECT id INTO v_w_016 FROM words WHERE course_id=v_course AND lemma='I wake up early.' AND part_of_speech='phrase' AND translation='من زود بیدار می‌شوم.' ORDER BY id LIMIT 1;
  IF v_w_016 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'I wake up early.','I wake up early.','phrase','من زود بیدار می‌شوم.',21,'{"pattern":"I + wake up + time adverb"}','[{"lemma":"I wake up late.","translation":"من دیر بیدار می‌شوم."},{"lemma":"You wake up early.","translation":"تو زود بیدار می‌شوی."},{"lemma":"I early wake up.","translation":"من زود بیدار می‌شوم."}]','I wake up early.','من زود بیدار می‌شوم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":21,"explicitTarget":true}');
    SET v_w_016=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_017 FROM words WHERE course_id=v_course AND lemma='I wake up at seven every day.' AND part_of_speech='phrase' AND translation='من هر روز ساعت هفت بیدار می‌شوم.' ORDER BY id LIMIT 1;
  IF v_w_017 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'I wake up at seven every day.','I wake up at seven every day.','phrase','من هر روز ساعت هفت بیدار می‌شوم.',21,'{"pattern":"I + wake up + at + time + every day"}','[{"lemma":"I wake up at eight every day.","translation":"من هر روز ساعت هشت بیدار می‌شوم."},{"lemma":"I wake up at seven today.","translation":"من امروز ساعت هفت بیدار می‌شوم."},{"lemma":"Every day I at seven wake up.","translation":"هر روز من ساعت هفت بیدار می‌شوم."}]','I wake up at seven every day.','من هر روز ساعت هفت بیدار می‌شوم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":21,"explicitTarget":true}');
    SET v_w_017=LAST_INSERT_ID();
  END IF;

  -- Lesson 1: At seven
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_noah,v_c_mina,'At seven','ساعت هفت','Noah asks about Mina''s morning, and Mina gives her wake-up time.','نوح درباره صبح مینا می‌پرسد و مینا ساعت بیدار شدنش را می‌گوید.','story','mina-noah-morning-routine',1,21,138,1,'validated','{"course":"en-fa","series":21,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_noah,1,'character','What time?','چه ساعتی؟',21,NULL,NULL,NULL,NULL,'[{"surface":"What","lemma":"what","translation":"چه / چی","partOfSpeech":"pronoun"},{"surface":"time","lemma":"time","translation":"زمان / ساعت","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mina,2,'learner','I wake up at seven.','من ساعت هفت بیدار می‌شوم.',21,NULL,NULL,'i wake up at seven',NULL,'[{"surface":"I","lemma":"I","translation":"من","partOfSpeech":"pronoun"},{"surface":"wake","lemma":"wake","translation":"بیدار شدن","partOfSpeech":"verb"},{"surface":"up","lemma":"up","translation":"بالا / در عبارت بیدار شدن","partOfSpeech":"particle"},{"surface":"at","lemma":"at","translation":"در / ساعت","partOfSpeech":"preposition"},{"surface":"seven","lemma":"seven","translation":"هفت","partOfSpeech":"numeral","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_noah,3,'character','At seven?','ساعت هفت؟',21,NULL,NULL,NULL,NULL,'[{"surface":"At","lemma":"at","translation":"در / ساعت","partOfSpeech":"preposition"},{"surface":"seven","lemma":"seven","translation":"هفت","partOfSpeech":"numeral","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mina,4,'learner','Yes, at seven.','بله، ساعت هفت.',21,NULL,NULL,'yes at seven',NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"at","lemma":"at","translation":"در / ساعت","partOfSpeech":"preposition"},{"surface":"seven","lemma":"seven","translation":"هفت","partOfSpeech":"numeral","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_004,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_005,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_006,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_007,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_009,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'new_word',1,NULL,v_w_009,'عبارت کلیدی درس',NULL,21,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',2,v_t_1,NULL,'به نوح گوش کن',NULL,21,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',3,v_t_2,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,21,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',4,v_t_3,NULL,'به نوح گوش کن',NULL,21,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',5,v_t_4,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,21,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'meaning_choice',6,NULL,v_w_004,'معنی درست را انتخاب کن',NULL,21,'{"mode":"word_translation","question":"wake یعنی چی؟","choices":["بیدار شدن","خوابیدن","رفتن"],"correctIndex":0}','{"course":"en-fa","series":21,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'word_order',7,v_t_2,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,21,'{"source":"turn","tokens":["I","wake","up","at","seven"],"answer":"I wake up at seven."}','{"course":"en-fa","series":21,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,21,'{"source":"lesson_story","question":"مینا چه ساعتی بیدار می‌شود؟","choices":["هفت","هشت","نه"],"correctIndex":0}','{"course":"en-fa","series":21,"level":"Start","skill":"reading"}');

  -- Lesson 2: What time?
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_noah,v_c_mina,'What time?','چه ساعتی؟','Mina turns the routine into a complete question for Noah.','مینا برنامه روزانه را به یک پرسش کامل برای نوح تبدیل می‌کند.','story','mina-noah-morning-routine',2,21,150,2,'validated','{"course":"en-fa","series":21,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_noah,1,'character','I wake up at seven.','من ساعت هفت بیدار می‌شوم.',21,NULL,NULL,NULL,NULL,'[{"surface":"I","lemma":"I","translation":"من","partOfSpeech":"pronoun"},{"surface":"wake","lemma":"wake","translation":"بیدار شدن","partOfSpeech":"verb"},{"surface":"up","lemma":"up","translation":"بالا / در عبارت بیدار شدن","partOfSpeech":"particle"},{"surface":"at","lemma":"at","translation":"در / ساعت","partOfSpeech":"preposition"},{"surface":"seven","lemma":"seven","translation":"هفت","partOfSpeech":"numeral","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mina,2,'learner','What time do you wake up?','چه ساعتی بیدار می‌شوی؟',21,NULL,NULL,'what time do you wake up',NULL,'[{"surface":"What","lemma":"what","translation":"چه / چی","partOfSpeech":"pronoun"},{"surface":"time","lemma":"time","translation":"زمان / ساعت","partOfSpeech":"noun"},{"surface":"do","lemma":"do","translation":"فعل کمکی برای پرسش","partOfSpeech":"auxiliary"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"wake","lemma":"wake","translation":"بیدار شدن","partOfSpeech":"verb"},{"surface":"up","lemma":"up","translation":"بالا / در عبارت بیدار شدن","partOfSpeech":"particle","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_noah,3,'character','At seven.','ساعت هفت.',21,NULL,NULL,NULL,NULL,'[{"surface":"At","lemma":"at","translation":"در / ساعت","partOfSpeech":"preposition"},{"surface":"seven","lemma":"seven","translation":"هفت","partOfSpeech":"numeral","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mina,4,'learner','At seven?','ساعت هفت؟',21,NULL,NULL,'at seven',NULL,'[{"surface":"At","lemma":"at","translation":"در / ساعت","partOfSpeech":"preposition"},{"surface":"seven","lemma":"seven","translation":"هفت","partOfSpeech":"numeral","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_noah,5,'character','Yes.','بله.',21,NULL,NULL,NULL,NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_004,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_005,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_006,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_007,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_010,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_011,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_012,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'new_word',1,NULL,v_w_012,'عبارت کلیدی درس',NULL,21,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',2,v_t_5,NULL,'به نوح گوش کن',NULL,21,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',3,v_t_6,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,21,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',4,v_t_7,NULL,'به نوح گوش کن',NULL,21,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',5,v_t_8,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,21,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',6,v_t_9,NULL,'به نوح گوش کن',NULL,21,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'meaning_choice',7,NULL,v_w_005,'معنی درست را انتخاب کن',NULL,21,'{"mode":"word_translation","question":"up یعنی چی؟","choices":["بالا / در عبارت بیدار شدن","پایین","در / ساعت"],"correctIndex":0}','{"course":"en-fa","series":21,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'word_order',8,v_t_6,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,21,'{"source":"turn","tokens":["What","time","do","you","wake","up"],"answer":"What time do you wake up?"}','{"course":"en-fa","series":21,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'reading_comprehension',9,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,21,'{"source":"lesson_story","question":"مینا درباره چه چیزی از نوح می‌پرسد؟","choices":["ساعت بیدار شدن","شماره تلفن","روز تولد"],"correctIndex":0}','{"course":"en-fa","series":21,"level":"Start","skill":"reading"}');

  -- Lesson 3: Wake up early
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_noah,v_c_mina,'Wake up early','زود بیدار شدن','Noah checks whether Mina wakes up early every day.','نوح بررسی می‌کند که آیا مینا هر روز زود بیدار می‌شود.','story','mina-noah-morning-routine',3,21,162,3,'validated','{"course":"en-fa","series":21,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_noah,1,'character','At seven?','ساعت هفت؟',21,NULL,NULL,NULL,NULL,'[{"surface":"At","lemma":"at","translation":"در / ساعت","partOfSpeech":"preposition"},{"surface":"seven","lemma":"seven","translation":"هفت","partOfSpeech":"numeral","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,2,'learner','I wake up early.','من زود بیدار می‌شوم.',21,NULL,NULL,'i wake up early',NULL,'[{"surface":"I","lemma":"I","translation":"من","partOfSpeech":"pronoun"},{"surface":"wake","lemma":"wake","translation":"بیدار شدن","partOfSpeech":"verb"},{"surface":"up","lemma":"up","translation":"بالا / در عبارت بیدار شدن","partOfSpeech":"particle"},{"surface":"early","lemma":"early","translation":"زود","partOfSpeech":"adverb","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_noah,3,'character','Every day?','هر روز؟',21,NULL,NULL,NULL,NULL,'[{"surface":"Every","lemma":"every","translation":"هر","partOfSpeech":"determiner"},{"surface":"day","lemma":"day","translation":"روز","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,4,'learner','Yes, every day.','بله، هر روز.',21,NULL,NULL,'yes every day',NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"every","lemma":"every","translation":"هر","partOfSpeech":"determiner"},{"surface":"day","lemma":"day","translation":"روز","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_noah,5,'character','At seven?','ساعت هفت؟',21,NULL,NULL,NULL,NULL,'[{"surface":"At","lemma":"at","translation":"در / ساعت","partOfSpeech":"preposition"},{"surface":"seven","lemma":"seven","translation":"هفت","partOfSpeech":"numeral","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,6,'learner','Yes.','بله.',21,NULL,NULL,'yes',NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_006,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_007,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_008,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_013,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_014,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_015,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_016,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'new_word',1,NULL,v_w_016,'عبارت کلیدی درس',NULL,21,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',2,v_t_10,NULL,'به نوح گوش کن',NULL,21,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',3,v_t_11,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,21,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',4,v_t_12,NULL,'به نوح گوش کن',NULL,21,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',5,v_t_13,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,21,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',6,v_t_14,NULL,'به نوح گوش کن',NULL,21,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',7,v_t_15,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,21,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'meaning_choice',8,NULL,v_w_013,'معنی درست را انتخاب کن',NULL,21,'{"mode":"word_translation","question":"early یعنی چی؟","choices":["زود","دیر","امروز"],"correctIndex":0}','{"course":"en-fa","series":21,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'word_order',9,v_t_11,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,21,'{"source":"turn","tokens":["I","wake","up","early"],"answer":"I wake up early."}','{"course":"en-fa","series":21,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'reading_comprehension',10,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,21,'{"source":"lesson_story","question":"مینا چه زمانی بیدار می‌شود؟","choices":["زود","دیر","ظهر"],"correctIndex":0}','{"course":"en-fa","series":21,"level":"Start","skill":"reading"}');

  -- Lesson 4: Every day
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_noah,v_c_mina,'Every day','هر روز','Mina combines the time and frequency into one complete routine sentence.','مینا زمان و تکرار را در یک جمله کامل درباره برنامه روزانه کنار هم می‌آورد.','story','mina-noah-morning-routine',4,21,138,4,'validated','{"course":"en-fa","series":21,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_noah,1,'character','What time do you wake up?','چه ساعتی بیدار می‌شوی؟',21,NULL,NULL,NULL,NULL,'[{"surface":"What","lemma":"what","translation":"چه / چی","partOfSpeech":"pronoun"},{"surface":"time","lemma":"time","translation":"زمان / ساعت","partOfSpeech":"noun"},{"surface":"do","lemma":"do","translation":"فعل کمکی برای پرسش","partOfSpeech":"auxiliary"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"wake","lemma":"wake","translation":"بیدار شدن","partOfSpeech":"verb"},{"surface":"up","lemma":"up","translation":"بالا / در عبارت بیدار شدن","partOfSpeech":"particle","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,2,'learner','I wake up at seven every day.','من هر روز ساعت هفت بیدار می‌شوم.',21,NULL,NULL,'i wake up at seven every day',NULL,'[{"surface":"I","lemma":"I","translation":"من","partOfSpeech":"pronoun"},{"surface":"wake","lemma":"wake","translation":"بیدار شدن","partOfSpeech":"verb"},{"surface":"up","lemma":"up","translation":"بالا / در عبارت بیدار شدن","partOfSpeech":"particle"},{"surface":"at","lemma":"at","translation":"در / ساعت","partOfSpeech":"preposition"},{"surface":"seven","lemma":"seven","translation":"هفت","partOfSpeech":"numeral"},{"surface":"every","lemma":"every","translation":"هر","partOfSpeech":"determiner"},{"surface":"day","lemma":"day","translation":"روز","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_noah,3,'character','Early every day?','هر روز زود؟',21,NULL,NULL,NULL,NULL,'[{"surface":"Early","lemma":"early","translation":"زود","partOfSpeech":"adverb"},{"surface":"every","lemma":"every","translation":"هر","partOfSpeech":"determiner"},{"surface":"day","lemma":"day","translation":"روز","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,4,'learner','Yes, every day.','بله، هر روز.',21,NULL,NULL,'yes every day',NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"every","lemma":"every","translation":"هر","partOfSpeech":"determiner"},{"surface":"day","lemma":"day","translation":"روز","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_004,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_005,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_007,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_010,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_011,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_014,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_015,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_017,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'new_word',1,NULL,v_w_017,'عبارت کلیدی درس',NULL,21,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',2,v_t_16,NULL,'به نوح گوش کن',NULL,21,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',3,v_t_17,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,21,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',4,v_t_18,NULL,'به نوح گوش کن',NULL,21,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',5,v_t_19,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,21,NULL,'{"course":"en-fa","series":21,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'meaning_choice',6,NULL,v_w_014,'معنی درست را انتخاب کن',NULL,21,'{"mode":"word_translation","question":"every یعنی چی؟","choices":["هر","یک","این"],"correctIndex":0}','{"course":"en-fa","series":21,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'word_order',7,v_t_17,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,21,'{"source":"turn","tokens":["I","wake","up","at","seven","every","day"],"answer":"I wake up at seven every day."}','{"course":"en-fa","series":21,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,21,'{"source":"lesson_story","question":"مینا چند وقت یک بار ساعت هفت بیدار می‌شود؟","choices":["هر روز","فقط امروز","هر هفته"],"correctIndex":0}','{"course":"en-fa","series":21,"level":"Start","skill":"reading"}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 021 Lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two distinct Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND storyline_key='mina-noah-morning-routine' AND storyline_order BETWEEN 1 AND 4;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 021 storyline continuity.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>19 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 021 Turn count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND (JSON_VALID(t.tokens)=0 OR JSON_LENGTH(t.tokens)=0);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Turn without valid clickable tokens.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id JOIN JSON_TABLE(t.tokens,'$[*]' COLUMNS(lemma VARCHAR(180) PATH '$.lemma',part_of_speech VARCHAR(48) PATH '$.partOfSpeech',translation VARCHAR(255) PATH '$.translation')) jt LEFT JOIN words w ON w.course_id=v_course AND w.lemma=jt.lemma AND w.part_of_speech=jt.part_of_speech AND w.translation=jt.translation LEFT JOIN lesson_words lw ON lw.lesson_id=t.lesson_id AND lw.word_id=w.id WHERE l.chapter_id=v_chapter AND (w.id IS NULL OR lw.word_id IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Clickable token lacks exact Word tuple mapping.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>35 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 021 Activity count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (JSON_EXTRACT(ac.config,'$.question') IS NULL OR JSON_LENGTH(JSON_EXTRACT(ac.config,'$.choices'))<2);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without learner task.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons l WHERE l.chapter_id=v_chapter AND (NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='listen') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='speak') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='word_order') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='reading_comprehension'));
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Lesson missing Speaking, Listening, Writing, or Reading practice.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter AND lw.is_target=1;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 021 explicit-target count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) d;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_en_fa_series_021_v9();
DROP PROCEDURE IF EXISTS import_nova_en_fa_series_021_v9;

-- NOVA v9.0 / EN-FA / START SERIES 022 / I go to work
-- Independently authored for Persian speakers; requires validated en-fa Series 021.
-- Data import only; canonical schema v9.0 remains unchanged.
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_en_fa_series_022_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_en_fa_series_022_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_level BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_previous_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_previous_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_noah BIGINT UNSIGNED DEFAULT NULL;
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
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 021 en-fa Course missing.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='ST' AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 021 Start Level missing.'; END IF;
  SELECT id INTO v_previous_module FROM modules WHERE level_id=v_level AND sort_order=5 ORDER BY id LIMIT 1;
  IF v_previous_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 021 prerequisite Module missing.'; END IF;
  SELECT id INTO v_previous_chapter FROM chapters WHERE module_id=v_previous_module AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_previous_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 021 Chapter missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_previous_chapter AND status='validated' AND storyline_key='mina-noah-morning-routine' AND storyline_order BETWEEN 1 AND 4;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 021 must be validated with its exact storyline orders.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_previous_chapter AND status='validated' AND title='I wake up at seven';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 021 canonical prerequisite mismatch.'; END IF;

  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=5 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 022 target Module 05 missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM modules WHERE id=v_module AND title='Daily Life' AND title_translation='زندگی روزانه';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 022 target Module identity mismatch.'; END IF;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN
    INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES(v_module,'I go to work','من می‌رم سر کار','Mina and Noah continue the morning routine by talking about going to work.','مینا و نوح برنامه صبحگاهی را با حرف زدن درباره رفتن سر کار ادامه می‌دهند.',4,22,22,2,'planned','{"course":"en-fa","level":"Start","series":22,"levelChapterOrder":22}');
    SET v_chapter=LAST_INSERT_ID();
  END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='I go to work' AND title_translation='من می‌رم سر کار';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 022 Chapter identity mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 022 Chapter must be empty before import.'; END IF;
  SELECT id INTO v_c_noah FROM characters WHERE course_id=v_course AND name='Noah' AND gender='male' ORDER BY id LIMIT 1;
  SELECT id INTO v_c_mina FROM characters WHERE course_id=v_course AND name='Mina' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_noah IS NULL OR v_c_mina IS NULL OR v_c_noah=v_c_mina THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required distinct English Characters missing.'; END IF;

  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='do' AND part_of_speech='auxiliary' AND translation='فعل کمکی برای پرسش' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: do'; END IF;
  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='you' AND part_of_speech='pronoun' AND translation='تو / شما' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: you'; END IF;
  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='go' AND part_of_speech='verb' AND translation='رفتن / می‌روم' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'go','go','verb','رفتن / می‌روم',22,'{"present_i_you_we_they":"go","present_he_she_it":"goes"}','[{"lemma":"come","translation":"آمدن"},{"lemma":"wake","translation":"بیدار شدن"},{"lemma":"have","translation":"داشتن"}]','I go to work.','من سر کار می‌روم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":22,"explicitTarget":false}');
    SET v_w_003=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='to' AND part_of_speech='particle' AND translation='به / برای' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: to'; END IF;
  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='work' AND part_of_speech='noun' AND translation='کار / محل کار' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'work','work','noun','کار / محل کار',22,'{"use":"uncountable noun in go to work"}','[{"lemma":"home","translation":"خانه"},{"lemma":"school","translation":"مدرسه"},{"lemma":"room","translation":"اتاق"}]','I go to work at eight.','من ساعت هشت سر کار می‌روم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":22,"explicitTarget":false}');
    SET v_w_005=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='I' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: I'; END IF;
  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='every' AND part_of_speech='determiner' AND translation='هر' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: every'; END IF;
  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='day' AND part_of_speech='noun' AND translation='روز' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: day'; END IF;
  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='yes' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: yes'; END IF;
  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='I go to work.' AND part_of_speech='phrase' AND translation='من سر کار می‌روم.' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'I go to work.','I go to work.','phrase','من سر کار می‌روم.',22,'{"pattern":"I + go + to + work"}','[{"lemma":"I go home.","translation":"من به خانه می‌روم."},{"lemma":"You go to work.","translation":"تو سر کار می‌روی."},{"lemma":"I to work go.","translation":"من به کار می‌روم."}]','I go to work.','من سر کار می‌روم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":22,"explicitTarget":true}');
    SET v_w_010=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='at' AND part_of_speech='preposition' AND translation='در / ساعت' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: at'; END IF;
  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='eight' AND part_of_speech='numeral' AND translation='هشت' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: eight'; END IF;
  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='what' AND part_of_speech='pronoun' AND translation='چه / چی' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: what'; END IF;
  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='time' AND part_of_speech='noun' AND translation='زمان / ساعت' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: time'; END IF;
  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='What time do you go to work?' AND part_of_speech='phrase' AND translation='چه ساعتی سر کار می‌روی؟' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'What time do you go to work?','What time do you go to work?','phrase','چه ساعتی سر کار می‌روی؟',22,'{"pattern":"what time + do + you + go to work"}','[{"lemma":"What time do you wake up?","translation":"چه ساعتی بیدار می‌شوی؟"},{"lemma":"Do you go to work at eight?","translation":"ساعت هشت سر کار می‌روی؟"},{"lemma":"What time you do go to work?","translation":"چه ساعت تو سر کار می‌روی؟"}]','What time do you go to work?','چه ساعتی سر کار می‌روی؟',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":22,"explicitTarget":true}');
    SET v_w_015=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_016 FROM words WHERE course_id=v_course AND lemma='I go to work at eight.' AND part_of_speech='phrase' AND translation='من ساعت هشت سر کار می‌روم.' ORDER BY id LIMIT 1;
  IF v_w_016 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'I go to work at eight.','I go to work at eight.','phrase','من ساعت هشت سر کار می‌روم.',22,'{"pattern":"I + go to work + at + time"}','[{"lemma":"I go to work at seven.","translation":"من ساعت هفت سر کار می‌روم."},{"lemma":"I wake up at eight.","translation":"من ساعت هشت بیدار می‌شوم."},{"lemma":"I at eight go to work.","translation":"من ساعت هشت سر کار می‌روم."}]','I go to work at eight.','من ساعت هشت سر کار می‌روم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":22,"explicitTarget":true}');
    SET v_w_016=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_017 FROM words WHERE course_id=v_course AND lemma='I go to work every day.' AND part_of_speech='phrase' AND translation='من هر روز سر کار می‌روم.' ORDER BY id LIMIT 1;
  IF v_w_017 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'I go to work every day.','I go to work every day.','phrase','من هر روز سر کار می‌روم.',22,'{"pattern":"I + go to work + every day"}','[{"lemma":"I go home every day.","translation":"من هر روز به خانه می‌روم."},{"lemma":"I go to work today.","translation":"من امروز سر کار می‌روم."},{"lemma":"Every day I to work go.","translation":"هر روز من به کار می‌روم."}]','I go to work every day.','من هر روز سر کار می‌روم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":22,"explicitTarget":true}');
    SET v_w_017=LAST_INSERT_ID();
  END IF;

  -- Lesson 1: Go to work
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_noah,v_c_mina,'Go to work','رفتن سر کار','Noah asks about work, and Mina adds the next action to her routine.','نوح درباره کار می‌پرسد و مینا کار بعدی را به برنامه روزانه‌اش اضافه می‌کند.','story','mina-noah-morning-routine',5,22,138,1,'validated','{"course":"en-fa","series":22,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_noah,1,'character','Do you go to work?','سر کار می‌روی؟',22,NULL,NULL,NULL,NULL,'[{"surface":"Do","lemma":"do","translation":"فعل کمکی برای پرسش","partOfSpeech":"auxiliary"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"go","lemma":"go","translation":"رفتن / می‌روم","partOfSpeech":"verb"},{"surface":"to","lemma":"to","translation":"به / برای","partOfSpeech":"particle"},{"surface":"work","lemma":"work","translation":"کار / محل کار","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mina,2,'learner','I go to work.','من سر کار می‌روم.',22,NULL,NULL,'i go to work',NULL,'[{"surface":"I","lemma":"I","translation":"من","partOfSpeech":"pronoun"},{"surface":"go","lemma":"go","translation":"رفتن / می‌روم","partOfSpeech":"verb"},{"surface":"to","lemma":"to","translation":"به / برای","partOfSpeech":"particle"},{"surface":"work","lemma":"work","translation":"کار / محل کار","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_noah,3,'character','Every day?','هر روز؟',22,NULL,NULL,NULL,NULL,'[{"surface":"Every","lemma":"every","translation":"هر","partOfSpeech":"determiner"},{"surface":"day","lemma":"day","translation":"روز","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mina,4,'learner','Yes, every day.','بله، هر روز.',22,NULL,NULL,'yes every day',NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"every","lemma":"every","translation":"هر","partOfSpeech":"determiner"},{"surface":"day","lemma":"day","translation":"روز","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_003,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_004,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_005,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_007,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_008,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_010,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'new_word',1,NULL,v_w_010,'عبارت کلیدی درس',NULL,22,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',2,v_t_1,NULL,'به نوح گوش کن',NULL,22,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',3,v_t_2,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,22,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',4,v_t_3,NULL,'به نوح گوش کن',NULL,22,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',5,v_t_4,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,22,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'meaning_choice',6,NULL,v_w_005,'معنی درست را انتخاب کن',NULL,22,'{"mode":"word_translation","question":"work یعنی چی؟","choices":["کار / محل کار","خانه","مدرسه"],"correctIndex":0}','{"course":"en-fa","series":22,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'word_order',7,v_t_2,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,22,'{"source":"turn","tokens":["I","go","to","work"],"answer":"I go to work."}','{"course":"en-fa","series":22,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,22,'{"source":"lesson_story","question":"مینا بعد از برنامه صبحگاهی کجا می‌رود؟","choices":["سر کار","به اتاق","به کافه"],"correctIndex":0}','{"course":"en-fa","series":22,"level":"Start","skill":"reading"}');

  -- Lesson 2: What time do you go?
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_noah,v_c_mina,'What time do you go?','چه ساعتی می‌روی؟','Mina asks Noah for his work time and checks the answer.','مینا ساعت رفتن نوح به سر کار را می‌پرسد و پاسخ را بررسی می‌کند.','story','mina-noah-morning-routine',6,22,150,2,'validated','{"course":"en-fa","series":22,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_noah,1,'character','I go to work at eight.','من ساعت هشت سر کار می‌روم.',22,NULL,NULL,NULL,NULL,'[{"surface":"I","lemma":"I","translation":"من","partOfSpeech":"pronoun"},{"surface":"go","lemma":"go","translation":"رفتن / می‌روم","partOfSpeech":"verb"},{"surface":"to","lemma":"to","translation":"به / برای","partOfSpeech":"particle"},{"surface":"work","lemma":"work","translation":"کار / محل کار","partOfSpeech":"noun"},{"surface":"at","lemma":"at","translation":"در / ساعت","partOfSpeech":"preposition"},{"surface":"eight","lemma":"eight","translation":"هشت","partOfSpeech":"numeral","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mina,2,'learner','What time do you go to work?','چه ساعتی سر کار می‌روی؟',22,NULL,NULL,'what time do you go to work',NULL,'[{"surface":"What","lemma":"what","translation":"چه / چی","partOfSpeech":"pronoun"},{"surface":"time","lemma":"time","translation":"زمان / ساعت","partOfSpeech":"noun"},{"surface":"do","lemma":"do","translation":"فعل کمکی برای پرسش","partOfSpeech":"auxiliary"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"go","lemma":"go","translation":"رفتن / می‌روم","partOfSpeech":"verb"},{"surface":"to","lemma":"to","translation":"به / برای","partOfSpeech":"particle"},{"surface":"work","lemma":"work","translation":"کار / محل کار","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_noah,3,'character','At eight.','ساعت هشت.',22,NULL,NULL,NULL,NULL,'[{"surface":"At","lemma":"at","translation":"در / ساعت","partOfSpeech":"preposition"},{"surface":"eight","lemma":"eight","translation":"هشت","partOfSpeech":"numeral","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mina,4,'learner','At eight?','ساعت هشت؟',22,NULL,NULL,'at eight',NULL,'[{"surface":"At","lemma":"at","translation":"در / ساعت","partOfSpeech":"preposition"},{"surface":"eight","lemma":"eight","translation":"هشت","partOfSpeech":"numeral","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_noah,5,'character','Yes.','بله.',22,NULL,NULL,NULL,NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_003,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_004,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_005,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_011,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_012,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_014,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_015,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'new_word',1,NULL,v_w_015,'عبارت کلیدی درس',NULL,22,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',2,v_t_5,NULL,'به نوح گوش کن',NULL,22,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',3,v_t_6,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,22,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',4,v_t_7,NULL,'به نوح گوش کن',NULL,22,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',5,v_t_8,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,22,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',6,v_t_9,NULL,'به نوح گوش کن',NULL,22,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'meaning_choice',7,NULL,v_w_003,'معنی درست را انتخاب کن',NULL,22,'{"mode":"word_translation","question":"go یعنی چی؟","choices":["رفتن / می‌روم","آمدن","بیدار شدن"],"correctIndex":0}','{"course":"en-fa","series":22,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'word_order',8,v_t_6,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,22,'{"source":"turn","tokens":["What","time","do","you","go","to","work"],"answer":"What time do you go to work?"}','{"course":"en-fa","series":22,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'reading_comprehension',9,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,22,'{"source":"lesson_story","question":"نوح چه ساعتی سر کار می‌رود؟","choices":["هشت","هفت","نه"],"correctIndex":0}','{"course":"en-fa","series":22,"level":"Start","skill":"reading"}');

  -- Lesson 3: At eight
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_noah,v_c_mina,'At eight','ساعت هشت','Noah asks for Mina''s exact work time and confirms the daily pattern.','نوح ساعت دقیق رفتن مینا به کار را می‌پرسد و برنامه هر روز را تایید می‌کند.','story','mina-noah-morning-routine',7,22,162,3,'validated','{"course":"en-fa","series":22,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_noah,1,'character','What time do you go to work?','چه ساعتی سر کار می‌روی؟',22,NULL,NULL,NULL,NULL,'[{"surface":"What","lemma":"what","translation":"چه / چی","partOfSpeech":"pronoun"},{"surface":"time","lemma":"time","translation":"زمان / ساعت","partOfSpeech":"noun"},{"surface":"do","lemma":"do","translation":"فعل کمکی برای پرسش","partOfSpeech":"auxiliary"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"go","lemma":"go","translation":"رفتن / می‌روم","partOfSpeech":"verb"},{"surface":"to","lemma":"to","translation":"به / برای","partOfSpeech":"particle"},{"surface":"work","lemma":"work","translation":"کار / محل کار","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,2,'learner','I go to work at eight.','من ساعت هشت سر کار می‌روم.',22,NULL,NULL,'i go to work at eight',NULL,'[{"surface":"I","lemma":"I","translation":"من","partOfSpeech":"pronoun"},{"surface":"go","lemma":"go","translation":"رفتن / می‌روم","partOfSpeech":"verb"},{"surface":"to","lemma":"to","translation":"به / برای","partOfSpeech":"particle"},{"surface":"work","lemma":"work","translation":"کار / محل کار","partOfSpeech":"noun"},{"surface":"at","lemma":"at","translation":"در / ساعت","partOfSpeech":"preposition"},{"surface":"eight","lemma":"eight","translation":"هشت","partOfSpeech":"numeral","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_noah,3,'character','Every day?','هر روز؟',22,NULL,NULL,NULL,NULL,'[{"surface":"Every","lemma":"every","translation":"هر","partOfSpeech":"determiner"},{"surface":"day","lemma":"day","translation":"روز","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,4,'learner','Yes, every day.','بله، هر روز.',22,NULL,NULL,'yes every day',NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"every","lemma":"every","translation":"هر","partOfSpeech":"determiner"},{"surface":"day","lemma":"day","translation":"روز","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_noah,5,'character','At eight every day?','هر روز ساعت هشت؟',22,NULL,NULL,NULL,NULL,'[{"surface":"At","lemma":"at","translation":"در / ساعت","partOfSpeech":"preposition"},{"surface":"eight","lemma":"eight","translation":"هشت","partOfSpeech":"numeral"},{"surface":"every","lemma":"every","translation":"هر","partOfSpeech":"determiner"},{"surface":"day","lemma":"day","translation":"روز","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,6,'learner','Yes.','بله.',22,NULL,NULL,'yes',NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_003,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_004,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_005,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_007,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_008,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_009,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_011,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_012,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_014,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_016,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'new_word',1,NULL,v_w_016,'عبارت کلیدی درس',NULL,22,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',2,v_t_10,NULL,'به نوح گوش کن',NULL,22,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',3,v_t_11,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,22,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',4,v_t_12,NULL,'به نوح گوش کن',NULL,22,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',5,v_t_13,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,22,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',6,v_t_14,NULL,'به نوح گوش کن',NULL,22,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',7,v_t_15,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,22,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'meaning_choice',8,NULL,v_w_003,'معنی درست را انتخاب کن',NULL,22,'{"mode":"word_translation","question":"go یعنی چی؟","choices":["رفتن / می‌روم","آمدن","بیدار شدن"],"correctIndex":0}','{"course":"en-fa","series":22,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'word_order',9,v_t_11,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,22,'{"source":"turn","tokens":["I","go","to","work","at","eight"],"answer":"I go to work at eight."}','{"course":"en-fa","series":22,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'reading_comprehension',10,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,22,'{"source":"lesson_story","question":"مینا چه ساعتی سر کار می‌رود؟","choices":["هشت","هفت","ده"],"correctIndex":0}','{"course":"en-fa","series":22,"level":"Start","skill":"reading"}');

  -- Lesson 4: Work every day
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_noah,v_c_mina,'Work every day','کار در هر روز','Mina combines the destination and frequency in one routine sentence.','مینا مقصد و تکرار را در یک جمله درباره برنامه روزانه کنار هم می‌آورد.','story','mina-noah-morning-routine',8,22,138,4,'validated','{"course":"en-fa","series":22,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_noah,1,'character','Do you go to work every day?','هر روز سر کار می‌روی؟',22,NULL,NULL,NULL,NULL,'[{"surface":"Do","lemma":"do","translation":"فعل کمکی برای پرسش","partOfSpeech":"auxiliary"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"go","lemma":"go","translation":"رفتن / می‌روم","partOfSpeech":"verb"},{"surface":"to","lemma":"to","translation":"به / برای","partOfSpeech":"particle"},{"surface":"work","lemma":"work","translation":"کار / محل کار","partOfSpeech":"noun"},{"surface":"every","lemma":"every","translation":"هر","partOfSpeech":"determiner"},{"surface":"day","lemma":"day","translation":"روز","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,2,'learner','I go to work every day.','من هر روز سر کار می‌روم.',22,NULL,NULL,'i go to work every day',NULL,'[{"surface":"I","lemma":"I","translation":"من","partOfSpeech":"pronoun"},{"surface":"go","lemma":"go","translation":"رفتن / می‌روم","partOfSpeech":"verb"},{"surface":"to","lemma":"to","translation":"به / برای","partOfSpeech":"particle"},{"surface":"work","lemma":"work","translation":"کار / محل کار","partOfSpeech":"noun"},{"surface":"every","lemma":"every","translation":"هر","partOfSpeech":"determiner"},{"surface":"day","lemma":"day","translation":"روز","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_noah,3,'character','At eight?','ساعت هشت؟',22,NULL,NULL,NULL,NULL,'[{"surface":"At","lemma":"at","translation":"در / ساعت","partOfSpeech":"preposition"},{"surface":"eight","lemma":"eight","translation":"هشت","partOfSpeech":"numeral","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,4,'learner','Yes, at eight.','بله، ساعت هشت.',22,NULL,NULL,'yes at eight',NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"at","lemma":"at","translation":"در / ساعت","partOfSpeech":"preposition"},{"surface":"eight","lemma":"eight","translation":"هشت","partOfSpeech":"numeral","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_003,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_004,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_005,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_007,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_008,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_011,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_012,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_017,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'new_word',1,NULL,v_w_017,'عبارت کلیدی درس',NULL,22,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',2,v_t_16,NULL,'به نوح گوش کن',NULL,22,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',3,v_t_17,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,22,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',4,v_t_18,NULL,'به نوح گوش کن',NULL,22,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',5,v_t_19,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,22,NULL,'{"course":"en-fa","series":22,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'meaning_choice',6,NULL,v_w_005,'معنی درست را انتخاب کن',NULL,22,'{"mode":"word_translation","question":"work یعنی چی؟","choices":["کار / محل کار","خانه","مدرسه"],"correctIndex":0}','{"course":"en-fa","series":22,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'word_order',7,v_t_17,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,22,'{"source":"turn","tokens":["I","go","to","work","every","day"],"answer":"I go to work every day."}','{"course":"en-fa","series":22,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,22,'{"source":"lesson_story","question":"مینا چند وقت یک بار سر کار می‌رود؟","choices":["هر روز","فقط امروز","هر هفته"],"correctIndex":0}','{"course":"en-fa","series":22,"level":"Start","skill":"reading"}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 022 Lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two distinct Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND storyline_key='mina-noah-morning-routine' AND storyline_order BETWEEN 5 AND 8;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 022 storyline continuity.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>19 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 022 Turn count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND (JSON_VALID(t.tokens)=0 OR JSON_LENGTH(t.tokens)=0);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Turn without valid clickable tokens.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id JOIN JSON_TABLE(t.tokens,'$[*]' COLUMNS(lemma VARCHAR(180) PATH '$.lemma',part_of_speech VARCHAR(48) PATH '$.partOfSpeech',translation VARCHAR(255) PATH '$.translation')) jt LEFT JOIN words w ON w.course_id=v_course AND w.lemma=jt.lemma AND w.part_of_speech=jt.part_of_speech AND w.translation=jt.translation LEFT JOIN lesson_words lw ON lw.lesson_id=t.lesson_id AND lw.word_id=w.id WHERE l.chapter_id=v_chapter AND (w.id IS NULL OR lw.word_id IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Clickable token lacks exact Word tuple mapping.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>35 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 022 Activity count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (JSON_EXTRACT(ac.config,'$.question') IS NULL OR JSON_LENGTH(JSON_EXTRACT(ac.config,'$.choices'))<2);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without learner task.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons l WHERE l.chapter_id=v_chapter AND (NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='listen') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='speak') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='word_order') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='reading_comprehension'));
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Lesson missing Speaking, Listening, Writing, or Reading practice.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter AND lw.is_target=1;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 022 explicit-target count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) d;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_en_fa_series_022_v9();
DROP PROCEDURE IF EXISTS import_nova_en_fa_series_022_v9;

-- NOVA v9.0 / EN-FA / START SERIES 023 / I study in the evening
-- Independently authored for Persian speakers; requires validated en-fa Series 022.
-- Data import only; canonical schema v9.0 remains unchanged.
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_en_fa_series_023_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_en_fa_series_023_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_level BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_previous_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_previous_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_noah BIGINT UNSIGNED DEFAULT NULL;
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
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 022 en-fa Course missing.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='ST' AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 022 Start Level missing.'; END IF;
  SELECT id INTO v_previous_module FROM modules WHERE level_id=v_level AND sort_order=5 ORDER BY id LIMIT 1;
  IF v_previous_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 022 prerequisite Module missing.'; END IF;
  SELECT id INTO v_previous_chapter FROM chapters WHERE module_id=v_previous_module AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_previous_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 022 Chapter missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_previous_chapter AND status='validated' AND storyline_key='mina-noah-morning-routine' AND storyline_order BETWEEN 5 AND 8;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 022 must be validated with its exact storyline orders.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_previous_chapter AND status='validated' AND title='I go to work';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 022 canonical prerequisite mismatch.'; END IF;

  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=5 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 023 target Module 05 missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM modules WHERE id=v_module AND title='Daily Life' AND title_translation='زندگی روزانه';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 023 target Module identity mismatch.'; END IF;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN
    INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES(v_module,'I study in the evening','من عصر درس می‌خونم','Mina and Noah continue their daily routine by talking about evening study.','مینا و نوح برنامه روزانه را با حرف زدن درباره درس خواندن در عصر ادامه می‌دهند.',4,23,23,3,'planned','{"course":"en-fa","level":"Start","series":23,"levelChapterOrder":23}');
    SET v_chapter=LAST_INSERT_ID();
  END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='I study in the evening' AND title_translation='من عصر درس می‌خونم';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 023 Chapter identity mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 023 Chapter must be empty before import.'; END IF;
  SELECT id INTO v_c_noah FROM characters WHERE course_id=v_course AND name='Noah' AND gender='male' ORDER BY id LIMIT 1;
  SELECT id INTO v_c_mina FROM characters WHERE course_id=v_course AND name='Mina' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_noah IS NULL OR v_c_mina IS NULL OR v_c_noah=v_c_mina THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required distinct English Characters missing.'; END IF;

  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='do' AND part_of_speech='auxiliary' AND translation='فعل کمکی برای پرسش' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: do'; END IF;
  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='you' AND part_of_speech='pronoun' AND translation='تو / شما' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: you'; END IF;
  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='study' AND part_of_speech='verb' AND translation='درس خواندن / مطالعه کردن' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'study','study','verb','درس خواندن / مطالعه کردن',23,'{"present_i_you_we_they":"study","present_he_she_it":"studies"}','[{"lemma":"work","translation":"کار کردن"},{"lemma":"read","translation":"خواندن"},{"lemma":"go","translation":"رفتن"}]','I study in the evening.','من عصر درس می‌خوانم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":23,"explicitTarget":false}');
    SET v_w_003=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='I' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: I'; END IF;
  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='in' AND part_of_speech='preposition' AND translation='در' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: in'; END IF;
  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='the' AND part_of_speech='article' AND translation='آن / ـِ مشخص' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: the'; END IF;
  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='evening' AND part_of_speech='noun' AND translation='عصر / شب' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'evening','evening','noun','عصر / شب',23,'{"time_phrase":"in the evening"}','[{"lemma":"morning","translation":"صبح"},{"lemma":"day","translation":"روز"},{"lemma":"time","translation":"زمان"}]','I study every evening.','من هر عصر درس می‌خوانم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":23,"explicitTarget":false}');
    SET v_w_007=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='every' AND part_of_speech='determiner' AND translation='هر' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: every'; END IF;
  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='yes' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: yes'; END IF;
  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='I study in the evening.' AND part_of_speech='phrase' AND translation='من عصر درس می‌خوانم.' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'I study in the evening.','I study in the evening.','phrase','من عصر درس می‌خوانم.',23,'{"pattern":"I + study + in the evening"}','[{"lemma":"I work in the evening.","translation":"من عصر کار می‌کنم."},{"lemma":"You study in the evening.","translation":"تو عصر درس می‌خوانی."},{"lemma":"I in the evening study.","translation":"من عصر درس می‌خوانم."}]','I study in the evening.','من عصر درس می‌خوانم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":23,"explicitTarget":true}');
    SET v_w_010=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='at' AND part_of_speech='preposition' AND translation='در / ساعت' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: at'; END IF;
  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='eight' AND part_of_speech='numeral' AND translation='هشت' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: eight'; END IF;
  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='Do you study in the evening?' AND part_of_speech='phrase' AND translation='عصر درس می‌خوانی؟' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Do you study in the evening?','Do you study in the evening?','phrase','عصر درس می‌خوانی؟',23,'{"pattern":"do + you + study + in the evening"}','[{"lemma":"Do you work in the evening?","translation":"عصر کار می‌کنی؟"},{"lemma":"You study in the evening?","translation":"تو عصر درس می‌خوانی؟"},{"lemma":"Do study you in the evening?","translation":"عصر تو درس می‌خوانی؟"}]','Do you study in the evening?','عصر درس می‌خوانی؟',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":23,"explicitTarget":true}');
    SET v_w_013=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='what' AND part_of_speech='pronoun' AND translation='چه / چی' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: what'; END IF;
  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='time' AND part_of_speech='noun' AND translation='زمان / ساعت' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: time'; END IF;
  SELECT id INTO v_w_016 FROM words WHERE course_id=v_course AND lemma='I study at eight in the evening.' AND part_of_speech='phrase' AND translation='من عصر ساعت هشت درس می‌خوانم.' ORDER BY id LIMIT 1;
  IF v_w_016 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'I study at eight in the evening.','I study at eight in the evening.','phrase','من عصر ساعت هشت درس می‌خوانم.',23,'{"pattern":"I + study + at + time + in the evening"}','[{"lemma":"I study at seven in the evening.","translation":"من عصر ساعت هفت درس می‌خوانم."},{"lemma":"I go to work at eight.","translation":"من ساعت هشت سر کار می‌روم."},{"lemma":"At eight I in the evening study.","translation":"من عصر ساعت هشت درس می‌خوانم."}]','I study at eight in the evening.','من عصر ساعت هشت درس می‌خوانم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":23,"explicitTarget":true}');
    SET v_w_016=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_017 FROM words WHERE course_id=v_course AND lemma='I study every evening.' AND part_of_speech='phrase' AND translation='من هر عصر درس می‌خوانم.' ORDER BY id LIMIT 1;
  IF v_w_017 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'I study every evening.','I study every evening.','phrase','من هر عصر درس می‌خوانم.',23,'{"pattern":"I + study + every evening"}','[{"lemma":"I work every evening.","translation":"من هر عصر کار می‌کنم."},{"lemma":"I study every day.","translation":"من هر روز درس می‌خوانم."},{"lemma":"Every evening I study?","translation":"هر عصر درس می‌خوانم؟"}]','I study every evening.','من هر عصر درس می‌خوانم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":23,"explicitTarget":true}');
    SET v_w_017=LAST_INSERT_ID();
  END IF;

  -- Lesson 1: Study in the evening
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_noah,v_c_mina,'Study in the evening','درس خواندن در عصر','Noah asks about study, and Mina adds it to her evening routine.','نوح درباره درس خواندن می‌پرسد و مینا آن را به برنامه عصرش اضافه می‌کند.','story','mina-noah-morning-routine',9,23,138,1,'validated','{"course":"en-fa","series":23,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_noah,1,'character','Do you study?','درس می‌خوانی؟',23,NULL,NULL,NULL,NULL,'[{"surface":"Do","lemma":"do","translation":"فعل کمکی برای پرسش","partOfSpeech":"auxiliary"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"study","lemma":"study","translation":"درس خواندن / مطالعه کردن","partOfSpeech":"verb","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mina,2,'learner','I study in the evening.','من عصر درس می‌خوانم.',23,NULL,NULL,'i study in the evening',NULL,'[{"surface":"I","lemma":"I","translation":"من","partOfSpeech":"pronoun"},{"surface":"study","lemma":"study","translation":"درس خواندن / مطالعه کردن","partOfSpeech":"verb"},{"surface":"in","lemma":"in","translation":"در","partOfSpeech":"preposition"},{"surface":"the","lemma":"the","translation":"آن / ـِ مشخص","partOfSpeech":"article"},{"surface":"evening","lemma":"evening","translation":"عصر / شب","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_noah,3,'character','Every evening?','هر عصر؟',23,NULL,NULL,NULL,NULL,'[{"surface":"Every","lemma":"every","translation":"هر","partOfSpeech":"determiner"},{"surface":"evening","lemma":"evening","translation":"عصر / شب","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mina,4,'learner','Yes.','بله.',23,NULL,NULL,'yes',NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_003,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_007,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_010,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'new_word',1,NULL,v_w_010,'عبارت کلیدی درس',NULL,23,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',2,v_t_1,NULL,'به نوح گوش کن',NULL,23,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',3,v_t_2,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,23,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',4,v_t_3,NULL,'به نوح گوش کن',NULL,23,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',5,v_t_4,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,23,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'meaning_choice',6,NULL,v_w_003,'معنی درست را انتخاب کن',NULL,23,'{"mode":"word_translation","question":"study یعنی چی؟","choices":["درس خواندن / مطالعه کردن","کار کردن","خواندن"],"correctIndex":0}','{"course":"en-fa","series":23,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'word_order',7,v_t_2,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,23,'{"source":"turn","tokens":["I","study","in","the","evening"],"answer":"I study in the evening."}','{"course":"en-fa","series":23,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,23,'{"source":"lesson_story","question":"مینا چه زمانی درس می‌خواند؟","choices":["عصر","صبح","ظهر"],"correctIndex":0}','{"course":"en-fa","series":23,"level":"Start","skill":"reading"}');

  -- Lesson 2: Do you study?
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_noah,v_c_mina,'Do you study?','درس می‌خوانی؟','Mina asks Noah about his evening study habit.','مینا از نوح درباره عادت درس خواندن در عصر می‌پرسد.','story','mina-noah-morning-routine',10,23,150,2,'validated','{"course":"en-fa","series":23,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_noah,1,'character','I study in the evening.','من عصر درس می‌خوانم.',23,NULL,NULL,NULL,NULL,'[{"surface":"I","lemma":"I","translation":"من","partOfSpeech":"pronoun"},{"surface":"study","lemma":"study","translation":"درس خواندن / مطالعه کردن","partOfSpeech":"verb"},{"surface":"in","lemma":"in","translation":"در","partOfSpeech":"preposition"},{"surface":"the","lemma":"the","translation":"آن / ـِ مشخص","partOfSpeech":"article"},{"surface":"evening","lemma":"evening","translation":"عصر / شب","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mina,2,'learner','Do you study in the evening?','عصر درس می‌خوانی؟',23,NULL,NULL,'do you study in the evening',NULL,'[{"surface":"Do","lemma":"do","translation":"فعل کمکی برای پرسش","partOfSpeech":"auxiliary"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"study","lemma":"study","translation":"درس خواندن / مطالعه کردن","partOfSpeech":"verb"},{"surface":"in","lemma":"in","translation":"در","partOfSpeech":"preposition"},{"surface":"the","lemma":"the","translation":"آن / ـِ مشخص","partOfSpeech":"article"},{"surface":"evening","lemma":"evening","translation":"عصر / شب","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_noah,3,'character','Yes, every evening.','بله، هر عصر.',23,NULL,NULL,NULL,NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"every","lemma":"every","translation":"هر","partOfSpeech":"determiner"},{"surface":"evening","lemma":"evening","translation":"عصر / شب","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mina,4,'learner','At eight?','ساعت هشت؟',23,NULL,NULL,'at eight',NULL,'[{"surface":"At","lemma":"at","translation":"در / ساعت","partOfSpeech":"preposition"},{"surface":"eight","lemma":"eight","translation":"هشت","partOfSpeech":"numeral","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_noah,5,'character','Yes.','بله.',23,NULL,NULL,NULL,NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_003,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_005,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_006,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_007,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_009,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_011,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_013,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'new_word',1,NULL,v_w_013,'عبارت کلیدی درس',NULL,23,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',2,v_t_5,NULL,'به نوح گوش کن',NULL,23,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',3,v_t_6,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,23,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',4,v_t_7,NULL,'به نوح گوش کن',NULL,23,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',5,v_t_8,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,23,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',6,v_t_9,NULL,'به نوح گوش کن',NULL,23,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'meaning_choice',7,NULL,v_w_007,'معنی درست را انتخاب کن',NULL,23,'{"mode":"word_translation","question":"evening یعنی چی؟","choices":["عصر / شب","صبح","روز"],"correctIndex":0}','{"course":"en-fa","series":23,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'word_order',8,v_t_6,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,23,'{"source":"turn","tokens":["Do","you","study","in","the","evening"],"answer":"Do you study in the evening?"}','{"course":"en-fa","series":23,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'reading_comprehension',9,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,23,'{"source":"lesson_story","question":"نوح چند وقت یک بار عصر درس می‌خواند؟","choices":["هر عصر","فقط امروز","هر صبح"],"correctIndex":0}','{"course":"en-fa","series":23,"level":"Start","skill":"reading"}');

  -- Lesson 3: At eight in the evening
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_noah,v_c_mina,'At eight in the evening','عصر ساعت هشت','Noah asks for Mina''s study time and checks the routine.','نوح زمان درس خواندن مینا را می‌پرسد و برنامه را بررسی می‌کند.','story','mina-noah-morning-routine',11,23,162,3,'validated','{"course":"en-fa","series":23,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_noah,1,'character','What time do you study?','چه ساعتی درس می‌خوانی؟',23,NULL,NULL,NULL,NULL,'[{"surface":"What","lemma":"what","translation":"چه / چی","partOfSpeech":"pronoun"},{"surface":"time","lemma":"time","translation":"زمان / ساعت","partOfSpeech":"noun"},{"surface":"do","lemma":"do","translation":"فعل کمکی برای پرسش","partOfSpeech":"auxiliary"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"study","lemma":"study","translation":"درس خواندن / مطالعه کردن","partOfSpeech":"verb","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,2,'learner','I study at eight in the evening.','من عصر ساعت هشت درس می‌خوانم.',23,NULL,NULL,'i study at eight in the evening',NULL,'[{"surface":"I","lemma":"I","translation":"من","partOfSpeech":"pronoun"},{"surface":"study","lemma":"study","translation":"درس خواندن / مطالعه کردن","partOfSpeech":"verb"},{"surface":"at","lemma":"at","translation":"در / ساعت","partOfSpeech":"preposition"},{"surface":"eight","lemma":"eight","translation":"هشت","partOfSpeech":"numeral"},{"surface":"in","lemma":"in","translation":"در","partOfSpeech":"preposition"},{"surface":"the","lemma":"the","translation":"آن / ـِ مشخص","partOfSpeech":"article"},{"surface":"evening","lemma":"evening","translation":"عصر / شب","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_noah,3,'character','At eight?','ساعت هشت؟',23,NULL,NULL,NULL,NULL,'[{"surface":"At","lemma":"at","translation":"در / ساعت","partOfSpeech":"preposition"},{"surface":"eight","lemma":"eight","translation":"هشت","partOfSpeech":"numeral","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,4,'learner','Yes, in the evening.','بله، عصر.',23,NULL,NULL,'yes in the evening',NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"in","lemma":"in","translation":"در","partOfSpeech":"preposition"},{"surface":"the","lemma":"the","translation":"آن / ـِ مشخص","partOfSpeech":"article"},{"surface":"evening","lemma":"evening","translation":"عصر / شب","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_noah,5,'character','Every evening?','هر عصر؟',23,NULL,NULL,NULL,NULL,'[{"surface":"Every","lemma":"every","translation":"هر","partOfSpeech":"determiner"},{"surface":"evening","lemma":"evening","translation":"عصر / شب","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,6,'learner','Yes.','بله.',23,NULL,NULL,'yes',NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_003,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_005,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_006,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_007,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_009,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_011,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_012,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_014,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_015,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_016,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'new_word',1,NULL,v_w_016,'عبارت کلیدی درس',NULL,23,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',2,v_t_10,NULL,'به نوح گوش کن',NULL,23,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',3,v_t_11,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,23,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',4,v_t_12,NULL,'به نوح گوش کن',NULL,23,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',5,v_t_13,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,23,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',6,v_t_14,NULL,'به نوح گوش کن',NULL,23,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',7,v_t_15,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,23,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'meaning_choice',8,NULL,v_w_003,'معنی درست را انتخاب کن',NULL,23,'{"mode":"word_translation","question":"study یعنی چی؟","choices":["درس خواندن / مطالعه کردن","کار کردن","خواندن"],"correctIndex":0}','{"course":"en-fa","series":23,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'word_order',9,v_t_11,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,23,'{"source":"turn","tokens":["I","study","at","eight","in","the","evening"],"answer":"I study at eight in the evening."}','{"course":"en-fa","series":23,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'reading_comprehension',10,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,23,'{"source":"lesson_story","question":"مینا چه ساعتی درس می‌خواند؟","choices":["هشت","هفت","نه"],"correctIndex":0}','{"course":"en-fa","series":23,"level":"Start","skill":"reading"}');

  -- Lesson 4: Every evening
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_noah,v_c_mina,'Every evening','هر عصر','Mina combines the action and frequency in one routine sentence.','مینا کار و تکرار را در یک جمله درباره برنامه روزانه کنار هم می‌آورد.','story','mina-noah-morning-routine',12,23,138,4,'validated','{"course":"en-fa","series":23,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_noah,1,'character','Do you study every evening?','هر عصر درس می‌خوانی؟',23,NULL,NULL,NULL,NULL,'[{"surface":"Do","lemma":"do","translation":"فعل کمکی برای پرسش","partOfSpeech":"auxiliary"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"study","lemma":"study","translation":"درس خواندن / مطالعه کردن","partOfSpeech":"verb"},{"surface":"every","lemma":"every","translation":"هر","partOfSpeech":"determiner"},{"surface":"evening","lemma":"evening","translation":"عصر / شب","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,2,'learner','I study every evening.','من هر عصر درس می‌خوانم.',23,NULL,NULL,'i study every evening',NULL,'[{"surface":"I","lemma":"I","translation":"من","partOfSpeech":"pronoun"},{"surface":"study","lemma":"study","translation":"درس خواندن / مطالعه کردن","partOfSpeech":"verb"},{"surface":"every","lemma":"every","translation":"هر","partOfSpeech":"determiner"},{"surface":"evening","lemma":"evening","translation":"عصر / شب","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_noah,3,'character','At eight?','ساعت هشت؟',23,NULL,NULL,NULL,NULL,'[{"surface":"At","lemma":"at","translation":"در / ساعت","partOfSpeech":"preposition"},{"surface":"eight","lemma":"eight","translation":"هشت","partOfSpeech":"numeral","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,4,'learner','Yes, at eight.','بله، ساعت هشت.',23,NULL,NULL,'yes at eight',NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"at","lemma":"at","translation":"در / ساعت","partOfSpeech":"preposition"},{"surface":"eight","lemma":"eight","translation":"هشت","partOfSpeech":"numeral","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_003,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_007,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_008,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_011,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_012,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_017,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'new_word',1,NULL,v_w_017,'عبارت کلیدی درس',NULL,23,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',2,v_t_16,NULL,'به نوح گوش کن',NULL,23,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',3,v_t_17,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,23,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',4,v_t_18,NULL,'به نوح گوش کن',NULL,23,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',5,v_t_19,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,23,NULL,'{"course":"en-fa","series":23,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'meaning_choice',6,NULL,v_w_007,'معنی درست را انتخاب کن',NULL,23,'{"mode":"word_translation","question":"evening یعنی چی؟","choices":["عصر / شب","صبح","روز"],"correctIndex":0}','{"course":"en-fa","series":23,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'word_order',7,v_t_17,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,23,'{"source":"turn","tokens":["I","study","every","evening"],"answer":"I study every evening."}','{"course":"en-fa","series":23,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,23,'{"source":"lesson_story","question":"مینا چند وقت یک بار درس می‌خواند؟","choices":["هر عصر","هر صبح","فقط جمعه"],"correctIndex":0}','{"course":"en-fa","series":23,"level":"Start","skill":"reading"}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 023 Lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two distinct Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND storyline_key='mina-noah-morning-routine' AND storyline_order BETWEEN 9 AND 12;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 023 storyline continuity.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>19 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 023 Turn count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND (JSON_VALID(t.tokens)=0 OR JSON_LENGTH(t.tokens)=0);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Turn without valid clickable tokens.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id JOIN JSON_TABLE(t.tokens,'$[*]' COLUMNS(lemma VARCHAR(180) PATH '$.lemma',part_of_speech VARCHAR(48) PATH '$.partOfSpeech',translation VARCHAR(255) PATH '$.translation')) jt LEFT JOIN words w ON w.course_id=v_course AND w.lemma=jt.lemma AND w.part_of_speech=jt.part_of_speech AND w.translation=jt.translation LEFT JOIN lesson_words lw ON lw.lesson_id=t.lesson_id AND lw.word_id=w.id WHERE l.chapter_id=v_chapter AND (w.id IS NULL OR lw.word_id IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Clickable token lacks exact Word tuple mapping.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>35 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 023 Activity count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (JSON_EXTRACT(ac.config,'$.question') IS NULL OR JSON_LENGTH(JSON_EXTRACT(ac.config,'$.choices'))<2);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without learner task.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons l WHERE l.chapter_id=v_chapter AND (NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='listen') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='speak') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='word_order') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='reading_comprehension'));
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Lesson missing Speaking, Listening, Writing, or Reading practice.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter AND lw.is_target=1;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 023 explicit-target count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) d;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_en_fa_series_023_v9();
DROP PROCEDURE IF EXISTS import_nova_en_fa_series_023_v9;

-- NOVA v9.0 / EN-FA / START SERIES 024 / I like tea
-- Independently authored for Persian speakers; requires validated en-fa Series 023.
-- Data import only; canonical schema v9.0 remains unchanged.
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_en_fa_series_024_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_en_fa_series_024_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_level BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_previous_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_previous_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_noah BIGINT UNSIGNED DEFAULT NULL;
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
  DECLARE v_w_020 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_021 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_022 BIGINT UNSIGNED DEFAULT NULL;
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
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 023 en-fa Course missing.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='ST' AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 023 Start Level missing.'; END IF;
  SELECT id INTO v_previous_module FROM modules WHERE level_id=v_level AND sort_order=5 ORDER BY id LIMIT 1;
  IF v_previous_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 023 prerequisite Module missing.'; END IF;
  SELECT id INTO v_previous_chapter FROM chapters WHERE module_id=v_previous_module AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_previous_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 023 Chapter missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_previous_chapter AND status='validated' AND storyline_key='mina-noah-morning-routine' AND storyline_order BETWEEN 9 AND 12;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 023 must be validated with its exact storyline orders.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_previous_chapter AND status='validated' AND title='I study in the evening';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 023 canonical prerequisite mismatch.'; END IF;

  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=5 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 024 target Module 05 missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM modules WHERE id=v_module AND title='Daily Life' AND title_translation='زندگی روزانه';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 024 target Module identity mismatch.'; END IF;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=4 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN
    INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES(v_module,'I like tea','من چای دوست دارم','Mina and Noah finish the daily routine with a simple conversation about tea and coffee.','مینا و نوح برنامه روزانه را با یک گفتگوی ساده درباره چای و قهوه تمام می‌کنند.',4,24,24,4,'planned','{"course":"en-fa","level":"Start","series":24,"levelChapterOrder":24}');
    SET v_chapter=LAST_INSERT_ID();
  END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='I like tea' AND title_translation='من چای دوست دارم';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 024 Chapter identity mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 024 Chapter must be empty before import.'; END IF;
  SELECT id INTO v_c_noah FROM characters WHERE course_id=v_course AND name='Noah' AND gender='male' ORDER BY id LIMIT 1;
  SELECT id INTO v_c_mina FROM characters WHERE course_id=v_course AND name='Mina' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_noah IS NULL OR v_c_mina IS NULL OR v_c_noah=v_c_mina THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required distinct English Characters missing.'; END IF;

  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='do' AND part_of_speech='auxiliary' AND translation='فعل کمکی برای پرسش' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: do'; END IF;
  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='you' AND part_of_speech='pronoun' AND translation='تو / شما' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: you'; END IF;
  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='like' AND part_of_speech='verb' AND translation='دوست داشتن' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'like','like','verb','دوست داشتن',24,'{"present_i_you_we_they":"like","present_he_she_it":"likes"}','[{"lemma":"want","translation":"خواستن"},{"lemma":"need","translation":"نیاز داشتن"},{"lemma":"have","translation":"داشتن"}]','I like tea.','من چای دوست دارم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":24,"explicitTarget":false,"wordAudioEligible":true}');
    SET v_w_003=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='tea' AND part_of_speech='noun' AND translation='چای' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'tea','tea','noun','چای',24,'{"countability":"usually uncountable"}','[{"lemma":"coffee","translation":"قهوه"},{"lemma":"water","translation":"آب"},{"lemma":"milk","translation":"شیر"}]','I like tea.','من چای دوست دارم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":24,"explicitTarget":false,"wordAudioEligible":true}');
    SET v_w_004=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='yes' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: yes'; END IF;
  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='I' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: I'; END IF;
  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='too' AND part_of_speech='adverb' AND translation='هم / همین‌طور' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: too'; END IF;
  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='be' AND part_of_speech='verb' AND translation='بودن / هستم' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: be'; END IF;
  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='good' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: good'; END IF;
  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='I like tea.' AND part_of_speech='phrase' AND translation='من چای دوست دارم.' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'I like tea.','I like tea.','phrase','من چای دوست دارم.',24,'{"pattern":"I + like + noun"}','[{"lemma":"I like coffee.","translation":"من قهوه دوست دارم."},{"lemma":"I have tea.","translation":"من چای دارم."},{"lemma":"I tea like.","translation":"من چای دوست دارم."}]','I like tea.','من چای دوست دارم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":24,"explicitTarget":true,"wordAudioEligible":false}');
    SET v_w_010=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='coffee' AND part_of_speech='noun' AND translation='قهوه' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'coffee','coffee','noun','قهوه',24,'{"countability":"usually uncountable"}','[{"lemma":"tea","translation":"چای"},{"lemma":"water","translation":"آب"},{"lemma":"milk","translation":"شیر"}]','I like coffee.','من قهوه دوست دارم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":24,"explicitTarget":false,"wordAudioEligible":true}');
    SET v_w_011=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='no' AND part_of_speech='interjection' AND translation='نه' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: no'; END IF;
  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='Do you like coffee?' AND part_of_speech='phrase' AND translation='قهوه دوست داری؟' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Do you like coffee?','Do you like coffee?','phrase','قهوه دوست داری؟',24,'{"pattern":"Do + you + like + noun"}','[{"lemma":"Do you like tea?","translation":"چای دوست داری؟"},{"lemma":"You like coffee?","translation":"تو قهوه دوست داری؟"},{"lemma":"Do like you coffee?","translation":"قهوه دوست داری؟"}]','Do you like coffee?','قهوه دوست داری؟',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":24,"explicitTarget":true,"wordAudioEligible":false}');
    SET v_w_013=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='hot' AND part_of_speech='adjective' AND translation='داغ / گرم' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'hot','hot','adjective','داغ / گرم',24,'{"position":"before a noun or after be"}','[{"lemma":"cold","translation":"سرد"},{"lemma":"small","translation":"کوچک"},{"lemma":"good","translation":"خوب"}]','I like hot tea.','من چای داغ دوست دارم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":24,"explicitTarget":false,"wordAudioEligible":true}');
    SET v_w_014=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='I like hot tea.' AND part_of_speech='phrase' AND translation='من چای داغ دوست دارم.' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'I like hot tea.','I like hot tea.','phrase','من چای داغ دوست دارم.',24,'{"pattern":"I + like + adjective + noun"}','[{"lemma":"I like hot coffee.","translation":"من قهوه داغ دوست دارم."},{"lemma":"I like tea.","translation":"من چای دوست دارم."},{"lemma":"I hot tea like.","translation":"من چای داغ دوست دارم."}]','I like hot tea.','من چای داغ دوست دارم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":24,"explicitTarget":true,"wordAudioEligible":false}');
    SET v_w_015=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_016 FROM words WHERE course_id=v_course AND lemma='what' AND part_of_speech='pronoun' AND translation='چه / چی' ORDER BY id LIMIT 1;
  IF v_w_016 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: what'; END IF;
  SELECT id INTO v_w_017 FROM words WHERE course_id=v_course AND lemma='drink' AND part_of_speech='verb' AND translation='نوشیدن' ORDER BY id LIMIT 1;
  IF v_w_017 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'drink','drink','verb','نوشیدن',24,'{"present_i_you_we_they":"drink","present_he_she_it":"drinks"}','[{"lemma":"eat","translation":"خوردن"},{"lemma":"like","translation":"دوست داشتن"},{"lemma":"have","translation":"داشتن"}]','I drink tea in the morning.','من صبح چای می‌نوشم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":24,"explicitTarget":false,"wordAudioEligible":true}');
    SET v_w_017=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_018 FROM words WHERE course_id=v_course AND lemma='in' AND part_of_speech='preposition' AND translation='در' ORDER BY id LIMIT 1;
  IF v_w_018 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: in'; END IF;
  SELECT id INTO v_w_019 FROM words WHERE course_id=v_course AND lemma='the' AND part_of_speech='article' AND translation='آن / ـِ مشخص' ORDER BY id LIMIT 1;
  IF v_w_019 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: the'; END IF;
  SELECT id INTO v_w_020 FROM words WHERE course_id=v_course AND lemma='morning' AND part_of_speech='noun' AND translation='صبح' ORDER BY id LIMIT 1;
  IF v_w_020 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'morning','morning','noun','صبح',24,'{"time_phrase":"in the morning"}','[{"lemma":"evening","translation":"عصر / شب"},{"lemma":"day","translation":"روز"},{"lemma":"time","translation":"زمان / ساعت"}]','I drink tea in the morning.','من صبح چای می‌نوشم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":24,"explicitTarget":false,"wordAudioEligible":true}');
    SET v_w_020=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_021 FROM words WHERE course_id=v_course AND lemma='every' AND part_of_speech='determiner' AND translation='هر' ORDER BY id LIMIT 1;
  IF v_w_021 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: every'; END IF;
  SELECT id INTO v_w_022 FROM words WHERE course_id=v_course AND lemma='I drink tea in the morning.' AND part_of_speech='phrase' AND translation='من صبح چای می‌نوشم.' ORDER BY id LIMIT 1;
  IF v_w_022 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'I drink tea in the morning.','I drink tea in the morning.','phrase','من صبح چای می‌نوشم.',24,'{"pattern":"I + drink + noun + in the morning"}','[{"lemma":"I drink coffee in the morning.","translation":"من صبح قهوه می‌نوشم."},{"lemma":"I like tea in the morning.","translation":"من صبح چای دوست دارم."},{"lemma":"I in the morning drink tea.","translation":"من صبح چای می‌نوشم."}]','I drink tea in the morning.','من صبح چای می‌نوشم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":24,"explicitTarget":true,"wordAudioEligible":false}');
    SET v_w_022=LAST_INSERT_ID();
  END IF;

  -- Lesson 1: Tea with Noah
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_noah,v_c_mina,'Tea with Noah','چای با نوح','Noah and Mina discover that they both like tea.','نوح و مینا می‌فهمند که هر دو چای دوست دارند.','story','mina-noah-morning-routine',13,24,132,1,'validated','{"course":"en-fa","series":24,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_noah,1,'character','Do you like tea?','چای دوست داری؟',24,NULL,NULL,NULL,NULL,'[{"surface":"Do","lemma":"do","translation":"فعل کمکی برای پرسش","partOfSpeech":"auxiliary"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"like","lemma":"like","translation":"دوست داشتن","partOfSpeech":"verb"},{"surface":"tea","lemma":"tea","translation":"چای","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":24,"level":"Start"}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mina,2,'learner','Yes, I like tea.','بله، من چای دوست دارم.',24,NULL,NULL,'yes i like tea',NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"I","lemma":"I","translation":"من","partOfSpeech":"pronoun"},{"surface":"like","lemma":"like","translation":"دوست داشتن","partOfSpeech":"verb"},{"surface":"tea","lemma":"tea","translation":"چای","partOfSpeech":"noun","suffix":"."}]','like و drink در جمله ساده','فاعل را اول می‌آوریم و بعد فعل و موضوع جمله را می‌گوییم.','{"target":"I like tea.","level":"Start"}','{"course":"en-fa","series":24,"level":"Start"}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_noah,3,'character','I like tea too.','من هم چای دوست دارم.',24,NULL,NULL,NULL,NULL,'[{"surface":"I","lemma":"I","translation":"من","partOfSpeech":"pronoun"},{"surface":"like","lemma":"like","translation":"دوست داشتن","partOfSpeech":"verb"},{"surface":"tea","lemma":"tea","translation":"چای","partOfSpeech":"noun"},{"surface":"too","lemma":"too","translation":"هم / همین‌طور","partOfSpeech":"adverb","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":24,"level":"Start"}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mina,4,'learner','Tea is good.','چای خوب است.',24,NULL,NULL,'tea is good',NULL,'[{"surface":"Tea","lemma":"tea","translation":"چای","partOfSpeech":"noun"},{"surface":"is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb"},{"surface":"good","lemma":"good","translation":"خوب","partOfSpeech":"adjective","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":24,"level":"Start"}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_003,'new',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_004,'new',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_006,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_007,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_010,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'new_word',1,NULL,v_w_010,'عبارت کلیدی درس',NULL,24,NULL,'{"course":"en-fa","series":24,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',2,v_t_1,NULL,'به نوح گوش کن',NULL,24,NULL,'{"course":"en-fa","series":24,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',3,v_t_2,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,24,NULL,'{"course":"en-fa","series":24,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',4,v_t_3,NULL,'به نوح گوش کن',NULL,24,NULL,'{"course":"en-fa","series":24,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',5,v_t_4,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,24,NULL,'{"course":"en-fa","series":24,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'meaning_choice',6,NULL,v_w_003,'معنی درست را انتخاب کن',NULL,24,'{"mode":"word_translation","question":"like یعنی چی؟","choices":["دوست داشتن","داشتن","نوشیدن"],"correctIndex":0}','{"course":"en-fa","series":24,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'word_order',7,v_t_2,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,24,'{"source":"turn","tokens":["Yes","I","like","tea"],"answer":"I like tea."}','{"course":"en-fa","series":24,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,24,'{"source":"lesson_story","question":"مینا چه چیزی دوست دارد؟","choices":["چای","قهوه","آب"],"correctIndex":0}','{"course":"en-fa","series":24,"level":"Start","skill":"reading"}');

  -- Lesson 2: Tea or coffee
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_noah,v_c_mina,'Tea or coffee','چای یا قهوه','Mina asks Noah about coffee and says that she prefers tea.','مینا درباره قهوه از نوح می‌پرسد و می‌گوید چای را دوست دارد.','story','mina-noah-morning-routine',14,24,134,2,'validated','{"course":"en-fa","series":24,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_noah,1,'character','I like coffee.','من قهوه دوست دارم.',24,NULL,NULL,NULL,NULL,'[{"surface":"I","lemma":"I","translation":"من","partOfSpeech":"pronoun"},{"surface":"like","lemma":"like","translation":"دوست داشتن","partOfSpeech":"verb"},{"surface":"coffee","lemma":"coffee","translation":"قهوه","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":24,"level":"Start"}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mina,2,'learner','Do you like coffee?','قهوه دوست داری؟',24,NULL,NULL,'do you like coffee',NULL,'[{"surface":"Do","lemma":"do","translation":"فعل کمکی برای پرسش","partOfSpeech":"auxiliary"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"like","lemma":"like","translation":"دوست داشتن","partOfSpeech":"verb"},{"surface":"coffee","lemma":"coffee","translation":"قهوه","partOfSpeech":"noun","suffix":"?"}]','like و drink در جمله ساده','فاعل را اول می‌آوریم و بعد فعل و موضوع جمله را می‌گوییم.','{"target":"Do you like coffee?","level":"Start"}','{"course":"en-fa","series":24,"level":"Start"}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_noah,3,'character','Yes, I like coffee.','بله، من قهوه دوست دارم.',24,NULL,NULL,NULL,NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"I","lemma":"I","translation":"من","partOfSpeech":"pronoun"},{"surface":"like","lemma":"like","translation":"دوست داشتن","partOfSpeech":"verb"},{"surface":"coffee","lemma":"coffee","translation":"قهوه","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":24,"level":"Start"}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mina,4,'learner','No, I like tea.','نه، من چای دوست دارم.',24,NULL,NULL,'no i like tea',NULL,'[{"surface":"No","lemma":"no","translation":"نه","partOfSpeech":"interjection","suffix":","},{"surface":"I","lemma":"I","translation":"من","partOfSpeech":"pronoun"},{"surface":"like","lemma":"like","translation":"دوست داشتن","partOfSpeech":"verb"},{"surface":"tea","lemma":"tea","translation":"چای","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":24,"level":"Start"}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_006,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_003,'new',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_011,'new',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_004,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_013,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'new_word',1,NULL,v_w_013,'عبارت کلیدی درس',NULL,24,NULL,'{"course":"en-fa","series":24,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',2,v_t_5,NULL,'به نوح گوش کن',NULL,24,NULL,'{"course":"en-fa","series":24,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',3,v_t_6,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,24,NULL,'{"course":"en-fa","series":24,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',4,v_t_7,NULL,'به نوح گوش کن',NULL,24,NULL,'{"course":"en-fa","series":24,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',5,v_t_8,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,24,NULL,'{"course":"en-fa","series":24,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'meaning_choice',6,NULL,v_w_011,'معنی درست را انتخاب کن',NULL,24,'{"mode":"word_translation","question":"coffee یعنی چی؟","choices":["قهوه","چای","صبح"],"correctIndex":0}','{"course":"en-fa","series":24,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'word_order',7,v_t_6,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,24,'{"source":"turn","tokens":["Do","you","like","coffee"],"answer":"Do you like coffee?"}','{"course":"en-fa","series":24,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,24,'{"source":"lesson_story","question":"نوح چه چیزی دوست دارد؟","choices":["قهوه","چای","آب"],"correctIndex":0}','{"course":"en-fa","series":24,"level":"Start","skill":"reading"}');

  -- Lesson 3: Hot tea
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_noah,v_c_mina,'Hot tea','چای داغ','Noah and Mina talk about hot tea and hot coffee.','نوح و مینا درباره چای داغ و قهوه داغ حرف می‌زنند.','story','mina-noah-morning-routine',15,24,136,3,'validated','{"course":"en-fa","series":24,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_noah,1,'character','Do you like hot tea?','چای داغ دوست داری؟',24,NULL,NULL,NULL,NULL,'[{"surface":"Do","lemma":"do","translation":"فعل کمکی برای پرسش","partOfSpeech":"auxiliary"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"like","lemma":"like","translation":"دوست داشتن","partOfSpeech":"verb"},{"surface":"hot","lemma":"hot","translation":"داغ / گرم","partOfSpeech":"adjective"},{"surface":"tea","lemma":"tea","translation":"چای","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":24,"level":"Start"}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,2,'learner','Yes, I like hot tea.','بله، من چای داغ دوست دارم.',24,NULL,NULL,'yes i like hot tea',NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"I","lemma":"I","translation":"من","partOfSpeech":"pronoun"},{"surface":"like","lemma":"like","translation":"دوست داشتن","partOfSpeech":"verb"},{"surface":"hot","lemma":"hot","translation":"داغ / گرم","partOfSpeech":"adjective"},{"surface":"tea","lemma":"tea","translation":"چای","partOfSpeech":"noun","suffix":"."}]','like و drink در جمله ساده','فاعل را اول می‌آوریم و بعد فعل و موضوع جمله را می‌گوییم.','{"target":"I like hot tea.","level":"Start"}','{"course":"en-fa","series":24,"level":"Start"}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_noah,3,'character','I like hot coffee.','من قهوه داغ دوست دارم.',24,NULL,NULL,NULL,NULL,'[{"surface":"I","lemma":"I","translation":"من","partOfSpeech":"pronoun"},{"surface":"like","lemma":"like","translation":"دوست داشتن","partOfSpeech":"verb"},{"surface":"hot","lemma":"hot","translation":"داغ / گرم","partOfSpeech":"adjective"},{"surface":"coffee","lemma":"coffee","translation":"قهوه","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":24,"level":"Start"}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,4,'learner','Hot tea is good.','چای داغ خوب است.',24,NULL,NULL,'hot tea is good',NULL,'[{"surface":"Hot","lemma":"hot","translation":"داغ / گرم","partOfSpeech":"adjective"},{"surface":"tea","lemma":"tea","translation":"چای","partOfSpeech":"noun"},{"surface":"is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb"},{"surface":"good","lemma":"good","translation":"خوب","partOfSpeech":"adjective","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":24,"level":"Start"}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_003,'new',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_014,'new',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_004,'new',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_006,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_011,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_015,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'new_word',1,NULL,v_w_015,'عبارت کلیدی درس',NULL,24,NULL,'{"course":"en-fa","series":24,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',2,v_t_9,NULL,'به نوح گوش کن',NULL,24,NULL,'{"course":"en-fa","series":24,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',3,v_t_10,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,24,NULL,'{"course":"en-fa","series":24,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',4,v_t_11,NULL,'به نوح گوش کن',NULL,24,NULL,'{"course":"en-fa","series":24,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',5,v_t_12,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,24,NULL,'{"course":"en-fa","series":24,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'meaning_choice',6,NULL,v_w_014,'معنی درست را انتخاب کن',NULL,24,'{"mode":"word_translation","question":"hot یعنی چی؟","choices":["داغ / گرم","سرد","کوچک"],"correctIndex":0}','{"course":"en-fa","series":24,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'word_order',7,v_t_10,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,24,'{"source":"turn","tokens":["Yes","I","like","hot","tea"],"answer":"I like hot tea."}','{"course":"en-fa","series":24,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,24,'{"source":"lesson_story","question":"مینا چای را چگونه دوست دارد؟","choices":["داغ","سرد","بدون چای"],"correctIndex":0}','{"course":"en-fa","series":24,"level":"Start","skill":"reading"}');

  -- Lesson 4: Morning tea
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_noah,v_c_mina,'Morning tea','چای صبح','Mina adds tea to the morning routine and compares it with Noah''s coffee.','مینا چای را به برنامه صبحش اضافه می‌کند و آن را با قهوه نوح مقایسه می‌کند.','story','mina-noah-morning-routine',16,24,150,4,'validated','{"course":"en-fa","series":24,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_noah,1,'character','What do you drink in the morning?','صبح چه می‌نوشی؟',24,NULL,NULL,NULL,NULL,'[{"surface":"What","lemma":"what","translation":"چه / چی","partOfSpeech":"pronoun"},{"surface":"do","lemma":"do","translation":"فعل کمکی برای پرسش","partOfSpeech":"auxiliary"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"drink","lemma":"drink","translation":"نوشیدن","partOfSpeech":"verb"},{"surface":"in","lemma":"in","translation":"در","partOfSpeech":"preposition"},{"surface":"the","lemma":"the","translation":"آن / ـِ مشخص","partOfSpeech":"article"},{"surface":"morning","lemma":"morning","translation":"صبح","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":24,"level":"Start"}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,2,'learner','I drink tea in the morning.','من صبح چای می‌نوشم.',24,NULL,NULL,'i drink tea in the morning',NULL,'[{"surface":"I","lemma":"I","translation":"من","partOfSpeech":"pronoun"},{"surface":"drink","lemma":"drink","translation":"نوشیدن","partOfSpeech":"verb"},{"surface":"tea","lemma":"tea","translation":"چای","partOfSpeech":"noun"},{"surface":"in","lemma":"in","translation":"در","partOfSpeech":"preposition"},{"surface":"the","lemma":"the","translation":"آن / ـِ مشخص","partOfSpeech":"article"},{"surface":"morning","lemma":"morning","translation":"صبح","partOfSpeech":"noun","suffix":"."}]','like و drink در جمله ساده','فاعل را اول می‌آوریم و بعد فعل و موضوع جمله را می‌گوییم.','{"target":"I drink tea in the morning.","level":"Start"}','{"course":"en-fa","series":24,"level":"Start"}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_noah,3,'character','I drink coffee.','من قهوه می‌نوشم.',24,NULL,NULL,NULL,NULL,'[{"surface":"I","lemma":"I","translation":"من","partOfSpeech":"pronoun"},{"surface":"drink","lemma":"drink","translation":"نوشیدن","partOfSpeech":"verb"},{"surface":"coffee","lemma":"coffee","translation":"قهوه","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":24,"level":"Start"}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,4,'learner','I like tea every morning.','من هر صبح چای دوست دارم.',24,NULL,NULL,'i like tea every morning',NULL,'[{"surface":"I","lemma":"I","translation":"من","partOfSpeech":"pronoun"},{"surface":"like","lemma":"like","translation":"دوست داشتن","partOfSpeech":"verb"},{"surface":"tea","lemma":"tea","translation":"چای","partOfSpeech":"noun"},{"surface":"every","lemma":"every","translation":"هر","partOfSpeech":"determiner"},{"surface":"morning","lemma":"morning","translation":"صبح","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":24,"level":"Start"}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_noah,5,'character','Tea in the morning is good.','چای در صبح خوب است.',24,NULL,NULL,NULL,NULL,'[{"surface":"Tea","lemma":"tea","translation":"چای","partOfSpeech":"noun"},{"surface":"in","lemma":"in","translation":"در","partOfSpeech":"preposition"},{"surface":"the","lemma":"the","translation":"آن / ـِ مشخص","partOfSpeech":"article"},{"surface":"morning","lemma":"morning","translation":"صبح","partOfSpeech":"noun"},{"surface":"is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb"},{"surface":"good","lemma":"good","translation":"خوب","partOfSpeech":"adjective","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":24,"level":"Start"}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,6,'learner','Yes, I like morning tea.','بله، من چای صبح دوست دارم.',24,NULL,NULL,'yes i like morning tea',NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"I","lemma":"I","translation":"من","partOfSpeech":"pronoun"},{"surface":"like","lemma":"like","translation":"دوست داشتن","partOfSpeech":"verb"},{"surface":"morning","lemma":"morning","translation":"صبح","partOfSpeech":"noun"},{"surface":"tea","lemma":"tea","translation":"چای","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":24,"level":"Start"}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_016,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_017,'new',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_018,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_019,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_020,'new',0,5);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_006,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_004,'new',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_011,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_003,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_021,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_022,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'new_word',1,NULL,v_w_022,'عبارت کلیدی درس',NULL,24,NULL,'{"course":"en-fa","series":24,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',2,v_t_13,NULL,'به نوح گوش کن',NULL,24,NULL,'{"course":"en-fa","series":24,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',3,v_t_14,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,24,NULL,'{"course":"en-fa","series":24,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',4,v_t_15,NULL,'به نوح گوش کن',NULL,24,NULL,'{"course":"en-fa","series":24,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',5,v_t_16,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,24,NULL,'{"course":"en-fa","series":24,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',6,v_t_17,NULL,'به نوح گوش کن',NULL,24,NULL,'{"course":"en-fa","series":24,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',7,v_t_18,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,24,NULL,'{"course":"en-fa","series":24,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'meaning_choice',8,NULL,v_w_017,'معنی درست را انتخاب کن',NULL,24,'{"mode":"word_translation","question":"drink یعنی چی؟","choices":["نوشیدن","دوست داشتن","درس خواندن"],"correctIndex":0}','{"course":"en-fa","series":24,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'word_order',9,v_t_14,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,24,'{"source":"turn","tokens":["I","drink","tea","in","the","morning"],"answer":"I drink tea in the morning."}','{"course":"en-fa","series":24,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'reading_comprehension',10,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,24,'{"source":"lesson_story","question":"مینا صبح چه می‌نوشد؟","choices":["چای","قهوه","شیر"],"correctIndex":0}','{"course":"en-fa","series":24,"level":"Start","skill":"reading"}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 024 Lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two distinct Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND storyline_key='mina-noah-morning-routine' AND storyline_order BETWEEN 13 AND 16;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 024 storyline continuity.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>18 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 024 Turn count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND (JSON_VALID(t.tokens)=0 OR JSON_LENGTH(t.tokens)=0);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Turn without valid clickable tokens.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id JOIN JSON_TABLE(t.tokens,'$[*]' COLUMNS(lemma VARCHAR(180) PATH '$.lemma',part_of_speech VARCHAR(48) PATH '$.partOfSpeech',translation VARCHAR(255) PATH '$.translation')) jt LEFT JOIN words w ON w.course_id=v_course AND w.lemma=jt.lemma AND w.part_of_speech=jt.part_of_speech AND w.translation=jt.translation LEFT JOIN lesson_words lw ON lw.lesson_id=t.lesson_id AND lw.word_id=w.id WHERE l.chapter_id=v_chapter AND (w.id IS NULL OR lw.word_id IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Clickable token lacks exact Word tuple mapping.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT DISTINCT jt.lemma,jt.part_of_speech FROM turns t JOIN lessons l ON l.id=t.lesson_id JOIN JSON_TABLE(t.tokens,'$[*]' COLUMNS(lemma VARCHAR(180) PATH '$.lemma',part_of_speech VARCHAR(48) PATH '$.partOfSpeech')) jt WHERE l.chapter_id=v_chapter UNION SELECT DISTINCT w.lemma,w.part_of_speech FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id JOIN words w ON w.id=lw.word_id WHERE l.chapter_id=v_chapter) used WHERE (SELECT COUNT(*) FROM words w2 WHERE w2.course_id=v_course AND w2.lemma=used.lemma AND w2.part_of_speech=used.part_of_speech)<>1;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every used Word tuple must resolve to exactly one Word row.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id LEFT JOIN words w ON w.id=lw.word_id WHERE l.chapter_id=v_chapter AND w.id IS NULL;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Lesson Word link lacks a materialized Word tuple.'; END IF;
  SELECT COUNT(*) INTO v_count FROM words w WHERE w.course_id=v_course AND JSON_UNQUOTE(JSON_EXTRACT(w.metadata,'$.course'))='en-fa' AND CAST(JSON_UNQUOTE(JSON_EXTRACT(w.metadata,'$.introducedInSeries')) AS UNSIGNED)=24 AND NOT EXISTS(SELECT 1 FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter AND lw.word_id=w.id);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 024 contains an orphan new Word definition.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>34 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 024 Activity count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (JSON_EXTRACT(ac.config,'$.question') IS NULL OR JSON_LENGTH(JSON_EXTRACT(ac.config,'$.choices'))<2);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without learner task.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons l WHERE l.chapter_id=v_chapter AND (NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='listen') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='speak') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='word_order') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='reading_comprehension'));
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Lesson missing Speaking, Listening, Writing, or Reading practice.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter AND lw.is_target=1;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 024 explicit-target count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) d;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_en_fa_series_024_v9();
DROP PROCEDURE IF EXISTS import_nova_en_fa_series_024_v9;

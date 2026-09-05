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
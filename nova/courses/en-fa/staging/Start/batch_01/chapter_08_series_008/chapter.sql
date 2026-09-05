-- NOVA v9.0 / EN-FA / START SERIES 008 / Where are you from?
-- Independently authored for Persian speakers; requires validated en-fa Series 007.
-- Data import only; canonical schema v9.0 remains unchanged.
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_en_fa_series_008_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_en_fa_series_008_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_level BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_previous_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_previous_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_liam BIGINT UNSIGNED DEFAULT NULL;
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

  DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN ROLLBACK; RESIGNAL; END;
  START TRANSACTION;
  SELECT id INTO v_course FROM courses WHERE learning_language='en' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 007 en-fa Course missing.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='ST' AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 007 Start Level missing.'; END IF;
  SELECT id INTO v_previous_module FROM modules WHERE level_id=v_level AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_previous_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 007 prerequisite Module missing.'; END IF;
  SELECT id INTO v_previous_chapter FROM chapters WHERE module_id=v_previous_module AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_previous_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 007 Chapter missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_previous_chapter AND status='validated' AND storyline_key='mina-liam-at-the-cafe' AND storyline_order BETWEEN 5 AND 8;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 007 must be validated with its exact storyline orders.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_previous_chapter AND status='validated' AND title='I''m from Iran';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 007 canonical prerequisite mismatch.'; END IF;

  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 008 target Module 02 missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM modules WHERE id=v_module AND title='People & Places' AND title_translation='آدم‌ها و مکان‌ها';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 008 target Module identity mismatch.'; END IF;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN
    INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES(v_module,'Where are you from?','اهل کجایی؟','Mina asks Liam where he is from and understands a simple answer about London.','مینا از لیام می‌پرسد اهل کجاست و پاسخ ساده او درباره لندن را می‌فهمد.',4,8,8,3,'planned','{"course":"en-fa","level":"Start","series":8,"levelChapterOrder":8}');
    SET v_chapter=LAST_INSERT_ID();
  END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='Where are you from?' AND title_translation='اهل کجایی؟';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 008 Chapter identity mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 008 Chapter must be empty before import.'; END IF;
  SELECT id INTO v_c_liam FROM characters WHERE course_id=v_course AND name='Liam' AND gender='male' ORDER BY id LIMIT 1;
  SELECT id INTO v_c_mina FROM characters WHERE course_id=v_course AND name='Mina' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_liam IS NULL OR v_c_mina IS NULL OR v_c_liam=v_c_mina THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required distinct English Characters missing.'; END IF;

  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='I''m' AND part_of_speech='phrase' AND translation='من هستم' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: I''m'; END IF;
  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='Liam' AND part_of_speech='proper_noun' AND translation='لیام (نام مردانه)' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: Liam'; END IF;
  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='where' AND part_of_speech='adverb' AND translation='کجا' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'where','where','adverb','کجا',8,'{"type":"question_word_for_place"}','[{"lemma":"who","translation":"چه کسی / کی"},{"lemma":"how","translation":"چطور / چگونه"},{"lemma":"what","translation":"چه / چی"}]','Where are you from?','اهل کجایی؟',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":8,"explicitTarget":false}');
    SET v_w_003=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='be' AND part_of_speech='verb' AND translation='بودن / هستم' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: be'; END IF;
  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='you' AND part_of_speech='pronoun' AND translation='تو / شما' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: you'; END IF;
  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='from' AND part_of_speech='preposition' AND translation='از / اهل' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: from'; END IF;
  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='London' AND part_of_speech='proper_noun' AND translation='لندن' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'London','London','proper_noun','لندن',8,'{"type":"city_name"}','[{"lemma":"Tehran","translation":"تهران"},{"lemma":"Iran","translation":"ایران"},{"lemma":"city","translation":"شهر"}]','I''m from London.','من اهل لندنم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":8,"explicitTarget":false}');
    SET v_w_007=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='nice' AND part_of_speech='adjective' AND translation='خوب / خوشایند' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: nice'; END IF;
  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='Where are you from?' AND part_of_speech='phrase' AND translation='اهل کجایی؟' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Where are you from?','Where are you from?','phrase','اهل کجایی؟',8,'{"pattern":"where + be + subject + from"}','[{"lemma":"Who are you?","translation":"تو کی هستی؟"},{"lemma":"How are you?","translation":"حالت چطوره؟"},{"lemma":"Are you from Iran?","translation":"تو اهل ایران هستی؟"}]','Where are you from?','اهل کجایی؟',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":8,"explicitTarget":true}');
    SET v_w_009=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='Iran' AND part_of_speech='proper_noun' AND translation='ایران' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: Iran'; END IF;
  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='I''m from London.' AND part_of_speech='phrase' AND translation='من اهل لندنم.' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'I''m from London.','I''m from London.','phrase','من اهل لندنم.',8,'{"pattern":"subject + be + from + city"}','[{"lemma":"I''m in London.","translation":"من در لندنم."},{"lemma":"I''m from Iran.","translation":"من اهل ایرانم."},{"lemma":"London is my country.","translation":"لندن کشور منه."}]','I''m from London.','من اهل لندنم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":8,"explicitTarget":true}');
    SET v_w_011=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='yes' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: yes'; END IF;
  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='Are you from London?' AND part_of_speech='phrase' AND translation='تو اهل لندن هستی؟' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Are you from London?','Are you from London?','phrase','تو اهل لندن هستی؟',8,'{"pattern":"be + subject + from + city"}','[{"lemma":"Are you in London?","translation":"تو در لندن هستی؟"},{"lemma":"Are you from Iran?","translation":"تو اهل ایران هستی؟"},{"lemma":"Where is London?","translation":"لندن کجاست؟"}]','Are you from London?','تو اهل لندن هستی؟',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":8,"explicitTarget":true}');
    SET v_w_013=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='thanks' AND part_of_speech='interjection' AND translation='ممنون' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: thanks'; END IF;
  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='Liam is from London.' AND part_of_speech='phrase' AND translation='لیام اهل لندن است.' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Liam is from London.','Liam is from London.','phrase','لیام اهل لندن است.',8,'{"pattern":"name + be + from + city"}','[{"lemma":"Liam is in London.","translation":"لیام در لندن است."},{"lemma":"Mina is from London.","translation":"مینا اهل لندن است."},{"lemma":"Liam is from Iran.","translation":"لیام اهل ایران است."}]','Liam is from London.','لیام اهل لندن است.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":8,"explicitTarget":true}');
    SET v_w_015=LAST_INSERT_ID();
  END IF;

  -- Lesson 1: Ask about a place
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_liam,v_c_mina,'Ask about a place','پرسیدن درباره مکان','Mina asks Liam where he is from and hears the city London.','مینا از لیام می‌پرسد اهل کجاست و نام شهر لندن را می‌شنود.','story','mina-liam-at-the-cafe',9,8,138,1,'validated','{"course":"en-fa","series":8,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_liam,1,'character','I''m Liam.','من لیام هستم.',8,NULL,NULL,NULL,NULL,'[{"surface":"I''m","lemma":"I''m","translation":"من هستم","partOfSpeech":"phrase"},{"surface":"Liam","lemma":"Liam","translation":"لیام (نام مردانه)","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mina,2,'learner','Where are you from?','اهل کجایی؟',8,NULL,NULL,'where are you from',NULL,'[{"surface":"Where","lemma":"where","translation":"کجا","partOfSpeech":"adverb"},{"surface":"are","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"هستی"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"from","lemma":"from","translation":"از / اهل","partOfSpeech":"preposition","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_liam,3,'character','I''m from London.','من اهل لندنم.',8,NULL,NULL,NULL,NULL,'[{"surface":"I''m","lemma":"I''m","translation":"من هستم","partOfSpeech":"phrase"},{"surface":"from","lemma":"from","translation":"از / اهل","partOfSpeech":"preposition"},{"surface":"London","lemma":"London","translation":"لندن","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mina,4,'learner','Nice!','خوبه!',8,NULL,NULL,'nice',NULL,'[{"surface":"Nice","lemma":"nice","translation":"خوب / خوشایند","partOfSpeech":"adjective","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_001,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_003,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_006,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_007,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_009,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'new_word',1,NULL,v_w_009,'عبارت کلیدی درس',NULL,8,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',2,v_t_1,NULL,'به لیام گوش کن',NULL,8,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',3,v_t_2,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,8,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',4,v_t_3,NULL,'به لیام گوش کن',NULL,8,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',5,v_t_4,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,8,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'meaning_choice',6,NULL,v_w_003,'معنی درست را انتخاب کن',NULL,8,'{"mode":"word_translation","question":"where یعنی چی؟","choices":["کجا","چه کسی / کی","چطور / چگونه"],"correctIndex":0}','{"course":"en-fa","series":8,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'word_order',7,v_t_2,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,8,'{"source":"turn","tokens":["Where","are","you","from"],"answer":"Where are you from?"}','{"course":"en-fa","series":8,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,8,'{"source":"lesson_story","question":"مینا چه چیزی از لیام می‌پرسد؟","choices":["اهل کجاست","اسمش چیست","حالش چطور است"],"correctIndex":0}','{"course":"en-fa","series":8,"level":"Start","skill":"reading"}');

  -- Lesson 2: Liam's answer
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_liam,v_c_mina,'Liam''s answer','پاسخ لیام','Liam asks the same question and then gives his own answer about London.','لیام همان پرسش را از مینا می‌پرسد و بعد پاسخ خودش درباره لندن را می‌گوید.','story','mina-liam-at-the-cafe',10,8,138,2,'validated','{"course":"en-fa","series":8,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_liam,1,'character','Where are you from?','اهل کجایی؟',8,NULL,NULL,NULL,NULL,'[{"surface":"Where","lemma":"where","translation":"کجا","partOfSpeech":"adverb"},{"surface":"are","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"هستی"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"from","lemma":"from","translation":"از / اهل","partOfSpeech":"preposition","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mina,2,'learner','I''m from Iran.','من اهل ایرانم.',8,NULL,NULL,'i''m from iran',NULL,'[{"surface":"I''m","lemma":"I''m","translation":"من هستم","partOfSpeech":"phrase"},{"surface":"from","lemma":"from","translation":"از / اهل","partOfSpeech":"preposition"},{"surface":"Iran","lemma":"Iran","translation":"ایران","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_liam,3,'character','I''m from London.','من اهل لندنم.',8,NULL,NULL,NULL,NULL,'[{"surface":"I''m","lemma":"I''m","translation":"من هستم","partOfSpeech":"phrase"},{"surface":"from","lemma":"from","translation":"از / اهل","partOfSpeech":"preposition"},{"surface":"London","lemma":"London","translation":"لندن","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mina,4,'learner','London? Nice!','لندن؟ خوبه!',8,NULL,NULL,'london nice',NULL,'[{"surface":"London","lemma":"London","translation":"لندن","partOfSpeech":"proper_noun","suffix":"?"},{"surface":"Nice","lemma":"nice","translation":"خوب / خوشایند","partOfSpeech":"adjective","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_001,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_006,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_007,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_010,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_011,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'new_word',1,NULL,v_w_011,'عبارت کلیدی درس',NULL,8,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',2,v_t_5,NULL,'به لیام گوش کن',NULL,8,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',3,v_t_6,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,8,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',4,v_t_7,NULL,'به لیام گوش کن',NULL,8,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',5,v_t_8,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,8,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'meaning_choice',6,NULL,v_w_007,'معنی درست را انتخاب کن',NULL,8,'{"mode":"word_translation","question":"London یعنی چی؟","choices":["لندن","تهران","ایران"],"correctIndex":0}','{"course":"en-fa","series":8,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'word_order',7,v_t_6,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,8,'{"source":"turn","tokens":["I''m","from","Iran"],"answer":"I''m from Iran."}','{"course":"en-fa","series":8,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,8,'{"source":"lesson_story","question":"لیام اهل کدام شهر است؟","choices":["لندن","تهران","ایران"],"correctIndex":0}','{"course":"en-fa","series":8,"level":"Start","skill":"reading"}');

  -- Lesson 3: Check the answer
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_liam,v_c_mina,'Check the answer','بررسی پاسخ','Mina changes the place question into a yes-or-no check about London.','مینا پرسش درباره مکان را به یک سوال بله یا خیر درباره لندن تبدیل می‌کند.','story','mina-liam-at-the-cafe',11,8,138,3,'validated','{"course":"en-fa","series":8,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_liam,1,'character','I''m from London.','من اهل لندنم.',8,NULL,NULL,NULL,NULL,'[{"surface":"I''m","lemma":"I''m","translation":"من هستم","partOfSpeech":"phrase"},{"surface":"from","lemma":"from","translation":"از / اهل","partOfSpeech":"preposition"},{"surface":"London","lemma":"London","translation":"لندن","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,2,'learner','Are you from London?','تو اهل لندن هستی؟',8,NULL,NULL,'are you from london',NULL,'[{"surface":"Are","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"هستی"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"from","lemma":"from","translation":"از / اهل","partOfSpeech":"preposition"},{"surface":"London","lemma":"London","translation":"لندن","partOfSpeech":"proper_noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_liam,3,'character','Yes, I''m from London.','بله، من اهل لندنم.',8,NULL,NULL,NULL,NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"I''m","lemma":"I''m","translation":"من هستم","partOfSpeech":"phrase"},{"surface":"from","lemma":"from","translation":"از / اهل","partOfSpeech":"preposition"},{"surface":"London","lemma":"London","translation":"لندن","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,4,'learner','Nice!','خوبه!',8,NULL,NULL,'nice',NULL,'[{"surface":"Nice","lemma":"nice","translation":"خوب / خوشایند","partOfSpeech":"adjective","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_001,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_006,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_007,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_013,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'new_word',1,NULL,v_w_013,'عبارت کلیدی درس',NULL,8,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',2,v_t_9,NULL,'به لیام گوش کن',NULL,8,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',3,v_t_10,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,8,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',4,v_t_11,NULL,'به لیام گوش کن',NULL,8,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',5,v_t_12,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,8,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'meaning_choice',6,NULL,v_w_003,'معنی درست را انتخاب کن',NULL,8,'{"mode":"word_translation","question":"where یعنی چی؟","choices":["کجا","چه کسی / کی","چطور / چگونه"],"correctIndex":0}','{"course":"en-fa","series":8,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'word_order',7,v_t_10,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,8,'{"source":"turn","tokens":["Are","you","from","London"],"answer":"Are you from London?"}','{"course":"en-fa","series":8,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,8,'{"source":"lesson_story","question":"مینا چه چیزی را بررسی می‌کند؟","choices":["لیام اهل لندن است","لیام در ایران است","اسم لیام نوآست"],"correctIndex":0}','{"course":"en-fa","series":8,"level":"Start","skill":"reading"}');

  -- Lesson 4: Two places
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_liam,v_c_mina,'Two places','دو مکان','Mina summarizes Liam''s origin and contrasts it with her own country.','مینا می‌گوید لیام اهل کجاست و آن را با کشور خودش مقایسه می‌کند.','story','mina-liam-at-the-cafe',12,8,162,4,'validated','{"course":"en-fa","series":8,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_liam,1,'character','I''m from London.','من اهل لندنم.',8,NULL,NULL,NULL,NULL,'[{"surface":"I''m","lemma":"I''m","translation":"من هستم","partOfSpeech":"phrase"},{"surface":"from","lemma":"from","translation":"از / اهل","partOfSpeech":"preposition"},{"surface":"London","lemma":"London","translation":"لندن","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,2,'learner','Liam is from London.','لیام اهل لندن است.',8,NULL,NULL,'liam is from london',NULL,'[{"surface":"Liam","lemma":"Liam","translation":"لیام (نام مردانه)","partOfSpeech":"proper_noun"},{"surface":"is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"است"},{"surface":"from","lemma":"from","translation":"از / اهل","partOfSpeech":"preposition"},{"surface":"London","lemma":"London","translation":"لندن","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_liam,3,'character','Yes.','بله.',8,NULL,NULL,NULL,NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,4,'learner','I''m from Iran.','من اهل ایرانم.',8,NULL,NULL,'i''m from iran',NULL,'[{"surface":"I''m","lemma":"I''m","translation":"من هستم","partOfSpeech":"phrase"},{"surface":"from","lemma":"from","translation":"از / اهل","partOfSpeech":"preposition"},{"surface":"Iran","lemma":"Iran","translation":"ایران","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_liam,5,'character','Iran? Nice!','ایران؟ خوبه!',8,NULL,NULL,NULL,NULL,'[{"surface":"Iran","lemma":"Iran","translation":"ایران","partOfSpeech":"proper_noun","suffix":"?"},{"surface":"Nice","lemma":"nice","translation":"خوب / خوشایند","partOfSpeech":"adjective","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,6,'learner','Thanks!','ممنون!',8,NULL,NULL,'thanks',NULL,'[{"surface":"Thanks","lemma":"thanks","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_001,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_006,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_007,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_010,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_014,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_015,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'new_word',1,NULL,v_w_015,'عبارت کلیدی درس',NULL,8,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',2,v_t_13,NULL,'به لیام گوش کن',NULL,8,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',3,v_t_14,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,8,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',4,v_t_15,NULL,'به لیام گوش کن',NULL,8,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',5,v_t_16,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,8,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',6,v_t_17,NULL,'به لیام گوش کن',NULL,8,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',7,v_t_18,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,8,NULL,'{"course":"en-fa","series":8,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'meaning_choice',8,NULL,v_w_007,'معنی درست را انتخاب کن',NULL,8,'{"mode":"word_translation","question":"London یعنی چی؟","choices":["لندن","تهران","ایران"],"correctIndex":0}','{"course":"en-fa","series":8,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'word_order',9,v_t_14,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,8,'{"source":"turn","tokens":["Liam","is","from","London"],"answer":"Liam is from London."}','{"course":"en-fa","series":8,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'reading_comprehension',10,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,8,'{"source":"lesson_story","question":"کدام جمله درست است؟","choices":["لیام اهل لندن است","مینا اهل لندن است","لیام اهل ایران است"],"correctIndex":0}','{"course":"en-fa","series":8,"level":"Start","skill":"reading"}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 008 Lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two distinct Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND storyline_key='mina-liam-at-the-cafe' AND storyline_order BETWEEN 9 AND 12;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 008 storyline continuity.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>18 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 008 Turn count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND (JSON_VALID(t.tokens)=0 OR JSON_LENGTH(t.tokens)=0);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Turn without valid clickable tokens.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id JOIN JSON_TABLE(t.tokens,'$[*]' COLUMNS(lemma VARCHAR(180) PATH '$.lemma',part_of_speech VARCHAR(48) PATH '$.partOfSpeech',translation VARCHAR(255) PATH '$.translation')) jt LEFT JOIN words w ON w.course_id=v_course AND w.lemma=jt.lemma AND w.part_of_speech=jt.part_of_speech AND w.translation=jt.translation LEFT JOIN lesson_words lw ON lw.lesson_id=t.lesson_id AND lw.word_id=w.id WHERE l.chapter_id=v_chapter AND (w.id IS NULL OR lw.word_id IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Clickable token lacks exact Word tuple mapping.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>34 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 008 Activity count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (JSON_EXTRACT(ac.config,'$.question') IS NULL OR JSON_LENGTH(JSON_EXTRACT(ac.config,'$.choices'))<2);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without learner task.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons l WHERE l.chapter_id=v_chapter AND (NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='listen') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='speak') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='word_order') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='reading_comprehension'));
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Lesson missing Speaking, Listening, Writing, or Reading practice.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter AND lw.is_target=1;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 008 explicit-target count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) d;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_en_fa_series_008_v9();
DROP PROCEDURE IF EXISTS import_nova_en_fa_series_008_v9;

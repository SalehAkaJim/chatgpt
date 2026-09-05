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
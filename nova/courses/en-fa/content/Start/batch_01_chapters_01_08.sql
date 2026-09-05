-- NOVA v9.0 / EN-FA / START BATCH 01 / SERIES 001-008
-- Eight independently authored, QA-passed chapters for Persian speakers.
-- Import sequentially as one batch; data DML only and no schema migration.

-- ===== START SERIES 001 =====
-- NOVA v9.0 / EN-FA / START SERIES 001 / Hello! I'm Mina
-- Independently authored for Persian speakers starting English from absolute zero.
-- Bootstraps en-fa data with DML only; canonical schema v9.0 remains unchanged.
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_en_fa_series_001_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_en_fa_series_001_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_level BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_mina BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_noah BIGINT UNSIGNED DEFAULT NULL;
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

  SELECT COUNT(*) INTO v_count FROM courses WHERE learning_language='en' AND base_language='fa';
  IF v_count>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate en-fa Courses found.'; END IF;
  SELECT id INTO v_course FROM courses WHERE learning_language='en' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN
    INSERT INTO courses(learning_language,base_language,title,title_translation,description,description_translation,status,metadata)
    VALUES('en','fa','English for Persian Speakers','انگلیسی برای فارسی‌زبان‌ها','A complete English course that begins at absolute zero.','یک دوره کامل انگلیسی که از صفر مطلق شروع می‌شود.','active','{"course":"en-fa","locale":"en-US","schemaVersion":"v9.0","levelModel":"Nova English six-level model"}');
    SET v_course=LAST_INSERT_ID();
  END IF;

  SELECT COUNT(*) INTO v_count FROM levels WHERE course_id=v_course AND (cefr_level='ST' OR sort_order=1);
  IF v_count>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Conflicting en-fa Start Levels found.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='ST' AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN
    INSERT INTO levels(course_id,cefr_level,title,title_translation,description,description_translation,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES(v_course,'ST','Start','شروع','English from the first sound and first useful exchange.','انگلیسی از اولین صدا و اولین گفتگوی کاربردی.',1,20,1,'active','{"course":"en-fa","levelModel":"Nova English","internalCefrAlignment":"Absolute zero to A1"}');
    SET v_level=LAST_INSERT_ID();
  END IF;
  SELECT COUNT(*) INTO v_count FROM levels WHERE id=v_level AND cefr_level='ST' AND title='Start' AND title_translation='شروع';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Start Level identity mismatch.'; END IF;

  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN
    INSERT INTO modules(level_id,title,title_translation,description,description_translation,emoji,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES(v_level,'First Sounds & Hellos','صداهای اولیه و سلام','First English greetings, names, and sound awareness.','اولین سلام‌ها، اسم‌ها و آشنایی با صدای انگلیسی.','👋',1,3,1,'active','{"course":"en-fa","seriesRange":[1,5]}');
    SET v_module=LAST_INSERT_ID();
  END IF;
  SELECT COUNT(*) INTO v_count FROM modules WHERE id=v_module AND title='First Sounds & Hellos' AND title_translation='صداهای اولیه و سلام';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Start Module 01 identity mismatch.'; END IF;

  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN
    INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES(v_module,'Hello! I''m Mina','سلام! من مینا هستم','Mina and Noah exchange their first greetings and names.','مینا و نوآ اولین سلام‌ها و اسم‌هایشان را با هم ردوبدل می‌کنند.',4,1,1,1,'planned','{"course":"en-fa","level":"Start","series":1}');
    SET v_chapter=LAST_INSERT_ID();
  END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='Hello! I''m Mina' AND title_translation='سلام! من مینا هستم';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 001 Chapter identity mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 001 Chapter must be empty before import.'; END IF;

  SELECT id INTO v_c_mina FROM characters WHERE course_id=v_course AND name='Mina' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_mina IS NULL THEN
    INSERT INTO characters(course_id,name,gender,avatar_url,voice_key,profile,metadata)
    VALUES(v_course,'Mina','female',NULL,NULL,'{"role":"language_learner"}','{"context":"starting English from absolute zero","introducedSeries":1,"voiceArchetype":"friendly_learner"}');
    SET v_c_mina=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_c_noah FROM characters WHERE course_id=v_course AND name='Noah' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_noah IS NULL THEN
    INSERT INTO characters(course_id,name,gender,avatar_url,voice_key,profile,metadata)
    VALUES(v_course,'Noah','male',NULL,NULL,'{"role":"friendly_neighbor"}','{"context":"simple everyday conversations","introducedSeries":1,"voiceArchetype":"everyday_adult"}');
    SET v_c_noah=LAST_INSERT_ID();
  END IF;
  IF v_c_mina IS NULL OR v_c_noah IS NULL OR v_c_mina=v_c_noah THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required distinct English Characters Mina and Noah missing.'; END IF;

  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='hello' AND part_of_speech='interjection' AND translation='سلام' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'hello','hello','interjection','سلام',1,'{"usage":"greeting"}','[{"text":"goodbye","translation":"خداحافظ"},{"text":"thanks","translation":"ممنون"},{"text":"yes","translation":"بله"},{"text":"no","translation":"نه"},{"text":"please","translation":"لطفا"}]','Hello, Mina!','سلام، مینا!',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":1,"explicitTarget":false}');
    SET v_w_001=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='I''m' AND part_of_speech='phrase' AND translation='من هستم' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'I''m','I''m','phrase','من هستم',1,'{"expansion":"I am","type":"contraction"}','[{"text":"you''re","translation":"تو هستی"},{"text":"he''s","translation":"او هست"},{"text":"we''re","translation":"ما هستیم"},{"text":"they''re","translation":"آنها هستند"},{"text":"I","translation":"من"}]','I''m Mina.','من مینا هستم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":1,"explicitTarget":false}');
    SET v_w_002=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='Mina' AND part_of_speech='proper_noun' AND translation='مینا (نام زنانه)' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Mina','Mina','proper_noun','مینا (نام زنانه)',1,NULL,'[{"text":"Ava","translation":"آوا (نام زنانه)"},{"text":"Maya","translation":"مایا (نام زنانه)"},{"text":"Nora","translation":"نورا (نام زنانه)"},{"text":"Chloe","translation":"کلویی (نام زنانه)"},{"text":"Grace","translation":"گریس (نام زنانه)"}]','I''m Mina.','من مینا هستم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":1,"explicitTarget":false}');
    SET v_w_003=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='Noah' AND part_of_speech='proper_noun' AND translation='نوآ (نام مردانه)' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Noah','Noah','proper_noun','نوآ (نام مردانه)',1,NULL,'[{"text":"Liam","translation":"لیام (نام مردانه)"},{"text":"Ethan","translation":"ایتن (نام مردانه)"},{"text":"Daniel","translation":"دنیل (نام مردانه)"},{"text":"Leo","translation":"لئو (نام مردانه)"},{"text":"Sam","translation":"سم (نام مردانه)"}]','I''m Noah.','من نوآ هستم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":1,"explicitTarget":false}');
    SET v_w_004=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='hi' AND part_of_speech='interjection' AND translation='سلام (خودمانی)' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'hi','hi','interjection','سلام (خودمانی)',1,'{"usage":"informal_greeting"}','[{"text":"hello","translation":"سلام"},{"text":"goodbye","translation":"خداحافظ"},{"text":"thanks","translation":"ممنون"},{"text":"please","translation":"لطفا"},{"text":"yes","translation":"بله"}]','Hi, Noah!','سلام، نوآ!',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":1,"explicitTarget":false}');
    SET v_w_005=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='goodbye' AND part_of_speech='interjection' AND translation='خداحافظ' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'goodbye','goodbye','interjection','خداحافظ',1,'{"usage":"farewell"}','[{"text":"hello","translation":"سلام"},{"text":"hi","translation":"سلام خودمانی"},{"text":"see you later","translation":"بعدا می‌بینمت"},{"text":"good morning","translation":"صبح بخیر"},{"text":"good night","translation":"شب بخیر"}]','Goodbye, Mina!','خداحافظ، مینا!',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":1,"explicitTarget":false}');
    SET v_w_006=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='yes' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'yes','yes','interjection','بله / آره',1,'{"usage":"positive_answer"}','[{"text":"no","translation":"نه"},{"text":"maybe","translation":"شاید"},{"text":"hello","translation":"سلام"},{"text":"goodbye","translation":"خداحافظ"},{"text":"thanks","translation":"ممنون"}]','Yes, Mina.','بله، مینا.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":1,"explicitTarget":false}');
    SET v_w_007=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='good' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'good','good','adjective','خوب',1,'{"type":"adjective"}','[{"text":"bad","translation":"بد"},{"text":"fine","translation":"خوب"},{"text":"great","translation":"عالی"},{"text":"okay","translation":"بد نیست"},{"text":"tired","translation":"خسته"}]','Good!','خوبه!',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":1,"explicitTarget":false}');
    SET v_w_008=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='see' AND part_of_speech='verb' AND translation='دیدن' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'see','see','verb','دیدن',1,'{"base_form":"see"}','[{"text":"hear","translation":"شنیدن"},{"text":"say","translation":"گفتن"},{"text":"go","translation":"رفتن"},{"text":"come","translation":"آمدن"},{"text":"meet","translation":"ملاقات کردن"}]','See you later!','بعدا می‌بینمت!',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":1,"explicitTarget":false}');
    SET v_w_009=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='you' AND part_of_speech='pronoun' AND translation='تو / شما' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'you','you','pronoun','تو / شما',1,'{"person":2}','[{"text":"I","translation":"من"},{"text":"he","translation":"او (مرد)"},{"text":"she","translation":"او (زن)"},{"text":"we","translation":"ما"},{"text":"they","translation":"آنها"}]','See you later!','بعدا می‌بینمت!',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":1,"explicitTarget":false}');
    SET v_w_010=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='later' AND part_of_speech='adverb' AND translation='بعدا' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'later','later','adverb','بعدا',1,'{"type":"time_adverb"}','[{"text":"now","translation":"الان"},{"text":"today","translation":"امروز"},{"text":"tomorrow","translation":"فردا"},{"text":"soon","translation":"به زودی"},{"text":"again","translation":"دوباره"}]','See you later!','بعدا می‌بینمت!',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":1,"explicitTarget":false}');
    SET v_w_011=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='Hello! I''m Mina.' AND part_of_speech='phrase' AND translation='سلام! من مینا هستم.' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Hello! I''m Mina.','Hello! I''m Mina.','phrase','سلام! من مینا هستم.',1,'{"pattern":"greeting + self_introduction"}','[{"text":"Hello! I''m Noah.","translation":"سلام! من نوآ هستم."},{"text":"Hi, Mina!","translation":"سلام، مینا!"},{"text":"Goodbye, Mina!","translation":"خداحافظ، مینا!"},{"text":"Yes, Mina.","translation":"بله، مینا."},{"text":"See you later!","translation":"بعدا می‌بینمت!"}]','Hello! I''m Mina.','سلام! من مینا هستم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":1,"explicitTarget":true}');
    SET v_w_012=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='Hello, Noah!' AND part_of_speech='phrase' AND translation='سلام، نوآ!' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Hello, Noah!','Hello, Noah!','phrase','سلام، نوآ!',1,'{"pattern":"greeting + name"}','[{"text":"Hello, Mina!","translation":"سلام، مینا!"},{"text":"Goodbye, Noah!","translation":"خداحافظ، نوآ!"},{"text":"Hi, Mina!","translation":"سلام، مینا!"},{"text":"Yes, Noah.","translation":"بله، نوآ."},{"text":"See you later!","translation":"بعدا می‌بینمت!"}]','Hello, Noah!','سلام، نوآ!',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":1,"explicitTarget":true}');
    SET v_w_013=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='Yes, Mina.' AND part_of_speech='phrase' AND translation='بله، مینا.' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Yes, Mina.','Yes, Mina.','phrase','بله، مینا.',1,'{"pattern":"confirmation + name"}','[{"text":"No, Mina.","translation":"نه، مینا."},{"text":"Yes, Noah.","translation":"بله، نوآ."},{"text":"Hello, Mina!","translation":"سلام، مینا!"},{"text":"Goodbye, Mina!","translation":"خداحافظ، مینا!"},{"text":"Good, Mina!","translation":"خوبه، مینا!"}]','Yes, Mina.','بله، مینا.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":1,"explicitTarget":true}');
    SET v_w_014=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='See you later!' AND part_of_speech='phrase' AND translation='بعدا می‌بینمت!' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'See you later!','See you later!','phrase','بعدا می‌بینمت!',1,'{"pattern":"farewell"}','[{"text":"Goodbye!","translation":"خداحافظ!"},{"text":"See you soon!","translation":"به زودی می‌بینمت!"},{"text":"Good morning!","translation":"صبح بخیر!"},{"text":"Hello again!","translation":"دوباره سلام!"},{"text":"Thank you!","translation":"ممنون!"}]','See you later!','بعدا می‌بینمت!',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":1,"explicitTarget":true}');
    SET v_w_015=LAST_INSERT_ID();
  END IF;

  -- Lesson 1: First hello
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_noah,v_c_mina,'First hello','اولین سلام','Noah greets his new neighbor. They introduce themselves with one short sentence each.','نوآ به همسایه جدیدش سلام می‌کند. هرکدام با یک جمله کوتاه خودشان را معرفی می‌کنند.','story','mina-noah-first-english',1,1,138,1,'validated','{"course":"en-fa","series":1,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_noah,1,'character','Hello! I''m Noah.','سلام! من نوآ هستم.',1,NULL,NULL,NULL,NULL,'[{"surface":"Hello","lemma":"hello","translation":"سلام","partOfSpeech":"interjection","suffix":"!"},{"surface":"I''m","lemma":"I''m","translation":"من هستم","partOfSpeech":"phrase"},{"surface":"Noah","lemma":"Noah","translation":"نوآ (نام مردانه)","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mina,2,'learner','Hello! I''m Mina.','سلام! من مینا هستم.',1,NULL,NULL,'hello i''m mina',NULL,'[{"surface":"Hello","lemma":"hello","translation":"سلام","partOfSpeech":"interjection","suffix":"!"},{"surface":"I''m","lemma":"I''m","translation":"من هستم","partOfSpeech":"phrase"},{"surface":"Mina","lemma":"Mina","translation":"مینا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_noah,3,'character','Hi, Mina!','سلام، مینا!',1,NULL,NULL,NULL,NULL,'[{"surface":"Hi","lemma":"hi","translation":"سلام (خودمانی)","partOfSpeech":"interjection","suffix":","},{"surface":"Mina","lemma":"Mina","translation":"مینا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mina,4,'learner','Hi, Noah!','سلام، نوآ!',1,NULL,NULL,'hi noah',NULL,'[{"surface":"Hi","lemma":"hi","translation":"سلام (خودمانی)","partOfSpeech":"interjection","suffix":","},{"surface":"Noah","lemma":"Noah","translation":"نوآ (نام مردانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_001,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_002,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_003,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_004,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_005,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_012,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'new_word',1,NULL,v_w_012,'عبارت کلیدی درس',NULL,1,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',2,v_t_1,NULL,'به نوآ گوش کن',NULL,1,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',3,v_t_2,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,1,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',4,v_t_3,NULL,'به نوآ گوش کن',NULL,1,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',5,v_t_4,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,1,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'meaning_choice',6,NULL,v_w_001,'معنی درست را انتخاب کن',NULL,1,'{"mode":"word_translation","question":"hello یعنی چی؟","choices":["سلام","خداحافظ","ممنون"],"correctIndex":0}','{"course":"en-fa","series":1,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'word_order',7,v_t_2,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,1,'{"source":"turn","tokens":["Hello","I''m","Mina"],"answer":"Hello! I''m Mina."}','{"course":"en-fa","series":1,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,1,'{"source":"lesson_story","question":"نوآ خودش را با چه نامی معرفی می‌کند؟","choices":["نوآ","مینا","لیام"],"correctIndex":0}','{"course":"en-fa","series":1,"level":"Start","skill":"reading"}');

  -- Lesson 2: Hello at the door
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_noah,v_c_mina,'Hello at the door','سلام جلوی در','Mina and Noah pass each other at the door. They greet each other and then say goodbye.','مینا و نوآ جلوی در از کنار هم رد می‌شوند. به هم سلام می‌کنند و بعد خداحافظی می‌کنند.','story','mina-noah-first-english',2,1,138,2,'validated','{"course":"en-fa","series":1,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_noah,1,'character','Hello, Mina!','سلام، مینا!',1,NULL,NULL,NULL,NULL,'[{"surface":"Hello","lemma":"hello","translation":"سلام","partOfSpeech":"interjection","suffix":","},{"surface":"Mina","lemma":"Mina","translation":"مینا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mina,2,'learner','Hello, Noah!','سلام، نوآ!',1,NULL,NULL,'hello noah',NULL,'[{"surface":"Hello","lemma":"hello","translation":"سلام","partOfSpeech":"interjection","suffix":","},{"surface":"Noah","lemma":"Noah","translation":"نوآ (نام مردانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_noah,3,'character','Goodbye, Mina!','خداحافظ، مینا!',1,NULL,NULL,NULL,NULL,'[{"surface":"Goodbye","lemma":"goodbye","translation":"خداحافظ","partOfSpeech":"interjection","suffix":","},{"surface":"Mina","lemma":"Mina","translation":"مینا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mina,4,'learner','Goodbye, Noah!','خداحافظ، نوآ!',1,NULL,NULL,'goodbye noah',NULL,'[{"surface":"Goodbye","lemma":"goodbye","translation":"خداحافظ","partOfSpeech":"interjection","suffix":","},{"surface":"Noah","lemma":"Noah","translation":"نوآ (نام مردانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_001,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_003,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_004,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_006,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_013,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'new_word',1,NULL,v_w_013,'عبارت کلیدی درس',NULL,1,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',2,v_t_5,NULL,'به نوآ گوش کن',NULL,1,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',3,v_t_6,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,1,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',4,v_t_7,NULL,'به نوآ گوش کن',NULL,1,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',5,v_t_8,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,1,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'meaning_choice',6,NULL,v_w_006,'معنی درست را انتخاب کن',NULL,1,'{"mode":"word_translation","question":"goodbye یعنی چی؟","choices":["خداحافظ","سلام","سلام خودمانی"],"correctIndex":0}','{"course":"en-fa","series":1,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'word_order',7,v_t_6,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,1,'{"source":"turn","tokens":["Hello","Noah"],"answer":"Hello, Noah!"}','{"course":"en-fa","series":1,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,1,'{"source":"lesson_story","question":"چه کسی اول خداحافظی می‌کند؟","choices":["نوآ","مینا","هیچ‌کدام"],"correctIndex":0}','{"course":"en-fa","series":1,"level":"Start","skill":"reading"}');

  -- Lesson 3: Mina, yes?
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_noah,v_c_mina,'Mina, yes?','مینا، درسته؟','Noah checks Mina''s name. Mina confirms it, and Noah shows that he understood.','نوآ اسم مینا را بررسی می‌کند. مینا تاییدش می‌کند و نوآ نشان می‌دهد که فهمیده است.','story','mina-noah-first-english',3,1,162,3,'validated','{"course":"en-fa","series":1,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_noah,1,'character','Hello! I''m Noah.','سلام! من نوآ هستم.',1,NULL,NULL,NULL,NULL,'[{"surface":"Hello","lemma":"hello","translation":"سلام","partOfSpeech":"interjection","suffix":"!"},{"surface":"I''m","lemma":"I''m","translation":"من هستم","partOfSpeech":"phrase"},{"surface":"Noah","lemma":"Noah","translation":"نوآ (نام مردانه)","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,2,'learner','Hello! I''m Mina.','سلام! من مینا هستم.',1,NULL,NULL,'hello i''m mina',NULL,'[{"surface":"Hello","lemma":"hello","translation":"سلام","partOfSpeech":"interjection","suffix":"!"},{"surface":"I''m","lemma":"I''m","translation":"من هستم","partOfSpeech":"phrase"},{"surface":"Mina","lemma":"Mina","translation":"مینا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_noah,3,'character','Mina?','مینا؟',1,NULL,NULL,NULL,NULL,'[{"surface":"Mina","lemma":"Mina","translation":"مینا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,4,'learner','Yes, Mina.','بله، مینا.',1,NULL,NULL,'yes mina',NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"Mina","lemma":"Mina","translation":"مینا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_noah,5,'character','Good!','خوبه!',1,NULL,NULL,NULL,NULL,'[{"surface":"Good","lemma":"good","translation":"خوب","partOfSpeech":"adjective","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,6,'learner','Yes!','بله!',1,NULL,NULL,'yes',NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_001,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_002,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_003,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_007,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_008,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_014,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'new_word',1,NULL,v_w_014,'عبارت کلیدی درس',NULL,1,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',2,v_t_9,NULL,'به نوآ گوش کن',NULL,1,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',3,v_t_10,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,1,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',4,v_t_11,NULL,'به نوآ گوش کن',NULL,1,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',5,v_t_12,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,1,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',6,v_t_13,NULL,'به نوآ گوش کن',NULL,1,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',7,v_t_14,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,1,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'meaning_choice',8,NULL,v_w_007,'معنی درست را انتخاب کن',NULL,1,'{"mode":"word_translation","question":"yes یعنی چی؟","choices":["بله / آره","نه","شاید"],"correctIndex":0}','{"course":"en-fa","series":1,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'word_order',9,v_t_10,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,1,'{"source":"turn","tokens":["Hello","I''m","Mina"],"answer":"Hello! I''m Mina."}','{"course":"en-fa","series":1,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'reading_comprehension',10,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,1,'{"source":"lesson_story","question":"نوآ کدام اسم را بررسی می‌کند؟","choices":["مینا","نوآ","سم"],"correctIndex":0}','{"course":"en-fa","series":1,"level":"Start","skill":"reading"}');

  -- Lesson 4: See you later
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_noah,v_c_mina,'See you later','بعدا می‌بینمت','Noah leaves the building. He and Mina say goodbye and agree to see each other later.','نوآ از ساختمان بیرون می‌رود. او و مینا خداحافظی می‌کنند و می‌گویند بعدا همدیگر را می‌بینند.','story','mina-noah-first-english',4,1,138,4,'validated','{"course":"en-fa","series":1,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_noah,1,'character','Goodbye, Mina!','خداحافظ، مینا!',1,NULL,NULL,NULL,NULL,'[{"surface":"Goodbye","lemma":"goodbye","translation":"خداحافظ","partOfSpeech":"interjection","suffix":","},{"surface":"Mina","lemma":"Mina","translation":"مینا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,2,'learner','Goodbye, Noah!','خداحافظ، نوآ!',1,NULL,NULL,'goodbye noah',NULL,'[{"surface":"Goodbye","lemma":"goodbye","translation":"خداحافظ","partOfSpeech":"interjection","suffix":","},{"surface":"Noah","lemma":"Noah","translation":"نوآ (نام مردانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_noah,3,'character','See you later!','بعدا می‌بینمت!',1,NULL,NULL,NULL,NULL,'[{"surface":"See","lemma":"see","translation":"دیدن","partOfSpeech":"verb"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"later","lemma":"later","translation":"بعدا","partOfSpeech":"adverb","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,4,'learner','See you later!','بعدا می‌بینمت!',1,NULL,NULL,'see you later',NULL,'[{"surface":"See","lemma":"see","translation":"دیدن","partOfSpeech":"verb"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"later","lemma":"later","translation":"بعدا","partOfSpeech":"adverb","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_006,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_009,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_010,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_011,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_015,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'new_word',1,NULL,v_w_015,'عبارت کلیدی درس',NULL,1,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',2,v_t_15,NULL,'به نوآ گوش کن',NULL,1,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',3,v_t_16,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,1,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',4,v_t_17,NULL,'به نوآ گوش کن',NULL,1,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',5,v_t_18,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,1,NULL,'{"course":"en-fa","series":1,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'meaning_choice',6,NULL,v_w_011,'معنی درست را انتخاب کن',NULL,1,'{"mode":"word_translation","question":"later یعنی چی؟","choices":["بعدا","الان","امروز"],"correctIndex":0}','{"course":"en-fa","series":1,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'word_order',7,v_t_16,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,1,'{"source":"turn","tokens":["Goodbye","Noah"],"answer":"Goodbye, Noah!"}','{"course":"en-fa","series":1,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,1,'{"source":"lesson_story","question":"بعد از خداحافظی چه می‌گویند؟","choices":["بعدا می‌بینمت","صبح بخیر","من خوبم"],"correctIndex":0}','{"course":"en-fa","series":1,"level":"Start","skill":"reading"}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 001 Lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two distinct Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND storyline_key='mina-noah-first-english' AND storyline_order BETWEEN 1 AND 4;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 001 storyline continuity.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>18 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 001 Turn count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND (JSON_VALID(t.tokens)=0 OR JSON_LENGTH(t.tokens)=0);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Turn without valid clickable tokens.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id JOIN JSON_TABLE(t.tokens,'$[*]' COLUMNS(lemma VARCHAR(180) PATH '$.lemma',part_of_speech VARCHAR(48) PATH '$.partOfSpeech',translation VARCHAR(255) PATH '$.translation')) jt LEFT JOIN words w ON w.course_id=v_course AND w.lemma=jt.lemma AND w.part_of_speech=jt.part_of_speech AND w.translation=jt.translation LEFT JOIN lesson_words lw ON lw.lesson_id=t.lesson_id AND lw.word_id=w.id WHERE l.chapter_id=v_chapter AND (w.id IS NULL OR lw.word_id IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Clickable token lacks exact Word tuple mapping.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>34 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 001 Activity count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (JSON_EXTRACT(ac.config,'$.question') IS NULL OR JSON_LENGTH(JSON_EXTRACT(ac.config,'$.choices'))<2);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without learner task.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons l WHERE l.chapter_id=v_chapter AND (NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='listen') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='speak') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='word_order') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='reading_comprehension'));
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Lesson missing Speaking, Listening, Writing, or Reading practice.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter AND lw.is_target=1;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 001 explicit-target count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) d;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_en_fa_series_001_v9();
DROP PROCEDURE IF EXISTS import_nova_en_fa_series_001_v9;
-- ===== END START SERIES 001 =====

-- ===== START SERIES 002 =====
-- NOVA v9.0 / EN-FA / START SERIES 002 / What's your name?
-- Independently authored for Persian speakers; requires validated en-fa Series 001.
-- Data import only; canonical schema v9.0 remains unchanged.
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_en_fa_series_002_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_en_fa_series_002_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_level BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_previous_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_mina BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_noah BIGINT UNSIGNED DEFAULT NULL;
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
  SELECT id INTO v_course FROM courses WHERE learning_language='en' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 001 en-fa Course missing.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='ST' AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 001 Start Level missing.'; END IF;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 001 Start Module 01 missing.'; END IF;
  SELECT id INTO v_previous_chapter FROM chapters WHERE module_id=v_module AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_previous_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 001 Chapter missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_previous_chapter AND status='validated' AND storyline_key='mina-noah-first-english' AND storyline_order BETWEEN 1 AND 4;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 001 must be validated with storyline orders 1-4.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_previous_chapter AND status='validated' AND title='Hello! I''m Mina';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 001 canonical prerequisite mismatch.'; END IF;

  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN
    INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES(v_module,'What''s your name?','اسمت چیه؟','Mina and Noah ask and answer simple questions about names.','مینا و نوآ سوال‌های ساده درباره اسم را می‌پرسند و جواب می‌دهند.',4,2,2,2,'planned','{"course":"en-fa","level":"Start","series":2}');
    SET v_chapter=LAST_INSERT_ID();
  END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='What''s your name?' AND title_translation='اسمت چیه؟';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 002 Chapter identity mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 002 Chapter must be empty before import.'; END IF;
  SELECT id INTO v_c_mina FROM characters WHERE course_id=v_course AND name='Mina' AND gender='female' ORDER BY id LIMIT 1;
  SELECT id INTO v_c_noah FROM characters WHERE course_id=v_course AND name='Noah' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_mina IS NULL OR v_c_noah IS NULL OR v_c_mina=v_c_noah THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required distinct English Characters Mina and Noah missing.'; END IF;

  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='hello' AND part_of_speech='interjection' AND translation='سلام' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required Series 001 Word tuple missing: hello'; END IF;
  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='hi' AND part_of_speech='interjection' AND translation='سلام (خودمانی)' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required Series 001 Word tuple missing: hi'; END IF;
  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='I''m' AND part_of_speech='phrase' AND translation='من هستم' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required Series 001 Word tuple missing: I''m'; END IF;
  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='Mina' AND part_of_speech='proper_noun' AND translation='مینا (نام زنانه)' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required Series 001 Word tuple missing: Mina'; END IF;
  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='Noah' AND part_of_speech='proper_noun' AND translation='نوآ (نام مردانه)' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required Series 001 Word tuple missing: Noah'; END IF;
  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='yes' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required Series 001 Word tuple missing: yes'; END IF;
  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='goodbye' AND part_of_speech='interjection' AND translation='خداحافظ' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required Series 001 Word tuple missing: goodbye'; END IF;
  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='you' AND part_of_speech='pronoun' AND translation='تو / شما' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required Series 001 Word tuple missing: you'; END IF;
  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='what''s' AND part_of_speech='phrase' AND translation='چی هست / چه' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'what''s','what''s','phrase','چی هست / چه',2,'{"expansion":"what is","type":"contraction"}','[{"text":"who''s","translation":"کی هست"},{"text":"where''s","translation":"کجاست"},{"text":"when''s","translation":"کی هست"},{"text":"why''s","translation":"چرا هست"},{"text":"how''s","translation":"چطوره"}]','What''s your name?','اسمت چیه؟',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":2,"explicitTarget":false}');
    SET v_w_009=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='your' AND part_of_speech='determiner' AND translation='تو / ـت' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'your','your','determiner','تو / ـت',2,'{"type":"possessive_determiner","person":2}','[{"text":"my","translation":"من / ـم"},{"text":"his","translation":"مال او (مرد)"},{"text":"her","translation":"مال او (زن)"},{"text":"our","translation":"مال ما"},{"text":"their","translation":"مال آنها"}]','What''s your name?','اسمت چیه؟',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":2,"explicitTarget":false}');
    SET v_w_010=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='name' AND part_of_speech='noun' AND translation='اسم' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'name','name','noun','اسم',2,'{"plural":"names"}','[{"text":"word","translation":"کلمه"},{"text":"person","translation":"آدم"},{"text":"friend","translation":"دوست"},{"text":"place","translation":"مکان"},{"text":"number","translation":"عدد"}]','My name is Mina.','اسم من میناست.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":2,"explicitTarget":false}');
    SET v_w_011=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='my' AND part_of_speech='determiner' AND translation='من / ـم' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'my','my','determiner','من / ـم',2,'{"type":"possessive_determiner","person":1}','[{"text":"your","translation":"تو / ـت"},{"text":"his","translation":"مال او (مرد)"},{"text":"her","translation":"مال او (زن)"},{"text":"our","translation":"مال ما"},{"text":"their","translation":"مال آنها"}]','My name is Mina.','اسم من میناست.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":2,"explicitTarget":false}');
    SET v_w_012=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='be' AND part_of_speech='verb' AND translation='بودن / هستم' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'be','be','verb','بودن / هستم',2,'{"present":{"I":"am","you":"are","he_she_it":"is","we":"are","they":"are"}}','[{"text":"have","translation":"داشتن"},{"text":"go","translation":"رفتن"},{"text":"come","translation":"آمدن"},{"text":"see","translation":"دیدن"},{"text":"say","translation":"گفتن"}]','I am Mina.','من مینا هستم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":2,"explicitTarget":false}');
    SET v_w_013=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='I' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'I','I','pronoun','من',2,'{"person":1,"number":"singular"}','[{"text":"you","translation":"تو / شما"},{"text":"he","translation":"او (مرد)"},{"text":"she","translation":"او (زن)"},{"text":"we","translation":"ما"},{"text":"they","translation":"آنها"}]','Yes, I am.','بله، هستم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":2,"explicitTarget":false}');
    SET v_w_014=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='What''s your name?' AND part_of_speech='phrase' AND translation='اسمت چیه؟' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'What''s your name?','What''s your name?','phrase','اسمت چیه؟',2,'{"pattern":"what is + possessive + noun"}','[{"text":"My name is Mina.","translation":"اسم من میناست."},{"text":"Are you Mina?","translation":"تو مینا هستی؟"},{"text":"I''m Noah.","translation":"من نوآ هستم."},{"text":"Hello, Mina!","translation":"سلام، مینا!"},{"text":"Goodbye, Noah!","translation":"خداحافظ، نوآ!"}]','What''s your name?','اسمت چیه؟',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":2,"explicitTarget":true}');
    SET v_w_015=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_016 FROM words WHERE course_id=v_course AND lemma='My name is Mina.' AND part_of_speech='phrase' AND translation='اسم من میناست.' ORDER BY id LIMIT 1;
  IF v_w_016 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'My name is Mina.','My name is Mina.','phrase','اسم من میناست.',2,'{"pattern":"possessive + noun + be + name"}','[{"text":"My name is Noah.","translation":"اسم من نوآست."},{"text":"What''s your name?","translation":"اسمت چیه؟"},{"text":"I''m Mina.","translation":"من مینا هستم."},{"text":"Are you Mina?","translation":"تو مینا هستی؟"},{"text":"Hello, Noah!","translation":"سلام، نوآ!"}]','My name is Mina.','اسم من میناست.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":2,"explicitTarget":true}');
    SET v_w_016=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_017 FROM words WHERE course_id=v_course AND lemma='Yes, I am.' AND part_of_speech='phrase' AND translation='بله، هستم.' ORDER BY id LIMIT 1;
  IF v_w_017 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Yes, I am.','Yes, I am.','phrase','بله، هستم.',2,'{"pattern":"short_affirmative_answer"}','[{"text":"No, I''m not.","translation":"نه، نیستم."},{"text":"Yes, you are.","translation":"بله، تو هستی."},{"text":"I''m Noah.","translation":"من نوآ هستم."},{"text":"My name is Mina.","translation":"اسم من میناست."},{"text":"Hello!","translation":"سلام!"}]','Yes, I am.','بله، هستم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":2,"explicitTarget":true}');
    SET v_w_017=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_018 FROM words WHERE course_id=v_course AND lemma='I''m Noah.' AND part_of_speech='phrase' AND translation='من نوآ هستم.' ORDER BY id LIMIT 1;
  IF v_w_018 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'I''m Noah.','I''m Noah.','phrase','من نوآ هستم.',2,'{"pattern":"self_introduction"}','[{"text":"I''m Mina.","translation":"من مینا هستم."},{"text":"My name is Noah.","translation":"اسم من نوآست."},{"text":"Are you Noah?","translation":"تو نوآ هستی؟"},{"text":"Hello, Noah!","translation":"سلام، نوآ!"},{"text":"Goodbye, Noah!","translation":"خداحافظ، نوآ!"}]','I''m Noah.','من نوآ هستم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":2,"explicitTarget":true}');
    SET v_w_018=LAST_INSERT_ID();
  END IF;

  -- Lesson 1: The name card
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_noah,v_c_mina,'The name card','کارت اسم','Noah reads Mina''s name card and asks her name. Mina answers with a complete short sentence.','نوآ کارت اسم مینا را می‌خواند و اسمش را می‌پرسد. مینا با یک جمله کوتاه و کامل جواب می‌دهد.','story','mina-noah-first-english',5,2,138,1,'validated','{"course":"en-fa","series":2,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_noah,1,'character','Hello, Mina!','سلام، مینا!',2,NULL,NULL,NULL,NULL,'[{"surface":"Hello","lemma":"hello","translation":"سلام","partOfSpeech":"interjection","suffix":","},{"surface":"Mina","lemma":"Mina","translation":"مینا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":2,"level":"Start"}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mina,2,'learner','Hello, Noah!','سلام، نوآ!',2,NULL,NULL,'hello noah',NULL,'[{"surface":"Hello","lemma":"hello","translation":"سلام","partOfSpeech":"interjection","suffix":","},{"surface":"Noah","lemma":"Noah","translation":"نوآ (نام مردانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":2,"level":"Start"}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_noah,3,'character','What''s your name?','اسمت چیه؟',2,NULL,NULL,NULL,NULL,'[{"surface":"What''s","lemma":"what''s","translation":"چی هست / چه","partOfSpeech":"phrase"},{"surface":"your","lemma":"your","translation":"تو / ـت","partOfSpeech":"determiner"},{"surface":"name","lemma":"name","translation":"اسم","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":2,"level":"Start"}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mina,4,'learner','My name is Mina.','اسم من میناست.',2,NULL,NULL,'my name is mina',NULL,'[{"surface":"My","lemma":"my","translation":"من / ـم","partOfSpeech":"determiner"},{"surface":"name","lemma":"name","translation":"اسم","partOfSpeech":"noun"},{"surface":"is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"هست"},{"surface":"Mina","lemma":"Mina","translation":"مینا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":2,"level":"Start"}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_001,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_004,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_009,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_010,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_011,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_012,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_013,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_015,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'new_word',1,NULL,v_w_015,'عبارت کلیدی درس',NULL,2,NULL,'{"course":"en-fa","series":2,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',2,v_t_1,NULL,'به نوآ گوش کن',NULL,2,NULL,'{"course":"en-fa","series":2,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',3,v_t_2,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,2,NULL,'{"course":"en-fa","series":2,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',4,v_t_3,NULL,'به نوآ گوش کن',NULL,2,NULL,'{"course":"en-fa","series":2,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',5,v_t_4,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,2,NULL,'{"course":"en-fa","series":2,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'meaning_choice',6,NULL,v_w_011,'معنی درست را انتخاب کن',NULL,2,'{"mode":"word_translation","question":"name یعنی چی؟","choices":["اسم","کلمه","آدم"],"correctIndex":0}','{"course":"en-fa","series":2,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'word_order',7,v_t_2,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,2,'{"source":"turn","tokens":["Hello","Noah"],"answer":"Hello, Noah!"}','{"course":"en-fa","series":2,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,2,'{"source":"lesson_story","question":"نوآ چه چیزی از مینا می‌پرسد؟","choices":["اسمش را","سنش را","شماره‌اش را"],"correctIndex":0}','{"course":"en-fa","series":2,"level":"Start","skill":"reading"}');

  -- Lesson 2: Mina says her name
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_noah,v_c_mina,'Mina says her name','مینا اسمش را می‌گوید','Mina and Noah practice saying their names clearly. Noah checks that he heard Mina correctly.','مینا و نوآ گفتن روشن اسم‌هایشان را تمرین می‌کنند. نوآ بررسی می‌کند که اسم مینا را درست شنیده باشد.','story','mina-noah-first-english',6,2,138,2,'validated','{"course":"en-fa","series":2,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_noah,1,'character','Hi! I''m Noah.','سلام! من نوآ هستم.',2,NULL,NULL,NULL,NULL,'[{"surface":"Hi","lemma":"hi","translation":"سلام (خودمانی)","partOfSpeech":"interjection","suffix":"!"},{"surface":"I''m","lemma":"I''m","translation":"من هستم","partOfSpeech":"phrase"},{"surface":"Noah","lemma":"Noah","translation":"نوآ (نام مردانه)","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":2,"level":"Start"}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mina,2,'learner','Hi! My name is Mina.','سلام! اسم من میناست.',2,NULL,NULL,'hi my name is mina',NULL,'[{"surface":"Hi","lemma":"hi","translation":"سلام (خودمانی)","partOfSpeech":"interjection","suffix":"!"},{"surface":"My","lemma":"my","translation":"من / ـم","partOfSpeech":"determiner"},{"surface":"name","lemma":"name","translation":"اسم","partOfSpeech":"noun"},{"surface":"is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"هست"},{"surface":"Mina","lemma":"Mina","translation":"مینا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":2,"level":"Start"}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_noah,3,'character','Mina?','مینا؟',2,NULL,NULL,NULL,NULL,'[{"surface":"Mina","lemma":"Mina","translation":"مینا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":2,"level":"Start"}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mina,4,'learner','Yes, Mina.','بله، مینا.',2,NULL,NULL,'yes mina',NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"Mina","lemma":"Mina","translation":"مینا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":2,"level":"Start"}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_002,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_004,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_011,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_016,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'new_word',1,NULL,v_w_016,'عبارت کلیدی درس',NULL,2,NULL,'{"course":"en-fa","series":2,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',2,v_t_5,NULL,'به نوآ گوش کن',NULL,2,NULL,'{"course":"en-fa","series":2,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',3,v_t_6,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,2,NULL,'{"course":"en-fa","series":2,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',4,v_t_7,NULL,'به نوآ گوش کن',NULL,2,NULL,'{"course":"en-fa","series":2,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',5,v_t_8,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,2,NULL,'{"course":"en-fa","series":2,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'meaning_choice',6,NULL,v_w_012,'معنی درست را انتخاب کن',NULL,2,'{"mode":"word_translation","question":"my یعنی چی؟","choices":["من / ـم","تو / ـت","مال او (مرد)"],"correctIndex":0}','{"course":"en-fa","series":2,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'word_order',7,v_t_6,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,2,'{"source":"turn","tokens":["Hi","My","name","is","Mina"],"answer":"Hi! My name is Mina."}','{"course":"en-fa","series":2,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,2,'{"source":"lesson_story","question":"اسم دختر در این گفتگو چیست؟","choices":["مینا","نوآ","مایا"],"correctIndex":0}','{"course":"en-fa","series":2,"level":"Start","skill":"reading"}');

  -- Lesson 3: Are you Mina?
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_noah,v_c_mina,'Are you Mina?','تو مینا هستی؟','Noah checks who Mina is. Mina confirms, and they finish with a friendly greeting.','نوآ بررسی می‌کند که مینا را درست شناخته باشد. مینا تایید می‌کند و گفتگو با یک سلام دوستانه تمام می‌شود.','story','mina-noah-first-english',7,2,138,3,'validated','{"course":"en-fa","series":2,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_noah,1,'character','Are you Mina?','تو مینا هستی؟',2,NULL,NULL,NULL,NULL,'[{"surface":"Are","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"هستی"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"Mina","lemma":"Mina","translation":"مینا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":2,"level":"Start"}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,2,'learner','Yes, I am.','بله، هستم.',2,NULL,NULL,'yes i am',NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"I","lemma":"I","translation":"من","partOfSpeech":"pronoun"},{"surface":"am","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"هستم","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":2,"level":"Start"}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_noah,3,'character','I''m Noah.','من نوآ هستم.',2,NULL,NULL,NULL,NULL,'[{"surface":"I''m","lemma":"I''m","translation":"من هستم","partOfSpeech":"phrase"},{"surface":"Noah","lemma":"Noah","translation":"نوآ (نام مردانه)","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":2,"level":"Start"}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,4,'learner','Hello, Noah!','سلام، نوآ!',2,NULL,NULL,'hello noah',NULL,'[{"surface":"Hello","lemma":"hello","translation":"سلام","partOfSpeech":"interjection","suffix":","},{"surface":"Noah","lemma":"Noah","translation":"نوآ (نام مردانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":2,"level":"Start"}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_005,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_013,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_014,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_017,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'new_word',1,NULL,v_w_017,'عبارت کلیدی درس',NULL,2,NULL,'{"course":"en-fa","series":2,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',2,v_t_9,NULL,'به نوآ گوش کن',NULL,2,NULL,'{"course":"en-fa","series":2,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',3,v_t_10,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,2,NULL,'{"course":"en-fa","series":2,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',4,v_t_11,NULL,'به نوآ گوش کن',NULL,2,NULL,'{"course":"en-fa","series":2,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',5,v_t_12,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,2,NULL,'{"course":"en-fa","series":2,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'meaning_choice',6,NULL,v_w_014,'معنی درست را انتخاب کن',NULL,2,'{"mode":"word_translation","question":"I یعنی چی؟","choices":["من","تو / شما","او (مرد)"],"correctIndex":0}','{"course":"en-fa","series":2,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'word_order',7,v_t_10,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,2,'{"source":"turn","tokens":["Yes","I","am"],"answer":"Yes, I am."}','{"course":"en-fa","series":2,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,2,'{"source":"lesson_story","question":"مینا چطور جواب مثبت می‌دهد؟","choices":["بله، هستم","نه، نیستم","خداحافظ"],"correctIndex":0}','{"course":"en-fa","series":2,"level":"Start","skill":"reading"}');

  -- Lesson 4: A short name practice
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_noah,v_c_mina,'A short name practice','یک تمرین کوتاه اسم','Mina and Noah act out a complete first meeting. They ask a name, answer, and say goodbye.','مینا و نوآ یک آشنایی کامل را تمرین می‌کنند. اسم می‌پرسند، جواب می‌دهند و خداحافظی می‌کنند.','story','mina-noah-first-english',8,2,138,4,'validated','{"course":"en-fa","series":2,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_noah,1,'character','Hello! What''s your name?','سلام! اسمت چیه؟',2,NULL,NULL,NULL,NULL,'[{"surface":"Hello","lemma":"hello","translation":"سلام","partOfSpeech":"interjection","suffix":"!"},{"surface":"What''s","lemma":"what''s","translation":"چی هست / چه","partOfSpeech":"phrase"},{"surface":"your","lemma":"your","translation":"تو / ـت","partOfSpeech":"determiner"},{"surface":"name","lemma":"name","translation":"اسم","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":2,"level":"Start"}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,2,'learner','My name is Mina.','اسم من میناست.',2,NULL,NULL,'my name is mina',NULL,'[{"surface":"My","lemma":"my","translation":"من / ـم","partOfSpeech":"determiner"},{"surface":"name","lemma":"name","translation":"اسم","partOfSpeech":"noun"},{"surface":"is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"هست"},{"surface":"Mina","lemma":"Mina","translation":"مینا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":2,"level":"Start"}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_noah,3,'character','I''m Noah.','من نوآ هستم.',2,NULL,NULL,NULL,NULL,'[{"surface":"I''m","lemma":"I''m","translation":"من هستم","partOfSpeech":"phrase"},{"surface":"Noah","lemma":"Noah","translation":"نوآ (نام مردانه)","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":2,"level":"Start"}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,4,'learner','Goodbye, Noah!','خداحافظ، نوآ!',2,NULL,NULL,'goodbye noah',NULL,'[{"surface":"Goodbye","lemma":"goodbye","translation":"خداحافظ","partOfSpeech":"interjection","suffix":","},{"surface":"Noah","lemma":"Noah","translation":"نوآ (نام مردانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":2,"level":"Start"}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_005,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_007,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_010,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_011,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_018,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'new_word',1,NULL,v_w_018,'عبارت کلیدی درس',NULL,2,NULL,'{"course":"en-fa","series":2,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',2,v_t_13,NULL,'به نوآ گوش کن',NULL,2,NULL,'{"course":"en-fa","series":2,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',3,v_t_14,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,2,NULL,'{"course":"en-fa","series":2,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',4,v_t_15,NULL,'به نوآ گوش کن',NULL,2,NULL,'{"course":"en-fa","series":2,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',5,v_t_16,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,2,NULL,'{"course":"en-fa","series":2,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'meaning_choice',6,NULL,v_w_009,'معنی درست را انتخاب کن',NULL,2,'{"mode":"word_translation","question":"what''s یعنی چی؟","choices":["چی هست / چه","کی هست","کجاست"],"correctIndex":0}','{"course":"en-fa","series":2,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'word_order',7,v_t_14,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,2,'{"source":"turn","tokens":["My","name","is","Mina"],"answer":"My name is Mina."}','{"course":"en-fa","series":2,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,2,'{"source":"lesson_story","question":"نوآ خودش را با چه جمله‌ای معرفی می‌کند؟","choices":["من نوآ هستم","اسم من میناست","اسمت چیه"],"correctIndex":0}','{"course":"en-fa","series":2,"level":"Start","skill":"reading"}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 002 Lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two distinct Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND storyline_key='mina-noah-first-english' AND storyline_order BETWEEN 5 AND 8;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 002 storyline continuity.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>16 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 002 Turn count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND (JSON_VALID(t.tokens)=0 OR JSON_LENGTH(t.tokens)=0);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Turn without valid clickable tokens.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id JOIN JSON_TABLE(t.tokens,'$[*]' COLUMNS(lemma VARCHAR(180) PATH '$.lemma',part_of_speech VARCHAR(48) PATH '$.partOfSpeech',translation VARCHAR(255) PATH '$.translation')) jt LEFT JOIN words w ON w.course_id=v_course AND w.lemma=jt.lemma AND w.part_of_speech=jt.part_of_speech AND w.translation=jt.translation LEFT JOIN lesson_words lw ON lw.lesson_id=t.lesson_id AND lw.word_id=w.id WHERE l.chapter_id=v_chapter AND (w.id IS NULL OR lw.word_id IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Clickable token lacks exact Word tuple mapping.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>32 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 002 Activity count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (JSON_EXTRACT(ac.config,'$.question') IS NULL OR JSON_LENGTH(JSON_EXTRACT(ac.config,'$.choices'))<2);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without learner task.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons l WHERE l.chapter_id=v_chapter AND (NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='listen') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='speak') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='word_order') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='reading_comprehension'));
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Lesson missing Speaking, Listening, Writing, or Reading practice.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter AND lw.is_target=1;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 002 explicit-target count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) d;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_en_fa_series_002_v9();
DROP PROCEDURE IF EXISTS import_nova_en_fa_series_002_v9;
-- ===== END START SERIES 002 =====

-- ===== START SERIES 003 =====
-- NOVA v9.0 / EN-FA / START SERIES 003 / Nice to meet you
-- Independently authored for Persian speakers; requires validated en-fa Series 002.
-- Data import only; canonical schema v9.0 remains unchanged.
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_en_fa_series_003_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_en_fa_series_003_v9()
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
  DECLARE v_w_020 BIGINT UNSIGNED DEFAULT NULL;
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

  DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN ROLLBACK; RESIGNAL; END;
  START TRANSACTION;
  SELECT id INTO v_course FROM courses WHERE learning_language='en' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 002 en-fa Course missing.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='ST' AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 002 Start Level missing.'; END IF;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 002 Start Module 01 missing.'; END IF;
  SELECT id INTO v_previous_chapter FROM chapters WHERE module_id=v_module AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_previous_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 002 Chapter missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_previous_chapter AND status='validated' AND storyline_key='mina-noah-first-english' AND storyline_order BETWEEN 5 AND 8;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 002 must be validated with its exact storyline orders.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_previous_chapter AND status='validated' AND title='What''s your name?';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 002 canonical prerequisite mismatch.'; END IF;

  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN
    INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES(v_module,'Nice to meet you','از آشنایی باهات خوشحالم','Mina meets Ava in English class and they exchange names and a friendly first-meeting phrase.','مینا در کلاس انگلیسی با آوا آشنا می‌شود و آنها اسم‌هایشان و یک عبارت دوستانه برای آشنایی را تمرین می‌کنند.',4,3,3,3,'planned','{"course":"en-fa","level":"Start","series":3}');
    SET v_chapter=LAST_INSERT_ID();
  END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='Nice to meet you' AND title_translation='از آشنایی باهات خوشحالم';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 003 Chapter identity mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 003 Chapter must be empty before import.'; END IF;
  SELECT id INTO v_c_ava FROM characters WHERE course_id=v_course AND name='Ava' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_ava IS NULL THEN
    INSERT INTO characters(course_id,name,gender,avatar_url,voice_key,profile,metadata)
    VALUES(v_course,'Ava','female',NULL,NULL,'{"role":"classmate"}','{"context":"practice and study situations","introducedSeries":3,"voiceArchetype":"friendly_learner"}');
    SET v_c_ava=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_c_mina FROM characters WHERE course_id=v_course AND name='Mina' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_ava IS NULL OR v_c_mina IS NULL OR v_c_ava=v_c_mina THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required distinct English Characters missing.'; END IF;

  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='hello' AND part_of_speech='interjection' AND translation='سلام' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: hello'; END IF;
  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='I''m' AND part_of_speech='phrase' AND translation='من هستم' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: I''m'; END IF;
  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='Ava' AND part_of_speech='proper_noun' AND translation='آوا (نام زنانه)' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ava','Ava','proper_noun','آوا (نام زنانه)',3,'{"type":"person_name"}','[{"lemma":"Mina","translation":"مینا"},{"lemma":"Noah","translation":"نوآ"},{"lemma":"name","translation":"اسم"}]','I''m Ava.','من آوا هستم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":3,"explicitTarget":false}');
    SET v_w_003=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='Mina' AND part_of_speech='proper_noun' AND translation='مینا (نام زنانه)' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: Mina'; END IF;
  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='nice' AND part_of_speech='adjective' AND translation='خوب / خوشایند' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'nice','nice','adjective','خوب / خوشایند',3,'{"use":"friendly_description"}','[{"lemma":"new","translation":"جدید"},{"lemma":"small","translation":"کوچک"},{"lemma":"late","translation":"دیر"}]','Nice to meet you.','از آشنایی باهات خوشحالم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":3,"explicitTarget":false}');
    SET v_w_005=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='to' AND part_of_speech='particle' AND translation='به / برای' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'to','to','particle','به / برای',3,'{"use":"infinitive_marker"}','[{"lemma":"from","translation":"از"},{"lemma":"with","translation":"با"},{"lemma":"under","translation":"زیر"}]','Nice to meet you.','از آشنایی باهات خوشحالم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":3,"explicitTarget":false}');
    SET v_w_006=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='meet' AND part_of_speech='verb' AND translation='آشنا شدن / ملاقات کردن' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'meet','meet','verb','آشنا شدن / ملاقات کردن',3,'{"base_form":"meet"}','[{"lemma":"leave","translation":"ترک کردن"},{"lemma":"read","translation":"خواندن"},{"lemma":"write","translation":"نوشتن"}]','Nice to meet you.','از آشنایی باهات خوشحالم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":3,"explicitTarget":false}');
    SET v_w_007=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='you' AND part_of_speech='pronoun' AND translation='تو / شما' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: you'; END IF;
  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='too' AND part_of_speech='adverb' AND translation='هم / همین‌طور' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'too','too','adverb','هم / همین‌طور',3,'{"position":"end"}','[{"lemma":"only","translation":"فقط"},{"lemma":"never","translation":"هرگز"},{"lemma":"again","translation":"دوباره"}]','Nice to meet you too.','من هم از آشنایی باهات خوشحالم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":3,"explicitTarget":false}');
    SET v_w_009=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='Nice to meet you.' AND part_of_speech='phrase' AND translation='از آشنایی باهات خوشحالم.' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Nice to meet you.','Nice to meet you.','phrase','از آشنایی باهات خوشحالم.',3,'{"pattern":"nice + infinitive"}','[{"lemma":"What''s your name?","translation":"اسمت چیه؟"},{"lemma":"Goodbye!","translation":"خداحافظ!"},{"lemma":"I''m Mina.","translation":"من مینا هستم."}]','Nice to meet you.','از آشنایی باهات خوشحالم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":3,"explicitTarget":true}');
    SET v_w_010=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='hi' AND part_of_speech='interjection' AND translation='سلام (خودمانی)' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: hi'; END IF;
  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='what''s' AND part_of_speech='phrase' AND translation='چی هست / چه' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: what''s'; END IF;
  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='your' AND part_of_speech='determiner' AND translation='تو / ـت' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: your'; END IF;
  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='name' AND part_of_speech='noun' AND translation='اسم' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: name'; END IF;
  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='my' AND part_of_speech='determiner' AND translation='من / ـم' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: my'; END IF;
  SELECT id INTO v_w_016 FROM words WHERE course_id=v_course AND lemma='be' AND part_of_speech='verb' AND translation='بودن / هستم' ORDER BY id LIMIT 1;
  IF v_w_016 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: be'; END IF;
  SELECT id INTO v_w_017 FROM words WHERE course_id=v_course AND lemma='goodbye' AND part_of_speech='interjection' AND translation='خداحافظ' ORDER BY id LIMIT 1;
  IF v_w_017 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: goodbye'; END IF;
  SELECT id INTO v_w_018 FROM words WHERE course_id=v_course AND lemma='Nice to meet you too.' AND part_of_speech='phrase' AND translation='من هم از آشنایی باهات خوشحالم.' ORDER BY id LIMIT 1;
  IF v_w_018 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Nice to meet you too.','Nice to meet you too.','phrase','من هم از آشنایی باهات خوشحالم.',3,'{"pattern":"first_meeting_response"}','[{"lemma":"Nice to meet you.","translation":"از آشنایی باهات خوشحالم."},{"lemma":"My name is Mina.","translation":"اسم من میناست."},{"lemma":"Goodbye, Ava!","translation":"خداحافظ، آوا!"}]','Nice to meet you too.','من هم از آشنایی باهات خوشحالم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":3,"explicitTarget":true}');
    SET v_w_018=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_019 FROM words WHERE course_id=v_course AND lemma='I''m Ava.' AND part_of_speech='phrase' AND translation='من آوا هستم.' ORDER BY id LIMIT 1;
  IF v_w_019 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'I''m Ava.','I''m Ava.','phrase','من آوا هستم.',3,'{"pattern":"self_introduction"}','[{"lemma":"I''m Mina.","translation":"من مینا هستم."},{"lemma":"My name is Ava.","translation":"اسم من آواست."},{"lemma":"Are you Ava?","translation":"تو آوا هستی؟"}]','I''m Ava.','من آوا هستم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":3,"explicitTarget":true}');
    SET v_w_019=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_020 FROM words WHERE course_id=v_course AND lemma='Nice to meet you, Ava!' AND part_of_speech='phrase' AND translation='از آشنایی باهات خوشحالم، آوا!' ORDER BY id LIMIT 1;
  IF v_w_020 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Nice to meet you, Ava!','Nice to meet you, Ava!','phrase','از آشنایی باهات خوشحالم، آوا!',3,'{"pattern":"first_meeting_phrase + name"}','[{"lemma":"Goodbye, Ava!","translation":"خداحافظ، آوا!"},{"lemma":"Hello, Mina!","translation":"سلام، مینا!"},{"lemma":"What''s your name?","translation":"اسمت چیه؟"}]','Nice to meet you, Ava!','از آشنایی باهات خوشحالم، آوا!',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":3,"explicitTarget":true}');
    SET v_w_020=LAST_INSERT_ID();
  END IF;

  -- Lesson 1: A new classmate
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ava,v_c_mina,'A new classmate','یک همکلاسی جدید','Mina meets Ava in class. They introduce themselves and use a friendly first-meeting phrase.','مینا در کلاس با آوا آشنا می‌شود. آنها خودشان را معرفی می‌کنند و یک عبارت دوستانه برای آشنایی می‌گویند.','story','mina-ava-english-class',1,3,138,1,'validated','{"course":"en-fa","series":3,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_ava,1,'character','Hello! I''m Ava.','سلام! من آوا هستم.',3,NULL,NULL,NULL,NULL,'[{"surface":"Hello","lemma":"hello","translation":"سلام","partOfSpeech":"interjection","suffix":"!"},{"surface":"I''m","lemma":"I''m","translation":"من هستم","partOfSpeech":"phrase"},{"surface":"Ava","lemma":"Ava","translation":"آوا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mina,2,'learner','Hello! I''m Mina.','سلام! من مینا هستم.',3,NULL,NULL,'hello i''m mina',NULL,'[{"surface":"Hello","lemma":"hello","translation":"سلام","partOfSpeech":"interjection","suffix":"!"},{"surface":"I''m","lemma":"I''m","translation":"من هستم","partOfSpeech":"phrase"},{"surface":"Mina","lemma":"Mina","translation":"مینا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_ava,3,'character','Nice to meet you.','از آشنایی باهات خوشحالم.',3,NULL,NULL,NULL,NULL,'[{"surface":"Nice","lemma":"nice","translation":"خوب / خوشایند","partOfSpeech":"adjective"},{"surface":"to","lemma":"to","translation":"به / برای","partOfSpeech":"particle"},{"surface":"meet","lemma":"meet","translation":"آشنا شدن / ملاقات کردن","partOfSpeech":"verb"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mina,4,'learner','Nice to meet you too.','من هم از آشنایی باهات خوشحالم.',3,NULL,NULL,'nice to meet you too',NULL,'[{"surface":"Nice","lemma":"nice","translation":"خوب / خوشایند","partOfSpeech":"adjective"},{"surface":"to","lemma":"to","translation":"به / برای","partOfSpeech":"particle"},{"surface":"meet","lemma":"meet","translation":"آشنا شدن / ملاقات کردن","partOfSpeech":"verb"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"too","lemma":"too","translation":"هم / همین‌طور","partOfSpeech":"adverb","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_001,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_002,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_003,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_005,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_006,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_007,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_008,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_009,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_010,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'new_word',1,NULL,v_w_010,'عبارت کلیدی درس',NULL,3,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',2,v_t_1,NULL,'به آوا گوش کن',NULL,3,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',3,v_t_2,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,3,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',4,v_t_3,NULL,'به آوا گوش کن',NULL,3,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',5,v_t_4,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,3,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'meaning_choice',6,NULL,v_w_007,'معنی درست را انتخاب کن',NULL,3,'{"mode":"word_translation","question":"meet یعنی چی؟","choices":["آشنا شدن / ملاقات کردن","ترک کردن","خواندن"],"correctIndex":0}','{"course":"en-fa","series":3,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'word_order',7,v_t_2,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,3,'{"source":"turn","tokens":["Hello","I''m","Mina"],"answer":"Hello! I''m Mina."}','{"course":"en-fa","series":3,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,3,'{"source":"lesson_story","question":"اسم همکلاسی جدید مینا چیست؟","choices":["آوا","مینا","نوآ"],"correctIndex":0}','{"course":"en-fa","series":3,"level":"Start","skill":"reading"}');

  -- Lesson 2: Names and a greeting
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ava,v_c_mina,'Names and a greeting','اسم‌ها و آشنایی','Ava asks Mina''s name. Both classmates introduce themselves and end their first exchange politely.','آوا اسم مینا را می‌پرسد. هر دو همکلاسی خودشان را معرفی می‌کنند و گفتگوی اولشان را دوستانه تمام می‌کنند.','story','mina-ava-english-class',2,3,162,2,'validated','{"course":"en-fa","series":3,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_ava,1,'character','Hi! What''s your name?','سلام! اسمت چیه؟',3,NULL,NULL,NULL,NULL,'[{"surface":"Hi","lemma":"hi","translation":"سلام (خودمانی)","partOfSpeech":"interjection","suffix":"!"},{"surface":"What''s","lemma":"what''s","translation":"چی هست / چه","partOfSpeech":"phrase"},{"surface":"your","lemma":"your","translation":"تو / ـت","partOfSpeech":"determiner"},{"surface":"name","lemma":"name","translation":"اسم","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mina,2,'learner','My name is Mina.','اسم من میناست.',3,NULL,NULL,'my name is mina',NULL,'[{"surface":"My","lemma":"my","translation":"من / ـم","partOfSpeech":"determiner"},{"surface":"name","lemma":"name","translation":"اسم","partOfSpeech":"noun"},{"surface":"is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"هست"},{"surface":"Mina","lemma":"Mina","translation":"مینا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_ava,3,'character','I''m Ava.','من آوا هستم.',3,NULL,NULL,NULL,NULL,'[{"surface":"I''m","lemma":"I''m","translation":"من هستم","partOfSpeech":"phrase"},{"surface":"Ava","lemma":"Ava","translation":"آوا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mina,4,'learner','Nice to meet you.','از آشنایی باهات خوشحالم.',3,NULL,NULL,'nice to meet you',NULL,'[{"surface":"Nice","lemma":"nice","translation":"خوب / خوشایند","partOfSpeech":"adjective"},{"surface":"to","lemma":"to","translation":"به / برای","partOfSpeech":"particle"},{"surface":"meet","lemma":"meet","translation":"آشنا شدن / ملاقات کردن","partOfSpeech":"verb"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_ava,5,'character','Nice to meet you too.','من هم از آشنایی باهات خوشحالم.',3,NULL,NULL,NULL,NULL,'[{"surface":"Nice","lemma":"nice","translation":"خوب / خوشایند","partOfSpeech":"adjective"},{"surface":"to","lemma":"to","translation":"به / برای","partOfSpeech":"particle"},{"surface":"meet","lemma":"meet","translation":"آشنا شدن / ملاقات کردن","partOfSpeech":"verb"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"too","lemma":"too","translation":"هم / همین‌طور","partOfSpeech":"adverb","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mina,6,'learner','Goodbye, Ava!','خداحافظ، آوا!',3,NULL,NULL,'goodbye ava',NULL,'[{"surface":"Goodbye","lemma":"goodbye","translation":"خداحافظ","partOfSpeech":"interjection","suffix":","},{"surface":"Ava","lemma":"Ava","translation":"آوا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_003,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_005,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_006,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_007,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_008,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_011,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_014,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_015,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_016,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_017,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_018,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'new_word',1,NULL,v_w_018,'عبارت کلیدی درس',NULL,3,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',2,v_t_5,NULL,'به آوا گوش کن',NULL,3,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',3,v_t_6,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,3,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',4,v_t_7,NULL,'به آوا گوش کن',NULL,3,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',5,v_t_8,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,3,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',6,v_t_9,NULL,'به آوا گوش کن',NULL,3,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',7,v_t_10,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,3,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'meaning_choice',8,NULL,v_w_009,'معنی درست را انتخاب کن',NULL,3,'{"mode":"word_translation","question":"too یعنی چی؟","choices":["هم / همین‌طور","فقط","هرگز"],"correctIndex":0}','{"course":"en-fa","series":3,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'word_order',9,v_t_6,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,3,'{"source":"turn","tokens":["My","name","is","Mina"],"answer":"My name is Mina."}','{"course":"en-fa","series":3,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'reading_comprehension',10,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,3,'{"source":"lesson_story","question":"آوا در پاسخ به جمله آشنایی مینا چه می‌گوید؟","choices":["من هم از آشنایی باهات خوشحالم","اسم من میناست","خداحافظ"],"correctIndex":0}','{"course":"en-fa","series":3,"level":"Start","skill":"reading"}');

  -- Lesson 3: Introduce yourself
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ava,v_c_mina,'Introduce yourself','خودت را معرفی کن','Mina and Ava role-play a short first meeting and say their own names clearly.','مینا و آوا یک آشنایی کوتاه را نقش‌آفرینی می‌کنند و اسم‌های خودشان را روشن می‌گویند.','story','mina-ava-english-class',3,3,162,3,'validated','{"course":"en-fa","series":3,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_ava,1,'character','Hello, Mina!','سلام، مینا!',3,NULL,NULL,NULL,NULL,'[{"surface":"Hello","lemma":"hello","translation":"سلام","partOfSpeech":"interjection","suffix":","},{"surface":"Mina","lemma":"Mina","translation":"مینا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,2,'learner','Hello, Ava!','سلام، آوا!',3,NULL,NULL,'hello ava',NULL,'[{"surface":"Hello","lemma":"hello","translation":"سلام","partOfSpeech":"interjection","suffix":","},{"surface":"Ava","lemma":"Ava","translation":"آوا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_ava,3,'character','I''m Ava.','من آوا هستم.',3,NULL,NULL,NULL,NULL,'[{"surface":"I''m","lemma":"I''m","translation":"من هستم","partOfSpeech":"phrase"},{"surface":"Ava","lemma":"Ava","translation":"آوا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,4,'learner','I''m Mina.','من مینا هستم.',3,NULL,NULL,'i''m mina',NULL,'[{"surface":"I''m","lemma":"I''m","translation":"من هستم","partOfSpeech":"phrase"},{"surface":"Mina","lemma":"Mina","translation":"مینا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_ava,5,'character','Nice to meet you.','از آشنایی باهات خوشحالم.',3,NULL,NULL,NULL,NULL,'[{"surface":"Nice","lemma":"nice","translation":"خوب / خوشایند","partOfSpeech":"adjective"},{"surface":"to","lemma":"to","translation":"به / برای","partOfSpeech":"particle"},{"surface":"meet","lemma":"meet","translation":"آشنا شدن / ملاقات کردن","partOfSpeech":"verb"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,6,'learner','Nice to meet you too.','من هم از آشنایی باهات خوشحالم.',3,NULL,NULL,'nice to meet you too',NULL,'[{"surface":"Nice","lemma":"nice","translation":"خوب / خوشایند","partOfSpeech":"adjective"},{"surface":"to","lemma":"to","translation":"به / برای","partOfSpeech":"particle"},{"surface":"meet","lemma":"meet","translation":"آشنا شدن / ملاقات کردن","partOfSpeech":"verb"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"too","lemma":"too","translation":"هم / همین‌طور","partOfSpeech":"adverb","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_001,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_002,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_003,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_004,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_005,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_006,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_007,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_008,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_019,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'new_word',1,NULL,v_w_019,'عبارت کلیدی درس',NULL,3,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',2,v_t_11,NULL,'به آوا گوش کن',NULL,3,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',3,v_t_12,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,3,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',4,v_t_13,NULL,'به آوا گوش کن',NULL,3,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',5,v_t_14,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,3,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',6,v_t_15,NULL,'به آوا گوش کن',NULL,3,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',7,v_t_16,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,3,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'meaning_choice',8,NULL,v_w_003,'معنی درست را انتخاب کن',NULL,3,'{"mode":"word_translation","question":"Ava یعنی چی؟","choices":["آوا (نام زنانه)","مینا","نوآ"],"correctIndex":0}','{"course":"en-fa","series":3,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'word_order',9,v_t_12,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,3,'{"source":"turn","tokens":["Hello","Ava"],"answer":"Hello, Ava!"}','{"course":"en-fa","series":3,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'reading_comprehension',10,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,3,'{"source":"lesson_story","question":"چه کسی جمله «من آوا هستم» را می‌گوید؟","choices":["آوا","مینا","نوآ"],"correctIndex":0}','{"course":"en-fa","series":3,"level":"Start","skill":"reading"}');

  -- Lesson 4: A complete first meeting
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ava,v_c_mina,'A complete first meeting','یک آشنایی کامل','Mina and Ava combine a greeting, their names, and the new phrase in one compact exchange.','مینا و آوا یک سلام، اسم‌هایشان و عبارت تازه را در یک گفتگوی کوتاه کنار هم می‌آورند.','story','mina-ava-english-class',4,3,138,4,'validated','{"course":"en-fa","series":3,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_ava,1,'character','Hello! I''m Ava.','سلام! من آوا هستم.',3,NULL,NULL,NULL,NULL,'[{"surface":"Hello","lemma":"hello","translation":"سلام","partOfSpeech":"interjection","suffix":"!"},{"surface":"I''m","lemma":"I''m","translation":"من هستم","partOfSpeech":"phrase"},{"surface":"Ava","lemma":"Ava","translation":"آوا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,2,'learner','Hello! I''m Mina.','سلام! من مینا هستم.',3,NULL,NULL,'hello i''m mina',NULL,'[{"surface":"Hello","lemma":"hello","translation":"سلام","partOfSpeech":"interjection","suffix":"!"},{"surface":"I''m","lemma":"I''m","translation":"من هستم","partOfSpeech":"phrase"},{"surface":"Mina","lemma":"Mina","translation":"مینا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_ava,3,'character','Nice to meet you, Mina!','از آشنایی باهات خوشحالم، مینا!',3,NULL,NULL,NULL,NULL,'[{"surface":"Nice","lemma":"nice","translation":"خوب / خوشایند","partOfSpeech":"adjective"},{"surface":"to","lemma":"to","translation":"به / برای","partOfSpeech":"particle"},{"surface":"meet","lemma":"meet","translation":"آشنا شدن / ملاقات کردن","partOfSpeech":"verb"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun","suffix":","},{"surface":"Mina","lemma":"Mina","translation":"مینا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,4,'learner','Nice to meet you, Ava!','از آشنایی باهات خوشحالم، آوا!',3,NULL,NULL,'nice to meet you ava',NULL,'[{"surface":"Nice","lemma":"nice","translation":"خوب / خوشایند","partOfSpeech":"adjective"},{"surface":"to","lemma":"to","translation":"به / برای","partOfSpeech":"particle"},{"surface":"meet","lemma":"meet","translation":"آشنا شدن / ملاقات کردن","partOfSpeech":"verb"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun","suffix":","},{"surface":"Ava","lemma":"Ava","translation":"آوا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  SET v_t_20=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_001,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_002,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_003,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_004,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_005,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_006,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_007,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_008,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_020,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'new_word',1,NULL,v_w_020,'عبارت کلیدی درس',NULL,3,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',2,v_t_17,NULL,'به آوا گوش کن',NULL,3,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',3,v_t_18,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,3,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',4,v_t_19,NULL,'به آوا گوش کن',NULL,3,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',5,v_t_20,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,3,NULL,'{"course":"en-fa","series":3,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'meaning_choice',6,NULL,v_w_005,'معنی درست را انتخاب کن',NULL,3,'{"mode":"word_translation","question":"nice یعنی چی؟","choices":["خوب / خوشایند","جدید","کوچک"],"correctIndex":0}','{"course":"en-fa","series":3,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'word_order',7,v_t_18,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,3,'{"source":"turn","tokens":["Hello","I''m","Mina"],"answer":"Hello! I''m Mina."}','{"course":"en-fa","series":3,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,3,'{"source":"lesson_story","question":"آخرین جمله مینا چه معنایی دارد؟","choices":["از آشنایی باهات خوشحالم، آوا","خداحافظ، آوا","اسمت چیه، آوا"],"correctIndex":0}','{"course":"en-fa","series":3,"level":"Start","skill":"reading"}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 003 Lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two distinct Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND storyline_key='mina-ava-english-class' AND storyline_order BETWEEN 1 AND 4;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 003 storyline continuity.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>20 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 003 Turn count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND (JSON_VALID(t.tokens)=0 OR JSON_LENGTH(t.tokens)=0);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Turn without valid clickable tokens.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id JOIN JSON_TABLE(t.tokens,'$[*]' COLUMNS(lemma VARCHAR(180) PATH '$.lemma',part_of_speech VARCHAR(48) PATH '$.partOfSpeech',translation VARCHAR(255) PATH '$.translation')) jt LEFT JOIN words w ON w.course_id=v_course AND w.lemma=jt.lemma AND w.part_of_speech=jt.part_of_speech AND w.translation=jt.translation LEFT JOIN lesson_words lw ON lw.lesson_id=t.lesson_id AND lw.word_id=w.id WHERE l.chapter_id=v_chapter AND (w.id IS NULL OR lw.word_id IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Clickable token lacks exact Word tuple mapping.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>36 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 003 Activity count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (JSON_EXTRACT(ac.config,'$.question') IS NULL OR JSON_LENGTH(JSON_EXTRACT(ac.config,'$.choices'))<2);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without learner task.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons l WHERE l.chapter_id=v_chapter AND (NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='listen') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='speak') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='word_order') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='reading_comprehension'));
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Lesson missing Speaking, Listening, Writing, or Reading practice.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter AND lw.is_target=1;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 003 explicit-target count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) d;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_en_fa_series_003_v9();
DROP PROCEDURE IF EXISTS import_nova_en_fa_series_003_v9;
-- ===== END START SERIES 003 =====

-- ===== START SERIES 004 =====
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
-- ===== END START SERIES 004 =====

-- ===== START SERIES 005 =====
-- NOVA v9.0 / EN-FA / START SERIES 005 / Goodbye and see you soon
-- Independently authored for Persian speakers; requires validated en-fa Series 004.
-- Data import only; canonical schema v9.0 remains unchanged.
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_en_fa_series_005_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_en_fa_series_005_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_level BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_previous_module BIGINT UNSIGNED DEFAULT NULL;
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
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 004 en-fa Course missing.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='ST' AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 004 Start Level missing.'; END IF;
  SELECT id INTO v_previous_module FROM modules WHERE level_id=v_level AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_previous_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 004 prerequisite Module missing.'; END IF;
  SELECT id INTO v_previous_chapter FROM chapters WHERE module_id=v_previous_module AND sort_order=4 ORDER BY id LIMIT 1;
  IF v_previous_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 004 Chapter missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_previous_chapter AND status='validated' AND storyline_key='mina-ava-english-class' AND storyline_order BETWEEN 5 AND 8;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 004 must be validated with its exact storyline orders.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_previous_chapter AND status='validated' AND title='How are you today?';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 004 canonical prerequisite mismatch.'; END IF;

  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 005 target Module 01 missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM modules WHERE id=v_module AND title='First Sounds & Hellos' AND title_translation='صداهای اولیه و سلام';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 005 target Module identity mismatch.'; END IF;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=5 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN
    INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES(v_module,'Goodbye and see you soon','خداحافظ، به زودی می‌بینمت','Mina and Ava finish their first class conversations with natural short goodbyes and plans to meet again.','مینا و آوا گفتگوهای کلاس اولشان را با خداحافظی‌های کوتاه و طبیعی و وعده دیدار دوباره تمام می‌کنند.',4,5,5,5,'planned','{"course":"en-fa","level":"Start","series":5,"levelChapterOrder":5}');
    SET v_chapter=LAST_INSERT_ID();
  END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='Goodbye and see you soon' AND title_translation='خداحافظ، به زودی می‌بینمت';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 005 Chapter identity mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 005 Chapter must be empty before import.'; END IF;
  SELECT id INTO v_c_ava FROM characters WHERE course_id=v_course AND name='Ava' AND gender='female' ORDER BY id LIMIT 1;
  SELECT id INTO v_c_mina FROM characters WHERE course_id=v_course AND name='Mina' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_ava IS NULL OR v_c_mina IS NULL OR v_c_ava=v_c_mina THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required distinct English Characters missing.'; END IF;

  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='how' AND part_of_speech='adverb' AND translation='چطور / چگونه' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: how'; END IF;
  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='be' AND part_of_speech='verb' AND translation='بودن / هستم' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: be'; END IF;
  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='you' AND part_of_speech='pronoun' AND translation='تو / شما' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: you'; END IF;
  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='today' AND part_of_speech='adverb' AND translation='امروز' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: today'; END IF;
  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='I''m' AND part_of_speech='phrase' AND translation='من هستم' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: I''m'; END IF;
  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='fine' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: fine'; END IF;
  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='thanks' AND part_of_speech='interjection' AND translation='ممنون' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: thanks'; END IF;
  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='goodbye' AND part_of_speech='interjection' AND translation='خداحافظ' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: goodbye'; END IF;
  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='Mina' AND part_of_speech='proper_noun' AND translation='مینا (نام زنانه)' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: Mina'; END IF;
  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='Ava' AND part_of_speech='proper_noun' AND translation='آوا (نام زنانه)' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: Ava'; END IF;
  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='Goodbye, Ava!' AND part_of_speech='phrase' AND translation='خداحافظ، آوا!' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Goodbye, Ava!','Goodbye, Ava!','phrase','خداحافظ، آوا!',5,'{"pattern":"goodbye + name"}','[{"lemma":"Hello, Ava!","translation":"سلام، آوا!"},{"lemma":"How are you, Ava?","translation":"حالت چطوره، آوا؟"},{"lemma":"I''m Ava.","translation":"من آوا هستم."}]','Goodbye, Ava!','خداحافظ، آوا!',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":5,"explicitTarget":true}');
    SET v_w_011=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='see' AND part_of_speech='verb' AND translation='دیدن' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: see'; END IF;
  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='soon' AND part_of_speech='adverb' AND translation='به زودی' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'soon','soon','adverb','به زودی',5,'{"type":"time_adverb"}','[{"lemma":"later","translation":"بعدا"},{"lemma":"today","translation":"امروز"},{"lemma":"never","translation":"هرگز"}]','See you soon!','به زودی می‌بینمت!',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":5,"explicitTarget":false}');
    SET v_w_013=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='See you soon!' AND part_of_speech='phrase' AND translation='به زودی می‌بینمت!' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'See you soon!','See you soon!','phrase','به زودی می‌بینمت!',5,'{"pattern":"see + person + time"}','[{"lemma":"See you later!","translation":"بعدا می‌بینمت!"},{"lemma":"Goodbye, Ava!","translation":"خداحافظ، آوا!"},{"lemma":"Nice to meet you!","translation":"از آشنایی باهات خوشحالم!"}]','See you soon!','به زودی می‌بینمت!',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":5,"explicitTarget":true}');
    SET v_w_014=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='bye' AND part_of_speech='interjection' AND translation='خداحافظ (خودمانی)' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'bye','bye','interjection','خداحافظ (خودمانی)',5,'{"register":"informal"}','[{"lemma":"hello","translation":"سلام"},{"lemma":"thanks","translation":"ممنون"},{"lemma":"yes","translation":"بله"}]','Bye for now!','فعلا خداحافظ!',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":5,"explicitTarget":false}');
    SET v_w_015=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_016 FROM words WHERE course_id=v_course AND lemma='for' AND part_of_speech='preposition' AND translation='برای / تا' ORDER BY id LIMIT 1;
  IF v_w_016 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'for','for','preposition','برای / تا',5,'{"use":"fixed_phrase_bye_for_now"}','[{"lemma":"from","translation":"از"},{"lemma":"with","translation":"با"},{"lemma":"under","translation":"زیر"}]','Bye for now!','فعلا خداحافظ!',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":5,"explicitTarget":false}');
    SET v_w_016=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_017 FROM words WHERE course_id=v_course AND lemma='now' AND part_of_speech='adverb' AND translation='حالا / فعلا' ORDER BY id LIMIT 1;
  IF v_w_017 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'now','now','adverb','حالا / فعلا',5,'{"type":"time_adverb"}','[{"lemma":"later","translation":"بعدا"},{"lemma":"yesterday","translation":"دیروز"},{"lemma":"tomorrow","translation":"فردا"}]','Bye for now!','فعلا خداحافظ!',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":5,"explicitTarget":false}');
    SET v_w_017=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_018 FROM words WHERE course_id=v_course AND lemma='Bye for now!' AND part_of_speech='phrase' AND translation='فعلا خداحافظ!' ORDER BY id LIMIT 1;
  IF v_w_018 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Bye for now!','Bye for now!','phrase','فعلا خداحافظ!',5,'{"pattern":"informal_temporary_goodbye"}','[{"lemma":"Hello for now!","translation":"فعلا سلام!"},{"lemma":"Thanks for now!","translation":"فعلا ممنون!"},{"lemma":"I''m fine now.","translation":"الان خوبم."}]','Bye for now!','فعلا خداحافظ!',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":5,"explicitTarget":true}');
    SET v_w_018=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_019 FROM words WHERE course_id=v_course AND lemma='hello' AND part_of_speech='interjection' AND translation='سلام' ORDER BY id LIMIT 1;
  IF v_w_019 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: hello'; END IF;
  SELECT id INTO v_w_020 FROM words WHERE course_id=v_course AND lemma='hi' AND part_of_speech='interjection' AND translation='سلام (خودمانی)' ORDER BY id LIMIT 1;
  IF v_w_020 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: hi'; END IF;
  SELECT id INTO v_w_021 FROM words WHERE course_id=v_course AND lemma='later' AND part_of_speech='adverb' AND translation='بعدا' ORDER BY id LIMIT 1;
  IF v_w_021 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: later'; END IF;
  SELECT id INTO v_w_022 FROM words WHERE course_id=v_course AND lemma='See you later, Ava!' AND part_of_speech='phrase' AND translation='بعدا می‌بینمت، آوا!' ORDER BY id LIMIT 1;
  IF v_w_022 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'See you later, Ava!','See you later, Ava!','phrase','بعدا می‌بینمت، آوا!',5,'{"pattern":"see + person + time + name"}','[{"lemma":"See you soon, Mina!","translation":"به زودی می‌بینمت، مینا!"},{"lemma":"Goodbye, Ava!","translation":"خداحافظ، آوا!"},{"lemma":"Hello, Ava!","translation":"سلام، آوا!"}]','See you later, Ava!','بعدا می‌بینمت، آوا!',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":5,"explicitTarget":true}');
    SET v_w_022=LAST_INSERT_ID();
  END IF;

  -- Lesson 1: Goodbye after class
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ava,v_c_mina,'Goodbye after class','خداحافظی بعد از کلاس','Ava asks how Mina is, then both classmates end the conversation by name.','آوا حال مینا را می‌پرسد، سپس هر دو همکلاسی با گفتن اسم هم گفتگو را تمام می‌کنند.','story','mina-ava-english-class',9,5,138,1,'validated','{"course":"en-fa","series":5,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_ava,1,'character','How are you today?','امروز حالت چطوره؟',5,NULL,NULL,NULL,NULL,'[{"surface":"How","lemma":"how","translation":"چطور / چگونه","partOfSpeech":"adverb"},{"surface":"are","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"هستی"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"today","lemma":"today","translation":"امروز","partOfSpeech":"adverb","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mina,2,'learner','I''m fine, thanks.','خوبم، ممنون.',5,NULL,NULL,'i''m fine thanks',NULL,'[{"surface":"I''m","lemma":"I''m","translation":"من هستم","partOfSpeech":"phrase"},{"surface":"fine","lemma":"fine","translation":"خوب","partOfSpeech":"adjective","suffix":","},{"surface":"thanks","lemma":"thanks","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_ava,3,'character','Goodbye, Mina!','خداحافظ، مینا!',5,NULL,NULL,NULL,NULL,'[{"surface":"Goodbye","lemma":"goodbye","translation":"خداحافظ","partOfSpeech":"interjection","suffix":","},{"surface":"Mina","lemma":"Mina","translation":"مینا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mina,4,'learner','Goodbye, Ava!','خداحافظ، آوا!',5,NULL,NULL,'goodbye ava',NULL,'[{"surface":"Goodbye","lemma":"goodbye","translation":"خداحافظ","partOfSpeech":"interjection","suffix":","},{"surface":"Ava","lemma":"Ava","translation":"آوا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_007,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_008,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_010,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_011,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'new_word',1,NULL,v_w_011,'عبارت کلیدی درس',NULL,5,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',2,v_t_1,NULL,'به آوا گوش کن',NULL,5,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',3,v_t_2,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,5,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',4,v_t_3,NULL,'به آوا گوش کن',NULL,5,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',5,v_t_4,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,5,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'meaning_choice',6,NULL,v_w_011,'معنی درست را انتخاب کن',NULL,5,'{"mode":"word_translation","question":"Goodbye, Ava! یعنی چی؟","choices":["خداحافظ، آوا!","سلام، آوا!","حالت چطوره، آوا؟"],"correctIndex":0}','{"course":"en-fa","series":5,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'word_order',7,v_t_2,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,5,'{"source":"turn","tokens":["I''m","fine","thanks"],"answer":"I''m fine, thanks."}','{"course":"en-fa","series":5,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,5,'{"source":"lesson_story","question":"مینا هنگام خداحافظی نام چه کسی را می‌گوید؟","choices":["آوا","نوآ","مینا"],"correctIndex":0}','{"course":"en-fa","series":5,"level":"Start","skill":"reading"}');

  -- Lesson 2: See you soon
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ava,v_c_mina,'See you soon','به زودی می‌بینمت','Mina and Ava add soon to a friendly goodbye and repeat it naturally.','مینا و آوا عبارت «به زودی» را به یک خداحافظی دوستانه اضافه و آن را طبیعی تکرار می‌کنند.','story','mina-ava-english-class',10,5,138,2,'validated','{"course":"en-fa","series":5,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_ava,1,'character','Goodbye, Mina!','خداحافظ، مینا!',5,NULL,NULL,NULL,NULL,'[{"surface":"Goodbye","lemma":"goodbye","translation":"خداحافظ","partOfSpeech":"interjection","suffix":","},{"surface":"Mina","lemma":"Mina","translation":"مینا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mina,2,'learner','Goodbye, Ava!','خداحافظ، آوا!',5,NULL,NULL,'goodbye ava',NULL,'[{"surface":"Goodbye","lemma":"goodbye","translation":"خداحافظ","partOfSpeech":"interjection","suffix":","},{"surface":"Ava","lemma":"Ava","translation":"آوا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_ava,3,'character','See you soon!','به زودی می‌بینمت!',5,NULL,NULL,NULL,NULL,'[{"surface":"See","lemma":"see","translation":"دیدن","partOfSpeech":"verb"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"soon","lemma":"soon","translation":"به زودی","partOfSpeech":"adverb","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mina,4,'learner','See you soon!','به زودی می‌بینمت!',5,NULL,NULL,'see you soon',NULL,'[{"surface":"See","lemma":"see","translation":"دیدن","partOfSpeech":"verb"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"soon","lemma":"soon","translation":"به زودی","partOfSpeech":"adverb","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_003,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_008,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_010,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_012,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_013,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_014,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'new_word',1,NULL,v_w_014,'عبارت کلیدی درس',NULL,5,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',2,v_t_5,NULL,'به آوا گوش کن',NULL,5,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',3,v_t_6,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,5,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',4,v_t_7,NULL,'به آوا گوش کن',NULL,5,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',5,v_t_8,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,5,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'meaning_choice',6,NULL,v_w_013,'معنی درست را انتخاب کن',NULL,5,'{"mode":"word_translation","question":"soon یعنی چی؟","choices":["به زودی","بعدا","امروز"],"correctIndex":0}','{"course":"en-fa","series":5,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'word_order',7,v_t_6,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,5,'{"source":"turn","tokens":["Goodbye","Ava"],"answer":"Goodbye, Ava!"}','{"course":"en-fa","series":5,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,5,'{"source":"lesson_story","question":"آوا و مینا انتظار دارند چه زمانی دوباره همدیگر را ببینند؟","choices":["به زودی","هرگز","دیروز"],"correctIndex":0}','{"course":"en-fa","series":5,"level":"Start","skill":"reading"}');

  -- Lesson 3: Bye for now
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ava,v_c_mina,'Bye for now','فعلا خداحافظ','The classmates practice a casual goodbye and follow it with a promise to meet soon.','دو همکلاسی یک خداحافظی خودمانی را تمرین می‌کنند و بعد می‌گویند که به زودی همدیگر را می‌بینند.','story','mina-ava-english-class',11,5,138,3,'validated','{"course":"en-fa","series":5,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_ava,1,'character','Bye for now!','فعلا خداحافظ!',5,NULL,NULL,NULL,NULL,'[{"surface":"Bye","lemma":"bye","translation":"خداحافظ (خودمانی)","partOfSpeech":"interjection"},{"surface":"for","lemma":"for","translation":"برای / تا","partOfSpeech":"preposition"},{"surface":"now","lemma":"now","translation":"حالا / فعلا","partOfSpeech":"adverb","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,2,'learner','Bye for now!','فعلا خداحافظ!',5,NULL,NULL,'bye for now',NULL,'[{"surface":"Bye","lemma":"bye","translation":"خداحافظ (خودمانی)","partOfSpeech":"interjection"},{"surface":"for","lemma":"for","translation":"برای / تا","partOfSpeech":"preposition"},{"surface":"now","lemma":"now","translation":"حالا / فعلا","partOfSpeech":"adverb","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_ava,3,'character','See you soon!','به زودی می‌بینمت!',5,NULL,NULL,NULL,NULL,'[{"surface":"See","lemma":"see","translation":"دیدن","partOfSpeech":"verb"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"soon","lemma":"soon","translation":"به زودی","partOfSpeech":"adverb","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,4,'learner','Goodbye!','خداحافظ!',5,NULL,NULL,'goodbye',NULL,'[{"surface":"Goodbye","lemma":"goodbye","translation":"خداحافظ","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_015,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_016,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_017,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_018,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'new_word',1,NULL,v_w_018,'عبارت کلیدی درس',NULL,5,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',2,v_t_9,NULL,'به آوا گوش کن',NULL,5,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',3,v_t_10,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,5,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',4,v_t_11,NULL,'به آوا گوش کن',NULL,5,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',5,v_t_12,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,5,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'meaning_choice',6,NULL,v_w_017,'معنی درست را انتخاب کن',NULL,5,'{"mode":"word_translation","question":"now یعنی چی؟","choices":["حالا / فعلا","بعدا","دیروز"],"correctIndex":0}','{"course":"en-fa","series":5,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'word_order',7,v_t_10,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,5,'{"source":"turn","tokens":["Bye","for","now"],"answer":"Bye for now!"}','{"course":"en-fa","series":5,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,5,'{"source":"lesson_story","question":"کدام عبارت خداحافظی در این گفتگو خودمانی‌تر است؟","choices":["فعلا خداحافظ","امروز حالت چطوره","اسم من میناست"],"correctIndex":0}','{"course":"en-fa","series":5,"level":"Start","skill":"reading"}');

  -- Lesson 4: A complete goodbye
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ava,v_c_mina,'A complete goodbye','یک خداحافظی کامل','Mina and Ava combine a greeting, a check-in, and a natural see-you-later ending.','مینا و آوا سلام، حال‌پرسی و یک پایان طبیعی با «بعدا می‌بینمت» را کنار هم می‌آورند.','story','mina-ava-english-class',12,5,162,4,'validated','{"course":"en-fa","series":5,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_ava,1,'character','Hello, Mina!','سلام، مینا!',5,NULL,NULL,NULL,NULL,'[{"surface":"Hello","lemma":"hello","translation":"سلام","partOfSpeech":"interjection","suffix":","},{"surface":"Mina","lemma":"Mina","translation":"مینا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,2,'learner','Hi, Ava!','سلام، آوا!',5,NULL,NULL,'hi ava',NULL,'[{"surface":"Hi","lemma":"hi","translation":"سلام (خودمانی)","partOfSpeech":"interjection","suffix":","},{"surface":"Ava","lemma":"Ava","translation":"آوا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_ava,3,'character','How are you today?','امروز حالت چطوره؟',5,NULL,NULL,NULL,NULL,'[{"surface":"How","lemma":"how","translation":"چطور / چگونه","partOfSpeech":"adverb"},{"surface":"are","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"هستی"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"today","lemma":"today","translation":"امروز","partOfSpeech":"adverb","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,4,'learner','I''m fine, thanks.','خوبم، ممنون.',5,NULL,NULL,'i''m fine thanks',NULL,'[{"surface":"I''m","lemma":"I''m","translation":"من هستم","partOfSpeech":"phrase"},{"surface":"fine","lemma":"fine","translation":"خوب","partOfSpeech":"adjective","suffix":","},{"surface":"thanks","lemma":"thanks","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_ava,5,'character','See you later, Mina!','بعدا می‌بینمت، مینا!',5,NULL,NULL,NULL,NULL,'[{"surface":"See","lemma":"see","translation":"دیدن","partOfSpeech":"verb"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"later","lemma":"later","translation":"بعدا","partOfSpeech":"adverb","suffix":","},{"surface":"Mina","lemma":"Mina","translation":"مینا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,6,'learner','See you later, Ava!','بعدا می‌بینمت، آوا!',5,NULL,NULL,'see you later ava',NULL,'[{"surface":"See","lemma":"see","translation":"دیدن","partOfSpeech":"verb"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"later","lemma":"later","translation":"بعدا","partOfSpeech":"adverb","suffix":","},{"surface":"Ava","lemma":"Ava","translation":"آوا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_003,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_006,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_007,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_009,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_010,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_012,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_019,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_020,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_021,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_022,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'new_word',1,NULL,v_w_022,'عبارت کلیدی درس',NULL,5,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',2,v_t_13,NULL,'به آوا گوش کن',NULL,5,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',3,v_t_14,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,5,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',4,v_t_15,NULL,'به آوا گوش کن',NULL,5,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',5,v_t_16,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,5,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',6,v_t_17,NULL,'به آوا گوش کن',NULL,5,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',7,v_t_18,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,5,NULL,'{"course":"en-fa","series":5,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'meaning_choice',8,NULL,v_w_022,'معنی درست را انتخاب کن',NULL,5,'{"mode":"word_translation","question":"See you later, Ava! یعنی چی؟","choices":["بعدا می‌بینمت، آوا!","به زودی می‌بینمت، مینا!","خداحافظ، آوا!"],"correctIndex":0}','{"course":"en-fa","series":5,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'word_order',9,v_t_14,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,5,'{"source":"turn","tokens":["Hi","Ava"],"answer":"Hi, Ava!"}','{"course":"en-fa","series":5,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'reading_comprehension',10,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,5,'{"source":"lesson_story","question":"مینا در آخر گفتگو به آوا چه می‌گوید؟","choices":["بعدا می‌بینمت","اسمت چیه","امروز عالی‌ام"],"correctIndex":0}','{"course":"en-fa","series":5,"level":"Start","skill":"reading"}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 005 Lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two distinct Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND storyline_key='mina-ava-english-class' AND storyline_order BETWEEN 9 AND 12;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 005 storyline continuity.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>18 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 005 Turn count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND (JSON_VALID(t.tokens)=0 OR JSON_LENGTH(t.tokens)=0);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Turn without valid clickable tokens.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id JOIN JSON_TABLE(t.tokens,'$[*]' COLUMNS(lemma VARCHAR(180) PATH '$.lemma',part_of_speech VARCHAR(48) PATH '$.partOfSpeech',translation VARCHAR(255) PATH '$.translation')) jt LEFT JOIN words w ON w.course_id=v_course AND w.lemma=jt.lemma AND w.part_of_speech=jt.part_of_speech AND w.translation=jt.translation LEFT JOIN lesson_words lw ON lw.lesson_id=t.lesson_id AND lw.word_id=w.id WHERE l.chapter_id=v_chapter AND (w.id IS NULL OR lw.word_id IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Clickable token lacks exact Word tuple mapping.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>34 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 005 Activity count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (JSON_EXTRACT(ac.config,'$.question') IS NULL OR JSON_LENGTH(JSON_EXTRACT(ac.config,'$.choices'))<2);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without learner task.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons l WHERE l.chapter_id=v_chapter AND (NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='listen') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='speak') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='word_order') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='reading_comprehension'));
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Lesson missing Speaking, Listening, Writing, or Reading practice.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter AND lw.is_target=1;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 005 explicit-target count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) d;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_en_fa_series_005_v9();
DROP PROCEDURE IF EXISTS import_nova_en_fa_series_005_v9;
-- ===== END START SERIES 005 =====

-- ===== START SERIES 006 =====
-- NOVA v9.0 / EN-FA / START SERIES 006 / This is my friend
-- Independently authored for Persian speakers; requires validated en-fa Series 005.
-- Data import only; canonical schema v9.0 remains unchanged.
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_en_fa_series_006_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_en_fa_series_006_v9()
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

  DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN ROLLBACK; RESIGNAL; END;
  START TRANSACTION;
  SELECT id INTO v_course FROM courses WHERE learning_language='en' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 005 en-fa Course missing.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='ST' AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 005 Start Level missing.'; END IF;
  SELECT id INTO v_previous_module FROM modules WHERE level_id=v_level AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_previous_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 005 prerequisite Module missing.'; END IF;
  SELECT id INTO v_previous_chapter FROM chapters WHERE module_id=v_previous_module AND sort_order=5 ORDER BY id LIMIT 1;
  IF v_previous_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 005 Chapter missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_previous_chapter AND status='validated' AND storyline_key='mina-ava-english-class' AND storyline_order BETWEEN 9 AND 12;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 005 must be validated with its exact storyline orders.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_previous_chapter AND status='validated' AND title='Goodbye and see you soon';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 005 canonical prerequisite mismatch.'; END IF;

  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN
    INSERT INTO modules(level_id,title,title_translation,description,description_translation,emoji,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES(v_level,'People & Places','آدم‌ها و مکان‌ها','People, countries, and cities in short identification exchanges.','آدم‌ها، کشورها و شهرها در گفتگوهای کوتاه برای معرفی و شناسایی.','👥',6,10,2,'active','{"course":"en-fa","seriesRange":[6,10]}');
    SET v_module=LAST_INSERT_ID();
  END IF;
  SELECT COUNT(*) INTO v_count FROM modules WHERE id=v_module AND title='People & Places' AND title_translation='آدم‌ها و مکان‌ها';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 006 target Module identity mismatch.'; END IF;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN
    INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES(v_module,'This is my friend','این دوست منه','Mina shows Liam a photo of Ava and learns to identify a friend with this, who, and she.','مینا عکس آوا را به لیام نشان می‌دهد و با «این»، «کی» و «او» معرفی یک دوست را یاد می‌گیرد.',4,6,6,1,'planned','{"course":"en-fa","level":"Start","series":6,"levelChapterOrder":6}');
    SET v_chapter=LAST_INSERT_ID();
  END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='This is my friend' AND title_translation='این دوست منه';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 006 Chapter identity mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 006 Chapter must be empty before import.'; END IF;
  SELECT id INTO v_c_liam FROM characters WHERE course_id=v_course AND name='Liam' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_liam IS NULL THEN
    INSERT INTO characters(course_id,name,gender,avatar_url,voice_key,profile,metadata)
    VALUES(v_course,'Liam','male',NULL,NULL,'{"role":"barista"}','{"context":"cafes and everyday service","introducedSeries":6,"voiceArchetype":"customer_service"}');
    SET v_c_liam=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_c_mina FROM characters WHERE course_id=v_course AND name='Mina' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_liam IS NULL OR v_c_mina IS NULL OR v_c_liam=v_c_mina THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required distinct English Characters missing.'; END IF;

  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='hello' AND part_of_speech='interjection' AND translation='سلام' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: hello'; END IF;
  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='Mina' AND part_of_speech='proper_noun' AND translation='مینا (نام زنانه)' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: Mina'; END IF;
  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='Liam' AND part_of_speech='proper_noun' AND translation='لیام (نام مردانه)' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Liam','Liam','proper_noun','لیام (نام مردانه)',6,'{"type":"person_name"}','[{"lemma":"Mina","translation":"مینا"},{"lemma":"Ava","translation":"آوا"},{"lemma":"Noah","translation":"نوآ"}]','Hello, Liam!','سلام، لیام!',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":6,"explicitTarget":false}');
    SET v_w_003=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='who' AND part_of_speech='pronoun' AND translation='چه کسی / کی' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'who','who','pronoun','چه کسی / کی',6,'{"type":"question_word_for_people"}','[{"lemma":"what","translation":"چه"},{"lemma":"where","translation":"کجا"},{"lemma":"when","translation":"کی (زمان)"}]','Who is this?','این کیه؟',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":6,"explicitTarget":false}');
    SET v_w_004=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='be' AND part_of_speech='verb' AND translation='بودن / هستم' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: be'; END IF;
  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='this' AND part_of_speech='pronoun' AND translation='این' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'this','this','pronoun','این',6,'{"type":"singular_demonstrative"}','[{"lemma":"that","translation":"آن"},{"lemma":"these","translation":"این‌ها"},{"lemma":"those","translation":"آن‌ها"}]','This is my friend.','این دوست منه.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":6,"explicitTarget":false}');
    SET v_w_006=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='my' AND part_of_speech='determiner' AND translation='من / ـم' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: my'; END IF;
  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='friend' AND part_of_speech='noun' AND translation='دوست' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'friend','friend','noun','دوست',6,'{"plural":"friends"}','[{"lemma":"teacher","translation":"معلم"},{"lemma":"neighbor","translation":"همسایه"},{"lemma":"brother","translation":"برادر"}]','This is my friend.','این دوست منه.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":6,"explicitTarget":false}');
    SET v_w_008=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='This is my friend.' AND part_of_speech='phrase' AND translation='این دوست منه.' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'This is my friend.','This is my friend.','phrase','این دوست منه.',6,'{"pattern":"this + be + possessive + person"}','[{"lemma":"This is Mina.","translation":"این میناست."},{"lemma":"She is my friend.","translation":"او دوست منه."},{"lemma":"Who is this?","translation":"این کیه؟"}]','This is my friend.','این دوست منه.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":6,"explicitTarget":true}');
    SET v_w_009=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='Ava' AND part_of_speech='proper_noun' AND translation='آوا (نام زنانه)' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: Ava'; END IF;
  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='yes' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: yes'; END IF;
  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='This is my friend, Ava.' AND part_of_speech='phrase' AND translation='این دوست من، آواست.' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'This is my friend, Ava.','This is my friend, Ava.','phrase','این دوست من، آواست.',6,'{"pattern":"this + be + relationship + name"}','[{"lemma":"This is my friend, Mina.","translation":"این دوست من، میناست."},{"lemma":"This is Ava''s friend.","translation":"این دوست آواست."},{"lemma":"Who is Ava?","translation":"آوا کیه؟"}]','This is my friend, Ava.','این دوست من، آواست.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":6,"explicitTarget":true}');
    SET v_w_012=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='nice' AND part_of_speech='adjective' AND translation='خوب / خوشایند' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: nice'; END IF;
  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='Who is this?' AND part_of_speech='phrase' AND translation='این کیه؟' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Who is this?','Who is this?','phrase','این کیه؟',6,'{"pattern":"who + be + demonstrative"}','[{"lemma":"What is this?","translation":"این چیه؟"},{"lemma":"Where is this?","translation":"این کجاست؟"},{"lemma":"Is this Ava?","translation":"این آواست؟"}]','Who is this?','این کیه؟',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":6,"explicitTarget":true}');
    SET v_w_014=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='she' AND part_of_speech='pronoun' AND translation='او (زن)' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'she','she','pronoun','او (زن)',6,'{"person":3,"number":"singular","gender":"female"}','[{"lemma":"he","translation":"او (مرد)"},{"lemma":"I","translation":"من"},{"lemma":"you","translation":"تو / شما"}]','She is my friend.','او دوست منه.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":6,"explicitTarget":false}');
    SET v_w_015=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_016 FROM words WHERE course_id=v_course AND lemma='your' AND part_of_speech='determiner' AND translation='تو / ـت' ORDER BY id LIMIT 1;
  IF v_w_016 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: your'; END IF;
  SELECT id INTO v_w_017 FROM words WHERE course_id=v_course AND lemma='She is my friend.' AND part_of_speech='phrase' AND translation='او دوست منه.' ORDER BY id LIMIT 1;
  IF v_w_017 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'She is my friend.','She is my friend.','phrase','او دوست منه.',6,'{"pattern":"subject_pronoun + be + possessive + person"}','[{"lemma":"He is my friend.","translation":"او دوست منه (مرد)."},{"lemma":"She is Ava.","translation":"او آواست."},{"lemma":"This is my friend.","translation":"این دوست منه."}]','She is my friend.','او دوست منه.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":6,"explicitTarget":true}');
    SET v_w_017=LAST_INSERT_ID();
  END IF;

  -- Lesson 1: A friend's photo
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_liam,v_c_mina,'A friend''s photo','عکس یک دوست','Liam sees a photo and Mina identifies the person as her friend.','لیام یک عکس می‌بیند و مینا شخص داخل عکس را به‌عنوان دوستش معرفی می‌کند.','story','mina-liam-at-the-cafe',1,6,138,1,'validated','{"course":"en-fa","series":6,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_liam,1,'character','Hello, Mina!','سلام، مینا!',6,NULL,NULL,NULL,NULL,'[{"surface":"Hello","lemma":"hello","translation":"سلام","partOfSpeech":"interjection","suffix":","},{"surface":"Mina","lemma":"Mina","translation":"مینا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mina,2,'learner','Hello, Liam!','سلام، لیام!',6,NULL,NULL,'hello liam',NULL,'[{"surface":"Hello","lemma":"hello","translation":"سلام","partOfSpeech":"interjection","suffix":","},{"surface":"Liam","lemma":"Liam","translation":"لیام (نام مردانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_liam,3,'character','Who is this?','این کیه؟',6,NULL,NULL,NULL,NULL,'[{"surface":"Who","lemma":"who","translation":"چه کسی / کی","partOfSpeech":"pronoun"},{"surface":"is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"است"},{"surface":"this","lemma":"this","translation":"این","partOfSpeech":"pronoun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mina,4,'learner','This is my friend.','این دوست منه.',6,NULL,NULL,'this is my friend',NULL,'[{"surface":"This","lemma":"this","translation":"این","partOfSpeech":"pronoun"},{"surface":"is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"است"},{"surface":"my","lemma":"my","translation":"من / ـم","partOfSpeech":"determiner"},{"surface":"friend","lemma":"friend","translation":"دوست","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_001,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_003,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_004,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_005,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_006,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_007,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_008,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_009,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'new_word',1,NULL,v_w_009,'عبارت کلیدی درس',NULL,6,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',2,v_t_1,NULL,'به لیام گوش کن',NULL,6,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',3,v_t_2,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,6,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',4,v_t_3,NULL,'به لیام گوش کن',NULL,6,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',5,v_t_4,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,6,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'meaning_choice',6,NULL,v_w_008,'معنی درست را انتخاب کن',NULL,6,'{"mode":"word_translation","question":"friend یعنی چی؟","choices":["دوست","معلم","همسایه"],"correctIndex":0}','{"course":"en-fa","series":6,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'word_order',7,v_t_2,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,6,'{"source":"turn","tokens":["Hello","Liam"],"answer":"Hello, Liam!"}','{"course":"en-fa","series":6,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,6,'{"source":"lesson_story","question":"شخص داخل عکس چه نسبتی با مینا دارد؟","choices":["دوست اوست","معلم اوست","برادر اوست"],"correctIndex":0}','{"course":"en-fa","series":6,"level":"Start","skill":"reading"}');

  -- Lesson 2: My friend Ava
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_liam,v_c_mina,'My friend Ava','دوست من آوا','Mina gives Liam both the relationship and the name of the person in the photo.','مینا هم نسبت و هم اسم شخص داخل عکس را به لیام می‌گوید.','story','mina-liam-at-the-cafe',2,6,138,2,'validated','{"course":"en-fa","series":6,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_liam,1,'character','Who is this?','این کیه؟',6,NULL,NULL,NULL,NULL,'[{"surface":"Who","lemma":"who","translation":"چه کسی / کی","partOfSpeech":"pronoun"},{"surface":"is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"است"},{"surface":"this","lemma":"this","translation":"این","partOfSpeech":"pronoun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mina,2,'learner','This is my friend, Ava.','این دوست من، آواست.',6,NULL,NULL,'this is my friend ava',NULL,'[{"surface":"This","lemma":"this","translation":"این","partOfSpeech":"pronoun"},{"surface":"is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"است"},{"surface":"my","lemma":"my","translation":"من / ـم","partOfSpeech":"determiner"},{"surface":"friend","lemma":"friend","translation":"دوست","partOfSpeech":"noun","suffix":","},{"surface":"Ava","lemma":"Ava","translation":"آوا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_liam,3,'character','Ava?','آوا؟',6,NULL,NULL,NULL,NULL,'[{"surface":"Ava","lemma":"Ava","translation":"آوا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mina,4,'learner','Yes, Ava.','بله، آوا.',6,NULL,NULL,'yes ava',NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"Ava","lemma":"Ava","translation":"آوا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_005,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_006,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_007,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_010,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_011,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_012,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'new_word',1,NULL,v_w_012,'عبارت کلیدی درس',NULL,6,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',2,v_t_5,NULL,'به لیام گوش کن',NULL,6,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',3,v_t_6,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,6,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',4,v_t_7,NULL,'به لیام گوش کن',NULL,6,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',5,v_t_8,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,6,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'meaning_choice',6,NULL,v_w_006,'معنی درست را انتخاب کن',NULL,6,'{"mode":"word_translation","question":"this یعنی چی؟","choices":["این","آن","این‌ها"],"correctIndex":0}','{"course":"en-fa","series":6,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'word_order',7,v_t_6,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,6,'{"source":"turn","tokens":["This","is","my","friend","Ava"],"answer":"This is my friend, Ava."}','{"course":"en-fa","series":6,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,6,'{"source":"lesson_story","question":"اسم دوست مینا چیست؟","choices":["آوا","لیام","نوآ"],"correctIndex":0}','{"course":"en-fa","series":6,"level":"Start","skill":"reading"}');

  -- Lesson 3: Ask who
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_liam,v_c_mina,'Ask who','بپرس کیه','Mina practices asking who a person is, and Liam answers with a name.','مینا پرسیدن درباره هویت یک شخص را تمرین می‌کند و لیام با یک اسم پاسخ می‌دهد.','story','mina-liam-at-the-cafe',3,6,138,3,'validated','{"course":"en-fa","series":6,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_liam,1,'character','This is my friend.','این دوست منه.',6,NULL,NULL,NULL,NULL,'[{"surface":"This","lemma":"this","translation":"این","partOfSpeech":"pronoun"},{"surface":"is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"است"},{"surface":"my","lemma":"my","translation":"من / ـم","partOfSpeech":"determiner"},{"surface":"friend","lemma":"friend","translation":"دوست","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,2,'learner','Who is this?','این کیه؟',6,NULL,NULL,'who is this',NULL,'[{"surface":"Who","lemma":"who","translation":"چه کسی / کی","partOfSpeech":"pronoun"},{"surface":"is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"است"},{"surface":"this","lemma":"this","translation":"این","partOfSpeech":"pronoun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_liam,3,'character','This is Ava.','این آواست.',6,NULL,NULL,NULL,NULL,'[{"surface":"This","lemma":"this","translation":"این","partOfSpeech":"pronoun"},{"surface":"is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"است"},{"surface":"Ava","lemma":"Ava","translation":"آوا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,4,'learner','Nice!','خوبه!',6,NULL,NULL,'nice',NULL,'[{"surface":"Nice","lemma":"nice","translation":"خوب / خوشایند","partOfSpeech":"adjective","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_005,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_006,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_007,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_010,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_014,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'new_word',1,NULL,v_w_014,'عبارت کلیدی درس',NULL,6,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',2,v_t_9,NULL,'به لیام گوش کن',NULL,6,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',3,v_t_10,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,6,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',4,v_t_11,NULL,'به لیام گوش کن',NULL,6,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',5,v_t_12,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,6,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'meaning_choice',6,NULL,v_w_004,'معنی درست را انتخاب کن',NULL,6,'{"mode":"word_translation","question":"who یعنی چی؟","choices":["چه کسی / کی","چه","کجا"],"correctIndex":0}','{"course":"en-fa","series":6,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'word_order',7,v_t_10,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,6,'{"source":"turn","tokens":["Who","is","this"],"answer":"Who is this?"}','{"course":"en-fa","series":6,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,6,'{"source":"lesson_story","question":"مینا برای پرسیدن هویت شخص چه می‌گوید؟","choices":["این کیه؟","این چیه؟","این کجاست؟"],"correctIndex":0}','{"course":"en-fa","series":6,"level":"Start","skill":"reading"}');

  -- Lesson 4: She is my friend
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_liam,v_c_mina,'She is my friend','او دوست منه','Mina replaces this with she after Liam knows who the person is.','پس از اینکه لیام شخص را می‌شناسد، مینا به جای «این» از «او» استفاده می‌کند.','story','mina-liam-at-the-cafe',4,6,162,4,'validated','{"course":"en-fa","series":6,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_liam,1,'character','Hello, Mina!','سلام، مینا!',6,NULL,NULL,NULL,NULL,'[{"surface":"Hello","lemma":"hello","translation":"سلام","partOfSpeech":"interjection","suffix":","},{"surface":"Mina","lemma":"Mina","translation":"مینا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,2,'learner','Hello, Liam!','سلام، لیام!',6,NULL,NULL,'hello liam',NULL,'[{"surface":"Hello","lemma":"hello","translation":"سلام","partOfSpeech":"interjection","suffix":","},{"surface":"Liam","lemma":"Liam","translation":"لیام (نام مردانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_liam,3,'character','Who is this?','این کیه؟',6,NULL,NULL,NULL,NULL,'[{"surface":"Who","lemma":"who","translation":"چه کسی / کی","partOfSpeech":"pronoun"},{"surface":"is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"است"},{"surface":"this","lemma":"this","translation":"این","partOfSpeech":"pronoun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,4,'learner','This is Ava.','این آواست.',6,NULL,NULL,'this is ava',NULL,'[{"surface":"This","lemma":"this","translation":"این","partOfSpeech":"pronoun"},{"surface":"is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"است"},{"surface":"Ava","lemma":"Ava","translation":"آوا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_liam,5,'character','Is she your friend?','او دوست توست؟',6,NULL,NULL,NULL,NULL,'[{"surface":"Is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"است"},{"surface":"she","lemma":"she","translation":"او (زن)","partOfSpeech":"pronoun"},{"surface":"your","lemma":"your","translation":"تو / ـت","partOfSpeech":"determiner"},{"surface":"friend","lemma":"friend","translation":"دوست","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,6,'learner','She is my friend.','او دوست منه.',6,NULL,NULL,'she is my friend',NULL,'[{"surface":"She","lemma":"she","translation":"او (زن)","partOfSpeech":"pronoun"},{"surface":"is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"است"},{"surface":"my","lemma":"my","translation":"من / ـم","partOfSpeech":"determiner"},{"surface":"friend","lemma":"friend","translation":"دوست","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_001,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_005,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_006,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_007,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_008,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_010,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_015,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_016,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_017,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'new_word',1,NULL,v_w_017,'عبارت کلیدی درس',NULL,6,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',2,v_t_13,NULL,'به لیام گوش کن',NULL,6,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',3,v_t_14,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,6,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',4,v_t_15,NULL,'به لیام گوش کن',NULL,6,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',5,v_t_16,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,6,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',6,v_t_17,NULL,'به لیام گوش کن',NULL,6,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',7,v_t_18,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,6,NULL,'{"course":"en-fa","series":6,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'meaning_choice',8,NULL,v_w_015,'معنی درست را انتخاب کن',NULL,6,'{"mode":"word_translation","question":"she یعنی چی؟","choices":["او (زن)","او (مرد)","من"],"correctIndex":0}','{"course":"en-fa","series":6,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'word_order',9,v_t_14,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,6,'{"source":"turn","tokens":["Hello","Liam"],"answer":"Hello, Liam!"}','{"course":"en-fa","series":6,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'reading_comprehension',10,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,6,'{"source":"lesson_story","question":"مینا برای اشاره دوباره به آوا از چه کلمه‌ای استفاده می‌کند؟","choices":["او","من","تو"],"correctIndex":0}','{"course":"en-fa","series":6,"level":"Start","skill":"reading"}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 006 Lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two distinct Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND storyline_key='mina-liam-at-the-cafe' AND storyline_order BETWEEN 1 AND 4;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 006 storyline continuity.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>18 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 006 Turn count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND (JSON_VALID(t.tokens)=0 OR JSON_LENGTH(t.tokens)=0);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Turn without valid clickable tokens.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id JOIN JSON_TABLE(t.tokens,'$[*]' COLUMNS(lemma VARCHAR(180) PATH '$.lemma',part_of_speech VARCHAR(48) PATH '$.partOfSpeech',translation VARCHAR(255) PATH '$.translation')) jt LEFT JOIN words w ON w.course_id=v_course AND w.lemma=jt.lemma AND w.part_of_speech=jt.part_of_speech AND w.translation=jt.translation LEFT JOIN lesson_words lw ON lw.lesson_id=t.lesson_id AND lw.word_id=w.id WHERE l.chapter_id=v_chapter AND (w.id IS NULL OR lw.word_id IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Clickable token lacks exact Word tuple mapping.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>34 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 006 Activity count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (JSON_EXTRACT(ac.config,'$.question') IS NULL OR JSON_LENGTH(JSON_EXTRACT(ac.config,'$.choices'))<2);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without learner task.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons l WHERE l.chapter_id=v_chapter AND (NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='listen') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='speak') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='word_order') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='reading_comprehension'));
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Lesson missing Speaking, Listening, Writing, or Reading practice.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter AND lw.is_target=1;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 006 explicit-target count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) d;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_en_fa_series_006_v9();
DROP PROCEDURE IF EXISTS import_nova_en_fa_series_006_v9;
-- ===== END START SERIES 006 =====

-- ===== START SERIES 007 =====
-- NOVA v9.0 / EN-FA / START SERIES 007 / I'm from Iran
-- Independently authored for Persian speakers; requires validated en-fa Series 006.
-- Data import only; canonical schema v9.0 remains unchanged.
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_en_fa_series_007_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_en_fa_series_007_v9()
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
  DECLARE v_w_016 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_017 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_018 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_019 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_020 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_021 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_022 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_023 BIGINT UNSIGNED DEFAULT NULL;
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
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 006 en-fa Course missing.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='ST' AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 006 Start Level missing.'; END IF;
  SELECT id INTO v_previous_module FROM modules WHERE level_id=v_level AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_previous_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 006 prerequisite Module missing.'; END IF;
  SELECT id INTO v_previous_chapter FROM chapters WHERE module_id=v_previous_module AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_previous_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 006 Chapter missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_previous_chapter AND status='validated' AND storyline_key='mina-liam-at-the-cafe' AND storyline_order BETWEEN 1 AND 4;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 006 must be validated with its exact storyline orders.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_previous_chapter AND status='validated' AND title='This is my friend';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 006 canonical prerequisite mismatch.'; END IF;

  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 007 target Module 02 missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM modules WHERE id=v_module AND title='People & Places' AND title_translation='آدم‌ها و مکان‌ها';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 007 target Module identity mismatch.'; END IF;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN
    INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES(v_module,'I''m from Iran','من اهل ایرانم','Mina tells Liam her country, city, and nationality in a short cafe conversation.','مینا در یک گفتگوی کوتاه در کافه، کشور، شهر و ملیت خود را به لیام می‌گوید.',4,7,7,2,'planned','{"course":"en-fa","level":"Start","series":7,"levelChapterOrder":7}');
    SET v_chapter=LAST_INSERT_ID();
  END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='I''m from Iran' AND title_translation='من اهل ایرانم';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 007 Chapter identity mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 007 Chapter must be empty before import.'; END IF;
  SELECT id INTO v_c_liam FROM characters WHERE course_id=v_course AND name='Liam' AND gender='male' ORDER BY id LIMIT 1;
  SELECT id INTO v_c_mina FROM characters WHERE course_id=v_course AND name='Mina' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_liam IS NULL OR v_c_mina IS NULL OR v_c_liam=v_c_mina THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required distinct English Characters missing.'; END IF;

  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='hello' AND part_of_speech='interjection' AND translation='سلام' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: hello'; END IF;
  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='Mina' AND part_of_speech='proper_noun' AND translation='مینا (نام زنانه)' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: Mina'; END IF;
  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='Liam' AND part_of_speech='proper_noun' AND translation='لیام (نام مردانه)' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: Liam'; END IF;
  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='be' AND part_of_speech='verb' AND translation='بودن / هستم' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: be'; END IF;
  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='you' AND part_of_speech='pronoun' AND translation='تو / شما' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: you'; END IF;
  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='from' AND part_of_speech='preposition' AND translation='از / اهل' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'from','from','preposition','از / اهل',7,'{"type":"origin_preposition"}','[{"lemma":"in","translation":"در"},{"lemma":"to","translation":"به"},{"lemma":"for","translation":"برای"}]','I''m from Iran.','من اهل ایرانم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":7,"explicitTarget":false}');
    SET v_w_006=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='Iran' AND part_of_speech='proper_noun' AND translation='ایران' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Iran','Iran','proper_noun','ایران',7,'{"type":"country_name"}','[{"lemma":"Tehran","translation":"تهران"},{"lemma":"city","translation":"شهر"},{"lemma":"country","translation":"کشور"}]','I''m from Iran.','من اهل ایرانم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":7,"explicitTarget":false}');
    SET v_w_007=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='I''m' AND part_of_speech='phrase' AND translation='من هستم' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: I''m'; END IF;
  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='I''m from Iran.' AND part_of_speech='phrase' AND translation='من اهل ایرانم.' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'I''m from Iran.','I''m from Iran.','phrase','من اهل ایرانم.',7,'{"pattern":"subject + be + from + country"}','[{"lemma":"I''m in Iran.","translation":"من در ایرانم."},{"lemma":"I''m from Tehran.","translation":"من اهل تهرانم."},{"lemma":"Iran is my country.","translation":"ایران کشور منه."}]','I''m from Iran.','من اهل ایرانم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":7,"explicitTarget":true}');
    SET v_w_009=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='Tehran' AND part_of_speech='proper_noun' AND translation='تهران' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Tehran','Tehran','proper_noun','تهران',7,'{"type":"city_name"}','[{"lemma":"Iran","translation":"ایران"},{"lemma":"Mina","translation":"مینا"},{"lemma":"Liam","translation":"لیام"}]','I''m from Tehran.','من اهل تهرانم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":7,"explicitTarget":false}');
    SET v_w_010=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='in' AND part_of_speech='preposition' AND translation='در' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'in','in','preposition','در',7,'{"type":"place_preposition"}','[{"lemma":"from","translation":"از / اهل"},{"lemma":"to","translation":"به"},{"lemma":"for","translation":"برای"}]','Tehran is in Iran.','تهران در ایران است.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":7,"explicitTarget":false}');
    SET v_w_011=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='yes' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: yes'; END IF;
  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='I''m from Tehran.' AND part_of_speech='phrase' AND translation='من اهل تهرانم.' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'I''m from Tehran.','I''m from Tehran.','phrase','من اهل تهرانم.',7,'{"pattern":"subject + be + from + city"}','[{"lemma":"I''m in Tehran.","translation":"من در تهرانم."},{"lemma":"I''m from Iran.","translation":"من اهل ایرانم."},{"lemma":"Tehran is in Iran.","translation":"تهران در ایران است."}]','I''m from Tehran.','من اهل تهرانم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":7,"explicitTarget":true}');
    SET v_w_013=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='your' AND part_of_speech='determiner' AND translation='تو / ـت' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: your'; END IF;
  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='country' AND part_of_speech='noun' AND translation='کشور' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'country','country','noun','کشور',7,'{"plural":"countries"}','[{"lemma":"city","translation":"شهر"},{"lemma":"friend","translation":"دوست"},{"lemma":"name","translation":"اسم"}]','Iran is my country.','ایران کشور منه.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":7,"explicitTarget":false}');
    SET v_w_015=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_016 FROM words WHERE course_id=v_course AND lemma='my' AND part_of_speech='determiner' AND translation='من / ـم' ORDER BY id LIMIT 1;
  IF v_w_016 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: my'; END IF;
  SELECT id INTO v_w_017 FROM words WHERE course_id=v_course AND lemma='and' AND part_of_speech='conjunction' AND translation='و' ORDER BY id LIMIT 1;
  IF v_w_017 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: and'; END IF;
  SELECT id INTO v_w_018 FROM words WHERE course_id=v_course AND lemma='city' AND part_of_speech='noun' AND translation='شهر' ORDER BY id LIMIT 1;
  IF v_w_018 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'city','city','noun','شهر',7,'{"plural":"cities"}','[{"lemma":"country","translation":"کشور"},{"lemma":"friend","translation":"دوست"},{"lemma":"name","translation":"اسم"}]','Tehran is my city.','تهران شهر منه.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":7,"explicitTarget":false}');
    SET v_w_018=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_019 FROM words WHERE course_id=v_course AND lemma='Iran is my country.' AND part_of_speech='phrase' AND translation='ایران کشور منه.' ORDER BY id LIMIT 1;
  IF v_w_019 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Iran is my country.','Iran is my country.','phrase','ایران کشور منه.',7,'{"pattern":"place + be + possessive + place_type"}','[{"lemma":"Tehran is my country.","translation":"تهران کشور منه."},{"lemma":"Iran is my city.","translation":"ایران شهر منه."},{"lemma":"Iran is your country.","translation":"ایران کشور توست."}]','Iran is my country.','ایران کشور منه.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":7,"explicitTarget":true}');
    SET v_w_019=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_020 FROM words WHERE course_id=v_course AND lemma='Iranian' AND part_of_speech='adjective' AND translation='ایرانی' ORDER BY id LIMIT 1;
  IF v_w_020 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Iranian','Iranian','adjective','ایرانی',7,'{"type":"nationality_adjective"}','[{"lemma":"Iran","translation":"ایران"},{"lemma":"Tehran","translation":"تهران"},{"lemma":"country","translation":"کشور"}]','I''m Iranian.','من ایرانی هستم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":7,"explicitTarget":false}');
    SET v_w_020=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_021 FROM words WHERE course_id=v_course AND lemma='nice' AND part_of_speech='adjective' AND translation='خوب / خوشایند' ORDER BY id LIMIT 1;
  IF v_w_021 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: nice'; END IF;
  SELECT id INTO v_w_022 FROM words WHERE course_id=v_course AND lemma='thanks' AND part_of_speech='interjection' AND translation='ممنون' ORDER BY id LIMIT 1;
  IF v_w_022 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: thanks'; END IF;
  SELECT id INTO v_w_023 FROM words WHERE course_id=v_course AND lemma='Yes, I''m Iranian.' AND part_of_speech='phrase' AND translation='بله، من ایرانی هستم.' ORDER BY id LIMIT 1;
  IF v_w_023 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Yes, I''m Iranian.','Yes, I''m Iranian.','phrase','بله، من ایرانی هستم.',7,'{"pattern":"yes + subject + be + nationality"}','[{"lemma":"Yes, I''m from Tehran.","translation":"بله، من اهل تهرانم."},{"lemma":"Yes, I''m in Iran.","translation":"بله، من در ایرانم."},{"lemma":"Iran is my country.","translation":"ایران کشور منه."}]','Yes, I''m Iranian.','بله، من ایرانی هستم.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":7,"explicitTarget":true}');
    SET v_w_023=LAST_INSERT_ID();
  END IF;

  -- Lesson 1: My country
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_liam,v_c_mina,'My country','کشور من','Liam asks about Mina''s country, and Mina says she is from Iran.','لیام درباره کشور مینا می‌پرسد و مینا می‌گوید اهل ایران است.','story','mina-liam-at-the-cafe',5,7,138,1,'validated','{"course":"en-fa","series":7,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_liam,1,'character','Hello, Mina!','سلام، مینا!',7,NULL,NULL,NULL,NULL,'[{"surface":"Hello","lemma":"hello","translation":"سلام","partOfSpeech":"interjection","suffix":","},{"surface":"Mina","lemma":"Mina","translation":"مینا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mina,2,'learner','Hello, Liam!','سلام، لیام!',7,NULL,NULL,'hello liam',NULL,'[{"surface":"Hello","lemma":"hello","translation":"سلام","partOfSpeech":"interjection","suffix":","},{"surface":"Liam","lemma":"Liam","translation":"لیام (نام مردانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_liam,3,'character','Are you from Iran?','تو اهل ایران هستی؟',7,NULL,NULL,NULL,NULL,'[{"surface":"Are","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"هستی"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"from","lemma":"from","translation":"از / اهل","partOfSpeech":"preposition"},{"surface":"Iran","lemma":"Iran","translation":"ایران","partOfSpeech":"proper_noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mina,4,'learner','I''m from Iran.','من اهل ایرانم.',7,NULL,NULL,'i''m from iran',NULL,'[{"surface":"I''m","lemma":"I''m","translation":"من هستم","partOfSpeech":"phrase"},{"surface":"from","lemma":"from","translation":"از / اهل","partOfSpeech":"preposition"},{"surface":"Iran","lemma":"Iran","translation":"ایران","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_001,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_003,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_006,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_007,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_009,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'new_word',1,NULL,v_w_009,'عبارت کلیدی درس',NULL,7,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',2,v_t_1,NULL,'به لیام گوش کن',NULL,7,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',3,v_t_2,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,7,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',4,v_t_3,NULL,'به لیام گوش کن',NULL,7,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',5,v_t_4,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,7,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'meaning_choice',6,NULL,v_w_006,'معنی درست را انتخاب کن',NULL,7,'{"mode":"word_translation","question":"from یعنی چی؟","choices":["از / اهل","در","به"],"correctIndex":0}','{"course":"en-fa","series":7,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'word_order',7,v_t_2,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,7,'{"source":"turn","tokens":["Hello","Liam"],"answer":"Hello, Liam!"}','{"course":"en-fa","series":7,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,7,'{"source":"lesson_story","question":"مینا اهل کدام کشور است؟","choices":["ایران","تهران","کشور"],"correctIndex":0}','{"course":"en-fa","series":7,"level":"Start","skill":"reading"}');

  -- Lesson 2: My city
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_liam,v_c_mina,'My city','شهر من','Mina names Tehran as her city and confirms that it is in Iran.','مینا تهران را به عنوان شهر خود معرفی می‌کند و می‌گوید این شهر در ایران است.','story','mina-liam-at-the-cafe',6,7,138,2,'validated','{"course":"en-fa","series":7,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_liam,1,'character','Are you from Tehran?','تو اهل تهران هستی؟',7,NULL,NULL,NULL,NULL,'[{"surface":"Are","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"هستی"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"from","lemma":"from","translation":"از / اهل","partOfSpeech":"preposition"},{"surface":"Tehran","lemma":"Tehran","translation":"تهران","partOfSpeech":"proper_noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mina,2,'learner','I''m from Tehran.','من اهل تهرانم.',7,NULL,NULL,'i''m from tehran',NULL,'[{"surface":"I''m","lemma":"I''m","translation":"من هستم","partOfSpeech":"phrase"},{"surface":"from","lemma":"from","translation":"از / اهل","partOfSpeech":"preposition"},{"surface":"Tehran","lemma":"Tehran","translation":"تهران","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_liam,3,'character','Is Tehran in Iran?','تهران در ایران است؟',7,NULL,NULL,NULL,NULL,'[{"surface":"Is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"است"},{"surface":"Tehran","lemma":"Tehran","translation":"تهران","partOfSpeech":"proper_noun"},{"surface":"in","lemma":"in","translation":"در","partOfSpeech":"preposition"},{"surface":"Iran","lemma":"Iran","translation":"ایران","partOfSpeech":"proper_noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mina,4,'learner','Yes, Tehran is in Iran.','بله، تهران در ایران است.',7,NULL,NULL,'yes tehran is in iran',NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"Tehran","lemma":"Tehran","translation":"تهران","partOfSpeech":"proper_noun"},{"surface":"is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"است"},{"surface":"in","lemma":"in","translation":"در","partOfSpeech":"preposition"},{"surface":"Iran","lemma":"Iran","translation":"ایران","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_004,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_005,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_006,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_007,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_010,'new',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_011,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_013,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'new_word',1,NULL,v_w_013,'عبارت کلیدی درس',NULL,7,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',2,v_t_5,NULL,'به لیام گوش کن',NULL,7,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',3,v_t_6,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,7,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',4,v_t_7,NULL,'به لیام گوش کن',NULL,7,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',5,v_t_8,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,7,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'meaning_choice',6,NULL,v_w_010,'معنی درست را انتخاب کن',NULL,7,'{"mode":"word_translation","question":"Tehran یعنی چی؟","choices":["تهران","ایران","مینا"],"correctIndex":0}','{"course":"en-fa","series":7,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'word_order',7,v_t_6,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,7,'{"source":"turn","tokens":["I''m","from","Tehran"],"answer":"I''m from Tehran."}','{"course":"en-fa","series":7,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,7,'{"source":"lesson_story","question":"مینا اهل کدام شهر است؟","choices":["تهران","ایران","کافه"],"correctIndex":0}','{"course":"en-fa","series":7,"level":"Start","skill":"reading"}');

  -- Lesson 3: Country and city
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_liam,v_c_mina,'Country and city','کشور و شهر','Mina separates her country from her city with two short statements.','مینا با دو جمله کوتاه، کشورش را از شهرش جدا می‌کند.','story','mina-liam-at-the-cafe',7,7,138,3,'validated','{"course":"en-fa","series":7,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_liam,1,'character','Is Iran your country?','ایران کشور توست؟',7,NULL,NULL,NULL,NULL,'[{"surface":"Is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"است"},{"surface":"Iran","lemma":"Iran","translation":"ایران","partOfSpeech":"proper_noun"},{"surface":"your","lemma":"your","translation":"تو / ـت","partOfSpeech":"determiner"},{"surface":"country","lemma":"country","translation":"کشور","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,2,'learner','Iran is my country.','ایران کشور منه.',7,NULL,NULL,'iran is my country',NULL,'[{"surface":"Iran","lemma":"Iran","translation":"ایران","partOfSpeech":"proper_noun"},{"surface":"is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"است"},{"surface":"my","lemma":"my","translation":"من / ـم","partOfSpeech":"determiner"},{"surface":"country","lemma":"country","translation":"کشور","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_liam,3,'character','And Tehran?','و تهران؟',7,NULL,NULL,NULL,NULL,'[{"surface":"And","lemma":"and","translation":"و","partOfSpeech":"conjunction"},{"surface":"Tehran","lemma":"Tehran","translation":"تهران","partOfSpeech":"proper_noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,4,'learner','Tehran is my city.','تهران شهر منه.',7,NULL,NULL,'tehran is my city',NULL,'[{"surface":"Tehran","lemma":"Tehran","translation":"تهران","partOfSpeech":"proper_noun"},{"surface":"is","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"است"},{"surface":"my","lemma":"my","translation":"من / ـم","partOfSpeech":"determiner"},{"surface":"city","lemma":"city","translation":"شهر","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_004,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_007,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_010,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_014,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_015,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_016,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_017,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_018,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_019,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'new_word',1,NULL,v_w_019,'عبارت کلیدی درس',NULL,7,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',2,v_t_9,NULL,'به لیام گوش کن',NULL,7,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',3,v_t_10,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,7,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',4,v_t_11,NULL,'به لیام گوش کن',NULL,7,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',5,v_t_12,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,7,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'meaning_choice',6,NULL,v_w_015,'معنی درست را انتخاب کن',NULL,7,'{"mode":"word_translation","question":"country یعنی چی؟","choices":["کشور","شهر","دوست"],"correctIndex":0}','{"course":"en-fa","series":7,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'word_order',7,v_t_10,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,7,'{"source":"turn","tokens":["Iran","is","my","country"],"answer":"Iran is my country."}','{"course":"en-fa","series":7,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,7,'{"source":"lesson_story","question":"در این گفتگو، ایران چیست؟","choices":["کشور مینا","شهر مینا","دوست مینا"],"correctIndex":0}','{"course":"en-fa","series":7,"level":"Start","skill":"reading"}');

  -- Lesson 4: I'm Iranian
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_liam,v_c_mina,'I''m Iranian','من ایرانی هستم','Liam asks about Mina''s nationality, and Mina answers and repeats her country.','لیام درباره ملیت مینا می‌پرسد و مینا پاسخ می‌دهد و کشورش را هم تکرار می‌کند.','story','mina-liam-at-the-cafe',8,7,162,4,'validated','{"course":"en-fa","series":7,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_liam,1,'character','Are you Iranian?','تو ایرانی هستی؟',7,NULL,NULL,NULL,NULL,'[{"surface":"Are","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"هستی"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"Iranian","lemma":"Iranian","translation":"ایرانی","partOfSpeech":"adjective","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,2,'learner','Yes, I''m Iranian.','بله، من ایرانی هستم.',7,NULL,NULL,'yes i''m iranian',NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"I''m","lemma":"I''m","translation":"من هستم","partOfSpeech":"phrase"},{"surface":"Iranian","lemma":"Iranian","translation":"ایرانی","partOfSpeech":"adjective","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_liam,3,'character','Are you from Iran?','تو اهل ایران هستی؟',7,NULL,NULL,NULL,NULL,'[{"surface":"Are","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","meaning":"هستی"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"from","lemma":"from","translation":"از / اهل","partOfSpeech":"preposition"},{"surface":"Iran","lemma":"Iran","translation":"ایران","partOfSpeech":"proper_noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,4,'learner','Yes, I''m from Iran.','بله، من اهل ایرانم.',7,NULL,NULL,'yes i''m from iran',NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"I''m","lemma":"I''m","translation":"من هستم","partOfSpeech":"phrase"},{"surface":"from","lemma":"from","translation":"از / اهل","partOfSpeech":"preposition"},{"surface":"Iran","lemma":"Iran","translation":"ایران","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_liam,5,'character','Nice!','خوبه!',7,NULL,NULL,NULL,NULL,'[{"surface":"Nice","lemma":"nice","translation":"خوب / خوشایند","partOfSpeech":"adjective","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,6,'learner','Thanks!','ممنون!',7,NULL,NULL,'thanks',NULL,'[{"surface":"Thanks","lemma":"thanks","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_004,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_005,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_006,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_007,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_008,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_012,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_020,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_021,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_022,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_023,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'new_word',1,NULL,v_w_023,'عبارت کلیدی درس',NULL,7,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',2,v_t_13,NULL,'به لیام گوش کن',NULL,7,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',3,v_t_14,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,7,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',4,v_t_15,NULL,'به لیام گوش کن',NULL,7,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',5,v_t_16,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,7,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',6,v_t_17,NULL,'به لیام گوش کن',NULL,7,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',7,v_t_18,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,7,NULL,'{"course":"en-fa","series":7,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'meaning_choice',8,NULL,v_w_020,'معنی درست را انتخاب کن',NULL,7,'{"mode":"word_translation","question":"Iranian یعنی چی؟","choices":["ایرانی","ایران","تهران"],"correctIndex":0}','{"course":"en-fa","series":7,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'word_order',9,v_t_14,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,7,'{"source":"turn","tokens":["Yes","I''m","Iranian"],"answer":"Yes, I''m Iranian."}','{"course":"en-fa","series":7,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'reading_comprehension',10,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,7,'{"source":"lesson_story","question":"ملیت مینا چیست؟","choices":["ایرانی","تهرانی","کشور"],"correctIndex":0}','{"course":"en-fa","series":7,"level":"Start","skill":"reading"}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 007 Lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two distinct Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND storyline_key='mina-liam-at-the-cafe' AND storyline_order BETWEEN 5 AND 8;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 007 storyline continuity.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>18 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 007 Turn count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND (JSON_VALID(t.tokens)=0 OR JSON_LENGTH(t.tokens)=0);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Turn without valid clickable tokens.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id JOIN JSON_TABLE(t.tokens,'$[*]' COLUMNS(lemma VARCHAR(180) PATH '$.lemma',part_of_speech VARCHAR(48) PATH '$.partOfSpeech',translation VARCHAR(255) PATH '$.translation')) jt LEFT JOIN words w ON w.course_id=v_course AND w.lemma=jt.lemma AND w.part_of_speech=jt.part_of_speech AND w.translation=jt.translation LEFT JOIN lesson_words lw ON lw.lesson_id=t.lesson_id AND lw.word_id=w.id WHERE l.chapter_id=v_chapter AND (w.id IS NULL OR lw.word_id IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Clickable token lacks exact Word tuple mapping.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>34 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 007 Activity count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (JSON_EXTRACT(ac.config,'$.question') IS NULL OR JSON_LENGTH(JSON_EXTRACT(ac.config,'$.choices'))<2);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without learner task.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons l WHERE l.chapter_id=v_chapter AND (NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='listen') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='speak') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='word_order') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='reading_comprehension'));
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Lesson missing Speaking, Listening, Writing, or Reading practice.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter AND lw.is_target=1;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 007 explicit-target count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) d;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_en_fa_series_007_v9();
DROP PROCEDURE IF EXISTS import_nova_en_fa_series_007_v9;
-- ===== END START SERIES 007 =====

-- ===== START SERIES 008 =====
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
-- ===== END START SERIES 008 =====

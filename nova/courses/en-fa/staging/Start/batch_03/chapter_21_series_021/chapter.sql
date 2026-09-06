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
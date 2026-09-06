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

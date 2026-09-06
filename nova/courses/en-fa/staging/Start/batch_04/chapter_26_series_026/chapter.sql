-- NOVA v9.0 / EN-FA / START SERIES 026 / I'd like some water
-- Independently authored for Persian speakers; requires validated en-fa Series 025.
-- Data import only; canonical schema v9.0 remains unchanged.
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_en_fa_series_026_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_en_fa_series_026_v9()
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
  DECLARE v_w_024 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_025 BIGINT UNSIGNED DEFAULT NULL;
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
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 025 en-fa Course missing.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='ST' AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 025 Start Level missing.'; END IF;
  SELECT id INTO v_previous_module FROM modules WHERE level_id=v_level AND sort_order=5 ORDER BY id LIMIT 1;
  IF v_previous_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 025 prerequisite Module missing.'; END IF;
  SELECT id INTO v_previous_chapter FROM chapters WHERE module_id=v_previous_module AND sort_order=5 ORDER BY id LIMIT 1;
  IF v_previous_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 025 Chapter missing.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_previous_chapter AND status='validated' AND storyline_key='mina-noah-evening-at-home' AND storyline_order BETWEEN 1 AND 4;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 025 must be validated with its exact storyline orders.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_previous_chapter AND status='validated' AND title='I don''t watch TV';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 025 canonical prerequisite mismatch.'; END IF;

  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=6 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN
    INSERT INTO modules(level_id,title,title_translation,description,description_translation,emoji,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES(v_level,'Food & Shopping','غذا و خرید','Simple food, drink, prices, and polite shopping requests.','غذا، نوشیدنی، قیمت و درخواست‌های مودبانه ساده.','🛒',26,30,6,'active','{"course":"en-fa","seriesRange":[26,30]}');
    SET v_module=LAST_INSERT_ID();
  END IF;
  SELECT COUNT(*) INTO v_count FROM modules WHERE id=v_module AND title='Food & Shopping' AND title_translation='غذا و خرید';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 026 target Module identity mismatch.'; END IF;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN
    INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES(v_module,'I''d like some water','کمی آب می‌خوام','Mina practices simple polite water requests with Liam at a cafe.','مینا در کافه درخواست‌های ساده و مودبانه برای آب را با لیام تمرین می‌کند.',4,26,26,1,'planned','{"course":"en-fa","level":"Start","series":26,"levelChapterOrder":26}');
    SET v_chapter=LAST_INSERT_ID();
  END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_chapter AND title='I''d like some water' AND title_translation='کمی آب می‌خوام';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 026 Chapter identity mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 026 Chapter must be empty before import.'; END IF;
  SELECT id INTO v_c_liam FROM characters WHERE course_id=v_course AND name='Liam' AND gender='male' ORDER BY id LIMIT 1;
  SELECT id INTO v_c_mina FROM characters WHERE course_id=v_course AND name='Mina' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_liam IS NULL OR v_c_mina IS NULL OR v_c_liam=v_c_mina THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required distinct English Characters missing.'; END IF;

  SELECT id INTO v_w_001 FROM words WHERE course_id=v_course AND lemma='hello' AND part_of_speech='interjection' AND translation='سلام' ORDER BY id LIMIT 1;
  IF v_w_001 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: hello'; END IF;
  SELECT id INTO v_w_002 FROM words WHERE course_id=v_course AND lemma='Mina' AND part_of_speech='proper_noun' AND translation='مینا (نام زنانه)' ORDER BY id LIMIT 1;
  IF v_w_002 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: Mina'; END IF;
  SELECT id INTO v_w_003 FROM words WHERE course_id=v_course AND lemma='I''d' AND part_of_speech='contraction' AND translation='من می‌خواهم' ORDER BY id LIMIT 1;
  IF v_w_003 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'I''d','I''d','contraction','من می‌خواهم',26,'{"full_form":"I would","use":"polite request with like"}','[{"lemma":"I''m","translation":"من هستم"},{"lemma":"I","translation":"من"},{"lemma":"don''t","translation":"نمی‌کنم"}]','I''d like some water.','کمی آب می‌خوام.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":26,"explicitTarget":false,"wordAudioEligible":true}');
    SET v_w_003=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_004 FROM words WHERE course_id=v_course AND lemma='like' AND part_of_speech='verb' AND translation='دوست داشتن' ORDER BY id LIMIT 1;
  IF v_w_004 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: like'; END IF;
  SELECT id INTO v_w_005 FROM words WHERE course_id=v_course AND lemma='some' AND part_of_speech='determiner' AND translation='کمی / مقداری' ORDER BY id LIMIT 1;
  IF v_w_005 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'some','some','determiner','کمی / مقداری',26,'{"use":"an unspecified amount with uncountable nouns"}','[{"lemma":"a","translation":"یک"},{"lemma":"one","translation":"یک عدد"},{"lemma":"every","translation":"هر"}]','some water','کمی آب',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":26,"explicitTarget":false,"wordAudioEligible":true}');
    SET v_w_005=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_006 FROM words WHERE course_id=v_course AND lemma='water' AND part_of_speech='noun' AND translation='آب' ORDER BY id LIMIT 1;
  IF v_w_006 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'water','water','noun','آب',26,'{"countability":"uncountable"}','[{"lemma":"coffee","translation":"قهوه"},{"lemma":"tea","translation":"چای"},{"lemma":"milk","translation":"شیر"}]','I''d like some water.','کمی آب می‌خوام.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":26,"explicitTarget":false,"wordAudioEligible":true}');
    SET v_w_006=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_007 FROM words WHERE course_id=v_course AND lemma='here' AND part_of_speech='adverb' AND translation='اینجا' ORDER BY id LIMIT 1;
  IF v_w_007 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: here'; END IF;
  SELECT id INTO v_w_008 FROM words WHERE course_id=v_course AND lemma='you' AND part_of_speech='pronoun' AND translation='تو / شما' ORDER BY id LIMIT 1;
  IF v_w_008 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: you'; END IF;
  SELECT id INTO v_w_009 FROM words WHERE course_id=v_course AND lemma='be' AND part_of_speech='verb' AND translation='بودن / هستم' ORDER BY id LIMIT 1;
  IF v_w_009 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: be'; END IF;
  SELECT id INTO v_w_010 FROM words WHERE course_id=v_course AND lemma='thanks' AND part_of_speech='interjection' AND translation='ممنون' ORDER BY id LIMIT 1;
  IF v_w_010 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: thanks'; END IF;
  SELECT id INTO v_w_011 FROM words WHERE course_id=v_course AND lemma='I''d like some water.' AND part_of_speech='phrase' AND translation='کمی آب می‌خوام.' ORDER BY id LIMIT 1;
  IF v_w_011 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'I''d like some water.','I''d like some water.','phrase','کمی آب می‌خوام.',26,'{"pattern":"I''d like + some + uncountable noun"}','[{"lemma":"I''d like some coffee.","translation":"کمی قهوه می‌خوام."},{"lemma":"I like some water.","translation":"من کمی آب دوست دارم."},{"lemma":"I''d some water like.","translation":"کمی آب می‌خوام."}]','I''d like some water.','کمی آب می‌خوام.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":26,"explicitTarget":true,"wordAudioEligible":false}');
    SET v_w_011=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_012 FROM words WHERE course_id=v_course AND lemma='can' AND part_of_speech='modal' AND translation='توانستن / می‌توانی' ORDER BY id LIMIT 1;
  IF v_w_012 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: can'; END IF;
  SELECT id INTO v_w_013 FROM words WHERE course_id=v_course AND lemma='I' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_013 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: I'; END IF;
  SELECT id INTO v_w_014 FROM words WHERE course_id=v_course AND lemma='have' AND part_of_speech='verb' AND translation='داشتن / دارم' ORDER BY id LIMIT 1;
  IF v_w_014 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: have'; END IF;
  SELECT id INTO v_w_015 FROM words WHERE course_id=v_course AND lemma='Can I have some water?' AND part_of_speech='phrase' AND translation='می‌توانم کمی آب داشته باشم؟' ORDER BY id LIMIT 1;
  IF v_w_015 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Can I have some water?','Can I have some water?','phrase','می‌توانم کمی آب داشته باشم؟',26,'{"pattern":"Can + I + have + some + noun"}','[{"lemma":"Can I have some coffee?","translation":"می‌توانم کمی قهوه داشته باشم؟"},{"lemma":"I can have some water.","translation":"من می‌توانم کمی آب داشته باشم."},{"lemma":"Can have I some water?","translation":"می‌توانم کمی آب داشته باشم؟"}]','Can I have some water?','می‌توانم کمی آب داشته باشم؟',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":26,"explicitTarget":true,"wordAudioEligible":false}');
    SET v_w_015=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_016 FROM words WHERE course_id=v_course AND lemma='do' AND part_of_speech='auxiliary' AND translation='فعل کمکی برای پرسش' ORDER BY id LIMIT 1;
  IF v_w_016 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: do'; END IF;
  SELECT id INTO v_w_017 FROM words WHERE course_id=v_course AND lemma='cold' AND part_of_speech='adjective' AND translation='سرد' ORDER BY id LIMIT 1;
  IF v_w_017 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'cold','cold','adjective','سرد',26,'{"position":"before a noun or after be"}','[{"lemma":"hot","translation":"داغ / گرم"},{"lemma":"good","translation":"خوب"},{"lemma":"small","translation":"کوچک"}]','I''d like cold water.','آب سرد می‌خوام.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":26,"explicitTarget":false,"wordAudioEligible":true}');
    SET v_w_017=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_018 FROM words WHERE course_id=v_course AND lemma='yes' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_018 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: yes'; END IF;
  SELECT id INTO v_w_019 FROM words WHERE course_id=v_course AND lemma='please' AND part_of_speech='interjection' AND translation='لطفا' ORDER BY id LIMIT 1;
  IF v_w_019 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: please'; END IF;
  SELECT id INTO v_w_020 FROM words WHERE course_id=v_course AND lemma='I''d like cold water.' AND part_of_speech='phrase' AND translation='آب سرد می‌خوام.' ORDER BY id LIMIT 1;
  IF v_w_020 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'I''d like cold water.','I''d like cold water.','phrase','آب سرد می‌خوام.',26,'{"pattern":"I''d like + adjective + noun"}','[{"lemma":"I''d like hot water.","translation":"آب گرم می‌خوام."},{"lemma":"I like cold water.","translation":"من آب سرد دوست دارم."},{"lemma":"I''d cold water like.","translation":"آب سرد می‌خوام."}]','I''d like cold water.','آب سرد می‌خوام.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":26,"explicitTarget":true,"wordAudioEligible":false}');
    SET v_w_020=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_021 FROM words WHERE course_id=v_course AND lemma='a' AND part_of_speech='article' AND translation='یک / مقداری' ORDER BY id LIMIT 1;
  IF v_w_021 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: a'; END IF;
  SELECT id INTO v_w_022 FROM words WHERE course_id=v_course AND lemma='glass' AND part_of_speech='noun' AND translation='لیوان' ORDER BY id LIMIT 1;
  IF v_w_022 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'glass','glass','noun','لیوان',26,'{"plural":"glasses","measure_phrase":"a glass of water"}','[{"lemma":"cup","translation":"فنجان"},{"lemma":"bottle","translation":"بطری"},{"lemma":"table","translation":"میز"}]','A glass of water, please.','یک لیوان آب لطفا.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":26,"explicitTarget":false,"wordAudioEligible":true}');
    SET v_w_022=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_023 FROM words WHERE course_id=v_course AND lemma='of' AND part_of_speech='preposition' AND translation='از / ـِ' ORDER BY id LIMIT 1;
  IF v_w_023 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'of','of','preposition','از / ـِ',26,'{"use":"links a measure word to its contents"}','[{"lemma":"in","translation":"در"},{"lemma":"on","translation":"روی"},{"lemma":"to","translation":"به"}]','a glass of water','یک لیوان آب',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":26,"explicitTarget":false,"wordAudioEligible":true}');
    SET v_w_023=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_024 FROM words WHERE course_id=v_course AND lemma='one' AND part_of_speech='numeral' AND translation='یک' ORDER BY id LIMIT 1;
  IF v_w_024 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required prior Word tuple missing: one'; END IF;
  SELECT id INTO v_w_025 FROM words WHERE course_id=v_course AND lemma='A glass of water, please.' AND part_of_speech='phrase' AND translation='یک لیوان آب لطفا.' ORDER BY id LIMIT 1;
  IF v_w_025 IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'A glass of water, please.','A glass of water, please.','phrase','یک لیوان آب لطفا.',26,'{"pattern":"a + measure + of + noun + please"}','[{"lemma":"A glass of cold water, please.","translation":"یک لیوان آب سرد لطفا."},{"lemma":"Some water, please.","translation":"کمی آب لطفا."},{"lemma":"A water of glass, please.","translation":"یک لیوان آب لطفا."}]','A glass of water, please.','یک لیوان آب لطفا.',NULL,NULL,'{"course":"en-fa","level":"Start","databaseLevelCode":"ST","introducedInSeries":26,"explicitTarget":true,"wordAudioEligible":false}');
    SET v_w_025=LAST_INSERT_ID();
  END IF;

  -- Lesson 1: Water at the cafe
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_liam,v_c_mina,'Water at the cafe','آب در کافه','Mina greets Liam and makes a first polite request for water.','مینا به لیام سلام می‌کند و نخستین درخواست مودبانه خود برای آب را می‌گوید.','story','mina-liam-cafe-order',1,26,132,1,'validated','{"course":"en-fa","series":26,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_liam,1,'character','Hello, Mina.','سلام، مینا.',26,NULL,NULL,NULL,NULL,'[{"surface":"Hello","lemma":"hello","translation":"سلام","partOfSpeech":"interjection","suffix":","},{"surface":"Mina","lemma":"Mina","translation":"مینا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":26,"level":"Start"}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mina,2,'learner','I''d like some water.','کمی آب می‌خوام.',26,NULL,NULL,'id like some water',NULL,'[{"surface":"I''d","lemma":"I''d","translation":"من می‌خواهم","partOfSpeech":"contraction"},{"surface":"like","lemma":"like","translation":"دوست داشتن","partOfSpeech":"verb"},{"surface":"some","lemma":"some","translation":"کمی / مقداری","partOfSpeech":"determiner"},{"surface":"water","lemma":"water","translation":"آب","partOfSpeech":"noun","suffix":"."}]','درخواست مودبانه با I''d like','برای درخواست مودبانه می‌توانیم از I''d like و سپس اسم استفاده کنیم.','{"target":"I''d like some water.","level":"Start"}','{"course":"en-fa","series":26,"level":"Start"}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_liam,3,'character','Here you are.','بفرمایید.',26,NULL,NULL,NULL,NULL,'[{"surface":"Here","lemma":"here","translation":"اینجا","partOfSpeech":"adverb"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"are","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":26,"level":"Start"}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mina,4,'learner','Thanks.','ممنون.',26,NULL,NULL,'thanks',NULL,'[{"surface":"Thanks","lemma":"thanks","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":26,"level":"Start"}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_002,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_003,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_004,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_005,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_006,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_007,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_010,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_011,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'new_word',1,NULL,v_w_011,'عبارت کلیدی درس',NULL,26,NULL,'{"course":"en-fa","series":26,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',2,v_t_1,NULL,'به لیام گوش کن',NULL,26,NULL,'{"course":"en-fa","series":26,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',3,v_t_2,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,26,NULL,'{"course":"en-fa","series":26,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',4,v_t_3,NULL,'به لیام گوش کن',NULL,26,NULL,'{"course":"en-fa","series":26,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',5,v_t_4,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,26,NULL,'{"course":"en-fa","series":26,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'meaning_choice',6,NULL,v_w_006,'معنی درست را انتخاب کن',NULL,26,'{"mode":"word_translation","question":"water یعنی چی؟","choices":["آب","قهوه","چای"],"correctIndex":0}','{"course":"en-fa","series":26,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'word_order',7,v_t_2,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,26,'{"source":"turn","tokens":["I''d","like","some","water"],"answer":"I''d like some water."}','{"course":"en-fa","series":26,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,26,'{"source":"lesson_story","question":"مینا چه چیزی می‌خواهد؟","choices":["آب","قهوه","چای"],"correctIndex":0}','{"course":"en-fa","series":26,"level":"Start","skill":"reading"}');

  -- Lesson 2: Can I have water?
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_liam,v_c_mina,'Can I have water?','می‌توانم آب داشته باشم؟','Mina practices a second common way to ask Liam for water.','مینا روش رایج دیگری را برای درخواست آب از لیام تمرین می‌کند.','story','mina-liam-cafe-order',2,26,136,2,'validated','{"course":"en-fa","series":26,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_liam,1,'character','Hello.','سلام.',26,NULL,NULL,NULL,NULL,'[{"surface":"Hello","lemma":"hello","translation":"سلام","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":26,"level":"Start"}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mina,2,'learner','Hello.','سلام.',26,NULL,NULL,'hello',NULL,'[{"surface":"Hello","lemma":"hello","translation":"سلام","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":26,"level":"Start"}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_liam,3,'character','Water?','آب؟',26,NULL,NULL,NULL,NULL,'[{"surface":"Water","lemma":"water","translation":"آب","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":26,"level":"Start"}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mina,4,'learner','Can I have some water?','می‌توانم کمی آب داشته باشم؟',26,NULL,NULL,'can i have some water',NULL,'[{"surface":"Can","lemma":"can","translation":"توانستن / می‌توانی","partOfSpeech":"modal"},{"surface":"I","lemma":"I","translation":"من","partOfSpeech":"pronoun"},{"surface":"have","lemma":"have","translation":"داشتن / دارم","partOfSpeech":"verb"},{"surface":"some","lemma":"some","translation":"کمی / مقداری","partOfSpeech":"determiner"},{"surface":"water","lemma":"water","translation":"آب","partOfSpeech":"noun","suffix":"?"}]','درخواست مودبانه با I''d like','برای درخواست مودبانه می‌توانیم از I''d like و سپس اسم استفاده کنیم.','{"target":"Can I have some water?","level":"Start"}','{"course":"en-fa","series":26,"level":"Start"}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_liam,5,'character','Here you are.','بفرمایید.',26,NULL,NULL,NULL,NULL,'[{"surface":"Here","lemma":"here","translation":"اینجا","partOfSpeech":"adverb"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"are","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":26,"level":"Start"}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_001,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_006,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_012,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_013,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_014,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_005,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_007,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_015,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'new_word',1,NULL,v_w_015,'عبارت کلیدی درس',NULL,26,NULL,'{"course":"en-fa","series":26,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',2,v_t_5,NULL,'به لیام گوش کن',NULL,26,NULL,'{"course":"en-fa","series":26,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',3,v_t_6,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,26,NULL,'{"course":"en-fa","series":26,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',4,v_t_7,NULL,'به لیام گوش کن',NULL,26,NULL,'{"course":"en-fa","series":26,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',5,v_t_8,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,26,NULL,'{"course":"en-fa","series":26,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',6,v_t_9,NULL,'به لیام گوش کن',NULL,26,NULL,'{"course":"en-fa","series":26,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'meaning_choice',7,NULL,v_w_005,'معنی درست را انتخاب کن',NULL,26,'{"mode":"word_translation","question":"some یعنی چی؟","choices":["کمی / مقداری","هر","یک عدد"],"correctIndex":0}','{"course":"en-fa","series":26,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'word_order',8,v_t_8,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,26,'{"source":"turn","tokens":["Can","I","have","some","water"],"answer":"Can I have some water?"}','{"course":"en-fa","series":26,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'reading_comprehension',9,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,26,'{"source":"lesson_story","question":"مینا چه درخواستی دارد؟","choices":["کمی آب","یک کتاب","تلویزیون"],"correctIndex":0}','{"course":"en-fa","series":26,"level":"Start","skill":"reading"}');

  -- Lesson 3: Cold water
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_liam,v_c_mina,'Cold water','آب سرد','Liam checks the drink, and Mina asks specifically for cold water.','لیام نوشیدنی را بررسی می‌کند و مینا به طور مشخص آب سرد می‌خواهد.','story','mina-liam-cafe-order',3,26,134,3,'validated','{"course":"en-fa","series":26,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_liam,1,'character','Do you like cold water?','آب سرد دوست داری؟',26,NULL,NULL,NULL,NULL,'[{"surface":"Do","lemma":"do","translation":"فعل کمکی برای پرسش","partOfSpeech":"auxiliary"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"like","lemma":"like","translation":"دوست داشتن","partOfSpeech":"verb"},{"surface":"cold","lemma":"cold","translation":"سرد","partOfSpeech":"adjective"},{"surface":"water","lemma":"water","translation":"آب","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"course":"en-fa","series":26,"level":"Start"}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,2,'learner','I''d like cold water.','آب سرد می‌خوام.',26,NULL,NULL,'id like cold water',NULL,'[{"surface":"I''d","lemma":"I''d","translation":"من می‌خواهم","partOfSpeech":"contraction"},{"surface":"like","lemma":"like","translation":"دوست داشتن","partOfSpeech":"verb"},{"surface":"cold","lemma":"cold","translation":"سرد","partOfSpeech":"adjective"},{"surface":"water","lemma":"water","translation":"آب","partOfSpeech":"noun","suffix":"."}]','درخواست مودبانه با I''d like','برای درخواست مودبانه می‌توانیم از I''d like و سپس اسم استفاده کنیم.','{"target":"I''d like cold water.","level":"Start"}','{"course":"en-fa","series":26,"level":"Start"}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_liam,3,'character','Cold water.','آب سرد.',26,NULL,NULL,NULL,NULL,'[{"surface":"Cold","lemma":"cold","translation":"سرد","partOfSpeech":"adjective"},{"surface":"water","lemma":"water","translation":"آب","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":26,"level":"Start"}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mina,4,'learner','Yes, please.','بله، لطفا.',26,NULL,NULL,'yes please',NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"please","lemma":"please","translation":"لطفا","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":26,"level":"Start"}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_016,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_004,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_017,'new',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_006,'new',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_003,'new',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_018,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_019,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_020,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'new_word',1,NULL,v_w_020,'عبارت کلیدی درس',NULL,26,NULL,'{"course":"en-fa","series":26,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',2,v_t_10,NULL,'به لیام گوش کن',NULL,26,NULL,'{"course":"en-fa","series":26,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',3,v_t_11,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,26,NULL,'{"course":"en-fa","series":26,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',4,v_t_12,NULL,'به لیام گوش کن',NULL,26,NULL,'{"course":"en-fa","series":26,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',5,v_t_13,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,26,NULL,'{"course":"en-fa","series":26,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'meaning_choice',6,NULL,v_w_017,'معنی درست را انتخاب کن',NULL,26,'{"mode":"word_translation","question":"cold یعنی چی؟","choices":["سرد","داغ / گرم","خوب"],"correctIndex":0}','{"course":"en-fa","series":26,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'word_order',7,v_t_11,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,26,'{"source":"turn","tokens":["I''d","like","cold","water"],"answer":"I''d like cold water."}','{"course":"en-fa","series":26,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,26,'{"source":"lesson_story","question":"مینا آب را چگونه می‌خواهد؟","choices":["سرد","داغ","بدون آب"],"correctIndex":0}','{"course":"en-fa","series":26,"level":"Start","skill":"reading"}');

  -- Lesson 4: A glass of water
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_liam,v_c_mina,'A glass of water','یک لیوان آب','Mina completes the order by naming the container and adding please.','مینا سفارش را با نام بردن از ظرف و افزودن لطفا کامل می‌کند.','story','mina-liam-cafe-order',4,26,138,4,'validated','{"course":"en-fa","series":26,"level":"Start","absoluteBeginner":true,"storyArc":"beginning-development-ending"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_liam,1,'character','Hello.','سلام.',26,NULL,NULL,NULL,NULL,'[{"surface":"Hello","lemma":"hello","translation":"سلام","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":26,"level":"Start"}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,2,'learner','A glass of water, please.','یک لیوان آب لطفا.',26,NULL,NULL,'a glass of water please',NULL,'[{"surface":"A","lemma":"a","translation":"یک / مقداری","partOfSpeech":"article"},{"surface":"glass","lemma":"glass","translation":"لیوان","partOfSpeech":"noun"},{"surface":"of","lemma":"of","translation":"از / ـِ","partOfSpeech":"preposition"},{"surface":"water","lemma":"water","translation":"آب","partOfSpeech":"noun","suffix":","},{"surface":"please","lemma":"please","translation":"لطفا","partOfSpeech":"interjection","suffix":"."}]','درخواست مودبانه با I''d like','برای درخواست مودبانه می‌توانیم از I''d like و سپس اسم استفاده کنیم.','{"target":"A glass of water, please.","level":"Start"}','{"course":"en-fa","series":26,"level":"Start"}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_liam,3,'character','One glass of water.','یک لیوان آب.',26,NULL,NULL,NULL,NULL,'[{"surface":"One","lemma":"one","translation":"یک","partOfSpeech":"numeral"},{"surface":"glass","lemma":"glass","translation":"لیوان","partOfSpeech":"noun"},{"surface":"of","lemma":"of","translation":"از / ـِ","partOfSpeech":"preposition"},{"surface":"water","lemma":"water","translation":"آب","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":26,"level":"Start"}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mina,4,'learner','Yes, thanks.','بله، ممنون.',26,NULL,NULL,'yes thanks',NULL,'[{"surface":"Yes","lemma":"yes","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"thanks","lemma":"thanks","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":26,"level":"Start"}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_liam,5,'character','Here you are.','بفرمایید.',26,NULL,NULL,NULL,NULL,'[{"surface":"Here","lemma":"here","translation":"اینجا","partOfSpeech":"adverb"},{"surface":"you","lemma":"you","translation":"تو / شما","partOfSpeech":"pronoun"},{"surface":"are","lemma":"be","translation":"بودن / هستم","partOfSpeech":"verb","suffix":"."}]',NULL,NULL,NULL,'{"course":"en-fa","series":26,"level":"Start"}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_001,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_021,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_022,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_023,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_006,'new',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_019,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_024,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_018,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_010,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_007,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_008,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_009,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_025,'new',1,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'new_word',1,NULL,v_w_025,'عبارت کلیدی درس',NULL,26,NULL,'{"course":"en-fa","series":26,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',2,v_t_14,NULL,'به لیام گوش کن',NULL,26,NULL,'{"course":"en-fa","series":26,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',3,v_t_15,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,26,NULL,'{"course":"en-fa","series":26,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',4,v_t_16,NULL,'به لیام گوش کن',NULL,26,NULL,'{"course":"en-fa","series":26,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',5,v_t_17,NULL,'پاسخ مینا را با صدای بلند بگو',NULL,26,NULL,'{"course":"en-fa","series":26,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',6,v_t_18,NULL,'به لیام گوش کن',NULL,26,NULL,'{"course":"en-fa","series":26,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'meaning_choice',7,NULL,v_w_022,'معنی درست را انتخاب کن',NULL,26,'{"mode":"word_translation","question":"glass یعنی چی؟","choices":["لیوان","فنجان","بطری"],"correctIndex":0}','{"course":"en-fa","series":26,"level":"Start"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'word_order',8,v_t_15,NULL,'کلمه‌ها را به ترتیب درست بچین',NULL,26,'{"source":"turn","tokens":["A","glass","of","water","please"],"answer":"A glass of water, please."}','{"course":"en-fa","series":26,"level":"Start","skill":"writing"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'reading_comprehension',9,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,26,'{"source":"lesson_story","question":"مینا چند لیوان آب می‌خواهد؟","choices":["یک لیوان","دو لیوان","سه لیوان"],"correctIndex":0}','{"course":"en-fa","series":26,"level":"Start","skill":"reading"}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 026 Lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two distinct Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND storyline_key='mina-liam-cafe-order' AND storyline_order BETWEEN 1 AND 4;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 026 storyline continuity.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>18 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 026 Turn count.'; END IF;
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
  SELECT COUNT(*) INTO v_count FROM words w WHERE w.course_id=v_course AND JSON_UNQUOTE(JSON_EXTRACT(w.metadata,'$.course'))='en-fa' AND CAST(JSON_UNQUOTE(JSON_EXTRACT(w.metadata,'$.introducedInSeries')) AS UNSIGNED)=26 AND NOT EXISTS(SELECT 1 FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter AND lw.word_id=w.id);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 026 contains an orphan new Word definition.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter;
  IF v_count<>34 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 026 Activity count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (JSON_EXTRACT(ac.config,'$.question') IS NULL OR JSON_LENGTH(JSON_EXTRACT(ac.config,'$.choices'))<2);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without learner task.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons l WHERE l.chapter_id=v_chapter AND (NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='listen') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='speak') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='word_order') OR NOT EXISTS(SELECT 1 FROM activities a WHERE a.lesson_id=l.id AND a.activity_type='reading_comprehension'));
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Lesson missing Speaking, Listening, Writing, or Reading practice.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter AND lw.is_target=1;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 026 explicit-target count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM (SELECT lw.lesson_id,lw.word_id,COUNT(*) n FROM lesson_words lw JOIN lessons l ON l.id=lw.lesson_id WHERE l.chapter_id=v_chapter GROUP BY lw.lesson_id,lw.word_id HAVING COUNT(*)>1) d;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Duplicate lesson_words tuple.'; END IF;
  UPDATE chapters SET planned_lesson_count=4,status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_en_fa_series_026_v9();
DROP PROCEDURE IF EXISTS import_nova_en_fa_series_026_v9;

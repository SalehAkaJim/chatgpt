-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 051
-- A2 > Arbeit & Aufgaben > Was soll ich machen?
-- FIRST CHAPTER OF A2 MODULE 03
-- Requires completed A2 Module 02 through Series 050.
-- Creates A2 Module 03 + five Chapter skeleton rows when missing.
-- Adds Martin as office team lead when missing.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_051_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_051_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_prev_module BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_anna BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_martin BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_hallo BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_du BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_heute BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_in BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_buero BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_arbeiten BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_was BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_machen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danke BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sollen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_was_soll_ich_machen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_du_sollst_heute_im_buero_arbeiten BIGINT UNSIGNED DEFAULT NULL;
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

  DECLARE EXIT HANDLER FOR SQLEXCEPTION
  BEGIN ROLLBACK; RESIGNAL; END;

  START TRANSACTION;
  SELECT id INTO v_course FROM courses WHERE learning_language='de' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='A2' AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Level not found.'; END IF;
  SELECT id INTO v_prev_module FROM modules WHERE level_id=v_level AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_prev_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 02 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM modules WHERE id=v_prev_module AND status='complete';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 050 and complete A2 Module 02 before Series 051.'; END IF;

  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN
    INSERT INTO modules(level_id,title,title_translation,description,description_translation,emoji,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES(v_level,'Arbeit & Aufgaben','کار و وظایف','Einfache Aufgaben verstehen, nachfragen, um Hilfe bitten und über den Arbeitsstand sprechen.','کارهای ساده را بفهم، سوال بپرس، کمک بخواه و درباره وضعیت انجام کار صحبت کن.','💼',27,29,3,'active','{"focus":"work-and-tasks","grammarApproach":"context-first","communication":"office"}');
    SET v_module=LAST_INSERT_ID();
  END IF;

  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Was soll ich machen?','باید چه کار کنم؟','Nach einer Aufgabe fragen und eine einfache Anweisung mit sollen verstehen.','درباره کار بپرس و یک دستور ساده با sollen را بفهم.',NULL,27,27,1,'draft'
  WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=1);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Kannst du mir helfen?','می تونی کمکم کنی؟','Im Arbeitsalltag auf einfache Weise um Hilfe bitten und reagieren.','در محیط کار به شکل ساده کمک بخواه و به درخواست کمک جواب بده.',NULL,27,28,2,'planned'
  WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=2);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Ich bin noch nicht fertig','هنوز تمام نکرده ام','Kurz über den Stand einer Aufgabe sprechen.','کوتاه درباره وضعیت انجام یک کار صحبت کن.',NULL,28,28,3,'planned'
  WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=3);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Ich habe eine Frage','یک سوال دارم','Eine Frage ankündigen und eine kurze Klärung beginnen.','یک سوال را مطرح کن و یک توضیح کوتاه بخواه.',NULL,28,29,4,'planned'
  WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=4);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Wir machen das zusammen','با هم انجامش می دیم','Anweisung, Hilfe, Rückfrage und Arbeitsstand in einem kurzen Gespräch verbinden.','دستور، کمک، سوال و وضعیت کار را در یک گفتگوی کوتاه کنار هم استفاده کن.',NULL,29,29,5,'planned'
  WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=5);

  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 03 Chapter 01 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 03 Chapter 01 must be empty before Series 051 import.'; END IF;

  SELECT id INTO v_c_anna FROM characters WHERE course_id=v_course AND name='Anna' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_anna IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Anna not found.'; END IF;

  SELECT id INTO v_c_martin FROM characters WHERE course_id=v_course AND name='Martin' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_martin IS NULL THEN
    INSERT INTO characters(course_id,name,gender,avatar_url,voice_key,profile,metadata)
    VALUES(v_course,'Martin','male',NULL,NULL,'{"role":"office_team_lead"}','{"context":"office","relationshipToAnna":"team_lead","introducedInLevel":"A2","introducedInModule":3,"introducedInChapter":1}');
    SET v_c_martin=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_hallo FROM words WHERE course_id=v_course AND lemma='Hallo' AND part_of_speech='interjection' AND translation='سلام' ORDER BY id LIMIT 1;
  IF v_w_hallo IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Hallo not found.'; END IF;

  SELECT id INTO v_w_du FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_du IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word du not found.'; END IF;

  SELECT id INTO v_w_heute FROM words WHERE course_id=v_course AND lemma='heute' AND part_of_speech='adverb' AND translation='امروز' ORDER BY id LIMIT 1;
  IF v_w_heute IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word heute not found.'; END IF;

  SELECT id INTO v_w_in FROM words WHERE course_id=v_course AND lemma='in' AND part_of_speech='preposition' AND translation='در / داخل' ORDER BY id LIMIT 1;
  IF v_w_in IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word in not found.'; END IF;

  SELECT id INTO v_w_buero FROM words WHERE course_id=v_course AND lemma='Büro' AND part_of_speech='noun' AND translation='دفتر کار' ORDER BY id LIMIT 1;
  IF v_w_buero IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Büro not found.'; END IF;

  SELECT id INTO v_w_arbeiten FROM words WHERE course_id=v_course AND lemma='arbeiten' AND part_of_speech='verb' AND translation='کار کردن' ORDER BY id LIMIT 1;
  IF v_w_arbeiten IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word arbeiten not found.'; END IF;

  SELECT id INTO v_w_gut FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_gut IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gut not found.'; END IF;

  SELECT id INTO v_w_was FROM words WHERE course_id=v_course AND lemma='was' AND part_of_speech='pronoun' AND translation='چی / چه' ORDER BY id LIMIT 1;
  IF v_w_was IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word was not found.'; END IF;

  SELECT id INTO v_w_ich FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_ich IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ich not found.'; END IF;

  SELECT id INTO v_w_machen FROM words WHERE course_id=v_course AND lemma='machen' AND part_of_speech='verb' AND translation='انجام دادن' ORDER BY id LIMIT 1;
  IF v_w_machen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word machen not found.'; END IF;

  SELECT id INTO v_w_danke FROM words WHERE course_id=v_course AND lemma='danke' AND part_of_speech='interjection' AND translation='ممنون' ORDER BY id LIMIT 1;
  IF v_w_danke IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word danke not found.'; END IF;

  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;

  SELECT id INTO v_w_sollen FROM words WHERE course_id=v_course AND lemma='sollen' AND part_of_speech='verb' AND translation='باید / قرار است' ORDER BY id LIMIT 1;
  IF v_w_sollen IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'sollen','sollen','verb','باید / قرار است',27,'{"modal":true,"function":"instruction_or_expectation","present":{"ich":"soll","du":"sollst","er_sie_es":"soll","wir":"sollen","Sie":"sollen"}}','[{"text":"müssen","translation":"مجبور بودن / باید"},{"text":"können","translation":"توانستن / بتوان"},{"text":"arbeiten","translation":"کار کردن"},{"text":"machen","translation":"انجام دادن"},{"text":"helfen","translation":"کمک کردن"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":51,"module":3}');
    SET v_w_sollen=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_was_soll_ich_machen FROM words WHERE course_id=v_course AND lemma='Was soll ich machen?' AND part_of_speech='phrase' AND translation='باید چه کار کنم؟' ORDER BY id LIMIT 1;
  IF v_w_was_soll_ich_machen IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Was soll ich machen?','Was soll ich machen?','phrase','باید چه کار کنم؟',27,'{"modal":"sollen","modalForm":"soll","person":"1sg","questionWord":"was","infinitive":"machen"}','[{"text":"Was muss ich machen?","translation":"مجبورم چه کار کنم؟"},{"text":"Was machst du heute?","translation":"امروز چه کار می کنی؟"},{"text":"Kannst du mir helfen?","translation":"می تونی کمکم کنی؟"},{"text":"Was hast du gemacht?","translation":"چه کار کردی؟"},{"text":"Ich muss arbeiten.","translation":"باید کار کنم."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":51,"module":3}');
    SET v_w_was_soll_ich_machen=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_du_sollst_heute_im_buero_arbeiten FROM words WHERE course_id=v_course AND lemma='Du sollst heute im Büro arbeiten.' AND part_of_speech='phrase' AND translation='امروز باید در دفتر کار کنی.' ORDER BY id LIMIT 1;
  IF v_w_du_sollst_heute_im_buero_arbeiten IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Du sollst heute im Büro arbeiten.','Du sollst heute im Büro arbeiten.','phrase','امروز باید در دفتر کار کنی.',27,'{"modal":"sollen","modalForm":"sollst","person":"2sg","infinitive":"arbeiten","time":"heute","location":"im Büro"}','[{"text":"Du musst heute arbeiten.","translation":"امروز باید کار کنی."},{"text":"Ich arbeite heute.","translation":"امروز کار می کنم."},{"text":"Du sollst das machen.","translation":"باید این کار را انجام بدهی."},{"text":"Ich bin im Büro.","translation":"من در دفتر کار هستم."},{"text":"Du kannst heute arbeiten.","translation":"امروز می تونی کار کنی."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":51,"module":3}');
    SET v_w_du_sollst_heute_im_buero_arbeiten=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_martin,v_c_anna,'Sollen','باید انجام بدی','Martin gibt Anna am Anfang des Arbeitstags eine einfache Anweisung. Anna hört zum ersten Mal sollen im Kontext.','مارتین در شروع روز کاری یک دستور ساده به آنا می دهد. آنا برای اولین بار sollen را در یک موقعیت واقعی می شنود.','story','anna-martin-work-tasks',1,27,110,1,'validated','{"relationship":"team_lead_and_employee","context":"office-work-instructions","cefr":"A2","grammarFocus":"controlled-sollen"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_martin,1,'character','Hallo.','سلام.',27,NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,2,'learner','Hallo.','سلام.',27,NULL,NULL,'hallo',NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_martin,3,'character','Du sollst heute im Büro arbeiten.','امروز باید در دفتر کار کنی.',27,NULL,NULL,NULL,NULL,'[{"surface":"Du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"sollst","lemma":"sollen","translation":"باید / قرار است","partOfSpeech":"verb","meaning":"باید / قرار است","form":"modal_present_2sg"},{"surface":"heute","lemma":"heute","translation":"امروز","partOfSpeech":"adverb"},{"surface":"im","lemma":"in","translation":"در / داخل","partOfSpeech":"preposition","meaning":"در","form":"contraction_in_dem"},{"surface":"Büro","lemma":"Büro","translation":"دفتر کار","partOfSpeech":"noun"},{"surface":"arbeiten","lemma":"arbeiten","translation":"کار کردن","partOfSpeech":"verb","meaning":"کار کنی","form":"infinitive_after_modal","suffix":"."}]','sollen برای دستور یا انتظار','اینجا «sollst» یعنی کاری که از طرف شخص دیگری گفته شده یا انتظار می رود انجام بدهی. «müssen» بیشتر روی ضرورت یا اجبار تاکید دارد.',NULL,'{"cefr":"A2","module":3}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,4,'learner','Gut.','خوبه.',27,NULL,NULL,'gut',NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"خوبه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_4=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_martin,v_c_anna,'Was soll ich machen?','باید چه کار کنم؟','Anna fragt Martin direkt nach ihrer Aufgabe für heute. Martin gibt eine kurze klare Antwort.','آنا مستقیم از مارتین می پرسد امروز باید چه کار کند. مارتین یک جواب کوتاه و روشن می دهد.','story','anna-martin-work-tasks',2,27,110,2,'validated','{"relationship":"team_lead_and_employee","context":"office-work-instructions","cefr":"A2","grammarFocus":"controlled-sollen"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_martin,1,'character','Hallo.','سلام.',27,NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,2,'learner','Hallo. Was soll ich machen?','سلام. باید چه کار کنم؟',27,NULL,NULL,'hallo was soll ich machen',NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"."},{"surface":"Was","lemma":"was","translation":"چی / چه","partOfSpeech":"pronoun"},{"surface":"soll","lemma":"sollen","translation":"باید / قرار است","partOfSpeech":"verb","meaning":"باید","form":"modal_present_1sg"},{"surface":"ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"machen","lemma":"machen","translation":"انجام دادن","partOfSpeech":"verb","meaning":"انجام بدهم","form":"infinitive_after_modal","suffix":"?"}]','soll برای ich','در «Was soll ich machen?» کلمه «soll» از sollen می آید. فعل اصلی «machen» در پایان و به شکل ساده می ماند.',NULL,'{"cefr":"A2","module":3}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_martin,3,'character','Du sollst heute im Büro arbeiten.','امروز باید در دفتر کار کنی.',27,NULL,NULL,NULL,NULL,'[{"surface":"Du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"sollst","lemma":"sollen","translation":"باید / قرار است","partOfSpeech":"verb","meaning":"باید / قرار است","form":"modal_present_2sg"},{"surface":"heute","lemma":"heute","translation":"امروز","partOfSpeech":"adverb"},{"surface":"im","lemma":"in","translation":"در / داخل","partOfSpeech":"preposition","meaning":"در","form":"contraction_in_dem"},{"surface":"Büro","lemma":"Büro","translation":"دفتر کار","partOfSpeech":"noun"},{"surface":"arbeiten","lemma":"arbeiten","translation":"کار کردن","partOfSpeech":"verb","meaning":"کار کنی","form":"infinitive_after_modal","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,4,'learner','Danke.','ممنون.',27,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_8=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_anna,v_c_martin,'Du sollst heute im Büro arbeiten','امروز باید در دفتر کار کنی','Anna fragt nach der Arbeit. Diesmal übernimmt der Lernende Martins Rolle und gibt selbst die Anweisung.','آنا درباره کار امروز می پرسد. این بار کاربر نقش مارتین را دارد و خودش دستور را می گوید.','story','anna-martin-work-tasks',3,27,110,3,'validated','{"relationship":"team_lead_and_employee","context":"office-work-instructions","cefr":"A2","grammarFocus":"controlled-sollen"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,1,'character','Was soll ich machen?','باید چه کار کنم؟',27,NULL,NULL,NULL,NULL,'[{"surface":"Was","lemma":"was","translation":"چی / چه","partOfSpeech":"pronoun"},{"surface":"soll","lemma":"sollen","translation":"باید / قرار است","partOfSpeech":"verb","meaning":"باید","form":"modal_present_1sg"},{"surface":"ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"machen","lemma":"machen","translation":"انجام دادن","partOfSpeech":"verb","meaning":"انجام بدهم","form":"infinitive_after_modal","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_martin,2,'learner','Du sollst heute im Büro arbeiten.','امروز باید در دفتر کار کنی.',27,NULL,NULL,'du sollst heute im büro arbeiten',NULL,'[{"surface":"Du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"sollst","lemma":"sollen","translation":"باید / قرار است","partOfSpeech":"verb","meaning":"باید / قرار است","form":"modal_present_2sg"},{"surface":"heute","lemma":"heute","translation":"امروز","partOfSpeech":"adverb"},{"surface":"im","lemma":"in","translation":"در / داخل","partOfSpeech":"preposition","meaning":"در","form":"contraction_in_dem"},{"surface":"Büro","lemma":"Büro","translation":"دفتر کار","partOfSpeech":"noun"},{"surface":"arbeiten","lemma":"arbeiten","translation":"کار کردن","partOfSpeech":"verb","meaning":"کار کنی","form":"infinitive_after_modal","suffix":"."}]','sollst + فعل اصلی در پایان','در این جمله «sollst» دستور یا انتظار را بیان می کند و «arbeiten» در پایان جمله می آید.',NULL,'{"cefr":"A2","module":3}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,3,'character','Im Büro?','در دفتر کار؟',27,NULL,NULL,NULL,NULL,'[{"surface":"Im","lemma":"in","translation":"در / داخل","partOfSpeech":"preposition","meaning":"در","form":"contraction_in_dem"},{"surface":"Büro","lemma":"Büro","translation":"دفتر کار","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_martin,4,'learner','Ja.','بله.',27,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_12=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_martin,v_c_anna,'Der Arbeitstag beginnt','روز کاری شروع می شود','Anna kommt zur Arbeit, fragt nach ihrer Aufgabe und bekommt von Martin eine klare Anweisung für den Tag.','آنا به محل کار می رسد، درباره کار امروز می پرسد و از مارتین یک دستور روشن برای روز می گیرد.','story','anna-martin-work-tasks',4,27,110,4,'validated','{"relationship":"team_lead_and_employee","context":"office-work-instructions","cefr":"A2","grammarFocus":"controlled-sollen"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_martin,1,'character','Hallo.','سلام.',27,NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,2,'learner','Hallo.','سلام.',27,NULL,NULL,'hallo',NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_martin,3,'character','Heute im Büro?','امروز در دفتر کار؟',27,NULL,NULL,NULL,NULL,'[{"surface":"Heute","lemma":"heute","translation":"امروز","partOfSpeech":"adverb"},{"surface":"im","lemma":"in","translation":"در / داخل","partOfSpeech":"preposition","meaning":"در","form":"contraction_in_dem"},{"surface":"Büro","lemma":"Büro","translation":"دفتر کار","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,4,'learner','Ja. Was soll ich machen?','بله. باید چه کار کنم؟',27,NULL,NULL,'ja was soll ich machen',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Was","lemma":"was","translation":"چی / چه","partOfSpeech":"pronoun"},{"surface":"soll","lemma":"sollen","translation":"باید / قرار است","partOfSpeech":"verb","meaning":"باید","form":"modal_present_1sg"},{"surface":"ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"machen","lemma":"machen","translation":"انجام دادن","partOfSpeech":"verb","meaning":"انجام بدهم","form":"infinitive_after_modal","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_martin,5,'character','Du sollst heute im Büro arbeiten.','امروز باید در دفتر کار کنی.',27,NULL,NULL,NULL,NULL,'[{"surface":"Du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"sollst","lemma":"sollen","translation":"باید / قرار است","partOfSpeech":"verb","meaning":"باید / قرار است","form":"modal_present_2sg"},{"surface":"heute","lemma":"heute","translation":"امروز","partOfSpeech":"adverb"},{"surface":"im","lemma":"in","translation":"در / داخل","partOfSpeech":"preposition","meaning":"در","form":"contraction_in_dem"},{"surface":"Büro","lemma":"Büro","translation":"دفتر کار","partOfSpeech":"noun"},{"surface":"arbeiten","lemma":"arbeiten","translation":"کار کردن","partOfSpeech":"verb","meaning":"کار کنی","form":"infinitive_after_modal","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,6,'learner','Gut. Danke.','خوبه. ممنون.',27,NULL,NULL,'gut danke',NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"خوبه","suffix":"."},{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_18=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_hallo,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_sollen,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_heute,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_in,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_buero,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_arbeiten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_du_sollst_heute_im_buero_arbeiten,'passive',0,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_hallo,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_was,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_sollen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_machen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_heute,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_in,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_buero,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_arbeiten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_du_sollst_heute_im_buero_arbeiten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_was_soll_ich_machen,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_was,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_sollen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_machen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_heute,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_in,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_buero,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_arbeiten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_was_soll_ich_machen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_du_sollst_heute_im_buero_arbeiten,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_hallo,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_heute,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_in,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_buero,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_was,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_sollen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_machen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_arbeiten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_was_soll_ich_machen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_du_sollst_heute_im_buero_arbeiten,'review',0,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_sollen,'فعل جدید',NULL,27,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به شروع گفتگو گوش کن',NULL,27,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'سلام کن',NULL,27,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به کاری که باید انجام بدهی گوش کن',NULL,27,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'تایید کن',NULL,27,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,NULL,v_w_sollen,'معنی مناسب sollen را انتخاب کن',NULL,27,'{"mode":"word_translation","question":"sollen","choices":["باید / قرار است","می توانستن","کار کردن"],"correctIndex":0}','{"cefr":"A2","module":3}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_was_soll_ich_machen,'عبارت جدید',NULL,27,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به سلام مارتین گوش کن',NULL,27,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'بپرس باید چه کار کنی',NULL,27,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به دستور کاری گوش کن',NULL,27,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'تشکر کن',NULL,27,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_6,NULL,'معنی درست را انتخاب کن',NULL,27,'{"mode":"turn_translation","question":"«Was soll ich machen?» یعنی چی؟","choices":["باید چه کار کنم؟","چه کار کردی؟","می تونی کار کنی؟"],"correctIndex":0}','{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',7,v_t_6,NULL,'سوال را به ترتیب درست بساز',NULL,27,'{"source":"turn_tokens","shuffle":true}','{"cefr":"A2","module":3}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_du_sollst_heute_im_buero_arbeiten,'عبارت جدید',NULL,27,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_9,NULL,'به سوال آنا گوش کن',NULL,27,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_10,NULL,'بگو امروز باید در دفتر کار کند',NULL,27,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_11,NULL,'به سوال تاییدی آنا گوش کن',NULL,27,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_12,NULL,'تایید کن',NULL,27,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_10,NULL,'معنی درست را انتخاب کن',NULL,27,'{"mode":"turn_translation","question":"«Du sollst heute im Büro arbeiten.» یعنی چی؟","choices":["امروز باید در دفتر کار کنی.","امروز می تونی در خانه کار کنی.","دیروز در دفتر کار بودی."],"correctIndex":0}','{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,27,'{"source":"lesson_story","question":"مارتین می گوید آنا امروز کجا کار کند؟","choices":["در دفتر کار","در کافه","در خانه"],"correctIndex":0}','{"cefr":"A2","module":3}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_13,NULL,'به سلام مارتین گوش کن',NULL,27,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_14,NULL,'سلام کن',NULL,27,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_15,NULL,'به سوال محل کار گوش کن',NULL,27,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_16,NULL,'تایید کن و بپرس باید چه کار کنی',NULL,27,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_17,NULL,'به دستور مارتین گوش کن',NULL,27,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_18,NULL,'تایید و تشکر کن',NULL,27,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,27,'{"source":"lesson_story","question":"آنا امروز باید چه کار کند؟","choices":["در دفتر کار کند.","قرارش را جا به جا کند.","با اتوبوس برود."],"correctIndex":0}','{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',8,v_t_16,NULL,'منظور سوال آنا را انتخاب کن',NULL,27,'{"mode":"turn_translation","question":"«Was soll ich machen?» در این گفتگو یعنی چی؟","choices":["باید چه کار کنم؟","کی می تونی؟","چرا دیر میای؟"],"correctIndex":0}','{"cefr":"A2","module":3}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 051 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count
  FROM turns t JOIN lessons l ON l.id=t.lesson_id
  WHERE l.chapter_id=v_chapter AND t.role='learner'
    AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count
  FROM activities ac JOIN lessons l ON l.id=ac.lesson_id
  WHERE l.chapter_id=v_chapter
    AND ac.activity_type='reading_comprehension'
    AND (ac.config IS NULL OR JSON_EXTRACT(ac.config,'$.question') IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without task.'; END IF;
  UPDATE chapters SET status='validated' WHERE id=v_chapter;
  UPDATE modules SET status='active' WHERE id=v_module;
  UPDATE levels SET status='active' WHERE id=v_level;
  COMMIT;
END$$
DELIMITER ;

CALL import_nova_series_051_v9();
DROP PROCEDURE IF EXISTS import_nova_series_051_v9;
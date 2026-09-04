-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 011
-- A1 > Mein Alltag > Mein Morgen
-- Creates Module 03 curriculum skeleton when missing.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_011_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_011_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_prev_module BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_chapter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_anna BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_jonas BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_morgen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kaffee BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_brot BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_bitte BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_bis BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_spaeter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_anna BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_jonas BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_aufstehen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_stehe_auf BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_fruehstueck BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_fruehstuecken BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_fruehstuecke BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danke BIGINT UNSIGNED DEFAULT NULL;
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
  DECLARE v_t_22 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_23 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_24 BIGINT UNSIGNED DEFAULT NULL;

  DECLARE EXIT HANDLER FOR SQLEXCEPTION
  BEGIN
    ROLLBACK;
    RESIGNAL;
  END;

  START TRANSACTION;

  SELECT id INTO v_course FROM courses
  WHERE learning_language='de' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND sort_order=1 ORDER BY id LIMIT 1;
  SELECT id INTO v_prev_module FROM modules WHERE level_id=v_level AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_prev_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 006 before Series 011.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_prev_module AND sort_order=5 ORDER BY id LIMIT 1;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 010 before Series 011.'; END IF;

  -- Ensure Module 03 exists.
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN
    INSERT INTO modules
    (level_id,title,title_translation,description,description_translation,emoji,difficulty_min,difficulty_max,sort_order,status)
    VALUES
    (v_level,'Mein Alltag','روزمرگی من',
     'Einfache Routinen, Uhrzeiten, Arbeit, Freizeit und Wochenendpläne.',
     'روتین های ساده، ساعت، کار، اوقات فراغت و برنامه آخر هفته.',
     '☀️',7,9,3,'active');
    SET v_module=LAST_INSERT_ID();
  END IF;

  -- Ensure each Chapter of Module 03 exists independently.
  INSERT INTO chapters
  (module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Mein Morgen','صبح من','Einfache Situationen am Morgen.','موقعیت های ساده صبحگاهی.',NULL,7,7,1,'draft'
  WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=1);
  INSERT INTO chapters
  (module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Uhrzeit & Termine','ساعت و قرارها','Einfache Uhrzeiten und Termine verstehen.','ساعت ها و قرارهای ساده را بفهم.',NULL,7,8,2,'planned'
  WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=2);
  INSERT INTO chapters
  (module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Mein Arbeitstag','روز کاری من','Einfache Situationen rund um Arbeit und Tagesablauf.','موقعیت های ساده درباره کار و روند روز.',NULL,8,8,3,'planned'
  WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=3);
  INSERT INTO chapters
  (module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Freizeit','اوقات فراغت','Über einfache Freizeitaktivitäten sprechen.','درباره کارهای ساده اوقات فراغت حرف بزن.',NULL,8,9,4,'planned'
  WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=4);
  INSERT INTO chapters
  (module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Das Wochenende planen','برنامه آخر هفته','Einfache Pläne für das Wochenende machen.','برای آخر هفته برنامه های ساده بساز.',NULL,9,9,5,'planned'
  WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=5);

  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Module 03 Chapter 01 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Module 03 Chapter 01 must be empty before Series 011 import.'; END IF;

  SELECT id INTO v_c_anna FROM characters
  WHERE course_id=v_course AND name='Anna' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_anna IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Anna not found.'; END IF;

  SELECT id INTO v_c_jonas FROM characters
  WHERE course_id=v_course AND name='Jonas' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_jonas IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Jonas not found.'; END IF;

  SELECT id INTO v_w_gut FROM words
  WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب'
  ORDER BY id LIMIT 1;
  IF v_w_gut IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gut not found.'; END IF;

  SELECT id INTO v_w_morgen FROM words
  WHERE course_id=v_course AND lemma='Morgen' AND part_of_speech='noun' AND translation='صبح'
  ORDER BY id LIMIT 1;
  IF v_w_morgen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Morgen not found.'; END IF;

  SELECT id INTO v_w_kaffee FROM words
  WHERE course_id=v_course AND lemma='Kaffee' AND part_of_speech='noun' AND translation='قهوه'
  ORDER BY id LIMIT 1;
  IF v_w_kaffee IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Kaffee not found.'; END IF;

  SELECT id INTO v_w_brot FROM words
  WHERE course_id=v_course AND lemma='Brot' AND part_of_speech='noun' AND translation='نان'
  ORDER BY id LIMIT 1;
  IF v_w_brot IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Brot not found.'; END IF;

  SELECT id INTO v_w_ja FROM words
  WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره'
  ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;

  SELECT id INTO v_w_bitte FROM words
  WHERE course_id=v_course AND lemma='bitte' AND part_of_speech='interjection' AND translation='لطفا / خواهش می کنم'
  ORDER BY id LIMIT 1;
  IF v_w_bitte IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word bitte not found.'; END IF;

  SELECT id INTO v_w_bis FROM words
  WHERE course_id=v_course AND lemma='bis' AND part_of_speech='preposition' AND translation='تا'
  ORDER BY id LIMIT 1;
  IF v_w_bis IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word bis not found.'; END IF;

  SELECT id INTO v_w_spaeter FROM words
  WHERE course_id=v_course AND lemma='später' AND part_of_speech='adverb' AND translation='بعدا'
  ORDER BY id LIMIT 1;
  IF v_w_spaeter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word später not found.'; END IF;

  SELECT id INTO v_w_ich FROM words
  WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من'
  ORDER BY id LIMIT 1;
  IF v_w_ich IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ich not found.'; END IF;

  SELECT id INTO v_w_anna FROM words
  WHERE course_id=v_course AND lemma='Anna' AND part_of_speech='proper_noun' AND translation='آنا (نام زنانه)'
  ORDER BY id LIMIT 1;
  IF v_w_anna IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Anna not found.'; END IF;

  SELECT id INTO v_w_jonas FROM words
  WHERE course_id=v_course AND lemma='Jonas' AND part_of_speech='proper_noun' AND translation='یوناس (نام مردانه)'
  ORDER BY id LIMIT 1;
  IF v_w_jonas IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Jonas not found.'; END IF;

  SELECT id INTO v_w_danke FROM words
  WHERE course_id=v_course AND lemma='danke' AND part_of_speech='interjection' AND translation='ممنون'
  ORDER BY id LIMIT 1;
  IF v_w_danke IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word danke not found.'; END IF;

  SELECT id INTO v_w_aufstehen FROM words
  WHERE course_id=v_course AND lemma='aufstehen' AND part_of_speech='verb' AND translation='از خواب بلند شدن'
  ORDER BY id LIMIT 1;
  IF v_w_aufstehen IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'aufstehen','aufstehen','verb','از خواب بلند شدن',7,
           '{"type":"separable_verb","present":{"ich":"stehe ... auf","du":"stehst ... auf","er_sie_es":"steht ... auf"}}','[{"text":"schlafen","translation":"خوابیدن"},{"text":"sitzen","translation":"نشستن"},{"text":"gehen","translation":"رفتن"},{"text":"kommen","translation":"آمدن"},{"text":"frühstücken","translation":"صبحانه خوردن"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_aufstehen=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_ich_stehe_auf FROM words
  WHERE course_id=v_course AND lemma='Ich stehe auf.' AND part_of_speech='phrase' AND translation='من از خواب بلند می شوم.'
  ORDER BY id LIMIT 1;
  IF v_w_ich_stehe_auf IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich stehe auf.','Ich stehe auf.','phrase','من از خواب بلند می شوم.',7,
           NULL,'[{"text":"Ich frühstücke.","translation":"من صبحانه می خورم."},{"text":"Ich trinke Kaffee.","translation":"من قهوه می نوشم."},{"text":"Ich komme aus ...","translation":"من اهل ... هستم."},{"text":"Ich bin zwanzig.","translation":"من بیست سالمه."},{"text":"Bis später.","translation":"بعدا می بینمت."}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_ich_stehe_auf=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_fruehstueck FROM words
  WHERE course_id=v_course AND lemma='Frühstück' AND part_of_speech='noun' AND translation='صبحانه'
  ORDER BY id LIMIT 1;
  IF v_w_fruehstueck IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Frühstück','Frühstück','noun','صبحانه',7,
           '{"article":"das","plural":"Frühstücke"}','[{"text":"Mittagessen","translation":"ناهار"},{"text":"Abendessen","translation":"شام"},{"text":"Brot","translation":"نان"},{"text":"Kaffee","translation":"قهوه"},{"text":"Milch","translation":"شیر"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_fruehstueck=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_fruehstuecken FROM words
  WHERE course_id=v_course AND lemma='frühstücken' AND part_of_speech='verb' AND translation='صبحانه خوردن'
  ORDER BY id LIMIT 1;
  IF v_w_fruehstuecken IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'frühstücken','frühstücken','verb','صبحانه خوردن',7,
           '{"present":{"ich":"frühstücke","du":"frühstückst","er_sie_es":"frühstückt"}}','[{"text":"essen","translation":"خوردن"},{"text":"trinken","translation":"نوشیدن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"aufstehen","translation":"از خواب بلند شدن"},{"text":"arbeiten","translation":"کار کردن"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_fruehstuecken=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_ich_fruehstuecke FROM words
  WHERE course_id=v_course AND lemma='Ich frühstücke.' AND part_of_speech='phrase' AND translation='من صبحانه می خورم.'
  ORDER BY id LIMIT 1;
  IF v_w_ich_fruehstuecke IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich frühstücke.','Ich frühstücke.','phrase','من صبحانه می خورم.',7,
           NULL,'[{"text":"Ich stehe auf.","translation":"من از خواب بلند می شوم."},{"text":"Ich trinke Kaffee.","translation":"من قهوه می نوشم."},{"text":"Ich komme aus ...","translation":"من اهل ... هستم."},{"text":"Ich bin zwanzig.","translation":"من بیست سالمه."},{"text":"Zahlen, bitte.","translation":"می خواهم پرداخت کنم، لطفا."}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_ich_fruehstuecke=LAST_INSERT_ID();
  END IF;

  -- Lesson 1: Jonas steht auf
  INSERT INTO lessons
  (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES
  (v_chapter,v_c_anna,v_c_jonas,'Jonas steht auf','یوناس از خواب بلند می شود',
   'Anna begrüßt Jonas am Morgen. Jonas steht auf und der Tag beginnt.','آنا صبح به یوناس سلام می کند. یوناس از خواب بلند می شود و روزشان شروع می شود.','story','anna-jonas-couple',4,
   7,96,1,'validated',
   '{"relationship":"spouses","storyArc":"beginning-development-ending","startingPoint":"absolute-beginner"}');
  SET v_l_1=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_anna,1,'character','Guten Morgen, Jonas!','صبح بخیر، یوناس!',7,
   NULL,NULL,NULL,NULL,'[{"surface":"Guten","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"در این عبارت: بخیر","form":"inflected_adjective"},{"surface":"Morgen","lemma":"Morgen","translation":"صبح","partOfSpeech":"noun","suffix":","},{"surface":"Jonas","lemma":"Jonas","translation":"یوناس (نام مردانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_jonas,2,'learner','Guten Morgen!','صبح بخیر!',7,
   NULL,NULL,'guten morgen',NULL,'[{"surface":"Guten","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"در این عبارت: بخیر","form":"inflected_adjective"},{"surface":"Morgen","lemma":"Morgen","translation":"صبح","partOfSpeech":"noun","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_anna,3,'character','Kaffee?','قهوه؟',7,
   NULL,NULL,NULL,NULL,'[{"surface":"Kaffee","lemma":"Kaffee","translation":"قهوه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_jonas,4,'learner','Ja. Ich stehe auf.','بله. من از خواب بلند می شوم.',7,
   NULL,NULL,'ja ich stehe auf',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"stehe","lemma":"aufstehen","translation":"از خواب بلند شدن","partOfSpeech":"verb","meaning":"بلند می شوم","form":"present_1sg"},{"surface":"auf","lemma":"aufstehen","translation":"از خواب بلند شدن","partOfSpeech":"verb","meaning":"بخش جداشدنی فعل بلند شدن","form":"separable_particle","suffix":"."}]','فعلا این جمله را یک تکه یاد بگیر','در «Ich stehe auf.» فعل اصلی «aufstehen» است. فعلا فقط همین جمله را به شکل کامل یاد بگیر.',NULL,NULL);
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_anna,5,'character','Kaffee.','قهوه.',7,
   NULL,NULL,NULL,NULL,'[{"surface":"Kaffee","lemma":"Kaffee","translation":"قهوه","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_jonas,6,'learner','Danke!','ممنون!',7,
   NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_6=LAST_INSERT_ID();

  -- Lesson 2: Frühstück zu Hause
  INSERT INTO lessons
  (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES
  (v_chapter,v_c_anna,v_c_jonas,'Frühstück zu Hause','صبحانه در خانه',
   'Anna und Jonas sind in der Küche. Anna fragt nach Frühstück und Brot.','آنا و یوناس در آشپزخانه هستند. آنا درباره صبحانه و نان می پرسد.','story','anna-jonas-couple',5,
   7,90,2,'validated',
   '{"relationship":"spouses","storyArc":"beginning-development-ending","startingPoint":"absolute-beginner"}');
  SET v_l_2=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_anna,1,'character','Frühstück?','صبحانه؟',7,
   NULL,NULL,NULL,NULL,'[{"surface":"Frühstück","lemma":"Frühstück","translation":"صبحانه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_jonas,2,'learner','Ja, bitte.','بله، لطفا.',7,
   NULL,NULL,'ja bitte',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_anna,3,'character','Brot?','نان؟',7,
   NULL,NULL,NULL,NULL,'[{"surface":"Brot","lemma":"Brot","translation":"نان","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_jonas,4,'learner','Ja, bitte.','بله، لطفا.',7,
   NULL,NULL,'ja bitte',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_10=LAST_INSERT_ID();

  -- Lesson 3: Anna frühstückt
  INSERT INTO lessons
  (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES
  (v_chapter,v_c_jonas,v_c_anna,'Anna frühstückt','آنا صبحانه می خورد',
   'Jonas fragt Anna nach dem Frühstück. Anna benutzt den neuen Satz selbst.','یوناس درباره صبحانه از آنا می پرسد. آنا این بار جمله جدید را خودش می گوید.','story','anna-jonas-couple',6,
   7,108,3,'validated',
   '{"relationship":"spouses","storyArc":"beginning-development-ending","startingPoint":"absolute-beginner"}');
  SET v_l_3=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_jonas,1,'character','Guten Morgen, Anna!','صبح بخیر، آنا!',7,
   NULL,NULL,NULL,NULL,'[{"surface":"Guten","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"در این عبارت: بخیر","form":"inflected_adjective"},{"surface":"Morgen","lemma":"Morgen","translation":"صبح","partOfSpeech":"noun","suffix":","},{"surface":"Anna","lemma":"Anna","translation":"آنا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_anna,2,'learner','Guten Morgen!','صبح بخیر!',7,
   NULL,NULL,'guten morgen',NULL,'[{"surface":"Guten","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"در این عبارت: بخیر","form":"inflected_adjective"},{"surface":"Morgen","lemma":"Morgen","translation":"صبح","partOfSpeech":"noun","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_jonas,3,'character','Frühstück?','صبحانه؟',7,
   NULL,NULL,NULL,NULL,'[{"surface":"Frühstück","lemma":"Frühstück","translation":"صبحانه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_anna,4,'learner','Ja. Ich frühstücke.','بله. من صبحانه می خورم.',7,
   NULL,NULL,'ja ich frühstücke',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"frühstücke","lemma":"frühstücken","translation":"صبحانه خوردن","partOfSpeech":"verb","meaning":"صبحانه می خورم","form":"present_1sg","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_jonas,5,'character','Kaffee?','قهوه؟',7,
   NULL,NULL,NULL,NULL,'[{"surface":"Kaffee","lemma":"Kaffee","translation":"قهوه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_anna,6,'learner','Ja, bitte.','بله، لطفا.',7,
   NULL,NULL,'ja bitte',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_16=LAST_INSERT_ID();

  -- Lesson 4: Ein ganzer Morgen
  INSERT INTO lessons
  (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES
  (v_chapter,v_c_jonas,v_c_anna,'Ein ganzer Morgen','یک صبح کامل',
   'Anna beginnt ihren Morgen: aufstehen, Kaffee, Frühstück und Abschied.','صبح آنا از بلند شدن شروع می شود و با قهوه، صبحانه و خداحافظی ادامه پیدا می کند.','story','anna-jonas-couple',7,
   7,108,4,'validated',
   '{"relationship":"spouses","storyArc":"beginning-development-ending","startingPoint":"absolute-beginner"}');
  SET v_l_4=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_jonas,1,'character','Guten Morgen, Anna!','صبح بخیر، آنا!',7,
   NULL,NULL,NULL,NULL,'[{"surface":"Guten","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"در این عبارت: بخیر","form":"inflected_adjective"},{"surface":"Morgen","lemma":"Morgen","translation":"صبح","partOfSpeech":"noun","suffix":","},{"surface":"Anna","lemma":"Anna","translation":"آنا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_anna,2,'learner','Guten Morgen! Ich stehe auf.','صبح بخیر! من از خواب بلند می شوم.',7,
   NULL,NULL,'guten morgen ich stehe auf',NULL,'[{"surface":"Guten","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"در این عبارت: بخیر","form":"inflected_adjective"},{"surface":"Morgen","lemma":"Morgen","translation":"صبح","partOfSpeech":"noun","suffix":"!"},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"stehe","lemma":"aufstehen","translation":"از خواب بلند شدن","partOfSpeech":"verb","meaning":"بلند می شوم","form":"present_1sg"},{"surface":"auf","lemma":"aufstehen","translation":"از خواب بلند شدن","partOfSpeech":"verb","meaning":"بخش جداشدنی فعل بلند شدن","form":"separable_particle","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_jonas,3,'character','Kaffee?','قهوه؟',7,
   NULL,NULL,NULL,NULL,'[{"surface":"Kaffee","lemma":"Kaffee","translation":"قهوه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_anna,4,'learner','Ja, bitte.','بله، لطفا.',7,
   NULL,NULL,'ja bitte',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_20=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_jonas,5,'character','Frühstück?','صبحانه؟',7,
   NULL,NULL,NULL,NULL,'[{"surface":"Frühstück","lemma":"Frühstück","translation":"صبحانه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_21=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_anna,6,'learner','Ja. Ich frühstücke.','بله. من صبحانه می خورم.',7,
   NULL,NULL,'ja ich frühstücke',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"frühstücke","lemma":"frühstücken","translation":"صبحانه خوردن","partOfSpeech":"verb","meaning":"صبحانه می خورم","form":"present_1sg","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_22=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_jonas,7,'character','Bis später!','بعدا می بینمت!',7,
   NULL,NULL,NULL,NULL,'[{"surface":"Bis","lemma":"bis","translation":"تا","partOfSpeech":"preposition"},{"surface":"später","lemma":"später","translation":"بعدا","partOfSpeech":"adverb","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_23=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_anna,8,'learner','Bis später!','بعدا می بینمت!',7,
   NULL,NULL,'bis später',NULL,'[{"surface":"Bis","lemma":"bis","translation":"تا","partOfSpeech":"preposition"},{"surface":"später","lemma":"später","translation":"بعدا","partOfSpeech":"adverb","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_24=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_gut,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_morgen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_jonas,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_kaffee,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_aufstehen,'passive',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_ich_stehe_auf,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_fruehstueck,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_bitte,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_brot,'review',0,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_gut,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_morgen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_anna,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_fruehstueck,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_fruehstuecken,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_kaffee,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_bitte,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_ich_fruehstuecke,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_gut,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_morgen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_anna,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_ich,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_aufstehen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_kaffee,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_bitte,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_fruehstueck,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_fruehstuecken,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_bis,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_spaeter,'review',0,2);

  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_ich_stehe_auf,'عبارت جدید',NULL,7,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به آنا گوش کن',NULL,7,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'صبح بخیر بگو',NULL,7,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به آنا گوش کن',NULL,7,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'بگو از خواب بلند می شوی',NULL,7,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',6,v_t_5,NULL,'به آنا گوش کن',NULL,7,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',7,v_t_6,NULL,'تشکر کن',NULL,7,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',8,v_t_4,NULL,'معنی درست را انتخاب کن',NULL,7,'{"mode":"turn_translation","question":"«Ich stehe auf.» یعنی چی؟","choices":["من از خواب بلند می شوم.","من صبحانه می خورم.","من قهوه می خواهم."],"correctIndex":0}',NULL);

  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_fruehstueck,'کلمه جدید',NULL,7,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_7,NULL,'به آنا گوش کن',NULL,7,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_8,NULL,'جواب بده',NULL,7,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_9,NULL,'به آنا گوش کن',NULL,7,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_10,NULL,'دوباره جواب بده',NULL,7,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,NULL,v_w_fruehstueck,'معنی درست را انتخاب کن',NULL,7,'{"mode":"word_translation","question":"Frühstück","choices":["صبحانه","ناهار","شام"],"correctIndex":0}',NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,7,'{"source":"lesson_story","question":"یوناس برای صبحانه نان می خواهد؟","choices":["بله","نه","مشخص نیست"],"correctIndex":0}',NULL);

  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_ich_fruehstuecke,'عبارت جدید',NULL,7,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_11,NULL,'به یوناس گوش کن',NULL,7,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_12,NULL,'صبح بخیر بگو',NULL,7,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_13,NULL,'به یوناس گوش کن',NULL,7,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_14,NULL,'بگو صبحانه می خوری',NULL,7,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',6,v_t_15,NULL,'به یوناس گوش کن',NULL,7,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',7,v_t_16,NULL,'جواب بده',NULL,7,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',8,v_t_14,NULL,'معنی درست را انتخاب کن',NULL,7,'{"mode":"turn_translation","question":"«Ich frühstücke.» یعنی چی؟","choices":["من صبحانه می خورم.","من از خواب بلند می شوم.","من پرداخت می کنم."],"correctIndex":0}',NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'word_order',9,v_t_14,NULL,'جمله را به ترتیب درست بساز',NULL,7,'{"source":"turn_tokens","shuffle":true}',NULL);

  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_17,NULL,'به یوناس گوش کن',NULL,7,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_18,NULL,'صبح را شروع کن',NULL,7,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_19,NULL,'به یوناس گوش کن',NULL,7,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_20,NULL,'جواب بده',NULL,7,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_21,NULL,'به یوناس گوش کن',NULL,7,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_22,NULL,'بگو صبحانه می خوری',NULL,7,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',7,v_t_23,NULL,'به یوناس گوش کن',NULL,7,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',8,v_t_24,NULL,'خداحافظی کن',NULL,7,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',9,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,7,'{"source":"lesson_story","question":"آنا بعد از بلند شدن چه کار می کند؟","choices":["قهوه می گیرد و صبحانه می خورد.","به رستوران می رود.","پرداخت می کند."],"correctIndex":0}',NULL);

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 011 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id
  WHERE l.chapter_id=v_chapter AND ((t.role='character' AND t.character_id<>l.prompt_character_id) OR (t.role='learner' AND t.character_id<>l.learner_character_id));
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Turn Character mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id
  WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities a JOIN lessons l ON l.id=a.lesson_id
  WHERE l.chapter_id=v_chapter AND a.activity_type='reading_comprehension' AND (a.config IS NULL OR JSON_EXTRACT(a.config,'$.question') IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without task.'; END IF;
  UPDATE chapters SET status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;

CALL import_nova_series_011_v9();
DROP PROCEDURE IF EXISTS import_nova_series_011_v9;
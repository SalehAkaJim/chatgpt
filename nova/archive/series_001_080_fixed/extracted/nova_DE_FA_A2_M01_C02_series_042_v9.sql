-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 042
-- A2 > Über gestern sprechen > Was hast du gemacht?
-- FIRST CONTROLLED PERFEKT CHAPTER
-- Requires Series 041 and existing A2 M01 skeleton.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_042_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_042_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_anna BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_laura BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_was BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_haben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_du BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_machen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_arbeiten BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kaffee BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_in BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_buero BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gestern BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gestern_war_ich_im_buero BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_was_hast_du_gemacht BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_habe_gearbeitet BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_habe_kaffee_gemacht BIGINT UNSIGNED DEFAULT NULL;
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
  BEGIN
    ROLLBACK;
    RESIGNAL;
  END;

  START TRANSACTION;
  SELECT id INTO v_course FROM courses WHERE learning_language='de' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='A2' AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 041 before Series 042.'; END IF;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 01 not found. Import Series 041 first.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=1 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 01 Chapter 02 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 041 before Series 042.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 01 Chapter 02 must be empty before Series 042 import.'; END IF;

  SELECT id INTO v_c_anna FROM characters WHERE course_id=v_course AND name='Anna' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_anna IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Anna not found.'; END IF;

  SELECT id INTO v_c_laura FROM characters WHERE course_id=v_course AND name='Laura' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_laura IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Laura not found.'; END IF;

  SELECT id INTO v_w_was FROM words WHERE course_id=v_course AND lemma='was' AND part_of_speech='pronoun' AND translation='چی / چه' ORDER BY id LIMIT 1;
  IF v_w_was IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word was not found.'; END IF;

  SELECT id INTO v_w_haben FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_haben IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word haben not found.'; END IF;

  SELECT id INTO v_w_du FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_du IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word du not found.'; END IF;

  SELECT id INTO v_w_machen FROM words WHERE course_id=v_course AND lemma='machen' AND part_of_speech='verb' AND translation='انجام دادن' ORDER BY id LIMIT 1;
  IF v_w_machen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word machen not found.'; END IF;

  SELECT id INTO v_w_ich FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_ich IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ich not found.'; END IF;

  SELECT id INTO v_w_arbeiten FROM words WHERE course_id=v_course AND lemma='arbeiten' AND part_of_speech='verb' AND translation='کار کردن' ORDER BY id LIMIT 1;
  IF v_w_arbeiten IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word arbeiten not found.'; END IF;

  SELECT id INTO v_w_kaffee FROM words WHERE course_id=v_course AND lemma='Kaffee' AND part_of_speech='noun' AND translation='قهوه' ORDER BY id LIMIT 1;
  IF v_w_kaffee IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Kaffee not found.'; END IF;

  SELECT id INTO v_w_gut FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_gut IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gut not found.'; END IF;

  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;

  SELECT id INTO v_w_in FROM words WHERE course_id=v_course AND lemma='in' AND part_of_speech='preposition' AND translation='در / داخل' ORDER BY id LIMIT 1;
  IF v_w_in IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word in not found.'; END IF;

  SELECT id INTO v_w_buero FROM words WHERE course_id=v_course AND lemma='Büro' AND part_of_speech='noun' AND translation='دفتر کار' ORDER BY id LIMIT 1;
  IF v_w_buero IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Büro not found.'; END IF;

  SELECT id INTO v_w_gestern FROM words WHERE course_id=v_course AND lemma='gestern' AND part_of_speech='adverb' AND translation='دیروز' ORDER BY id LIMIT 1;
  IF v_w_gestern IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gestern not found.'; END IF;

  SELECT id INTO v_w_sein FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_sein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word sein not found.'; END IF;

  SELECT id INTO v_w_gestern_war_ich_im_buero FROM words WHERE course_id=v_course AND lemma='Gestern war ich im Büro.' AND part_of_speech='phrase' AND translation='دیروز در دفتر کار بودم.' ORDER BY id LIMIT 1;
  IF v_w_gestern_war_ich_im_buero IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Gestern war ich im Büro. not found.'; END IF;

  SELECT id INTO v_w_was_hast_du_gemacht FROM words WHERE course_id=v_course AND lemma='Was hast du gemacht?' AND part_of_speech='phrase' AND translation='چه کار کردی؟' ORDER BY id LIMIT 1;
  IF v_w_was_hast_du_gemacht IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Was hast du gemacht?','Was hast du gemacht?','phrase','چه کار کردی؟',21,'{"construction":"Perfekt","auxiliary":"haben","auxiliaryForm":"hast","participle":"gemacht","participleLemma":"machen"}','[{"text":"Was machst du?","translation":"چه کار می کنی؟"},{"text":"Wo warst du gestern?","translation":"دیروز کجا بودی؟"},{"text":"Wie war es im Büro?","translation":"در دفتر کار چطور بود؟"},{"text":"Hast du Kaffee gemacht?","translation":"قهوه درست کردی؟"},{"text":"Was brauchst du?","translation":"چی لازم داری؟"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":42,"focus":"Perfekt"}');
    SET v_w_was_hast_du_gemacht=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_ich_habe_gearbeitet FROM words WHERE course_id=v_course AND lemma='Ich habe gearbeitet.' AND part_of_speech='phrase' AND translation='کار کردم.' ORDER BY id LIMIT 1;
  IF v_w_ich_habe_gearbeitet IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich habe gearbeitet.','Ich habe gearbeitet.','phrase','کار کردم.',21,'{"construction":"Perfekt","auxiliary":"haben","auxiliaryForm":"habe","participle":"gearbeitet","participleLemma":"arbeiten"}','[{"text":"Ich arbeite.","translation":"کار می کنم."},{"text":"Gestern war ich im Büro.","translation":"دیروز در دفتر کار بودم."},{"text":"Ich habe Kaffee gemacht.","translation":"قهوه درست کردم."},{"text":"Es war gut.","translation":"خوب بود."},{"text":"Ich bin müde.","translation":"من خسته ام."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":42,"focus":"Perfekt"}');
    SET v_w_ich_habe_gearbeitet=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_ich_habe_kaffee_gemacht FROM words WHERE course_id=v_course AND lemma='Ich habe Kaffee gemacht.' AND part_of_speech='phrase' AND translation='قهوه درست کردم.' ORDER BY id LIMIT 1;
  IF v_w_ich_habe_kaffee_gemacht IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich habe Kaffee gemacht.','Ich habe Kaffee gemacht.','phrase','قهوه درست کردم.',22,'{"construction":"Perfekt","auxiliary":"haben","auxiliaryForm":"habe","participle":"gemacht","participleLemma":"machen"}','[{"text":"Ich habe gearbeitet.","translation":"کار کردم."},{"text":"Ich möchte einen Kaffee.","translation":"یک قهوه می خواهم."},{"text":"Kaffee, bitte.","translation":"قهوه، لطفا."},{"text":"Es war gut.","translation":"خوب بود."},{"text":"Ich brauche Hilfe.","translation":"کمک لازم دارم."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":42,"focus":"Perfekt"}');
    SET v_w_ich_habe_kaffee_gemacht=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_anna,v_c_laura,'Was hast du gemacht?','چه کار کردی؟','Anna erzählt noch einmal kurz von gestern. Laura fragt jetzt genauer, was Anna gemacht hat.','آنا دوباره کوتاه درباره دیروز می گوید. لورا این بار دقیق تر می پرسد آنا چه کار کرده است.','story','anna-laura-office',9,21,110,1,'validated','{"relationship":"colleagues","context":"office-small-talk-about-yesterday","cefr":"A2","grammarFocus":"controlled-perfekt-with-haben"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,1,'character','Gestern war ich im Büro.','دیروز در دفتر کار بودم.',21,NULL,NULL,NULL,NULL,'[{"surface":"Gestern","lemma":"gestern","translation":"دیروز","partOfSpeech":"adverb"},{"surface":"war","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"بودم","form":"preterite_1sg"},{"surface":"ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"im","lemma":"in","translation":"در / داخل","partOfSpeech":"preposition","meaning":"در","form":"contraction_in_dem"},{"surface":"Büro","lemma":"Büro","translation":"دفتر کار","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","focus":"Perfekt"}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_laura,2,'learner','Was hast du gemacht?','چه کار کردی؟',21,NULL,NULL,'was hast du gemacht',NULL,'[{"surface":"Was","lemma":"was","translation":"چی / چه","partOfSpeech":"pronoun"},{"surface":"hast","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"perfect_auxiliary_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"gemacht","lemma":"machen","translation":"انجام دادن","partOfSpeech":"verb","meaning":"انجام دادی","form":"past_participle","suffix":"?"}]','اولین Perfekt','در «Was hast du gemacht?» کلمه «hast» فعل کمکی است و «gemacht» شکل گذشته «machen». فعلا کل سوال را به صورت یک الگوی کاربردی یاد بگیر.',NULL,'{"cefr":"A2","focus":"Perfekt"}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,3,'character','Ich habe gearbeitet.','کار کردم.',21,NULL,NULL,NULL,NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"perfect_auxiliary_1sg"},{"surface":"gearbeitet","lemma":"arbeiten","translation":"کار کردن","partOfSpeech":"verb","meaning":"کار کردم","form":"past_participle","suffix":"."}]','جواب با همان الگو','«Ich habe gearbeitet.» یعنی «کار کردم». این عبارت در درس بعد Target اصلی می شود.',NULL,'{"cefr":"A2","focus":"Perfekt"}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_laura,4,'learner','Gut.','خوبه.',21,NULL,NULL,'gut',NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"خوبه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","focus":"Perfekt"}');
  SET v_t_4=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_laura,v_c_anna,'Ich habe gearbeitet','کار کردم','Laura stellt dieselbe Frage noch einmal. Anna antwortet jetzt selbst mit dem ersten vollständigen Perfekt-Satz.','لورا همان سوال را دوباره می پرسد. آنا حالا خودش با اولین جمله کامل Perfekt جواب می دهد.','story','anna-laura-office',10,21,110,2,'validated','{"relationship":"colleagues","context":"office-small-talk-about-yesterday","cefr":"A2","grammarFocus":"controlled-perfekt-with-haben"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_laura,1,'character','Was hast du gemacht?','چه کار کردی؟',21,NULL,NULL,NULL,NULL,'[{"surface":"Was","lemma":"was","translation":"چی / چه","partOfSpeech":"pronoun"},{"surface":"hast","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"perfect_auxiliary_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"gemacht","lemma":"machen","translation":"انجام دادن","partOfSpeech":"verb","meaning":"انجام دادی","form":"past_participle","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","focus":"Perfekt"}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,2,'learner','Ich habe gearbeitet.','کار کردم.',21,NULL,NULL,'ich habe gearbeitet',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"perfect_auxiliary_1sg"},{"surface":"gearbeitet","lemma":"arbeiten","translation":"کار کردن","partOfSpeech":"verb","meaning":"کار کردم","form":"past_participle","suffix":"."}]','habe + Partizip','در این جمله «habe» فعل کمکی است و «gearbeitet» شکل گذشته «arbeiten». برای حالا همین ساختار را در جمله کامل تمرین کن.',NULL,'{"cefr":"A2","focus":"Perfekt"}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_laura,3,'character','Im Büro?','در دفتر کار؟',21,NULL,NULL,NULL,NULL,'[{"surface":"Im","lemma":"in","translation":"در / داخل","partOfSpeech":"preposition","meaning":"در","form":"contraction_in_dem"},{"surface":"Büro","lemma":"Büro","translation":"دفتر کار","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","focus":"Perfekt"}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,4,'learner','Ja.','بله.',21,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","focus":"Perfekt"}');
  SET v_t_8=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_laura,v_c_anna,'Ich habe Kaffee gemacht','قهوه درست کردم','Laura fragt nach Kaffee. Anna verwendet denselben Perfekt-Rahmen jetzt mit dem bekannten Verb machen.','لورا درباره قهوه می پرسد. آنا همان الگوی Perfekt را این بار با فعل آشنای machen استفاده می کند.','story','anna-laura-office',11,22,110,3,'validated','{"relationship":"colleagues","context":"office-small-talk-about-yesterday","cefr":"A2","grammarFocus":"controlled-perfekt-with-haben"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_laura,1,'character','Hast du Kaffee gemacht?','قهوه درست کردی؟',22,NULL,NULL,NULL,NULL,'[{"surface":"Hast","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"perfect_auxiliary_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"Kaffee","lemma":"Kaffee","translation":"قهوه","partOfSpeech":"noun"},{"surface":"gemacht","lemma":"machen","translation":"انجام دادن","partOfSpeech":"verb","meaning":"درست کردی","form":"past_participle","suffix":"?"}]','همان Perfekt در یک سوال جدید','ساختار همان است: «hast» + شکل گذشته فعل. این بار «gemacht» همراه با «Kaffee» یعنی «قهوه درست کردی».',NULL,'{"cefr":"A2","focus":"Perfekt"}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,2,'learner','Ja. Ich habe Kaffee gemacht.','بله. قهوه درست کردم.',22,NULL,NULL,'ja ich habe kaffee gemacht',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"perfect_auxiliary_1sg"},{"surface":"Kaffee","lemma":"Kaffee","translation":"قهوه","partOfSpeech":"noun"},{"surface":"gemacht","lemma":"machen","translation":"انجام دادن","partOfSpeech":"verb","meaning":"درست کردم","form":"past_participle","suffix":"."}]','الگوی قبلی، فعل قبلی','هم لغت ها آشنا هستند و هم ساختار را یک بار دیده ای؛ فقط آن ها را در یک موقعیت جدید کنار هم می گذاری.',NULL,'{"cefr":"A2","focus":"Perfekt"}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_laura,3,'character','Gut.','خوبه.',22,NULL,NULL,NULL,NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"خوبه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","focus":"Perfekt"}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,4,'learner','Ja.','بله.',22,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","focus":"Perfekt"}');
  SET v_t_12=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_laura,v_c_anna,'Was hast du gestern gemacht?','دیروز چه کار کردی؟','Laura und Anna verbinden die neuen Perfekt-Muster zu einem kurzen Gespräch über Annas gestrigen Arbeitstag.','لورا و آنا الگوهای جدید Perfekt را در یک گفتگوی کوتاه درباره روز کاری دیروز آنا کنار هم می گذارند.','story','anna-laura-office',12,22,110,4,'validated','{"relationship":"colleagues","context":"office-small-talk-about-yesterday","cefr":"A2","grammarFocus":"controlled-perfekt-with-haben"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_laura,1,'character','Was hast du gemacht?','چه کار کردی؟',22,NULL,NULL,NULL,NULL,'[{"surface":"Was","lemma":"was","translation":"چی / چه","partOfSpeech":"pronoun"},{"surface":"hast","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"perfect_auxiliary_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"gemacht","lemma":"machen","translation":"انجام دادن","partOfSpeech":"verb","meaning":"انجام دادی","form":"past_participle","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","focus":"Perfekt"}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,2,'learner','Ich habe gearbeitet.','کار کردم.',22,NULL,NULL,'ich habe gearbeitet',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"perfect_auxiliary_1sg"},{"surface":"gearbeitet","lemma":"arbeiten","translation":"کار کردن","partOfSpeech":"verb","meaning":"کار کردم","form":"past_participle","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","focus":"Perfekt"}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_laura,3,'character','Hast du Kaffee gemacht?','قهوه درست کردی؟',22,NULL,NULL,NULL,NULL,'[{"surface":"Hast","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"perfect_auxiliary_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"Kaffee","lemma":"Kaffee","translation":"قهوه","partOfSpeech":"noun"},{"surface":"gemacht","lemma":"machen","translation":"انجام دادن","partOfSpeech":"verb","meaning":"درست کردی","form":"past_participle","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","focus":"Perfekt"}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,4,'learner','Ja. Ich habe Kaffee gemacht.','بله. قهوه درست کردم.',22,NULL,NULL,'ja ich habe kaffee gemacht',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"perfect_auxiliary_1sg"},{"surface":"Kaffee","lemma":"Kaffee","translation":"قهوه","partOfSpeech":"noun"},{"surface":"gemacht","lemma":"machen","translation":"انجام دادن","partOfSpeech":"verb","meaning":"درست کردم","form":"past_participle","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","focus":"Perfekt"}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_laura,5,'character','Gut.','خوبه.',22,NULL,NULL,NULL,NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"خوبه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","focus":"Perfekt"}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,6,'learner','Ja.','بله.',22,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","focus":"Perfekt"}');
  SET v_t_18=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_gestern,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_sein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ich,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_in,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_buero,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_was,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_haben,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_machen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_arbeiten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_gestern_war_ich_im_buero,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ich_habe_gearbeitet,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_was_hast_du_gemacht,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_was,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_haben,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_machen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_arbeiten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_in,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_buero,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_was_hast_du_gemacht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich_habe_gearbeitet,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_haben,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_kaffee,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_machen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich_habe_gearbeitet,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich_habe_kaffee_gemacht,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_was,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_haben,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_du,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_machen,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_arbeiten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_kaffee,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_was_hast_du_gemacht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich_habe_gearbeitet,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich_habe_kaffee_gemacht,'review',0,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_was_hast_du_gemacht,'عبارت جدید',NULL,21,NULL,'{"cefr":"A2","focus":"Perfekt"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به جمله درباره دیروز گوش کن',NULL,21,NULL,'{"cefr":"A2","focus":"Perfekt"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'بپرس چه کار کرده است',NULL,21,NULL,'{"cefr":"A2","focus":"Perfekt"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به جواب آنا گوش کن',NULL,21,NULL,'{"cefr":"A2","focus":"Perfekt"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'واکنش نشان بده',NULL,21,NULL,'{"cefr":"A2","focus":"Perfekt"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,v_t_2,NULL,'معنی درست را انتخاب کن',NULL,21,'{"mode":"turn_translation","question":"«Was hast du gemacht?» یعنی چی؟","choices":["چه کار کردی؟","کجا بودی؟","چه کار می کنی؟"],"correctIndex":0}','{"cefr":"A2","focus":"Perfekt"}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_ich_habe_gearbeitet,'عبارت جدید',NULL,21,NULL,'{"cefr":"A2","focus":"Perfekt"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به سوال گذشته گوش کن',NULL,21,NULL,'{"cefr":"A2","focus":"Perfekt"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'بگو کار کردی',NULL,21,NULL,'{"cefr":"A2","focus":"Perfekt"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به سوال محل کار گوش کن',NULL,21,NULL,'{"cefr":"A2","focus":"Perfekt"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'تایید کن',NULL,21,NULL,'{"cefr":"A2","focus":"Perfekt"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_6,NULL,'معنی درست را انتخاب کن',NULL,21,'{"mode":"turn_translation","question":"«Ich habe gearbeitet.» یعنی چی؟","choices":["کار کردم.","کار می کنم.","در دفتر کار بودم."],"correctIndex":0}','{"cefr":"A2","focus":"Perfekt"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',7,v_t_6,NULL,'جمله گذشته را به ترتیب درست بساز',NULL,21,'{"source":"turn_tokens","shuffle":true}','{"cefr":"A2","focus":"Perfekt"}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_ich_habe_kaffee_gemacht,'عبارت جدید',NULL,22,NULL,'{"cefr":"A2","focus":"Perfekt"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_9,NULL,'به سوال درباره قهوه گوش کن',NULL,22,NULL,'{"cefr":"A2","focus":"Perfekt"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_10,NULL,'بگو قهوه درست کردی',NULL,22,NULL,'{"cefr":"A2","focus":"Perfekt"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_11,NULL,'به واکنش لورا گوش کن',NULL,22,NULL,'{"cefr":"A2","focus":"Perfekt"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_12,NULL,'تایید کن',NULL,22,NULL,'{"cefr":"A2","focus":"Perfekt"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_10,NULL,'معنی درست را انتخاب کن',NULL,22,'{"mode":"turn_translation","question":"«Ich habe Kaffee gemacht.» یعنی چی؟","choices":["قهوه درست کردم.","قهوه می خواهم.","کار کردم."],"correctIndex":0}','{"cefr":"A2","focus":"Perfekt"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,22,'{"source":"lesson_story","question":"آنا چه چیزی درست کرده است؟","choices":["قهوه","دارو","غذا"],"correctIndex":0}','{"cefr":"A2","focus":"Perfekt"}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_13,NULL,'به سوال درباره گذشته گوش کن',NULL,22,NULL,'{"cefr":"A2","focus":"Perfekt"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_14,NULL,'بگو کار کردی',NULL,22,NULL,'{"cefr":"A2","focus":"Perfekt"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_15,NULL,'به سوال درباره قهوه گوش کن',NULL,22,NULL,'{"cefr":"A2","focus":"Perfekt"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_16,NULL,'بگو قهوه درست کردی',NULL,22,NULL,'{"cefr":"A2","focus":"Perfekt"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_17,NULL,'به واکنش لورا گوش کن',NULL,22,NULL,'{"cefr":"A2","focus":"Perfekt"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_18,NULL,'تایید کن',NULL,22,NULL,'{"cefr":"A2","focus":"Perfekt"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,22,'{"source":"lesson_story","question":"آنا دیروز چه دو کاری انجام داده است؟","choices":["کار کرده و قهوه درست کرده است.","به هتل رفته و دارو خریده است.","فقط قهوه خورده است."],"correctIndex":0}','{"cefr":"A2","focus":"Perfekt"}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 042 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (ac.config IS NULL OR JSON_EXTRACT(ac.config,'$.question') IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without task.'; END IF;
  UPDATE chapters SET status='validated' WHERE id=v_chapter;
  UPDATE modules SET status='active' WHERE id=v_module;
  UPDATE levels SET status='active' WHERE id=v_level;
  COMMIT;
END$$
DELIMITER ;

CALL import_nova_series_042_v9();
DROP PROCEDURE IF EXISTS import_nova_series_042_v9;
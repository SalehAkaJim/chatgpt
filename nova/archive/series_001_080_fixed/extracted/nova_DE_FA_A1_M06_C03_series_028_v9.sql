-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 028
-- A1 > Zuhause > Etwas ist kaputt
-- Canonical dependencies: Series 015 r3, Series 020 r2.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_028_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_028_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_anna BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_jonas BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_was BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_machen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_das_pronoun BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_der BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_bett BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danke BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_etwas BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kaputt BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_etwas_ist_kaputt BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_lampe BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_die_lampe_ist_kaputt BIGINT UNSIGNED DEFAULT NULL;
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

  DECLARE EXIT HANDLER FOR SQLEXCEPTION
  BEGIN
    ROLLBACK;
    RESIGNAL;
  END;

  START TRANSACTION;
  SELECT id INTO v_course FROM courses WHERE learning_language='de' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND sort_order=1 ORDER BY id LIMIT 1;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=6 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 026 before Series 028.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=2 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Module 06 Chapter 03 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 027 before Series 028.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Module 06 Chapter 03 must be empty before Series 028 import.'; END IF;

  SELECT id INTO v_c_anna FROM characters WHERE course_id=v_course AND name='Anna' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_anna IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Anna not found.'; END IF;

  SELECT id INTO v_c_jonas FROM characters WHERE course_id=v_course AND name='Jonas' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_jonas IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Jonas not found.'; END IF;

  SELECT id INTO v_w_was FROM words WHERE course_id=v_course AND lemma='was' AND part_of_speech='pronoun' AND translation='چی / چه' ORDER BY id LIMIT 1;
  IF v_w_was IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word was not found.'; END IF;

  SELECT id INTO v_w_ich FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_ich IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ich not found.'; END IF;

  SELECT id INTO v_w_machen FROM words WHERE course_id=v_course AND lemma='machen' AND part_of_speech='verb' AND translation='انجام دادن' ORDER BY id LIMIT 1;
  IF v_w_machen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word machen not found.'; END IF;

  SELECT id INTO v_w_das_pronoun FROM words WHERE course_id=v_course AND lemma='das' AND part_of_speech='pronoun' AND translation='این / آن' ORDER BY id LIMIT 1;
  IF v_w_das_pronoun IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word das not found.'; END IF;

  SELECT id INTO v_w_sein FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_sein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word sein not found.'; END IF;

  SELECT id INTO v_w_der FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_der IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word der not found.'; END IF;

  SELECT id INTO v_w_bett FROM words WHERE course_id=v_course AND lemma='Bett' AND part_of_speech='noun' AND translation='تخت' ORDER BY id LIMIT 1;
  IF v_w_bett IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Bett not found.'; END IF;

  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;

  SELECT id INTO v_w_danke FROM words WHERE course_id=v_course AND lemma='danke' AND part_of_speech='interjection' AND translation='ممنون' ORDER BY id LIMIT 1;
  IF v_w_danke IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word danke not found.'; END IF;

  SELECT id INTO v_w_etwas FROM words WHERE course_id=v_course AND lemma='etwas' AND part_of_speech='pronoun' AND translation='چیزی / یک چیزی' ORDER BY id LIMIT 1;
  IF v_w_etwas IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'etwas','etwas','pronoun','چیزی / یک چیزی',17,NULL,'[{"text":"nichts","translation":"هیچ چیز"},{"text":"was","translation":"چی / چه"},{"text":"alles","translation":"همه چیز"},{"text":"hier","translation":"اینجا"},{"text":"das","translation":"این / آن"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_etwas=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_kaputt FROM words WHERE course_id=v_course AND lemma='kaputt' AND part_of_speech='adjective' AND translation='خراب' ORDER BY id LIMIT 1;
  IF v_w_kaputt IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'kaputt','kaputt','adjective','خراب',17,NULL,'[{"text":"gut","translation":"خوب"},{"text":"neu","translation":"نو / جدید"},{"text":"teuer","translation":"گران"},{"text":"schön","translation":"زیبا / قشنگ"},{"text":"rot","translation":"قرمز"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_kaputt=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_etwas_ist_kaputt FROM words WHERE course_id=v_course AND lemma='Etwas ist kaputt.' AND part_of_speech='phrase' AND translation='یک چیزی خراب است.' ORDER BY id LIMIT 1;
  IF v_w_etwas_ist_kaputt IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Etwas ist kaputt.','Etwas ist kaputt.','phrase','یک چیزی خراب است.',17,NULL,'[{"text":"Das passt nicht.","translation":"این اندازه من نیست."},{"text":"Das ist teuer.","translation":"این گران است."},{"text":"Ich wohne hier.","translation":"من اینجا زندگی می کنم."},{"text":"Hier ist das Bett.","translation":"تخت اینجاست."},{"text":"Ich möchte das umtauschen.","translation":"می خواهم این را تعویض کنم."}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_etwas_ist_kaputt=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_lampe FROM words WHERE course_id=v_course AND lemma='Lampe' AND part_of_speech='noun' AND translation='چراغ' ORDER BY id LIMIT 1;
  IF v_w_lampe IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Lampe','Lampe','noun','چراغ',17,'{"article":"die","plural":"Lampen"}','[{"text":"Bett","translation":"تخت"},{"text":"Tisch","translation":"میز"},{"text":"Stuhl","translation":"صندلی"},{"text":"Sofa","translation":"مبل"},{"text":"Schrank","translation":"کمد"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_lampe=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_die_lampe_ist_kaputt FROM words WHERE course_id=v_course AND lemma='Die Lampe ist kaputt.' AND part_of_speech='phrase' AND translation='چراغ خراب است.' ORDER BY id LIMIT 1;
  IF v_w_die_lampe_ist_kaputt IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Die Lampe ist kaputt.','Die Lampe ist kaputt.','phrase','چراغ خراب است.',17,NULL,'[{"text":"Etwas ist kaputt.","translation":"یک چیزی خراب است."},{"text":"Hier ist das Bett.","translation":"تخت اینجاست."},{"text":"Das ist meine Wohnung.","translation":"این خانه من است."},{"text":"Der Tisch ist hier.","translation":"میز اینجاست."},{"text":"Das passt nicht.","translation":"این اندازه من نیست."}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_die_lampe_ist_kaputt=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_jonas,v_c_anna,'Etwas ist kaputt','یک چیزی خراب است','Jonas merkt, dass zu Hause etwas nicht stimmt. Anna sagt, dass etwas kaputt ist und nennt die Lampe.','یوناس متوجه می شود در خانه مشکلی هست. آنا می گوید یک چیزی خراب است و چراغ را نشان می دهد.','story','anna-jonas-home-problem',1,17,105,1,'validated','{"relationship":"spouses","storyArc":"beginning-development-resolution-ending"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_jonas,1,'character','Ist etwas kaputt?','یک چیزی خراب است؟',17,NULL,NULL,NULL,NULL,'[{"surface":"Ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است","form":"present_3sg"},{"surface":"etwas","lemma":"etwas","translation":"چیزی / یک چیزی","partOfSpeech":"pronoun"},{"surface":"kaputt","lemma":"kaputt","translation":"خراب","partOfSpeech":"adjective","suffix":"?"}]','عبارت را در موقعیت ببین','«Ist etwas kaputt?» یعنی «یک چیزی خراب است؟». فعلا فقط معنی کل سوال را بگیر.',NULL,NULL);
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,2,'learner','Ja. Etwas ist kaputt.','بله. یک چیزی خراب است.',17,NULL,NULL,'ja etwas ist kaputt',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Etwas","lemma":"etwas","translation":"چیزی / یک چیزی","partOfSpeech":"pronoun"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است","form":"present_3sg"},{"surface":"kaputt","lemma":"kaputt","translation":"خراب","partOfSpeech":"adjective","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_jonas,3,'character','Was?','چی؟',17,NULL,NULL,NULL,NULL,'[{"surface":"Was","lemma":"was","translation":"چی / چه","partOfSpeech":"pronoun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,4,'learner','Die Lampe.','چراغ.',17,NULL,NULL,'die lampe',NULL,'[{"surface":"Die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"feminine_nominative"},{"surface":"Lampe","lemma":"Lampe","translation":"چراغ","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_4=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_jonas,v_c_anna,'Die Lampe','چراغ','Jonas prüft, ob Anna wirklich die Lampe meint. Anna bestätigt den Gegenstand und das Problem.','یوناس بررسی می کند که منظور آنا واقعا چراغ است. آنا هم وسیله و هم خراب بودن آن را تایید می کند.','story','anna-jonas-home-problem',2,17,105,2,'validated','{"relationship":"spouses","storyArc":"beginning-development-resolution-ending"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_jonas,1,'character','Die Lampe?','چراغ؟',17,NULL,NULL,NULL,NULL,'[{"surface":"Die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"feminine_nominative"},{"surface":"Lampe","lemma":"Lampe","translation":"چراغ","partOfSpeech":"noun","suffix":"?"}]','اسم را با حرف تعریف ببین','Lampe یک اسم مونث است و اینجا با «die» می آید. لازم نیست جدول حالت ها را حفظ کنی.',NULL,NULL);
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,2,'learner','Ja. Die Lampe.','بله. چراغ.',17,NULL,NULL,'ja die lampe',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"feminine_nominative"},{"surface":"Lampe","lemma":"Lampe","translation":"چراغ","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_jonas,3,'character','Ist die Lampe kaputt?','چراغ خراب است؟',17,NULL,NULL,NULL,NULL,'[{"surface":"Ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است","form":"present_3sg"},{"surface":"die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"feminine_nominative"},{"surface":"Lampe","lemma":"Lampe","translation":"چراغ","partOfSpeech":"noun"},{"surface":"kaputt","lemma":"kaputt","translation":"خراب","partOfSpeech":"adjective","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,4,'learner','Ja.','بله.',17,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_8=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_jonas,v_c_anna,'Die Lampe ist kaputt','چراغ خراب است','Anna beschreibt das Problem jetzt mit einem vollständigen Satz. Jonas übernimmt es.','آنا حالا مشکل را با یک جمله کامل توضیح می دهد. یوناس می گوید به آن رسیدگی می کند.','story','anna-jonas-home-problem',3,17,105,3,'validated','{"relationship":"spouses","storyArc":"beginning-development-resolution-ending"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_jonas,1,'character','Ist die Lampe kaputt?','چراغ خراب است؟',17,NULL,NULL,NULL,NULL,'[{"surface":"Ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است","form":"present_3sg"},{"surface":"die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"feminine_nominative"},{"surface":"Lampe","lemma":"Lampe","translation":"چراغ","partOfSpeech":"noun"},{"surface":"kaputt","lemma":"kaputt","translation":"خراب","partOfSpeech":"adjective","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,2,'learner','Ja. Die Lampe ist kaputt.','بله. چراغ خراب است.',17,NULL,NULL,'ja die lampe ist kaputt',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"feminine_nominative"},{"surface":"Lampe","lemma":"Lampe","translation":"چراغ","partOfSpeech":"noun"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است","form":"present_3sg"},{"surface":"kaputt","lemma":"kaputt","translation":"خراب","partOfSpeech":"adjective","suffix":"."}]','الگوی ساده توضیح مشکل','«Die Lampe ist kaputt.» یعنی «چراغ خراب است». بعدا می توانی اسم های دیگر را هم در همین الگو بگذاری.',NULL,NULL);
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_jonas,3,'character','Ich mache das.','من انجامش می دهم.',17,NULL,NULL,NULL,NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"mache","lemma":"machen","translation":"انجام دادن","partOfSpeech":"verb","meaning":"انجام می دهم","form":"present_1sg"},{"surface":"das","lemma":"das","translation":"این / آن","partOfSpeech":"pronoun","meaning":"این کار / آن","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,4,'learner','Danke!','ممنون!',17,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_12=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_jonas,v_c_anna,'Das Bett ist kaputt','تخت خراب است','Anna überträgt das bekannte Problemmuster auf das schon gelernte Bett. Jonas sagt wieder, dass er sich darum kümmert.','آنا همان الگوی توضیح مشکل را روی کلمه آشنای تخت استفاده می کند. یوناس دوباره می گوید به آن رسیدگی می کند.','story','anna-jonas-home-problem',4,17,105,4,'validated','{"relationship":"spouses","storyArc":"beginning-development-resolution-ending"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_jonas,1,'character','Was ist kaputt?','چی خراب است؟',17,NULL,NULL,NULL,NULL,'[{"surface":"Was","lemma":"was","translation":"چی / چه","partOfSpeech":"pronoun"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است","form":"present_3sg"},{"surface":"kaputt","lemma":"kaputt","translation":"خراب","partOfSpeech":"adjective","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,2,'learner','Das Bett ist kaputt.','تخت خراب است.',17,NULL,NULL,'das bett ist kaputt',NULL,'[{"surface":"Das","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"neuter_nominative"},{"surface":"Bett","lemma":"Bett","translation":"تخت","partOfSpeech":"noun"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است","form":"present_3sg"},{"surface":"kaputt","lemma":"kaputt","translation":"خراب","partOfSpeech":"adjective","suffix":"."}]','همان الگو، اسم دیگر','قبلا «Die Lampe ist kaputt.» را دیدی. حالا همان ساختار با Bett استفاده می شود: «Das Bett ist kaputt.»',NULL,NULL);
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_jonas,3,'character','Ich mache das.','من انجامش می دهم.',17,NULL,NULL,NULL,NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"mache","lemma":"machen","translation":"انجام دادن","partOfSpeech":"verb","meaning":"انجام می دهم","form":"present_1sg"},{"surface":"das","lemma":"das","translation":"این / آن","partOfSpeech":"pronoun","meaning":"این کار / آن","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,4,'learner','Danke!','ممنون!',17,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_16=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_sein,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_etwas,'passive',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_kaputt,'passive',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_was,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_der,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_lampe,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_etwas_ist_kaputt,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_der,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_lampe,'new',1,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_sein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_kaputt,'review',0,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_sein,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_der,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_lampe,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_kaputt,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_machen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_das_pronoun,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_die_lampe_ist_kaputt,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_was,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_sein,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_kaputt,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_der,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_bett,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_machen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_das_pronoun,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_die_lampe_ist_kaputt,'review',0,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_etwas_ist_kaputt,'عبارت جدید',NULL,17,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به سوال یوناس گوش کن',NULL,17,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'بگو یک چیزی خراب است',NULL,17,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به یوناس گوش کن',NULL,17,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'بگو چراغ است',NULL,17,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,v_t_2,NULL,'معنی درست را انتخاب کن',NULL,17,'{"mode":"turn_translation","question":"«Etwas ist kaputt.» یعنی چی؟","choices":["یک چیزی خراب است.","یک چیزی گران است.","خانه اینجاست."],"correctIndex":0}',NULL);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_lampe,'کلمه جدید',NULL,17,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به وسیله مورد نظر گوش کن',NULL,17,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'چراغ را تایید کن',NULL,17,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به سوال خرابی گوش کن',NULL,17,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'تایید کن',NULL,17,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,NULL,v_w_lampe,'معنی درست را انتخاب کن',NULL,17,'{"mode":"word_translation","question":"Lampe","choices":["چراغ","تخت","میز"],"correctIndex":0}',NULL);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_die_lampe_ist_kaputt,'عبارت جدید',NULL,17,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_9,NULL,'به سوال یوناس گوش کن',NULL,17,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_10,NULL,'مشکل چراغ را کامل بگو',NULL,17,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_11,NULL,'به جواب یوناس گوش کن',NULL,17,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_12,NULL,'تشکر کن',NULL,17,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_10,NULL,'معنی درست را انتخاب کن',NULL,17,'{"mode":"turn_translation","question":"«Die Lampe ist kaputt.» یعنی چی؟","choices":["چراغ خراب است.","چراغ اینجاست.","چراغ گران است."],"correctIndex":0}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'word_order',7,v_t_10,NULL,'جمله را به ترتیب درست بساز',NULL,17,'{"source":"turn_tokens","shuffle":true}',NULL);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_13,NULL,'به سوال مشکل گوش کن',NULL,17,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_14,NULL,'این بار مشکل تخت را بگو',NULL,17,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_15,NULL,'به جواب یوناس گوش کن',NULL,17,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_16,NULL,'تشکر کن',NULL,17,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',5,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,17,'{"source":"lesson_story","question":"این بار چه چیزی خراب است؟","choices":["تخت","چراغ","میز"],"correctIndex":0}',NULL);

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 028 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (ac.config IS NULL OR JSON_EXTRACT(ac.config,'$.question') IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without task.'; END IF;
  UPDATE chapters SET status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;

CALL import_nova_series_028_v9();
DROP PROCEDURE IF EXISTS import_nova_series_028_v9;
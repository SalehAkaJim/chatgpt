-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 069
-- A2 > Gesundheit & Beschwerden > Nehmen Sie diese Tabletten
-- Requires Series 068.
-- Continues mia-doctor-weber orders 16-19.
-- Introduces a controlled formal imperative in a doctor context.
-- Recovery language is deferred to Series 070.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_069_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_069_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_mia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_doctor BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_haben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sie_formal BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danke BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_bitte BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_fieber BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_husten BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_und BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_seit BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gestern BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wann BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_seit_gestern BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_habe_fieber_und_husten BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_nehmen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_tablette BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_dieser BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_nehmen_sie_diese_tabletten BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_nehme_diese_tabletten BIGINT UNSIGNED DEFAULT NULL;
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
  SELECT id INTO v_course FROM courses WHERE learning_language='de' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='A2' AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Level not found.'; END IF;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=6 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 066 before Series 069.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=3 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=4 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 06 Chapter 04 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 068 before Series 069.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_prev_chapter AND status IN ('validated','complete');
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 068 Chapter must be validated/complete before Series 069.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 06 Chapter 04 must be empty before Series 069 import.'; END IF;

  SELECT id INTO v_c_mia FROM characters WHERE course_id=v_course AND name='Mia' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_mia IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Mia not found.'; END IF;

  SELECT id INTO v_c_doctor FROM characters WHERE course_id=v_course AND name='Dr. Weber' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_doctor IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Dr. Weber not found.'; END IF;

  SELECT id INTO v_w_ich FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_ich IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ich not found.'; END IF;

  SELECT id INTO v_w_haben FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_haben IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word haben not found.'; END IF;

  SELECT id INTO v_w_sie_formal FROM words WHERE course_id=v_course AND lemma='Sie' AND part_of_speech='pronoun' AND translation='شما' ORDER BY id LIMIT 1;
  IF v_w_sie_formal IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Sie not found.'; END IF;

  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;

  SELECT id INTO v_w_gut FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_gut IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gut not found.'; END IF;

  SELECT id INTO v_w_danke FROM words WHERE course_id=v_course AND lemma='danke' AND part_of_speech='interjection' AND translation='ممنون' ORDER BY id LIMIT 1;
  IF v_w_danke IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word danke not found.'; END IF;

  SELECT id INTO v_w_bitte FROM words WHERE course_id=v_course AND lemma='bitte' AND part_of_speech='interjection' AND translation='لطفا / خواهش می کنم' ORDER BY id LIMIT 1;
  IF v_w_bitte IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word bitte not found.'; END IF;

  SELECT id INTO v_w_fieber FROM words WHERE course_id=v_course AND lemma='Fieber' AND part_of_speech='noun' AND translation='تب' ORDER BY id LIMIT 1;
  IF v_w_fieber IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Fieber not found.'; END IF;

  SELECT id INTO v_w_husten FROM words WHERE course_id=v_course AND lemma='Husten' AND part_of_speech='noun' AND translation='سرفه' ORDER BY id LIMIT 1;
  IF v_w_husten IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Husten not found.'; END IF;

  SELECT id INTO v_w_und FROM words WHERE course_id=v_course AND lemma='und' AND part_of_speech='conjunction' AND translation='و' ORDER BY id LIMIT 1;
  IF v_w_und IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word und not found.'; END IF;

  SELECT id INTO v_w_seit FROM words WHERE course_id=v_course AND lemma='seit' AND part_of_speech='preposition' AND translation='از / از زمان' ORDER BY id LIMIT 1;
  IF v_w_seit IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word seit not found.'; END IF;

  SELECT id INTO v_w_gestern FROM words WHERE course_id=v_course AND lemma='gestern' AND part_of_speech='adverb' AND translation='دیروز' ORDER BY id LIMIT 1;
  IF v_w_gestern IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gestern not found.'; END IF;

  SELECT id INTO v_w_wann FROM words WHERE course_id=v_course AND lemma='wann' AND part_of_speech='adverb' AND translation='کی / چه زمانی' ORDER BY id LIMIT 1;
  IF v_w_wann IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word wann not found.'; END IF;

  SELECT id INTO v_w_seit_gestern FROM words WHERE course_id=v_course AND lemma='Seit gestern.' AND part_of_speech='phrase' AND translation='از دیروز.' ORDER BY id LIMIT 1;
  IF v_w_seit_gestern IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Seit gestern. not found.'; END IF;

  SELECT id INTO v_w_ich_habe_fieber_und_husten FROM words WHERE course_id=v_course AND lemma='Ich habe Fieber und Husten.' AND part_of_speech='phrase' AND translation='تب و سرفه دارم.' ORDER BY id LIMIT 1;
  IF v_w_ich_habe_fieber_und_husten IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Ich habe Fieber und Husten. not found.'; END IF;

  SELECT id INTO v_w_nehmen FROM words WHERE course_id=v_course AND lemma='nehmen' AND part_of_speech='verb' AND translation='گرفتن / مصرف کردن' ORDER BY id LIMIT 1;
  IF v_w_nehmen IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'nehmen','nehmen','verb','گرفتن / مصرف کردن',38,'{"present":{"ich":"nehme","du":"nimmst","er_sie_es":"nimmt","wir":"nehmen","Sie":"nehmen"},"formalImperative":"Nehmen Sie ...","medicalUsage":"Medikamente/Tabletten nehmen"}','[{"text":"geben","translation":"دادن"},{"text":"helfen","translation":"کمک کردن"},{"text":"bleiben","translation":"ماندن"},{"text":"machen","translation":"انجام دادن"},{"text":"kommen","translation":"آمدن"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":69,"module":6}');
    SET v_w_nehmen=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_tablette FROM words WHERE course_id=v_course AND lemma='Tablette' AND part_of_speech='noun' AND translation='قرص' ORDER BY id LIMIT 1;
  IF v_w_tablette IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Tablette','Tablette','noun','قرص',38,'{"gender":"feminine","article":"die","plural":"Tabletten"}','[{"text":"Medikament","translation":"دارو"},{"text":"Fieber","translation":"تب"},{"text":"Husten","translation":"سرفه"},{"text":"Schlüssel","translation":"کلید"},{"text":"Zimmer","translation":"اتاق"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":69,"module":6}');
    SET v_w_tablette=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_dieser FROM words WHERE course_id=v_course AND lemma='dieser' AND part_of_speech='determiner' AND translation='این' ORDER BY id LIMIT 1;
  IF v_w_dieser IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'dieser','dieser','determiner','این',38,'{"usage":"demonstrative_determiner","surfaceInSeries069":"diese","surfaceForm":"plural_accusative"}','[{"text":"mein","translation":"مال من / من"},{"text":"ein","translation":"یک"},{"text":"andere","translation":"دیگر / متفاوت"},{"text":"kein","translation":"هیچ / نه یک"},{"text":"der","translation":"حرف تعریف"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":69,"module":6}');
    SET v_w_dieser=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_nehmen_sie_diese_tabletten FROM words WHERE course_id=v_course AND lemma='Nehmen Sie diese Tabletten.' AND part_of_speech='phrase' AND translation='این قرص ها را مصرف کنید.' ORDER BY id LIMIT 1;
  IF v_w_nehmen_sie_diese_tabletten IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Nehmen Sie diese Tabletten.','Nehmen Sie diese Tabletten.','phrase','این قرص ها را مصرف کنید.',38,'{"verb":"nehmen","verbForm":"Nehmen","mood":"formal_imperative","subject":"Sie","object":"diese Tabletten","determinerLemma":"dieser","nounLemma":"Tablette"}','[{"text":"Haben Sie Fieber?","translation":"تب دارید؟"},{"text":"Ich habe Husten.","translation":"سرفه دارم."},{"text":"Nehmen Sie dieses Medikament.","translation":"این دارو را مصرف کنید."},{"text":"Ich nehme diese Tabletten.","translation":"این قرص ها را مصرف می کنم."},{"text":"Seit wann sind Sie krank?","translation":"از کی بیمارید؟"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":69,"module":6}');
    SET v_w_nehmen_sie_diese_tabletten=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_ich_nehme_diese_tabletten FROM words WHERE course_id=v_course AND lemma='Ich nehme diese Tabletten.' AND part_of_speech='phrase' AND translation='این قرص ها را مصرف می کنم.' ORDER BY id LIMIT 1;
  IF v_w_ich_nehme_diese_tabletten IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich nehme diese Tabletten.','Ich nehme diese Tabletten.','phrase','این قرص ها را مصرف می کنم.',38,'{"subject":"ich","verb":"nehmen","verbForm":"nehme","person":"1sg","object":"diese Tabletten","determinerLemma":"dieser","nounLemma":"Tablette"}','[{"text":"Nehmen Sie diese Tabletten.","translation":"این قرص ها را مصرف کنید."},{"text":"Ich habe Fieber und Husten.","translation":"تب و سرفه دارم."},{"text":"Ich brauche ein Medikament.","translation":"یک دارو لازم دارم."},{"text":"Ich nehme dieses Medikament.","translation":"این دارو را مصرف می کنم."},{"text":"Ich bleibe eine Nacht länger.","translation":"یک شب بیشتر می مونم."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":69,"module":6}');
    SET v_w_ich_nehme_diese_tabletten=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_mia,v_c_doctor,'Tabletten nehmen','مصرف قرص','Dr. Weber kennt jetzt Mias Beschwerden und gibt eine einfache Empfehlung. Die neue Kernhandlung ist Tabletten nehmen.','دکتر وبر حالا نشانه های میا را می داند و یک توصیه ساده می دهد. کار اصلی جدید مصرف قرص است.','story','mia-doctor-weber',16,38,110,1,'validated','{"relationship":"patient_and_doctor","context":"doctor-recommendation-tablets","cefr":"A2","module":6,"focus":"formal-imperative-and-taking-tablets"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,1,'character','Ich habe Fieber und Husten.','تب و سرفه دارم.',38,NULL,NULL,NULL,NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارم","form":"present_1sg"},{"surface":"Fieber","lemma":"Fieber","translation":"تب","partOfSpeech":"noun"},{"surface":"und","lemma":"und","translation":"و","partOfSpeech":"conjunction"},{"surface":"Husten","lemma":"Husten","translation":"سرفه","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_doctor,2,'learner','Nehmen Sie diese Tabletten.','این قرص ها را مصرف کنید.',38,NULL,NULL,'nehmen sie diese tabletten',NULL,'[{"surface":"Nehmen","lemma":"nehmen","translation":"گرفتن / مصرف کردن","partOfSpeech":"verb","meaning":"مصرف کنید","form":"imperative_formal"},{"surface":"Sie","lemma":"Sie","translation":"شما","partOfSpeech":"pronoun","meaning":"شما","form":"formal_2"},{"surface":"diese","lemma":"dieser","translation":"این","partOfSpeech":"determiner","meaning":"این","form":"plural_accusative"},{"surface":"Tabletten","lemma":"Tablette","translation":"قرص","partOfSpeech":"noun","meaning":"قرص ها","form":"plural_accusative","suffix":"."}]','دستور رسمی با Sie','در «Nehmen Sie ...» دکتر یک دستور مودبانه و رسمی می دهد. فقط همین الگوی کاربردی را یاد می گیریم و وارد جدول کامل Imperativ نمی شویم.',NULL,'{"cefr":"A2","module":6}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,3,'character','Tabletten?','قرص؟',38,NULL,NULL,NULL,NULL,'[{"surface":"Tabletten","lemma":"Tablette","translation":"قرص","partOfSpeech":"noun","meaning":"قرص ها","form":"plural","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_doctor,4,'learner','Ja.','بله.',38,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_4=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_mia,v_c_doctor,'Nehmen Sie diese Tabletten','این قرص ها را مصرف کنید','Mia nennt ihre Symptome noch einmal knapp. Dr. Weber formuliert die Empfehlung jetzt als vollständige feste Anweisung.','میا نشانه هایش را یک بار دیگر کوتاه می گوید. دکتر وبر حالا توصیه را با یک جمله کامل و ثابت بیان می کند.','story','mia-doctor-weber',17,38,110,2,'validated','{"relationship":"patient_and_doctor","context":"doctor-recommendation-tablets","cefr":"A2","module":6,"focus":"formal-imperative-and-taking-tablets"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,1,'character','Fieber und Husten.','تب و سرفه.',38,NULL,NULL,NULL,NULL,'[{"surface":"Fieber","lemma":"Fieber","translation":"تب","partOfSpeech":"noun"},{"surface":"und","lemma":"und","translation":"و","partOfSpeech":"conjunction"},{"surface":"Husten","lemma":"Husten","translation":"سرفه","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_doctor,2,'learner','Nehmen Sie diese Tabletten.','این قرص ها را مصرف کنید.',38,NULL,NULL,'nehmen sie diese tabletten',NULL,'[{"surface":"Nehmen","lemma":"nehmen","translation":"گرفتن / مصرف کردن","partOfSpeech":"verb","meaning":"مصرف کنید","form":"imperative_formal"},{"surface":"Sie","lemma":"Sie","translation":"شما","partOfSpeech":"pronoun","meaning":"شما","form":"formal_2"},{"surface":"diese","lemma":"dieser","translation":"این","partOfSpeech":"determiner","meaning":"این","form":"plural_accusative"},{"surface":"Tabletten","lemma":"Tablette","translation":"قرص","partOfSpeech":"noun","meaning":"قرص ها","form":"plural_accusative","suffix":"."}]','diese Tabletten','«diese» اینجا قبل از اسم جمع «Tabletten» آمده و به lemma «dieser» وصل می شود. فقط شکل لازم همین جمله را نگه می داریم.',NULL,'{"cefr":"A2","module":6}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,3,'character','Danke.','ممنون.',38,NULL,NULL,NULL,NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_doctor,4,'learner','Bitte.','خواهش می کنم.',38,NULL,NULL,'bitte',NULL,'[{"surface":"Bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","meaning":"خواهش می کنم","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_8=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_doctor,v_c_mia,'Ich nehme diese Tabletten','این قرص ها را مصرف می کنم','Dr. Weber wiederholt die Empfehlung. Mia bestätigt jetzt aktiv mit der passenden ich-Form von nehmen.','دکتر وبر توصیه را تکرار می کند. میا حالا با شکل مناسب nehmen برای ich تایید می کند.','story','mia-doctor-weber',18,38,110,3,'validated','{"relationship":"patient_and_doctor","context":"doctor-recommendation-tablets","cefr":"A2","module":6,"focus":"formal-imperative-and-taking-tablets"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_doctor,1,'character','Nehmen Sie diese Tabletten.','این قرص ها را مصرف کنید.',38,NULL,NULL,NULL,NULL,'[{"surface":"Nehmen","lemma":"nehmen","translation":"گرفتن / مصرف کردن","partOfSpeech":"verb","meaning":"مصرف کنید","form":"imperative_formal"},{"surface":"Sie","lemma":"Sie","translation":"شما","partOfSpeech":"pronoun","meaning":"شما","form":"formal_2"},{"surface":"diese","lemma":"dieser","translation":"این","partOfSpeech":"determiner","meaning":"این","form":"plural_accusative"},{"surface":"Tabletten","lemma":"Tablette","translation":"قرص","partOfSpeech":"noun","meaning":"قرص ها","form":"plural_accusative","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,2,'learner','Ja. Ich nehme diese Tabletten.','بله. این قرص ها را مصرف می کنم.',38,NULL,NULL,'ja ich nehme diese tabletten',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"nehme","lemma":"nehmen","translation":"گرفتن / مصرف کردن","partOfSpeech":"verb","meaning":"مصرف می کنم","form":"present_1sg"},{"surface":"diese","lemma":"dieser","translation":"این","partOfSpeech":"determiner","meaning":"این","form":"plural_accusative"},{"surface":"Tabletten","lemma":"Tablette","translation":"قرص","partOfSpeech":"noun","meaning":"قرص ها","form":"plural_accusative","suffix":"."}]','nehme از nehmen','در پاسخ میا، «nehme» شکل موردنیاز nehmen برای ich است. هیچ صرف اضافه ای خارج از داستان لازم نیست.',NULL,'{"cefr":"A2","module":6}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_doctor,3,'character','Gut.','خوبه.',38,NULL,NULL,NULL,NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"خوبه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,4,'learner','Danke.','ممنون.',38,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_12=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_doctor,v_c_mia,'Die Empfehlung','توصیه دکتر','Dr. Weber fasst Dauer, Symptome und Empfehlung zusammen. Mia versteht die Anweisung und bestätigt, dass sie die Tabletten nimmt.','دکتر وبر مدت بیماری، نشانه ها و توصیه را کنار هم جمع بندی می کند. میا دستور را می فهمد و تایید می کند که قرص ها را مصرف می کند.','story','mia-doctor-weber',19,38,130,4,'validated','{"relationship":"patient_and_doctor","context":"doctor-recommendation-tablets","cefr":"A2","module":6,"focus":"formal-imperative-and-taking-tablets"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_doctor,1,'character','Seit wann?','از کی؟',38,NULL,NULL,NULL,NULL,'[{"surface":"Seit","lemma":"seit","translation":"از / از زمان","partOfSpeech":"preposition","meaning":"از / از زمان","form":"temporal_preposition"},{"surface":"wann","lemma":"wann","translation":"کی / چه زمانی","partOfSpeech":"adverb","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,2,'learner','Seit gestern.','از دیروز.',38,NULL,NULL,'seit gestern',NULL,'[{"surface":"Seit","lemma":"seit","translation":"از / از زمان","partOfSpeech":"preposition","meaning":"از / از زمان","form":"temporal_preposition"},{"surface":"gestern","lemma":"gestern","translation":"دیروز","partOfSpeech":"adverb","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_doctor,3,'character','Fieber und Husten?','تب و سرفه؟',38,NULL,NULL,NULL,NULL,'[{"surface":"Fieber","lemma":"Fieber","translation":"تب","partOfSpeech":"noun"},{"surface":"und","lemma":"und","translation":"و","partOfSpeech":"conjunction"},{"surface":"Husten","lemma":"Husten","translation":"سرفه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,4,'learner','Ja. Ich habe Fieber und Husten.','بله. تب و سرفه دارم.',38,NULL,NULL,'ja ich habe fieber und husten',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارم","form":"present_1sg"},{"surface":"Fieber","lemma":"Fieber","translation":"تب","partOfSpeech":"noun"},{"surface":"und","lemma":"und","translation":"و","partOfSpeech":"conjunction"},{"surface":"Husten","lemma":"Husten","translation":"سرفه","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_doctor,5,'character','Nehmen Sie diese Tabletten.','این قرص ها را مصرف کنید.',38,NULL,NULL,NULL,NULL,'[{"surface":"Nehmen","lemma":"nehmen","translation":"گرفتن / مصرف کردن","partOfSpeech":"verb","meaning":"مصرف کنید","form":"imperative_formal"},{"surface":"Sie","lemma":"Sie","translation":"شما","partOfSpeech":"pronoun","meaning":"شما","form":"formal_2"},{"surface":"diese","lemma":"dieser","translation":"این","partOfSpeech":"determiner","meaning":"این","form":"plural_accusative"},{"surface":"Tabletten","lemma":"Tablette","translation":"قرص","partOfSpeech":"noun","meaning":"قرص ها","form":"plural_accusative","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,6,'learner','Ja. Ich nehme diese Tabletten.','بله. این قرص ها را مصرف می کنم.',38,NULL,NULL,'ja ich nehme diese tabletten',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"nehme","lemma":"nehmen","translation":"گرفتن / مصرف کردن","partOfSpeech":"verb","meaning":"مصرف می کنم","form":"present_1sg"},{"surface":"diese","lemma":"dieser","translation":"این","partOfSpeech":"determiner","meaning":"این","form":"plural_accusative"},{"surface":"Tabletten","lemma":"Tablette","translation":"قرص","partOfSpeech":"noun","meaning":"قرص ها","form":"plural_accusative","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_doctor,7,'character','Gut.','خوبه.',38,NULL,NULL,NULL,NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"خوبه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,8,'learner','Danke.','ممنون.',38,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_20=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_haben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_fieber,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_und,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_husten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_nehmen,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_sie_formal,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_dieser,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_tablette,'passive',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ich_habe_fieber_und_husten,'review',0,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_fieber,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_und,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_husten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_nehmen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_sie_formal,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_dieser,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_tablette,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_bitte,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_nehmen_sie_diese_tabletten,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_nehmen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_sie_formal,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_dieser,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_tablette,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_nehmen_sie_diese_tabletten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich_nehme_diese_tabletten,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_seit,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wann,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_gestern,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_fieber,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_und,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_husten,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_haben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_nehmen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_sie_formal,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_dieser,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_tablette,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_seit_gestern,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich_habe_fieber_und_husten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_nehmen_sie_diese_tabletten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich_nehme_diese_tabletten,'review',0,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_nehmen,'فعل جدید',NULL,38,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به توضیح میا گوش کن',NULL,38,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'به عنوان دکتر توصیه را بگو',NULL,38,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به سوال میا گوش کن',NULL,38,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'تایید کن',NULL,38,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,NULL,v_w_nehmen,'معنی درست را انتخاب کن',NULL,38,'{"mode":"word_translation","question":"nehmen","choices":["گرفتن / مصرف کردن","دادن","ماندن"],"correctIndex":0}','{"cefr":"A2","module":6}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_nehmen_sie_diese_tabletten,'عبارت جدید',NULL,38,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به نشانه های میا گوش کن',NULL,38,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'توصیه دکتر را کامل بگو',NULL,38,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به تشکر میا گوش کن',NULL,38,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'جواب تشکر را بده',NULL,38,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_6,NULL,'معنی درست را انتخاب کن',NULL,38,'{"mode":"turn_translation","question":"«Nehmen Sie diese Tabletten.» یعنی چی؟","choices":["این قرص ها را مصرف کنید.","این قرص ها را می خوام.","سرفه دارید؟"],"correctIndex":0}','{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',7,v_t_6,NULL,'جمله توصیه را به ترتیب درست بساز',NULL,38,'{"source":"turn_tokens","shuffle":true}','{"cefr":"A2","module":6}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_ich_nehme_diese_tabletten,'عبارت جدید',NULL,38,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_9,NULL,'به توصیه دکتر گوش کن',NULL,38,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_10,NULL,'تایید کن که قرص ها را مصرف می کنی',NULL,38,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_11,NULL,'به واکنش دکتر گوش کن',NULL,38,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_12,NULL,'تشکر کن',NULL,38,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_10,NULL,'معنی درست را انتخاب کن',NULL,38,'{"mode":"turn_translation","question":"«Ich nehme diese Tabletten.» یعنی چی؟","choices":["این قرص ها را مصرف می کنم.","این قرص ها را مصرف کنید.","قرص ندارم."],"correctIndex":0}','{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,38,'{"source":"lesson_story","question":"میا چه چیزی را تایید می کند؟","choices":["این قرص ها را مصرف می کند.","تب ندارد.","از امروز بیمار است."],"correctIndex":0}','{"cefr":"A2","module":6}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_13,NULL,'به سوال زمان گوش کن',NULL,38,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_14,NULL,'بگو از دیروز',NULL,38,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_15,NULL,'به سوال نشانه ها گوش کن',NULL,38,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_16,NULL,'تب و سرفه را بگو',NULL,38,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_17,NULL,'به توصیه دکتر گوش کن',NULL,38,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_18,NULL,'تایید کن که قرص ها را مصرف می کنی',NULL,38,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',7,v_t_19,NULL,'به واکنش دکتر گوش کن',NULL,38,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',8,v_t_20,NULL,'تشکر کن',NULL,38,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',9,NULL,NULL,'کل گفتگو را بخوان و جواب بده',NULL,38,'{"source":"lesson_story","question":"دکتر چه توصیه ای می کند؟","choices":["این قرص ها را مصرف کنید.","یک شب بیشتر بمانید.","اتاق را تحویل بدهید."],"correctIndex":0}','{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',10,v_t_18,NULL,'پاسخ میا را بررسی کن',NULL,38,'{"mode":"turn_translation","question":"«Ich nehme diese Tabletten.» یعنی چی؟","choices":["این قرص ها را مصرف می کنم.","این قرص ها را مصرف کنید.","قرص لازم ندارم."],"correctIndex":0}','{"cefr":"A2","module":6}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 069 lesson count.'; END IF;
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

CALL import_nova_series_069_v9();
DROP PROCEDURE IF EXISTS import_nova_series_069_v9;
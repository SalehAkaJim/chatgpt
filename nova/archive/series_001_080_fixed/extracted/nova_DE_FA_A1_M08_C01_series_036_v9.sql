-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 036
-- A1 > Wichtige Situationen > Beim Arzt
-- Creates Module 08 skeleton when missing.
-- ===============================================================
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_series_036_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_036_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED; DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_prev_module BIGINT UNSIGNED; DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL; DECLARE v_chapter BIGINT UNSIGNED; DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_mia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_sara BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_doctor BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_zu BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_der BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_termin BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_hallo BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_mein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danke BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_bitte BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_arzt BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sie_formal BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_krank BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_bin_krank BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kopf BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wehtun BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_mein_kopf_tut_weh BIGINT UNSIGNED DEFAULT NULL;
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
  SELECT id INTO v_course FROM courses WHERE learning_language='de' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND sort_order=1 ORDER BY id LIMIT 1;
  SELECT id INTO v_prev_module FROM modules WHERE level_id=v_level AND sort_order=7 ORDER BY id LIMIT 1;
  IF v_prev_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 031 before Series 036.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_prev_module AND sort_order=5 ORDER BY id LIMIT 1;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 035 before Series 036.'; END IF;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=8 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN
    INSERT INTO modules(level_id,title,title_translation,description,description_translation,emoji,difficulty_min,difficulty_max,sort_order,status)
    VALUES(v_level,'Wichtige Situationen','موقعیت های مهم','Einfache Sprache für Arzt, Apotheke, Hotel, Flughafen und Hilfe.','زبان ساده برای دکتر، داروخانه، هتل، فرودگاه و درخواست کمک.','🆘',20,20,8,'active');
    SET v_module=LAST_INSERT_ID();
  END IF;
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Beim Arzt','پیش دکتر','Einfache Beschwerden beim Arzt ausdrücken.','مشکل های خیلی ساده را پیش دکتر بیان کن.',NULL,20,20,1,'draft' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=1);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'In der Apotheke','در داروخانه','In der Apotheke nach einfacher Hilfe fragen.','در داروخانه درخواست کمک ساده داشته باش.',NULL,20,20,2,'planned' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=2);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Im Hotel','در هتل','Einchecken und einfache Hotelinformationen verstehen.','ورود به هتل و اطلاعات ساده هتل را بفهم.',NULL,20,20,3,'planned' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=3);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Am Flughafen','در فرودگاه','Sehr einfache Situationen am Flughafen bewältigen.','موقعیت های خیلی ساده فرودگاه را مدیریت کن.',NULL,20,20,4,'planned' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=4);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Ich brauche Hilfe','من کمک می خواهم','In wichtigen Situationen klar um Hilfe bitten.','در موقعیت های مهم واضح درخواست کمک کن.',NULL,20,20,5,'planned' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=5);
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Module 08 Chapter 01 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Module 08 Chapter 01 must be empty before Series 036 import.'; END IF;
  SELECT id INTO v_c_mia FROM characters WHERE course_id=v_course AND name='Mia' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_mia IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Mia not found.'; END IF;
  SELECT id INTO v_c_sara FROM characters WHERE course_id=v_course AND name='Sara' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_sara IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Sara not found.'; END IF;
  SELECT id INTO v_c_doctor FROM characters WHERE course_id=v_course AND name='Dr. Weber' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_doctor IS NULL THEN
    INSERT INTO characters(course_id,name,gender,avatar_url,voice_key,profile,metadata)
    VALUES(v_course,'Dr. Weber','male',NULL,NULL,'{"role":"doctor"}','{"context":"doctor_office","introducedInModule":8,"introducedInChapter":1}');
    SET v_c_doctor=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_zu FROM words WHERE course_id=v_course AND lemma='zu' AND part_of_speech='preposition' AND translation='به / به سمت' ORDER BY id LIMIT 1;
  IF v_w_zu IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word zu not found.'; END IF;
  SELECT id INTO v_w_der FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_der IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word der not found.'; END IF;
  SELECT id INTO v_w_termin FROM words WHERE course_id=v_course AND lemma='Termin' AND part_of_speech='noun' AND translation='قرار / وقت' ORDER BY id LIMIT 1;
  IF v_w_termin IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Termin not found.'; END IF;
  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;
  SELECT id INTO v_w_hallo FROM words WHERE course_id=v_course AND lemma='Hallo' AND part_of_speech='interjection' AND translation='سلام' ORDER BY id LIMIT 1;
  IF v_w_hallo IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Hallo not found.'; END IF;
  SELECT id INTO v_w_sein FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_sein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word sein not found.'; END IF;
  SELECT id INTO v_w_ich FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_ich IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ich not found.'; END IF;
  SELECT id INTO v_w_mein FROM words WHERE course_id=v_course AND lemma='mein' AND part_of_speech='determiner' AND translation='مال من / من' ORDER BY id LIMIT 1;
  IF v_w_mein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word mein not found.'; END IF;
  SELECT id INTO v_w_danke FROM words WHERE course_id=v_course AND lemma='danke' AND part_of_speech='interjection' AND translation='ممنون' ORDER BY id LIMIT 1;
  IF v_w_danke IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word danke not found.'; END IF;
  SELECT id INTO v_w_bitte FROM words WHERE course_id=v_course AND lemma='bitte' AND part_of_speech='interjection' AND translation='لطفا / خواهش می کنم' ORDER BY id LIMIT 1;
  IF v_w_bitte IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word bitte not found.'; END IF;
  SELECT id INTO v_w_arzt FROM words WHERE course_id=v_course AND lemma='Arzt' AND part_of_speech='noun' AND translation='دکتر' ORDER BY id LIMIT 1;
  IF v_w_arzt IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Arzt','Arzt','noun','دکتر',20,'{"article":"der","plural":"Ärzte"}','[{"text":"Apotheke","translation":"داروخانه"},{"text":"Krankenhaus","translation":"بیمارستان"},{"text":"Patient","translation":"بیمار"},{"text":"Termin","translation":"قرار / وقت"},{"text":"Medikament","translation":"دارو"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_arzt=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_sie_formal FROM words WHERE course_id=v_course AND lemma='Sie' AND part_of_speech='pronoun' AND translation='شما' ORDER BY id LIMIT 1;
  IF v_w_sie_formal IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Sie','Sie','pronoun','شما',20,'{"register":"formal","person":2,"number":"formal","forms":{"nominative":"Sie","accusative":"Sie","dative":"Ihnen"}}','[{"text":"du","translation":"تو"},{"text":"ich","translation":"من"},{"text":"wir","translation":"ما"},{"text":"er","translation":"او"},{"text":"ihr","translation":"شما"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_sie_formal=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_krank FROM words WHERE course_id=v_course AND lemma='krank' AND part_of_speech='adjective' AND translation='بیمار' ORDER BY id LIMIT 1;
  IF v_w_krank IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'krank','krank','adjective','بیمار',20,NULL,'[{"text":"müde","translation":"خسته"},{"text":"froh","translation":"خوشحال"},{"text":"gesund","translation":"سالم"},{"text":"gut","translation":"خوب"},{"text":"schlecht","translation":"بد"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_krank=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_ich_bin_krank FROM words WHERE course_id=v_course AND lemma='Ich bin krank.' AND part_of_speech='phrase' AND translation='من بیمارم.' ORDER BY id LIMIT 1;
  IF v_w_ich_bin_krank IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich bin krank.','Ich bin krank.','phrase','من بیمارم.',20,NULL,'[{"text":"Ich bin müde.","translation":"من خسته ام."},{"text":"Ich bin froh.","translation":"من خوشحالم."},{"text":"Nicht so gut.","translation":"زیاد خوب نیستم."},{"text":"Ich habe am Samstag keine Zeit.","translation":"شنبه وقت ندارم."},{"text":"Ich wohne hier.","translation":"من اینجا زندگی می کنم."}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_ich_bin_krank=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_kopf FROM words WHERE course_id=v_course AND lemma='Kopf' AND part_of_speech='noun' AND translation='سر' ORDER BY id LIMIT 1;
  IF v_w_kopf IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Kopf','Kopf','noun','سر',20,'{"article":"der","plural":"Köpfe"}','[{"text":"Hand","translation":"دست"},{"text":"Bauch","translation":"شکم"},{"text":"Hals","translation":"گلو"},{"text":"Auge","translation":"چشم"},{"text":"Bein","translation":"پا"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_kopf=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_wehtun FROM words WHERE course_id=v_course AND lemma='wehtun' AND part_of_speech='verb' AND translation='درد کردن' ORDER BY id LIMIT 1;
  IF v_w_wehtun IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'wehtun','wehtun','verb','درد کردن',20,'{"separable":true,"present":{"ich":"tue weh","du":"tust weh","er_sie_es":"tut weh"}}','[{"text":"gehen","translation":"رفتن"},{"text":"machen","translation":"انجام دادن"},{"text":"sein","translation":"بودن"},{"text":"helfen","translation":"کمک کردن"},{"text":"brauchen","translation":"نیاز داشتن"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_wehtun=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_mein_kopf_tut_weh FROM words WHERE course_id=v_course AND lemma='Mein Kopf tut weh.' AND part_of_speech='phrase' AND translation='سرم درد می کند.' ORDER BY id LIMIT 1;
  IF v_w_mein_kopf_tut_weh IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Mein Kopf tut weh.','Mein Kopf tut weh.','phrase','سرم درد می کند.',20,NULL,'[{"text":"Ich bin krank.","translation":"من بیمارم."},{"text":"Ich bin müde.","translation":"من خسته ام."},{"text":"Die Lampe ist kaputt.","translation":"چراغ خراب است."},{"text":"Mein Zimmer ist schön.","translation":"اتاق من قشنگ است."},{"text":"Ich habe keine Zeit.","translation":"وقت ندارم."}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_mein_kopf_tut_weh=LAST_INSERT_ID();
  END IF;
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Zum Arzt','رفتن پیش دکتر','Sara sieht, dass Mia zu einem Termin geht. Mia bestätigt, dass sie zum Arzt geht.','سارا می بیند میا برای یک قرار می رود. میا تایید می کند که پیش دکتر می رود.','story','mia-sara-important-situations',1,20,105,1,'validated','{"context":"doctor_visit","storyArc":"setup-symptom-detail-resolution"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,1,'character','Zum Arzt?','پیش دکتر؟',20,NULL,NULL,NULL,NULL,'[{"surface":"Zum","lemma":"zu","translation":"به / به سمت","partOfSpeech":"preposition","meaning":"پیش / به","form":"contraction_zu_dem"},{"surface":"Arzt","lemma":"Arzt","translation":"دکتر","partOfSpeech":"noun","suffix":"?"}]','یک الگوی آشنا با مقصد جدید','قبلا «Zum Bahnhof» را دیده ای. اینجا «Zum Arzt» یعنی «پیش دکتر».',NULL,NULL);
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,2,'learner','Ja. Zum Arzt.','بله. پیش دکتر.',20,NULL,NULL,'ja zum arzt',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Zum","lemma":"zu","translation":"به / به سمت","partOfSpeech":"preposition","meaning":"پیش / به","form":"contraction_zu_dem"},{"surface":"Arzt","lemma":"Arzt","translation":"دکتر","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,3,'character','Termin?','قرار؟',20,NULL,NULL,NULL,NULL,'[{"surface":"Termin","lemma":"Termin","translation":"قرار / وقت","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,4,'learner','Ja.','بله.',20,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_doctor,v_c_mia,'Ich bin krank','من بیمارم','Mia sitzt beim Arzt. Der Arzt spricht höflich mit ihr und Mia sagt, dass sie krank ist.','میا پیش دکتر است. دکتر رسمی با او صحبت می کند و میا می گوید بیمار است.','story','mia-doctor-weber',1,20,105,2,'validated','{"context":"doctor_visit","storyArc":"setup-symptom-detail-resolution"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_doctor,1,'character','Hallo.','سلام.',20,NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,2,'learner','Hallo.','سلام.',20,NULL,NULL,'hallo',NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_doctor,3,'character','Sind Sie krank?','بیمار هستید؟',20,NULL,NULL,NULL,NULL,'[{"surface":"Sind","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"هستید","form":"present_formal"},{"surface":"Sie","lemma":"Sie","translation":"شما","partOfSpeech":"pronoun","meaning":"شما","form":"nominative_formal"},{"surface":"krank","lemma":"krank","translation":"بیمار","partOfSpeech":"adjective","suffix":"?"}]','Sie رسمی','دکتر برای محترمانه صحبت کردن از «Sie» استفاده می کند. فعلا فقط آن را به معنی «شما» بشناس.',NULL,NULL);
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,4,'learner','Ja. Ich bin krank.','بله. من بیمارم.',20,NULL,NULL,'ja ich bin krank',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"bin","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"هستم","form":"present_1sg"},{"surface":"krank","lemma":"krank","translation":"بیمار","partOfSpeech":"adjective","suffix":"."}]','Ich bin + حالت','همان الگویی است که با «müde» و «froh» دیده ای. حالا می گویی «Ich bin krank.»',NULL,NULL);
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_doctor,v_c_mia,'Mein Kopf tut weh','سرم درد می کند','Der Arzt fragt nach Mias Kopf. Mia beschreibt ihren Schmerz mit einem kurzen vollständigen Satz.','دکتر درباره سر میا می پرسد. میا دردش را با یک جمله کوتاه و کامل توضیح می دهد.','story','mia-doctor-weber',2,20,105,3,'validated','{"context":"doctor_visit","storyArc":"setup-symptom-detail-resolution"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_doctor,1,'character','Tut der Kopf weh?','سرت درد می کند؟',20,NULL,NULL,NULL,NULL,'[{"surface":"Tut","lemma":"wehtun","translation":"درد کردن","partOfSpeech":"verb","meaning":"درد می کند","form":"present_3sg"},{"surface":"der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"masculine_nominative"},{"surface":"Kopf","lemma":"Kopf","translation":"سر","partOfSpeech":"noun"},{"surface":"weh","lemma":"wehtun","translation":"درد کردن","partOfSpeech":"verb","meaning":"بخش جداشونده فعل","form":"separable_particle","suffix":"?"}]','tut ... weh','«tut ... weh» از فعل «wehtun» می آید و یعنی «درد می کند». فعلا جمله را کاربردی یاد بگیر.',NULL,NULL);
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,2,'learner','Ja. Mein Kopf tut weh.','بله. سرم درد می کند.',20,NULL,NULL,'ja mein kopf tut weh',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Mein","lemma":"mein","translation":"مال من / من","partOfSpeech":"determiner","meaning":"مال من / سرم","form":"masculine_nominative"},{"surface":"Kopf","lemma":"Kopf","translation":"سر","partOfSpeech":"noun"},{"surface":"tut","lemma":"wehtun","translation":"درد کردن","partOfSpeech":"verb","meaning":"درد می کند","form":"present_3sg"},{"surface":"weh","lemma":"wehtun","translation":"درد کردن","partOfSpeech":"verb","meaning":"بخش جداشونده فعل","form":"separable_particle","suffix":"."}]','Mein Kopf tut weh','این جمله را فعلا به صورت یک عبارت کامل برای گفتن «سرم درد می کند» یاد بگیر.',NULL,NULL);
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_doctor,3,'character','Danke.','ممنون.',20,NULL,NULL,NULL,NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,4,'learner','Bitte.','خواهش می کنم.',20,NULL,NULL,'bitte',NULL,'[{"surface":"Bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","meaning":"خواهش می کنم","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_doctor,v_c_mia,'Mia beim Arzt','میا پیش دکتر','Mia erklärt dem Arzt vollständig, dass sie krank ist und Kopfschmerzen hat.','میا کامل به دکتر توضیح می دهد که بیمار است و سرش درد می کند.','story','mia-doctor-weber',3,20,105,4,'validated','{"context":"doctor_visit","storyArc":"setup-symptom-detail-resolution"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_doctor,1,'character','Sind Sie krank?','بیمار هستید؟',20,NULL,NULL,NULL,NULL,'[{"surface":"Sind","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"هستید","form":"present_formal"},{"surface":"Sie","lemma":"Sie","translation":"شما","partOfSpeech":"pronoun","meaning":"شما","form":"nominative_formal"},{"surface":"krank","lemma":"krank","translation":"بیمار","partOfSpeech":"adjective","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,2,'learner','Ja. Ich bin krank.','بله. من بیمارم.',20,NULL,NULL,'ja ich bin krank',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"bin","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"هستم","form":"present_1sg"},{"surface":"krank","lemma":"krank","translation":"بیمار","partOfSpeech":"adjective","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_doctor,3,'character','Tut der Kopf weh?','سرت درد می کند؟',20,NULL,NULL,NULL,NULL,'[{"surface":"Tut","lemma":"wehtun","translation":"درد کردن","partOfSpeech":"verb","meaning":"درد می کند","form":"present_3sg"},{"surface":"der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"masculine_nominative"},{"surface":"Kopf","lemma":"Kopf","translation":"سر","partOfSpeech":"noun"},{"surface":"weh","lemma":"wehtun","translation":"درد کردن","partOfSpeech":"verb","meaning":"بخش جداشونده فعل","form":"separable_particle","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,4,'learner','Ja. Mein Kopf tut weh.','بله. سرم درد می کند.',20,NULL,NULL,'ja mein kopf tut weh',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Mein","lemma":"mein","translation":"مال من / من","partOfSpeech":"determiner","meaning":"مال من / سرم","form":"masculine_nominative"},{"surface":"Kopf","lemma":"Kopf","translation":"سر","partOfSpeech":"noun"},{"surface":"tut","lemma":"wehtun","translation":"درد کردن","partOfSpeech":"verb","meaning":"درد می کند","form":"present_3sg"},{"surface":"weh","lemma":"wehtun","translation":"درد کردن","partOfSpeech":"verb","meaning":"بخش جداشونده فعل","form":"separable_particle","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_doctor,5,'character','Danke.','ممنون.',20,NULL,NULL,NULL,NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,6,'learner','Bitte.','خواهش می کنم.',20,NULL,NULL,'bitte',NULL,'[{"surface":"Bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","meaning":"خواهش می کنم","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_zu,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_arzt,'new',1,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_termin,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_hallo,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_sein,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_sie_formal,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_krank,'passive',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich_bin_krank,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_wehtun,'passive',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_der,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_kopf,'passive',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_mein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_bitte,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_mein_kopf_tut_weh,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_sein,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_sie_formal,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_krank,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wehtun,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_der,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_kopf,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_mein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_bitte,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich_bin_krank,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_mein_kopf_tut_weh,'review',0,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'new_word',1,NULL,v_w_arzt,'کلمه جدید',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',2,v_t_1,NULL,'به مقصد میا گوش کن',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',3,v_t_2,NULL,'بگو پیش دکتر می روی',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',4,v_t_3,NULL,'به سوال قرار گوش کن',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',5,v_t_4,NULL,'تایید کن',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'meaning_choice',6,NULL,v_w_arzt,'معنی درست را انتخاب کن',NULL,20,'{"mode":"word_translation","question":"Arzt","choices":["دکتر","داروخانه","قرار"],"correctIndex":0}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'new_word',1,NULL,v_w_ich_bin_krank,'عبارت جدید',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',2,v_t_5,NULL,'به سلام دکتر گوش کن',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',3,v_t_6,NULL,'سلام کن',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',4,v_t_7,NULL,'به سوال دکتر گوش کن',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',5,v_t_8,NULL,'بگو بیمار هستی',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'meaning_choice',6,v_t_8,NULL,'معنی درست را انتخاب کن',NULL,20,'{"mode":"turn_translation","question":"«Ich bin krank.» یعنی چی؟","choices":["من بیمارم.","من خسته ام.","من خوشحالم."],"correctIndex":0}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'word_order',7,v_t_8,NULL,'جمله را به ترتیب درست بساز',NULL,20,'{"source":"turn_tokens","shuffle":true}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'new_word',1,NULL,v_w_mein_kopf_tut_weh,'عبارت جدید',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',2,v_t_9,NULL,'به سوال دکتر گوش کن',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',3,v_t_10,NULL,'بگو سرت درد می کند',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',4,v_t_11,NULL,'به دکتر گوش کن',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',5,v_t_12,NULL,'جواب بده',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'meaning_choice',6,v_t_10,NULL,'معنی درست را انتخاب کن',NULL,20,'{"mode":"turn_translation","question":"«Mein Kopf tut weh.» یعنی چی؟","choices":["سرم درد می کند.","من بیمارم.","سرم خوب است."],"correctIndex":0}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,20,'{"source":"lesson_story","question":"کجای بدن میا درد می کند؟","choices":["سر","دست","پا"],"correctIndex":0}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',1,v_t_13,NULL,'به سوال بیماری گوش کن',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',2,v_t_14,NULL,'بگو بیمار هستی',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',3,v_t_15,NULL,'به سوال درد گوش کن',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',4,v_t_16,NULL,'بگو سرت درد می کند',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',5,v_t_17,NULL,'به دکتر گوش کن',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',6,v_t_18,NULL,'جواب بده',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,20,'{"source":"lesson_story","question":"میا چه مشکلی را به دکتر می گوید؟","choices":["بیمار است و سرش درد می کند.","فقط خسته است.","برای خرید دارو آمده است."],"correctIndex":0}',NULL);
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 036 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  UPDATE chapters SET status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_series_036_v9();
DROP PROCEDURE IF EXISTS import_nova_series_036_v9;
-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 066
-- A2 > Gesundheit & Beschwerden > Ich habe Fieber
-- FIRST CHAPTER OF A2 MODULE 06
-- Requires completed A2 Module 05 through Series 065.
-- Creates A2 Module 06 + five Chapter skeleton rows when missing.
-- Continues mia-doctor-weber from A1 orders 4-7.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_066_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_066_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_prev_module BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_mia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_doctor BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_haben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sie_formal BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_krank BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kopf BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wehtun BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_mein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_bin_krank BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_mein_kopf_tut_weh BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_fieber BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_habe_fieber BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_haben_sie_fieber BIGINT UNSIGNED DEFAULT NULL;
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
  SELECT id INTO v_course FROM courses WHERE learning_language='de' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='A2' AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Level not found.'; END IF;
  SELECT id INTO v_prev_module FROM modules WHERE level_id=v_level AND sort_order=5 ORDER BY id LIMIT 1;
  IF v_prev_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 05 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM modules WHERE id=v_prev_module AND status='complete';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 065 and complete A2 Module 05 before Series 066.'; END IF;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=6 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN
    INSERT INTO modules(level_id,title,title_translation,description,description_translation,emoji,difficulty_min,difficulty_max,sort_order,status,metadata) VALUES(v_level,'Gesundheit & Beschwerden','سلامتی و نشانه ها','Beschwerden genauer beschreiben, Fragen beim Arzt verstehen und einfache Empfehlungen umsetzen.','نشانه ها را دقیق تر توضیح بده، سوال های دکتر را بفهم و توصیه های ساده را انجام بده.','🩺',36,38,6,'active','{"focus":"health-symptoms-doctor-advice","grammarApproach":"context-first","continuity":"mia-doctor-weber"}');
    SET v_module=LAST_INSERT_ID();
  END IF;
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Ich habe Fieber','تب دارم','Fieber als neues Symptom nennen und eine formelle Arztfrage verstehen.','تب را به عنوان علامت جدید بگو و سوال رسمی دکتر را بفهم.',NULL,36,36,1,'draft' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=1);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Seit wann sind Sie krank?','از کی بیمارید؟','Nach der Dauer einer Beschwerde fragen und mit seit antworten.','درباره مدت بیماری سوال کن و با seit جواب بده.',NULL,36,37,2,'planned' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=2);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Ich habe Husten','سرفه دارم','Ein zweites Symptom nennen und mehrere Beschwerden verbinden.','یک علامت دوم را بگو و چند علامت را کنار هم توضیح بده.',NULL,37,37,3,'planned' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=3);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Nehmen Sie diese Tabletten','این قرص ها را مصرف کنید','Eine einfache ärztliche Empfehlung verstehen und bestätigen.','یک توصیه ساده دکتر را بفهم و تایید کن.',NULL,37,38,4,'planned' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=4);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Mir geht es besser','حالم بهتره','Über Besserung sprechen und den Arztbesuch als Mini-Geschichte abschließen.','درباره بهتر شدن حال صحبت کن و داستان مراجعه به دکتر را کامل کن.',NULL,38,38,5,'planned' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=5);
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 06 Chapter 01 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 06 Chapter 01 must be empty before Series 066 import.'; END IF;
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
  SELECT id INTO v_w_krank FROM words WHERE course_id=v_course AND lemma='krank' AND part_of_speech='adjective' AND translation='بیمار' ORDER BY id LIMIT 1;
  IF v_w_krank IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word krank not found.'; END IF;
  SELECT id INTO v_w_kopf FROM words WHERE course_id=v_course AND lemma='Kopf' AND part_of_speech='noun' AND translation='سر' ORDER BY id LIMIT 1;
  IF v_w_kopf IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Kopf not found.'; END IF;
  SELECT id INTO v_w_wehtun FROM words WHERE course_id=v_course AND lemma='wehtun' AND part_of_speech='verb' AND translation='درد کردن' ORDER BY id LIMIT 1;
  IF v_w_wehtun IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word wehtun not found.'; END IF;
  SELECT id INTO v_w_sein FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_sein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word sein not found.'; END IF;
  SELECT id INTO v_w_mein FROM words WHERE course_id=v_course AND lemma='mein' AND part_of_speech='determiner' AND translation='مال من / من' ORDER BY id LIMIT 1;
  IF v_w_mein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word mein not found.'; END IF;
  SELECT id INTO v_w_ich_bin_krank FROM words WHERE course_id=v_course AND lemma='Ich bin krank.' AND part_of_speech='phrase' AND translation='من بیمارم.' ORDER BY id LIMIT 1;
  IF v_w_ich_bin_krank IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Ich bin krank. not found.'; END IF;
  SELECT id INTO v_w_mein_kopf_tut_weh FROM words WHERE course_id=v_course AND lemma='Mein Kopf tut weh.' AND part_of_speech='phrase' AND translation='سرم درد می کند.' ORDER BY id LIMIT 1;
  IF v_w_mein_kopf_tut_weh IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Mein Kopf tut weh. not found.'; END IF;
  SELECT id INTO v_w_fieber FROM words WHERE course_id=v_course AND lemma='Fieber' AND part_of_speech='noun' AND translation='تب' ORDER BY id LIMIT 1;
  IF v_w_fieber IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Fieber','Fieber','noun','تب',36,'{"gender":"neuter","article":"das","usuallyWithoutArticleInPhrase":"Fieber haben"}','[{"text":"Husten","translation":"سرفه"},{"text":"Kopf","translation":"سر"},{"text":"Medikament","translation":"دارو"},{"text":"Schmerz","translation":"درد"},{"text":"Tablette","translation":"قرص"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":66,"module":6}');
    SET v_w_fieber=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_ich_habe_fieber FROM words WHERE course_id=v_course AND lemma='Ich habe Fieber.' AND part_of_speech='phrase' AND translation='تب دارم.' ORDER BY id LIMIT 1;
  IF v_w_ich_habe_fieber IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich habe Fieber.','Ich habe Fieber.','phrase','تب دارم.',36,'{"subject":"ich","verb":"haben","verbForm":"habe","person":"1sg","object":"Fieber"}','[{"text":"Ich bin krank.","translation":"من بیمارم."},{"text":"Mein Kopf tut weh.","translation":"سرم درد می کند."},{"text":"Ich brauche ein Medikament.","translation":"یک دارو لازم دارم."},{"text":"Ich habe eine Frage.","translation":"یک سوال دارم."},{"text":"Ich bin noch nicht fertig.","translation":"هنوز تمام نکرده ام."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":66,"module":6}');
    SET v_w_ich_habe_fieber=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_haben_sie_fieber FROM words WHERE course_id=v_course AND lemma='Haben Sie Fieber?' AND part_of_speech='phrase' AND translation='تب دارید؟' ORDER BY id LIMIT 1;
  IF v_w_haben_sie_fieber IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Haben Sie Fieber?','Haben Sie Fieber?','phrase','تب دارید؟',36,'{"verb":"haben","verbForm":"haben","person":"formal_2","subject":"Sie","object":"Fieber","register":"formal"}','[{"text":"Sind Sie krank?","translation":"بیمارید؟"},{"text":"Haben Sie eine Reservierung?","translation":"رزرو دارید؟"},{"text":"Können Sie kommen?","translation":"می تونید بیاید؟"},{"text":"Haben Sie Husten?","translation":"سرفه دارید؟"},{"text":"Mein Kopf tut weh.","translation":"سرم درد می کند."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":66,"module":6}');
    SET v_w_haben_sie_fieber=LAST_INSERT_ID();
  END IF;
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_doctor,v_c_mia,'Fieber','تب','Mia ist wieder bei Dr. Weber. Neben den bekannten Beschwerden nennt sie jetzt ein neues Symptom: Fieber.','میا دوباره پیش دکتر وبر است. کنار نشانه ها آشنا، حالا یک علامت جدید را می گوید: تب.','story','mia-doctor-weber',4,36,110,1,'validated','{"relationship":"patient_and_doctor","context":"fever-and-headache","cefr":"A2","module":6,"focus":"fever-and-formal-haben-question"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_doctor,1,'character','Fieber?','تب؟',36,NULL,NULL,NULL,NULL,'[{"surface":"Fieber","lemma":"Fieber","translation":"تب","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,2,'learner','Ja. Ich habe Fieber.','بله. تب دارم.',36,NULL,NULL,'ja ich habe fieber',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارم","form":"present_1sg"},{"surface":"Fieber","lemma":"Fieber","translation":"تب","partOfSpeech":"noun","suffix":"."}]','Fieber haben','در آلمانی برای گفتن «تب دارم» از «Fieber haben» استفاده می شود: «Ich habe Fieber.»',NULL,'{"cefr":"A2","module":6}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_doctor,3,'character','Kopf?','سرت؟',36,NULL,NULL,NULL,NULL,'[{"surface":"Kopf","lemma":"Kopf","translation":"سر","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,4,'learner','Ja. Mein Kopf tut weh.','بله. سرم درد می کند.',36,NULL,NULL,'ja mein kopf tut weh',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Mein","lemma":"mein","translation":"مال من / من","partOfSpeech":"determiner","meaning":"سرم","form":"masculine_nominative"},{"surface":"Kopf","lemma":"Kopf","translation":"سر","partOfSpeech":"noun"},{"surface":"tut","lemma":"wehtun","translation":"درد کردن","partOfSpeech":"verb","meaning":"درد می کند","form":"separable_present_3sg_stem"},{"surface":"weh","lemma":"wehtun","translation":"درد کردن","partOfSpeech":"verb","meaning":"بخش جداشدنی فعل","form":"separable_prefix","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_doctor,v_c_mia,'Ich habe Fieber','تب دارم','Dr. Weber prüft Mias neues Symptom noch einmal. Mia sagt nun den vollständigen Satz sicher und direkt.','دکتر وبر علامت جدید میا را دوباره بررسی می کند. میا حالا جمله کامل را با اطمینان و مستقیم می گوید.','story','mia-doctor-weber',5,36,110,2,'validated','{"relationship":"patient_and_doctor","context":"fever-and-headache","cefr":"A2","module":6,"focus":"fever-and-formal-haben-question"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_doctor,1,'character','Fieber?','تب؟',36,NULL,NULL,NULL,NULL,'[{"surface":"Fieber","lemma":"Fieber","translation":"تب","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,2,'learner','Ich habe Fieber.','تب دارم.',36,NULL,NULL,'ich habe fieber',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارم","form":"present_1sg"},{"surface":"Fieber","lemma":"Fieber","translation":"تب","partOfSpeech":"noun","suffix":"."}]','habe از haben','«habe» شکل موردنیاز «haben» برای ich است. فقط همین فرم کاربردی را در این موقعیت نگه می داریم.',NULL,'{"cefr":"A2","module":6}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_doctor,3,'character','Kopf?','سرت؟',36,NULL,NULL,NULL,NULL,'[{"surface":"Kopf","lemma":"Kopf","translation":"سر","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,4,'learner','Mein Kopf tut weh.','سرم درد می کند.',36,NULL,NULL,'mein kopf tut weh',NULL,'[{"surface":"Mein","lemma":"mein","translation":"مال من / من","partOfSpeech":"determiner","meaning":"سرم","form":"masculine_nominative"},{"surface":"Kopf","lemma":"Kopf","translation":"سر","partOfSpeech":"noun"},{"surface":"tut","lemma":"wehtun","translation":"درد کردن","partOfSpeech":"verb","meaning":"درد می کند","form":"separable_present_3sg_stem"},{"surface":"weh","lemma":"wehtun","translation":"درد کردن","partOfSpeech":"verb","meaning":"بخش جداشدنی فعل","form":"separable_prefix","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_mia,v_c_doctor,'Haben Sie Fieber?','تب دارید؟','Mia beschreibt zuerst ihren Zustand. Dr. Weber stellt dann die neue formelle Arztfrage nach Fieber.','میا اول حالش را توضیح می دهد. بعد دکتر وبر سوال رسمی جدید را درباره تب می پرسد.','story','mia-doctor-weber',6,36,110,3,'validated','{"relationship":"patient_and_doctor","context":"fever-and-headache","cefr":"A2","module":6,"focus":"fever-and-formal-haben-question"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,1,'character','Ich bin krank.','من بیمارم.',36,NULL,NULL,NULL,NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"bin","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"هستم","form":"present_1sg"},{"surface":"krank","lemma":"krank","translation":"بیمار","partOfSpeech":"adjective","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_doctor,2,'learner','Haben Sie Fieber?','تب دارید؟',36,NULL,NULL,'haben sie fieber',NULL,'[{"surface":"Haben","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارید","form":"present_formal"},{"surface":"Sie","lemma":"Sie","translation":"شما","partOfSpeech":"pronoun","meaning":"شما","form":"formal_2"},{"surface":"Fieber","lemma":"Fieber","translation":"تب","partOfSpeech":"noun","suffix":"?"}]','پرسش رسمی با haben','پزشک با «Sie» رسمی می پرسد: «Haben Sie Fieber?» یعنی «تب دارید؟».',NULL,'{"cefr":"A2","module":6}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,3,'character','Ja. Ich habe Fieber.','بله. تب دارم.',36,NULL,NULL,NULL,NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارم","form":"present_1sg"},{"surface":"Fieber","lemma":"Fieber","translation":"تب","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_doctor,4,'learner','Fieber?','تب؟',36,NULL,NULL,'fieber',NULL,'[{"surface":"Fieber","lemma":"Fieber","translation":"تب","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_doctor,v_c_mia,'Beim Arzt','پیش دکتر','Dr. Weber verbindet die bekannte A1-Beschwerde mit dem neuen A2-Symptom. Mia kann jetzt klar sagen, dass sie Fieber und Kopfschmerzen hat.','دکتر وبر علامت آشنای A1 را با علامت جدید A2 کنار هم بررسی می کند. میا حالا روشن می گوید تب دارد و سرش درد می کند.','story','mia-doctor-weber',7,36,110,4,'validated','{"relationship":"patient_and_doctor","context":"fever-and-headache","cefr":"A2","module":6,"focus":"fever-and-formal-haben-question"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_doctor,1,'character','Haben Sie Fieber?','تب دارید؟',36,NULL,NULL,NULL,NULL,'[{"surface":"Haben","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارید","form":"present_formal"},{"surface":"Sie","lemma":"Sie","translation":"شما","partOfSpeech":"pronoun","meaning":"شما","form":"formal_2"},{"surface":"Fieber","lemma":"Fieber","translation":"تب","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,2,'learner','Ja. Ich habe Fieber.','بله. تب دارم.',36,NULL,NULL,'ja ich habe fieber',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارم","form":"present_1sg"},{"surface":"Fieber","lemma":"Fieber","translation":"تب","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_doctor,3,'character','Kopf?','سرت؟',36,NULL,NULL,NULL,NULL,'[{"surface":"Kopf","lemma":"Kopf","translation":"سر","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,4,'learner','Ja. Mein Kopf tut weh.','بله. سرم درد می کند.',36,NULL,NULL,'ja mein kopf tut weh',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Mein","lemma":"mein","translation":"مال من / من","partOfSpeech":"determiner","meaning":"سرم","form":"masculine_nominative"},{"surface":"Kopf","lemma":"Kopf","translation":"سر","partOfSpeech":"noun"},{"surface":"tut","lemma":"wehtun","translation":"درد کردن","partOfSpeech":"verb","meaning":"درد می کند","form":"separable_present_3sg_stem"},{"surface":"weh","lemma":"wehtun","translation":"درد کردن","partOfSpeech":"verb","meaning":"بخش جداشدنی فعل","form":"separable_prefix","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_fieber,'new',1,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_haben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_kopf,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_mein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_wehtun,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ich_habe_fieber,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_mein_kopf_tut_weh,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_fieber,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_haben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_kopf,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_mein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_wehtun,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich_bin_krank,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich_habe_fieber,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_sein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_krank,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_haben,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_sie_formal,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_fieber,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich_bin_krank,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_haben_sie_fieber,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_haben,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_sie_formal,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_fieber,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_kopf,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_mein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wehtun,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_haben_sie_fieber,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich_habe_fieber,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_mein_kopf_tut_weh,'review',0,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_fieber,'اسم جدید',NULL,36,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به سوال دکتر گوش کن',NULL,36,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'بگو تب داری',NULL,36,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به سوال بعدی دکتر گوش کن',NULL,36,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'بگو سرت درد می کند',NULL,36,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,NULL,v_w_fieber,'معنی درست را انتخاب کن',NULL,36,'{"mode":"word_translation","question":"Fieber","choices":["تب","سرفه","دارو"],"correctIndex":0}','{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_ich_habe_fieber,'عبارت جدید',NULL,36,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به سوال دکتر گوش کن',NULL,36,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'کامل بگو تب داری',NULL,36,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به سوال درباره سر گوش کن',NULL,36,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'درد سرت را بگو',NULL,36,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_6,NULL,'معنی درست را انتخاب کن',NULL,36,'{"mode":"turn_translation","question":"«Ich habe Fieber.» یعنی چی؟","choices":["تب دارم.","سرم درد می کند.","بیمار نیستم."],"correctIndex":0}','{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',7,v_t_6,NULL,'جمله تب را به ترتیب درست بساز',NULL,36,'{"source":"turn_tokens","shuffle":true}','{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_haben_sie_fieber,'عبارت جدید',NULL,36,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_9,NULL,'به توضیح میا گوش کن',NULL,36,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_10,NULL,'به عنوان دکتر درباره تب بپرس',NULL,36,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_11,NULL,'به جواب میا گوش کن',NULL,36,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_12,NULL,'علامت را دوباره بررسی کن',NULL,36,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_10,NULL,'معنی درست را انتخاب کن',NULL,36,'{"mode":"turn_translation","question":"«Haben Sie Fieber?» یعنی چی؟","choices":["تب دارید؟","سرتون درد می کنه؟","دارو لازم دارید؟"],"correctIndex":0}','{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,36,'{"source":"lesson_story","question":"دکتر درباره چه علامتی از میا سوال می کند؟","choices":["تب.","سرفه.","دل درد."],"correctIndex":0}','{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_13,NULL,'به سوال دکتر گوش کن',NULL,36,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_14,NULL,'بگو تب داری',NULL,36,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_15,NULL,'به سوال بعدی دکتر گوش کن',NULL,36,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_16,NULL,'بگو سرت درد می کند',NULL,36,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',5,NULL,NULL,'کل گفتگو را بخوان و جواب بده',NULL,36,'{"source":"lesson_story","question":"میا کدام نشانه ها را گفته است؟","choices":["تب و سردرد.","فقط سرفه.","فقط خستگی."],"correctIndex":0}','{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',6,v_t_14,NULL,'جواب میا را بررسی کن',NULL,36,'{"mode":"turn_translation","question":"«Ich habe Fieber.» یعنی چی؟","choices":["تب دارم.","حالم بهتره.","دارو می خوام."],"correctIndex":0}','{"cefr":"A2","module":6}');
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 066 lesson count.'; END IF;
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
CALL import_nova_series_066_v9();
DROP PROCEDURE IF EXISTS import_nova_series_066_v9;
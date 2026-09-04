-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 068
-- A2 > Gesundheit & Beschwerden > Ich habe Husten
-- Requires Series 067.
-- Continues mia-doctor-weber orders 12-15.
-- Adds a second symptom and combines multiple symptoms.
-- Medication/advice is deferred to Series 069.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_068_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_068_v9()
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
  DECLARE v_w_fieber BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_und BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_seit BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gestern BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_seit_gestern BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_habe_fieber BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_haben_sie_fieber BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_husten BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_habe_husten BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_habe_fieber_und_husten BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wann BIGINT UNSIGNED DEFAULT NULL;
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
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='A2' AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Level not found.'; END IF;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=6 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 066 before Series 068.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=2 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 06 Chapter 03 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 067 before Series 068.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_prev_chapter AND status IN ('validated','complete');
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 067 Chapter must be validated/complete before Series 068.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 06 Chapter 03 must be empty before Series 068 import.'; END IF;

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

  SELECT id INTO v_w_fieber FROM words WHERE course_id=v_course AND lemma='Fieber' AND part_of_speech='noun' AND translation='تب' ORDER BY id LIMIT 1;
  IF v_w_fieber IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Fieber not found.'; END IF;

  SELECT id INTO v_w_und FROM words WHERE course_id=v_course AND lemma='und' AND part_of_speech='conjunction' AND translation='و' ORDER BY id LIMIT 1;
  IF v_w_und IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word und not found.'; END IF;

  SELECT id INTO v_w_seit FROM words WHERE course_id=v_course AND lemma='seit' AND part_of_speech='preposition' AND translation='از / از زمان' ORDER BY id LIMIT 1;
  IF v_w_seit IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word seit not found.'; END IF;

  SELECT id INTO v_w_gestern FROM words WHERE course_id=v_course AND lemma='gestern' AND part_of_speech='adverb' AND translation='دیروز' ORDER BY id LIMIT 1;
  IF v_w_gestern IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gestern not found.'; END IF;

  SELECT id INTO v_w_seit_gestern FROM words WHERE course_id=v_course AND lemma='Seit gestern.' AND part_of_speech='phrase' AND translation='از دیروز.' ORDER BY id LIMIT 1;
  IF v_w_seit_gestern IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Seit gestern. not found.'; END IF;

  SELECT id INTO v_w_ich_habe_fieber FROM words WHERE course_id=v_course AND lemma='Ich habe Fieber.' AND part_of_speech='phrase' AND translation='تب دارم.' ORDER BY id LIMIT 1;
  IF v_w_ich_habe_fieber IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Ich habe Fieber. not found.'; END IF;

  SELECT id INTO v_w_haben_sie_fieber FROM words WHERE course_id=v_course AND lemma='Haben Sie Fieber?' AND part_of_speech='phrase' AND translation='تب دارید؟' ORDER BY id LIMIT 1;
  IF v_w_haben_sie_fieber IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Haben Sie Fieber? not found.'; END IF;

  SELECT id INTO v_w_wann FROM words WHERE course_id=v_course AND lemma='wann' AND part_of_speech='adverb' AND translation='کی / چه زمانی' ORDER BY id LIMIT 1;
  IF v_w_wann IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word wann not found.'; END IF;

  SELECT id INTO v_w_husten FROM words WHERE course_id=v_course AND lemma='Husten' AND part_of_speech='noun' AND translation='سرفه' ORDER BY id LIMIT 1;
  IF v_w_husten IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Husten','Husten','noun','سرفه',37,'{"gender":"masculine","article":"der","usuallyWithoutArticleInPhrase":"Husten haben"}','[{"text":"Fieber","translation":"تب"},{"text":"Kopfschmerzen","translation":"سردرد"},{"text":"Tablette","translation":"قرص"},{"text":"Medikament","translation":"دارو"},{"text":"Schmerz","translation":"درد"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":68,"module":6}');
    SET v_w_husten=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_ich_habe_husten FROM words WHERE course_id=v_course AND lemma='Ich habe Husten.' AND part_of_speech='phrase' AND translation='سرفه دارم.' ORDER BY id LIMIT 1;
  IF v_w_ich_habe_husten IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich habe Husten.','Ich habe Husten.','phrase','سرفه دارم.',37,'{"subject":"ich","verb":"haben","verbForm":"habe","person":"1sg","object":"Husten"}','[{"text":"Ich habe Fieber.","translation":"تب دارم."},{"text":"Mein Kopf tut weh.","translation":"سرم درد می کند."},{"text":"Ich bin krank.","translation":"من بیمارم."},{"text":"Seit gestern.","translation":"از دیروز."},{"text":"Ich brauche Hilfe.","translation":"کمک لازم دارم."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":68,"module":6}');
    SET v_w_ich_habe_husten=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_ich_habe_fieber_und_husten FROM words WHERE course_id=v_course AND lemma='Ich habe Fieber und Husten.' AND part_of_speech='phrase' AND translation='تب و سرفه دارم.' ORDER BY id LIMIT 1;
  IF v_w_ich_habe_fieber_und_husten IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich habe Fieber und Husten.','Ich habe Fieber und Husten.','phrase','تب و سرفه دارم.',37,'{"subject":"ich","verb":"haben","verbForm":"habe","person":"1sg","objects":["Fieber","Husten"],"connector":"und"}','[{"text":"Ich habe Fieber.","translation":"تب دارم."},{"text":"Ich habe Husten.","translation":"سرفه دارم."},{"text":"Ich bin seit gestern krank.","translation":"از دیروز بیمارم."},{"text":"Ich habe Fieber und Kopfschmerzen.","translation":"تب و سردرد دارم."},{"text":"Haben Sie Fieber?","translation":"تب دارید؟"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":68,"module":6}');
    SET v_w_ich_habe_fieber_und_husten=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_doctor,v_c_mia,'Husten','سرفه','Dr. Weber kennt bereits Mias Fieber und fragt nach einem weiteren Symptom. Mia nennt jetzt Husten.','دکتر وبر از تب میا خبر دارد و درباره یک علامت دیگر می پرسد. میا حالا سرفه را هم می گوید.','story','mia-doctor-weber',12,37,110,1,'validated','{"relationship":"patient_and_doctor","context":"fever-and-cough","cefr":"A2","module":6,"focus":"second-symptom-and-combination"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_doctor,1,'character','Haben Sie Husten?','سرفه دارید؟',37,NULL,NULL,NULL,NULL,'[{"surface":"Haben","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارید","form":"present_formal"},{"surface":"Sie","lemma":"Sie","translation":"شما","partOfSpeech":"pronoun","meaning":"شما","form":"formal_2"},{"surface":"Husten","lemma":"Husten","translation":"سرفه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,2,'learner','Ja. Ich habe Husten.','بله. سرفه دارم.',37,NULL,NULL,'ja ich habe husten',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارم","form":"present_1sg"},{"surface":"Husten","lemma":"Husten","translation":"سرفه","partOfSpeech":"noun","suffix":"."}]','Husten haben','مثل «Fieber haben»، برای سرفه هم می گوییم «Husten haben»: «Ich habe Husten.»',NULL,'{"cefr":"A2","module":6}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_doctor,3,'character','Fieber?','تب؟',37,NULL,NULL,NULL,NULL,'[{"surface":"Fieber","lemma":"Fieber","translation":"تب","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,4,'learner','Ja. Ich habe Fieber.','بله. تب دارم.',37,NULL,NULL,'ja ich habe fieber',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارم","form":"present_1sg"},{"surface":"Fieber","lemma":"Fieber","translation":"تب","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_4=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_doctor,v_c_mia,'Ich habe Husten','سرفه دارم','Dr. Weber fragt noch einmal direkt nach Husten. Mia übt die neue Symptom-Aussage als vollständigen Satz.','دکتر وبر یک بار دیگر مستقیم درباره سرفه می پرسد. میا جمله کامل علامت جدید را تمرین می کند.','story','mia-doctor-weber',13,37,110,2,'validated','{"relationship":"patient_and_doctor","context":"fever-and-cough","cefr":"A2","module":6,"focus":"second-symptom-and-combination"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_doctor,1,'character','Haben Sie Husten?','سرفه دارید؟',37,NULL,NULL,NULL,NULL,'[{"surface":"Haben","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارید","form":"present_formal"},{"surface":"Sie","lemma":"Sie","translation":"شما","partOfSpeech":"pronoun","meaning":"شما","form":"formal_2"},{"surface":"Husten","lemma":"Husten","translation":"سرفه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,2,'learner','Ich habe Husten.','سرفه دارم.',37,NULL,NULL,'ich habe husten',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارم","form":"present_1sg"},{"surface":"Husten","lemma":"Husten","translation":"سرفه","partOfSpeech":"noun","suffix":"."}]','همان الگوی آشنای haben','ساختار جدیدی لازم نیست: فقط علامت عوض می شود. «Ich habe Fieber.» و «Ich habe Husten.» یک الگو دارند.',NULL,'{"cefr":"A2","module":6}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_doctor,3,'character','Seit gestern?','از دیروز؟',37,NULL,NULL,NULL,NULL,'[{"surface":"Seit","lemma":"seit","translation":"از / از زمان","partOfSpeech":"preposition","meaning":"از / از زمان","form":"temporal_preposition"},{"surface":"gestern","lemma":"gestern","translation":"دیروز","partOfSpeech":"adverb","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,4,'learner','Ja. Seit gestern.','بله. از دیروز.',37,NULL,NULL,'ja seit gestern',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Seit","lemma":"seit","translation":"از / از زمان","partOfSpeech":"preposition","meaning":"از / از زمان","form":"temporal_preposition"},{"surface":"gestern","lemma":"gestern","translation":"دیروز","partOfSpeech":"adverb","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_8=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_doctor,v_c_mia,'Fieber und Husten','تب و سرفه','Dr. Weber fasst die zwei Symptome zusammen. Mia verbindet Fieber und Husten jetzt in einem einzigen Satz.','دکتر وبر دو علامت را کنار هم بررسی می کند. میا حالا تب و سرفه را در یک جمله می گوید.','story','mia-doctor-weber',14,37,110,3,'validated','{"relationship":"patient_and_doctor","context":"fever-and-cough","cefr":"A2","module":6,"focus":"second-symptom-and-combination"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_doctor,1,'character','Fieber und Husten?','تب و سرفه؟',37,NULL,NULL,NULL,NULL,'[{"surface":"Fieber","lemma":"Fieber","translation":"تب","partOfSpeech":"noun"},{"surface":"und","lemma":"und","translation":"و","partOfSpeech":"conjunction"},{"surface":"Husten","lemma":"Husten","translation":"سرفه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,2,'learner','Ja. Ich habe Fieber und Husten.','بله. تب و سرفه دارم.',37,NULL,NULL,'ja ich habe fieber und husten',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارم","form":"present_1sg"},{"surface":"Fieber","lemma":"Fieber","translation":"تب","partOfSpeech":"noun"},{"surface":"und","lemma":"und","translation":"و","partOfSpeech":"conjunction"},{"surface":"Husten","lemma":"Husten","translation":"سرفه","partOfSpeech":"noun","suffix":"."}]','دو علامت با und','برای گفتن چند علامت لازم نیست جمله را تکرار کنی: «Ich habe Fieber und Husten.»',NULL,'{"cefr":"A2","module":6}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_doctor,3,'character','Seit gestern?','از دیروز؟',37,NULL,NULL,NULL,NULL,'[{"surface":"Seit","lemma":"seit","translation":"از / از زمان","partOfSpeech":"preposition","meaning":"از / از زمان","form":"temporal_preposition"},{"surface":"gestern","lemma":"gestern","translation":"دیروز","partOfSpeech":"adverb","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,4,'learner','Ja. Seit gestern.','بله. از دیروز.',37,NULL,NULL,'ja seit gestern',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Seit","lemma":"seit","translation":"از / از زمان","partOfSpeech":"preposition","meaning":"از / از زمان","form":"temporal_preposition"},{"surface":"gestern","lemma":"gestern","translation":"دیروز","partOfSpeech":"adverb","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_12=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_doctor,v_c_mia,'Die Beschwerden','نشانه های میا','Dr. Weber prüft Dauer und Symptome zusammen. Mia kann jetzt knapp und klar sagen, seit wann sie krank ist und welche Beschwerden sie hat.','دکتر وبر مدت بیماری و نشانه ها را با هم بررسی می کند. میا حالا کوتاه و روشن می گوید از کی بیمار است و چه نشانه هایی دارد.','story','mia-doctor-weber',15,37,110,4,'validated','{"relationship":"patient_and_doctor","context":"fever-and-cough","cefr":"A2","module":6,"focus":"second-symptom-and-combination"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_doctor,1,'character','Seit wann?','از کی؟',37,NULL,NULL,NULL,NULL,'[{"surface":"Seit","lemma":"seit","translation":"از / از زمان","partOfSpeech":"preposition","meaning":"از / از زمان","form":"temporal_preposition"},{"surface":"wann","lemma":"wann","translation":"کی / چه زمانی","partOfSpeech":"adverb","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,2,'learner','Seit gestern.','از دیروز.',37,NULL,NULL,'seit gestern',NULL,'[{"surface":"Seit","lemma":"seit","translation":"از / از زمان","partOfSpeech":"preposition","meaning":"از / از زمان","form":"temporal_preposition"},{"surface":"gestern","lemma":"gestern","translation":"دیروز","partOfSpeech":"adverb","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_doctor,3,'character','Haben Sie Fieber?','تب دارید؟',37,NULL,NULL,NULL,NULL,'[{"surface":"Haben","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارید","form":"present_formal"},{"surface":"Sie","lemma":"Sie","translation":"شما","partOfSpeech":"pronoun","meaning":"شما","form":"formal_2"},{"surface":"Fieber","lemma":"Fieber","translation":"تب","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,4,'learner','Ja. Ich habe Fieber.','بله. تب دارم.',37,NULL,NULL,'ja ich habe fieber',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارم","form":"present_1sg"},{"surface":"Fieber","lemma":"Fieber","translation":"تب","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_doctor,5,'character','Husten?','سرفه؟',37,NULL,NULL,NULL,NULL,'[{"surface":"Husten","lemma":"Husten","translation":"سرفه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,6,'learner','Ja. Ich habe Fieber und Husten.','بله. تب و سرفه دارم.',37,NULL,NULL,'ja ich habe fieber und husten',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارم","form":"present_1sg"},{"surface":"Fieber","lemma":"Fieber","translation":"تب","partOfSpeech":"noun"},{"surface":"und","lemma":"und","translation":"و","partOfSpeech":"conjunction"},{"surface":"Husten","lemma":"Husten","translation":"سرفه","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_18=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_haben,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_sie_formal,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_husten,'new',1,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ich,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_fieber,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ich_habe_husten,'passive',0,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_haben,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_sie_formal,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_husten,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_seit,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_gestern,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich_habe_husten,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_fieber,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_und,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_husten,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_haben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_seit,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_gestern,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich_habe_fieber,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich_habe_husten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich_habe_fieber_und_husten,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_seit,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wann,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_gestern,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_haben,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_sie_formal,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_fieber,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_husten,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_und,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_seit_gestern,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich_habe_fieber,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich_habe_husten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich_habe_fieber_und_husten,'review',0,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_husten,'اسم جدید',NULL,37,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به سوال دکتر گوش کن',NULL,37,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'بگو سرفه داری',NULL,37,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به سوال بعدی دکتر گوش کن',NULL,37,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'بگو تب داری',NULL,37,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,NULL,v_w_husten,'معنی درست را انتخاب کن',NULL,37,'{"mode":"word_translation","question":"Husten","choices":["سرفه","تب","دارو"],"correctIndex":0}','{"cefr":"A2","module":6}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_ich_habe_husten,'عبارت جدید',NULL,37,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به سوال دکتر گوش کن',NULL,37,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'کامل بگو سرفه داری',NULL,37,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به سوال زمان گوش کن',NULL,37,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'بگو از دیروز',NULL,37,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_6,NULL,'معنی جمله را انتخاب کن',NULL,37,'{"mode":"turn_translation","question":"«Ich habe Husten.» یعنی چی؟","choices":["سرفه دارم.","تب دارم.","از دیروز بیمارم."],"correctIndex":0}','{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',7,v_t_6,NULL,'جمله سرفه را به ترتیب درست بساز',NULL,37,'{"source":"turn_tokens","shuffle":true}','{"cefr":"A2","module":6}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_ich_habe_fieber_und_husten,'عبارت جدید',NULL,37,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_9,NULL,'به جمع بندی دکتر گوش کن',NULL,37,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_10,NULL,'هر دو علامت را در یک جمله بگو',NULL,37,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_11,NULL,'به سوال زمان گوش کن',NULL,37,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_12,NULL,'بگو از دیروز',NULL,37,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_10,NULL,'معنی جمله را انتخاب کن',NULL,37,'{"mode":"turn_translation","question":"«Ich habe Fieber und Husten.» یعنی چی؟","choices":["تب و سرفه دارم.","فقط تب دارم.","تب ندارم."],"correctIndex":0}','{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,37,'{"source":"lesson_story","question":"میا چه نشانه هایی دارد؟","choices":["تب و سرفه.","فقط سردرد.","فقط سرفه."],"correctIndex":0}','{"cefr":"A2","module":6}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_13,NULL,'به سوال زمان گوش کن',NULL,37,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_14,NULL,'بگو از دیروز',NULL,37,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_15,NULL,'به سوال درباره تب گوش کن',NULL,37,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_16,NULL,'بگو تب داری',NULL,37,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_17,NULL,'به سوال درباره سرفه گوش کن',NULL,37,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_18,NULL,'تب و سرفه را با هم بگو',NULL,37,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',7,NULL,NULL,'کل گفتگو را بخوان و جواب بده',NULL,37,'{"source":"lesson_story","question":"خلاصه وضعیت میا چیست؟","choices":["از دیروز بیمار است و تب و سرفه دارد.","فقط امروز سردرد دارد.","حالش کاملا خوب شده است."],"correctIndex":0}','{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',8,v_t_18,NULL,'جمع بندی نشانه ها را بررسی کن',NULL,37,'{"mode":"turn_translation","question":"«Ich habe Fieber und Husten.» یعنی چی؟","choices":["تب و سرفه دارم.","فقط سرفه دارم.","تب و سرفه ندارم."],"correctIndex":0}','{"cefr":"A2","module":6}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 068 lesson count.'; END IF;
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

CALL import_nova_series_068_v9();
DROP PROCEDURE IF EXISTS import_nova_series_068_v9;
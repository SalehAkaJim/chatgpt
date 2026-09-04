-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 037
-- A1 > Wichtige Situationen > In der Apotheke
-- Continues Mia's medical situation from Series 036.
-- Canonical dependencies: Series 004 r2, Series 015 r3, Series 020 r2.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_037_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_037_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_mia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_sara BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_clara BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_zu BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_hallo BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_was BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sie_formal BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_bitte BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_mein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kopf BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wehtun BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danke BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_apotheke BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_medikament BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_brauchen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_brauche_ein_medikament BIGINT UNSIGNED DEFAULT NULL;
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

  DECLARE EXIT HANDLER FOR SQLEXCEPTION
  BEGIN
    ROLLBACK;
    RESIGNAL;
  END;

  START TRANSACTION;
  SELECT id INTO v_course FROM courses WHERE learning_language='de' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND sort_order=1 ORDER BY id LIMIT 1;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=8 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 036 before Series 037.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=1 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Module 08 Chapter 02 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 036 before Series 037.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Module 08 Chapter 02 must be empty before Series 037 import.'; END IF;

  SELECT id INTO v_c_mia FROM characters WHERE course_id=v_course AND name='Mia' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_mia IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Mia not found.'; END IF;

  SELECT id INTO v_c_sara FROM characters WHERE course_id=v_course AND name='Sara' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_sara IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Sara not found.'; END IF;

  SELECT id INTO v_c_clara FROM characters WHERE course_id=v_course AND name='Clara' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_clara IS NULL THEN
    INSERT INTO characters(course_id,name,gender,avatar_url,voice_key,profile,metadata)
    VALUES(v_course,'Clara','female',NULL,NULL,'{"role":"pharmacist"}','{"context":"pharmacy","workplace":"local pharmacy","introducedInModule":8,"introducedInChapter":2}');
    SET v_c_clara=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_zu FROM words WHERE course_id=v_course AND lemma='zu' AND part_of_speech='preposition' AND translation='به / به سمت' ORDER BY id LIMIT 1;
  IF v_w_zu IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word zu not found.'; END IF;

  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;

  SELECT id INTO v_w_hallo FROM words WHERE course_id=v_course AND lemma='Hallo' AND part_of_speech='interjection' AND translation='سلام' ORDER BY id LIMIT 1;
  IF v_w_hallo IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Hallo not found.'; END IF;

  SELECT id INTO v_w_was FROM words WHERE course_id=v_course AND lemma='was' AND part_of_speech='pronoun' AND translation='چی / چه' ORDER BY id LIMIT 1;
  IF v_w_was IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word was not found.'; END IF;

  SELECT id INTO v_w_sie_formal FROM words WHERE course_id=v_course AND lemma='Sie' AND part_of_speech='pronoun' AND translation='شما' ORDER BY id LIMIT 1;
  IF v_w_sie_formal IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Sie not found.'; END IF;

  SELECT id INTO v_w_ein FROM words WHERE course_id=v_course AND lemma='ein' AND part_of_speech='article' AND translation='یک / حرف تعریف نامعین' ORDER BY id LIMIT 1;
  IF v_w_ein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ein not found.'; END IF;

  SELECT id INTO v_w_bitte FROM words WHERE course_id=v_course AND lemma='bitte' AND part_of_speech='interjection' AND translation='لطفا / خواهش می کنم' ORDER BY id LIMIT 1;
  IF v_w_bitte IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word bitte not found.'; END IF;

  SELECT id INTO v_w_ich FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_ich IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ich not found.'; END IF;

  SELECT id INTO v_w_mein FROM words WHERE course_id=v_course AND lemma='mein' AND part_of_speech='determiner' AND translation='مال من / من' ORDER BY id LIMIT 1;
  IF v_w_mein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word mein not found.'; END IF;

  SELECT id INTO v_w_kopf FROM words WHERE course_id=v_course AND lemma='Kopf' AND part_of_speech='noun' AND translation='سر' ORDER BY id LIMIT 1;
  IF v_w_kopf IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Kopf not found.'; END IF;

  SELECT id INTO v_w_wehtun FROM words WHERE course_id=v_course AND lemma='wehtun' AND part_of_speech='verb' AND translation='درد کردن' ORDER BY id LIMIT 1;
  IF v_w_wehtun IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word wehtun not found.'; END IF;

  SELECT id INTO v_w_danke FROM words WHERE course_id=v_course AND lemma='danke' AND part_of_speech='interjection' AND translation='ممنون' ORDER BY id LIMIT 1;
  IF v_w_danke IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word danke not found.'; END IF;

  SELECT id INTO v_w_apotheke FROM words WHERE course_id=v_course AND lemma='Apotheke' AND part_of_speech='noun' AND translation='داروخانه' ORDER BY id LIMIT 1;
  IF v_w_apotheke IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Apotheke','Apotheke','noun','داروخانه',20,'{"article":"die","plural":"Apotheken"}','[{"text":"Arzt","translation":"دکتر"},{"text":"Hotel","translation":"هتل"},{"text":"Supermarkt","translation":"سوپرمارکت"},{"text":"Bahnhof","translation":"ایستگاه قطار"},{"text":"Restaurant","translation":"رستوران"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_apotheke=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_medikament FROM words WHERE course_id=v_course AND lemma='Medikament' AND part_of_speech='noun' AND translation='دارو' ORDER BY id LIMIT 1;
  IF v_w_medikament IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Medikament','Medikament','noun','دارو',20,'{"article":"das","plural":"Medikamente"}','[{"text":"Kaffee","translation":"قهوه"},{"text":"Fahrkarte","translation":"بلیط"},{"text":"Quittung","translation":"رسید"},{"text":"T-Shirt","translation":"تی شرت"},{"text":"Tablette","translation":"قرص"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_medikament=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_brauchen FROM words WHERE course_id=v_course AND lemma='brauchen' AND part_of_speech='verb' AND translation='نیاز داشتن / لازم داشتن' ORDER BY id LIMIT 1;
  IF v_w_brauchen IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'brauchen','brauchen','verb','نیاز داشتن / لازم داشتن',20,'{"present":{"ich":"brauche","du":"brauchst","er_sie_es":"braucht","wir":"brauchen","Sie":"brauchen"}}','[{"text":"haben","translation":"داشتن"},{"text":"möchten","translation":"خواستن / مایل بودن"},{"text":"kaufen","translation":"خریدن"},{"text":"machen","translation":"انجام دادن"},{"text":"bekommen","translation":"گرفتن / دریافت کردن"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_brauchen=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_ich_brauche_ein_medikament FROM words WHERE course_id=v_course AND lemma='Ich brauche ein Medikament.' AND part_of_speech='phrase' AND translation='یک دارو لازم دارم.' ORDER BY id LIMIT 1;
  IF v_w_ich_brauche_ein_medikament IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich brauche ein Medikament.','Ich brauche ein Medikament.','phrase','یک دارو لازم دارم.',20,NULL,'[{"text":"Ich bin krank.","translation":"من بیمارم."},{"text":"Mein Kopf tut weh.","translation":"سرم درد می کند."},{"text":"Ein Medikament, bitte.","translation":"یک دارو، لطفا."},{"text":"Ich möchte einen Kaffee.","translation":"یک قهوه می خواهم."},{"text":"Ich habe keine Zeit.","translation":"وقت ندارم."}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_ich_brauche_ein_medikament=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Zur Apotheke','رفتن به داروخانه','Nach dem Arzttermin sieht Sara, dass Mia weiter zur Apotheke geht.','بعد از وقت دکتر، سارا می بیند میا به داروخانه می رود.','story','mia-sara-important-situations',2,20,105,1,'validated','{"context":"pharmacy","storyArc":"arrival-request-reason-resolution"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,1,'character','Zur Apotheke?','به داروخانه؟',20,NULL,NULL,NULL,NULL,'[{"surface":"Zur","lemma":"zu","translation":"به / به سمت","partOfSpeech":"preposition","meaning":"به / به سمت","form":"contraction_zu_der"},{"surface":"Apotheke","lemma":"Apotheke","translation":"داروخانه","partOfSpeech":"noun","suffix":"?"}]','Zur = zu der','قبلا «Zum Arzt» را دیدی. چون «Apotheke» با die می آید، اینجا «zur Apotheke» استفاده می شود. فعلا آن را یک عبارت آماده بدان.',NULL,NULL);
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,2,'learner','Ja. Zur Apotheke.','بله. به داروخانه.',20,NULL,NULL,'ja zur apotheke',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Zur","lemma":"zu","translation":"به / به سمت","partOfSpeech":"preposition","meaning":"به / به سمت","form":"contraction_zu_der"},{"surface":"Apotheke","lemma":"Apotheke","translation":"داروخانه","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,3,'character','Medikament?','دارو؟',20,NULL,NULL,NULL,NULL,'[{"surface":"Medikament","lemma":"Medikament","translation":"دارو","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,4,'learner','Ja.','بله.',20,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_4=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_clara,v_c_mia,'Ein Medikament','یک دارو','In der Apotheke fragt Clara höflich, was Mia braucht. Mia bittet zunächst kurz um ein Medikament.','در داروخانه، کلارا محترمانه می پرسد میا چه چیزی لازم دارد. میا اول کوتاه یک دارو می خواهد.','story','mia-clara-pharmacy',1,20,105,2,'validated','{"context":"pharmacy","storyArc":"arrival-request-reason-resolution"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_clara,1,'character','Hallo.','سلام.',20,NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,2,'learner','Hallo.','سلام.',20,NULL,NULL,'hallo',NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_clara,3,'character','Was brauchen Sie?','چی لازم دارید؟',20,NULL,NULL,NULL,NULL,'[{"surface":"Was","lemma":"was","translation":"چی / چه","partOfSpeech":"pronoun"},{"surface":"brauchen","lemma":"brauchen","translation":"نیاز داشتن / لازم داشتن","partOfSpeech":"verb","meaning":"لازم دارید","form":"present_formal"},{"surface":"Sie","lemma":"Sie","translation":"شما","partOfSpeech":"pronoun","meaning":"شما","form":"nominative_formal","suffix":"?"}]','Sie رسمی دوباره در یک موقعیت خدماتی','داروساز هم مثل دکتر از «Sie» رسمی استفاده می کند. فعلا فقط معنی جمله را بفهم.',NULL,NULL);
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,4,'learner','Ein Medikament, bitte.','یک دارو، لطفا.',20,NULL,NULL,'ein medikament bitte',NULL,'[{"surface":"Ein","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","meaning":"یک","form":"neuter_accusative"},{"surface":"Medikament","lemma":"Medikament","translation":"دارو","partOfSpeech":"noun","suffix":","},{"surface":"bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","meaning":"لطفا","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_8=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_clara,v_c_mia,'Ich brauche ein Medikament','یک دارو لازم دارم','Mia sagt jetzt mit einem vollständigen Satz, was sie braucht, und erklärt ihren bekannten Kopfschmerz.','میا حالا با یک جمله کامل می گوید چه چیزی لازم دارد و درد سر قبلی اش را توضیح می دهد.','story','mia-clara-pharmacy',2,20,105,3,'validated','{"context":"pharmacy","storyArc":"arrival-request-reason-resolution"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_clara,1,'character','Was brauchen Sie?','چی لازم دارید؟',20,NULL,NULL,NULL,NULL,'[{"surface":"Was","lemma":"was","translation":"چی / چه","partOfSpeech":"pronoun"},{"surface":"brauchen","lemma":"brauchen","translation":"نیاز داشتن / لازم داشتن","partOfSpeech":"verb","meaning":"لازم دارید","form":"present_formal"},{"surface":"Sie","lemma":"Sie","translation":"شما","partOfSpeech":"pronoun","meaning":"شما","form":"nominative_formal","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,2,'learner','Ich brauche ein Medikament.','یک دارو لازم دارم.',20,NULL,NULL,'ich brauche ein medikament',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"brauche","lemma":"brauchen","translation":"نیاز داشتن / لازم داشتن","partOfSpeech":"verb","meaning":"لازم دارم","form":"present_1sg"},{"surface":"ein","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","meaning":"یک","form":"neuter_accusative"},{"surface":"Medikament","lemma":"Medikament","translation":"دارو","partOfSpeech":"noun","suffix":"."}]','Ich brauche ...','«Ich brauche ...» یعنی «... لازم دارم». فعلا همین الگو را در موقعیت داروخانه استفاده کن.',NULL,NULL);
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_clara,3,'character','Kopf?','سر؟',20,NULL,NULL,NULL,NULL,'[{"surface":"Kopf","lemma":"Kopf","translation":"سر","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,4,'learner','Ja. Mein Kopf tut weh.','بله. سرم درد می کند.',20,NULL,NULL,'ja mein kopf tut weh',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Mein","lemma":"mein","translation":"مال من / من","partOfSpeech":"determiner","meaning":"مال من / سرم","form":"masculine_nominative"},{"surface":"Kopf","lemma":"Kopf","translation":"سر","partOfSpeech":"noun"},{"surface":"tut","lemma":"wehtun","translation":"درد کردن","partOfSpeech":"verb","meaning":"درد می کند","form":"present_3sg"},{"surface":"weh","lemma":"wehtun","translation":"درد کردن","partOfSpeech":"verb","meaning":"بخش جداشونده فعل","form":"separable_particle","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_12=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_clara,v_c_mia,'Mia in der Apotheke','میا در داروخانه','Mia führt das kurze Apothekengespräch vollständig: Sie sagt, was sie braucht, erklärt den Grund und bekommt das Medikament.','میا گفتگوی کوتاه داروخانه را کامل انجام می دهد: می گوید چه چیزی لازم دارد، دلیلش را توضیح می دهد و دارو را می گیرد.','story','mia-clara-pharmacy',3,20,132,4,'validated','{"context":"pharmacy","storyArc":"arrival-request-reason-resolution"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_clara,1,'character','Hallo.','سلام.',20,NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,2,'learner','Hallo.','سلام.',20,NULL,NULL,'hallo',NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_clara,3,'character','Was brauchen Sie?','چی لازم دارید؟',20,NULL,NULL,NULL,NULL,'[{"surface":"Was","lemma":"was","translation":"چی / چه","partOfSpeech":"pronoun"},{"surface":"brauchen","lemma":"brauchen","translation":"نیاز داشتن / لازم داشتن","partOfSpeech":"verb","meaning":"لازم دارید","form":"present_formal"},{"surface":"Sie","lemma":"Sie","translation":"شما","partOfSpeech":"pronoun","meaning":"شما","form":"nominative_formal","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,4,'learner','Ich brauche ein Medikament.','یک دارو لازم دارم.',20,NULL,NULL,'ich brauche ein medikament',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"brauche","lemma":"brauchen","translation":"نیاز داشتن / لازم داشتن","partOfSpeech":"verb","meaning":"لازم دارم","form":"present_1sg"},{"surface":"ein","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","meaning":"یک","form":"neuter_accusative"},{"surface":"Medikament","lemma":"Medikament","translation":"دارو","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_clara,5,'character','Kopf?','سر؟',20,NULL,NULL,NULL,NULL,'[{"surface":"Kopf","lemma":"Kopf","translation":"سر","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,6,'learner','Ja. Mein Kopf tut weh.','بله. سرم درد می کند.',20,NULL,NULL,'ja mein kopf tut weh',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Mein","lemma":"mein","translation":"مال من / من","partOfSpeech":"determiner","meaning":"مال من / سرم","form":"masculine_nominative"},{"surface":"Kopf","lemma":"Kopf","translation":"سر","partOfSpeech":"noun"},{"surface":"tut","lemma":"wehtun","translation":"درد کردن","partOfSpeech":"verb","meaning":"درد می کند","form":"present_3sg"},{"surface":"weh","lemma":"wehtun","translation":"درد کردن","partOfSpeech":"verb","meaning":"بخش جداشونده فعل","form":"separable_particle","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_clara,7,'character','Ein Medikament?','یک دارو؟',20,NULL,NULL,NULL,NULL,'[{"surface":"Ein","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","meaning":"یک","form":"neuter_accusative"},{"surface":"Medikament","lemma":"Medikament","translation":"دارو","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,8,'learner','Ja, bitte.','بله، لطفا.',20,NULL,NULL,'ja bitte',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","meaning":"لطفا","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_20=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_clara,9,'character','Bitte.','بفرمایید.',20,NULL,NULL,NULL,NULL,'[{"surface":"Bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","meaning":"بفرمایید","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_21=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,10,'learner','Danke.','ممنون.',20,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_22=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_zu,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_apotheke,'new',1,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_medikament,'passive',0,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_hallo,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_was,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_brauchen,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_sie_formal,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_medikament,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_bitte,'review',0,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_was,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_brauchen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_sie_formal,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_medikament,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_kopf,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_mein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_wehtun,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich_brauche_ein_medikament,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_hallo,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_was,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_brauchen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_sie_formal,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ein,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_medikament,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_kopf,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_mein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wehtun,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_bitte,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich_brauche_ein_medikament,'review',0,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_apotheke,'کلمه جدید',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به مقصد میا گوش کن',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'بگو به داروخانه می روی',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به سوال دارو گوش کن',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'تایید کن',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,NULL,v_w_apotheke,'معنی درست را انتخاب کن',NULL,20,'{"mode":"word_translation","question":"Apotheke","choices":["داروخانه","دکتر","هتل"],"correctIndex":0}',NULL);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_medikament,'کلمه جدید',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به سلام داروساز گوش کن',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'سلام کن',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به سوال داروساز گوش کن',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'یک دارو بخواه',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,NULL,v_w_medikament,'معنی درست را انتخاب کن',NULL,20,'{"mode":"word_translation","question":"Medikament","choices":["دارو","قهوه","بلیط"],"correctIndex":0}',NULL);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_ich_brauche_ein_medikament,'عبارت جدید',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_9,NULL,'به سوال داروساز گوش کن',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_10,NULL,'با جمله کامل دارو بخواه',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_11,NULL,'به سوال درباره سر گوش کن',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_12,NULL,'بگو سرت درد می کند',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_10,NULL,'معنی درست را انتخاب کن',NULL,20,'{"mode":"turn_translation","question":"«Ich brauche ein Medikament.» یعنی چی؟","choices":["یک دارو لازم دارم.","من بیمارم.","سرم درد می کند."],"correctIndex":0}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'word_order',7,v_t_10,NULL,'جمله درخواست دارو را به ترتیب درست بساز',NULL,20,'{"source":"turn_tokens","shuffle":true}',NULL);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_13,NULL,'به سلام داروساز گوش کن',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_14,NULL,'سلام کن',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_15,NULL,'به سوال داروساز گوش کن',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_16,NULL,'دارو بخواه',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_17,NULL,'به سوال درباره سر گوش کن',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_18,NULL,'درد سرت را توضیح بده',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',7,v_t_19,NULL,'به تایید دارو گوش کن',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',8,v_t_20,NULL,'دارو را تایید کن',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',9,v_t_21,NULL,'به داروساز گوش کن',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',10,v_t_22,NULL,'تشکر کن',NULL,20,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',11,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,20,'{"source":"lesson_story","question":"میا چرا دارو می خواهد؟","choices":["سرش درد می کند.","وقت ندارد.","می خواهد سفر کند."],"correctIndex":0}',NULL);

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 037 lesson count.'; END IF;
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

CALL import_nova_series_037_v9();
DROP PROCEDURE IF EXISTS import_nova_series_037_v9;
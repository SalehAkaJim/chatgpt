-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 078
-- A2 > Telefon & Nachrichten > Warum hast du nicht geantwortet?
-- Requires Series 077.
-- Continues mia-sara-a2-communication orders 9-12.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_078_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_078_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_mia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_sara BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_haben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_du BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_nicht BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_nein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_dein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_nachricht BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_lesen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_schicken BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_zeit BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_habe_dir_eine_nachricht_geschickt BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_antworten BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_warum BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_warum_hast_du_nicht_geantwortet BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_hatte_keine_zeit BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ein BIGINT UNSIGNED DEFAULT NULL;
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
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=8 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 076 before Series 078.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=2 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 08 Chapter 03 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 077 before Series 078.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_prev_chapter AND status IN ('validated','complete');
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 077 Chapter must be validated/complete before Series 078.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 08 Chapter 03 must be empty before Series 078 import.'; END IF;
  SELECT id INTO v_c_mia FROM characters WHERE course_id=v_course AND name='Mia' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_mia IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Mia not found.'; END IF;
  SELECT id INTO v_c_sara FROM characters WHERE course_id=v_course AND name='Sara' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_sara IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Sara not found.'; END IF;
  SELECT id INTO v_w_ich FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_ich IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ich not found.'; END IF;
  SELECT id INTO v_w_haben FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_haben IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word haben not found.'; END IF;
  SELECT id INTO v_w_du FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_du IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word du not found.'; END IF;
  SELECT id INTO v_w_nicht FROM words WHERE course_id=v_course AND lemma='nicht' AND part_of_speech='particle' AND translation='نه / نیست' ORDER BY id LIMIT 1;
  IF v_w_nicht IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word nicht not found.'; END IF;
  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;
  SELECT id INTO v_w_nein FROM words WHERE course_id=v_course AND lemma='nein' AND part_of_speech='interjection' AND translation='نه' ORDER BY id LIMIT 1;
  IF v_w_nein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word nein not found.'; END IF;
  SELECT id INTO v_w_gut FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_gut IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gut not found.'; END IF;
  SELECT id INTO v_w_dein FROM words WHERE course_id=v_course AND lemma='dein' AND part_of_speech='determiner' AND translation='مال تو / تو' ORDER BY id LIMIT 1;
  IF v_w_dein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word dein not found.'; END IF;
  SELECT id INTO v_w_nachricht FROM words WHERE course_id=v_course AND lemma='Nachricht' AND part_of_speech='noun' AND translation='پیام' ORDER BY id LIMIT 1;
  IF v_w_nachricht IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Nachricht not found.'; END IF;
  SELECT id INTO v_w_lesen FROM words WHERE course_id=v_course AND lemma='lesen' AND part_of_speech='verb' AND translation='خواندن' ORDER BY id LIMIT 1;
  IF v_w_lesen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word lesen not found.'; END IF;
  SELECT id INTO v_w_schicken FROM words WHERE course_id=v_course AND lemma='schicken' AND part_of_speech='verb' AND translation='فرستادن' ORDER BY id LIMIT 1;
  IF v_w_schicken IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word schicken not found.'; END IF;
  SELECT id INTO v_w_zeit FROM words WHERE course_id=v_course AND lemma='Zeit' AND part_of_speech='noun' AND translation='وقت / زمان' ORDER BY id LIMIT 1;
  IF v_w_zeit IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Zeit not found.'; END IF;
  SELECT id INTO v_w_kein FROM words WHERE course_id=v_course AND lemma='kein' AND part_of_speech='determiner' AND translation='هیچ / نه یک' ORDER BY id LIMIT 1;
  IF v_w_kein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word kein not found.'; END IF;
  SELECT id INTO v_w_ich_habe_dir_eine_nachricht_geschickt FROM words WHERE course_id=v_course AND lemma='Ich habe dir eine Nachricht geschickt.' AND part_of_speech='phrase' AND translation='برات پیام فرستادم.' ORDER BY id LIMIT 1;
  IF v_w_ich_habe_dir_eine_nachricht_geschickt IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Ich habe dir eine Nachricht geschickt. not found.'; END IF;
  SELECT id INTO v_w_ein FROM words WHERE course_id=v_course AND lemma='ein' AND part_of_speech='article' AND translation='یک / حرف تعریف نامعین' ORDER BY id LIMIT 1;
  IF v_w_ein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ein not found.'; END IF;
  SELECT id INTO v_w_antworten FROM words WHERE course_id=v_course AND lemma='antworten' AND part_of_speech='verb' AND translation='جواب دادن' ORDER BY id LIMIT 1;
  IF v_w_antworten IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'antworten','antworten','verb','جواب دادن',40,'{"infinitive":"antworten","pastParticiple":"geantwortet","auxiliary":"haben"}','[{"text":"lesen","translation":"خواندن"},{"text":"schicken","translation":"فرستادن"},{"text":"fragen","translation":"پرسیدن"},{"text":"sprechen","translation":"صحبت کردن / حرف زدن"},{"text":"anrufen","translation":"زنگ زدن / تماس گرفتن"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":78,"module":8}');
    SET v_w_antworten=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_warum FROM words WHERE course_id=v_course AND lemma='warum' AND part_of_speech='adverb' AND translation='چرا' ORDER BY id LIMIT 1;
  IF v_w_warum IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'warum','warum','adverb','چرا',40,'{"questionWord":true,"usage":"reason_question"}','[{"text":"wann","translation":"کی / چه زمانی"},{"text":"wie","translation":"چطور / چگونه"},{"text":"wo","translation":"کجا"},{"text":"was","translation":"چی / چه"},{"text":"wer","translation":"چه کسی"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":78,"module":8}');
    SET v_w_warum=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_warum_hast_du_nicht_geantwortet FROM words WHERE course_id=v_course AND lemma='Warum hast du nicht geantwortet?' AND part_of_speech='phrase' AND translation='چرا جواب ندادی؟' ORDER BY id LIMIT 1;
  IF v_w_warum_hast_du_nicht_geantwortet IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Warum hast du nicht geantwortet?','Warum hast du nicht geantwortet?','phrase','چرا جواب ندادی؟',40,'{"questionWord":"warum","auxiliary":"haben","auxiliaryForm":"hast","subject":"du","negation":"nicht","participle":"geantwortet","participleLemma":"antworten"}','[{"text":"Hast du meine Nachricht gelesen?","translation":"پیامم رو خوندی؟"},{"text":"Warum hast du nicht angerufen?","translation":"چرا زنگ نزدی؟"},{"text":"Kann ich dich später anrufen?","translation":"می تونم بعدا بهت زنگ بزنم؟"},{"text":"Ich habe dir eine Nachricht geschickt.","translation":"برات پیام فرستادم."},{"text":"Hast du Zeit?","translation":"وقت داری؟"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":78,"module":8}');
    SET v_w_warum_hast_du_nicht_geantwortet=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_ich_hatte_keine_zeit FROM words WHERE course_id=v_course AND lemma='Ich hatte keine Zeit.' AND part_of_speech='phrase' AND translation='وقت نداشتم.' ORDER BY id LIMIT 1;
  IF v_w_ich_hatte_keine_zeit IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich hatte keine Zeit.','Ich hatte keine Zeit.','phrase','وقت نداشتم.',40,'{"subject":"ich","verb":"haben","verbForm":"hatte","form":"preterite_1sg","object":"keine Zeit"}','[{"text":"Ich habe keine Zeit.","translation":"وقت ندارم."},{"text":"Ich hatte Zeit.","translation":"وقت داشتم."},{"text":"Ich war müde.","translation":"خسته بودم."},{"text":"Ich habe deine Nachricht gelesen.","translation":"پیامت را خوندم."},{"text":"Ich kann nicht sprechen.","translation":"نمی تونم صحبت کنم."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":78,"module":8}');
    SET v_w_ich_hatte_keine_zeit=LAST_INSERT_ID();
  END IF;
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Antworten','جواب دادن','Sara hat Mias Nachricht gelesen, aber noch nicht geantwortet. Mia bemerkt jetzt genau diesen fehlenden Schritt.','سارا پیام میا را خوانده، اما هنوز جواب نداده است. میا حالا دقیقا به همین بخش توجه می کند.','story','mia-sara-a2-communication',9,40,110,1,'validated','{"relationship":"friends_and_classmates","context":"missing-reply","cefr":"A2","module":8,"focus":"warum-answer-reason"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,1,'character','Ich habe deine Nachricht gelesen.','پیامت را خوندم.',40,NULL,NULL,NULL,NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"present_1sg"},{"surface":"deine","lemma":"dein","translation":"مال تو / تو","partOfSpeech":"determiner","meaning":"پیامت / مال تو","form":"feminine_accusative"},{"surface":"Nachricht","lemma":"Nachricht","translation":"پیام","partOfSpeech":"noun"},{"surface":"gelesen","lemma":"lesen","translation":"خواندن","partOfSpeech":"verb","meaning":"خوندم","form":"past_participle","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,2,'learner','Du hast nicht geantwortet.','جواب ندادی.',40,NULL,NULL,'du hast nicht geantwortet',NULL,'[{"surface":"Du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"hast","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"present_2sg"},{"surface":"nicht","lemma":"nicht","translation":"نه / نیست","partOfSpeech":"particle","meaning":"نه / نـ"},{"surface":"geantwortet","lemma":"antworten","translation":"جواب دادن","partOfSpeech":"verb","meaning":"جواب دادی","form":"past_participle","suffix":"."}]','geantwortet از antworten','«geantwortet» شکل گذشته «antworten» است. این همان Perfekt آشنای A2 است و زمان تازه ای معرفی نمی شود.',NULL,'{"cefr":"A2","module":8}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,3,'character','Nein.','نه.',40,NULL,NULL,NULL,NULL,'[{"surface":"Nein","lemma":"nein","translation":"نه","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,4,'learner','Warum?','چرا؟',40,NULL,NULL,'warum',NULL,'[{"surface":"Warum","lemma":"warum","translation":"چرا","partOfSpeech":"adverb","suffix":"?"}]','warum','«warum» برای پرسیدن دلیل است: «چرا؟».',NULL,'{"cefr":"A2","module":8}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Warum hast du nicht geantwortet?','چرا جواب ندادی؟','Mia stellt die vollständige Frage nach dem Grund. Sara gibt bereits eine kurze, natürliche Erklärung.','میا سوال کامل درباره دلیل را می پرسد. سارا هم یک توضیح کوتاه و طبیعی می دهد.','story','mia-sara-a2-communication',10,40,110,2,'validated','{"relationship":"friends_and_classmates","context":"missing-reply","cefr":"A2","module":8,"focus":"warum-answer-reason"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,1,'character','Ich habe deine Nachricht gelesen.','پیامت را خوندم.',40,NULL,NULL,NULL,NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"present_1sg"},{"surface":"deine","lemma":"dein","translation":"مال تو / تو","partOfSpeech":"determiner","meaning":"پیامت / مال تو","form":"feminine_accusative"},{"surface":"Nachricht","lemma":"Nachricht","translation":"پیام","partOfSpeech":"noun"},{"surface":"gelesen","lemma":"lesen","translation":"خواندن","partOfSpeech":"verb","meaning":"خوندم","form":"past_participle","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,2,'learner','Warum hast du nicht geantwortet?','چرا جواب ندادی؟',40,NULL,NULL,'warum hast du nicht geantwortet',NULL,'[{"surface":"Warum","lemma":"warum","translation":"چرا","partOfSpeech":"adverb","meaning":"چرا"},{"surface":"hast","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"nicht","lemma":"nicht","translation":"نه / نیست","partOfSpeech":"particle","meaning":"نـ / نه"},{"surface":"geantwortet","lemma":"antworten","translation":"جواب دادن","partOfSpeech":"verb","meaning":"جواب دادی","form":"past_participle","suffix":"?"}]','Warum + Perfekt','ساختار Perfekt همان قبلی است؛ فقط «Warum» اول جمله می آید تا دلیل را بپرسیم.',NULL,'{"cefr":"A2","module":8}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,3,'character','Ich hatte keine Zeit.','وقت نداشتم.',40,NULL,NULL,NULL,NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"hatte","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"داشتم / نداشتم","form":"preterite_1sg"},{"surface":"keine","lemma":"kein","translation":"هیچ / نه یک","partOfSpeech":"determiner","meaning":"هیچ / نداشتم","form":"feminine_accusative"},{"surface":"Zeit","lemma":"Zeit","translation":"وقت / زمان","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,4,'learner','Gut.','باشه.',40,NULL,NULL,'gut',NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"باشه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_mia,v_c_sara,'Ich hatte keine Zeit','وقت نداشتم','Sara übt jetzt ihre Begründung als vollständigen Satz. Mia bestätigt, dass sie die Erklärung verstanden hat.','سارا حالا دلیلش را به شکل یک جمله کامل تمرین می کند. میا هم نشان می دهد که توضیح را فهمیده است.','story','mia-sara-a2-communication',11,40,110,3,'validated','{"relationship":"friends_and_classmates","context":"missing-reply","cefr":"A2","module":8,"focus":"warum-answer-reason"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,1,'character','Warum hast du nicht geantwortet?','چرا جواب ندادی؟',40,NULL,NULL,NULL,NULL,'[{"surface":"Warum","lemma":"warum","translation":"چرا","partOfSpeech":"adverb","meaning":"چرا"},{"surface":"hast","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"nicht","lemma":"nicht","translation":"نه / نیست","partOfSpeech":"particle","meaning":"نـ / نه"},{"surface":"geantwortet","lemma":"antworten","translation":"جواب دادن","partOfSpeech":"verb","meaning":"جواب دادی","form":"past_participle","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":8}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,2,'learner','Ich hatte keine Zeit.','وقت نداشتم.',40,NULL,NULL,'ich hatte keine zeit',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"hatte","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"داشتم / نداشتم","form":"preterite_1sg"},{"surface":"keine","lemma":"kein","translation":"هیچ / نه یک","partOfSpeech":"determiner","meaning":"هیچ / نداشتم","form":"feminine_accusative"},{"surface":"Zeit","lemma":"Zeit","translation":"وقت / زمان","partOfSpeech":"noun","suffix":"."}]','hatte = گذشته haben','قبلا «war» از sein را در گذشته دیدی. اینجا «hatte» شکل گذشته haben برای «ich» است. فقط همین جمله کاربردی را یاد می گیریم؛ جدول صرف تازه ای نداریم.',NULL,'{"cefr":"A2","module":8}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,3,'character','Keine Zeit?','وقت نداشتی؟',40,NULL,NULL,NULL,NULL,'[{"surface":"Keine","lemma":"kein","translation":"هیچ / نه یک","partOfSpeech":"determiner","meaning":"هیچ / نداشتی","form":"feminine_accusative"},{"surface":"Zeit","lemma":"Zeit","translation":"وقت / زمان","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":8}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,4,'learner','Ja.','آره.',40,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_mia,v_c_sara,'Die fehlende Antwort','جوابی که نیومد','Mia und Sara verbinden Nachricht, Lesen, fehlende Antwort und Grund zu einer vollständigen Mini-Geschichte.','میا و سارا پیام، خواندن، جواب ندادن و دلیلش را در یک داستان کوتاه کامل کنار هم می گذارند.','story','mia-sara-a2-communication',12,40,110,4,'validated','{"relationship":"friends_and_classmates","context":"missing-reply","cefr":"A2","module":8,"focus":"warum-answer-reason"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,1,'character','Ich habe dir eine Nachricht geschickt.','برات پیام فرستادم.',40,NULL,NULL,NULL,NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"present_1sg"},{"surface":"dir","lemma":"du","translation":"تو","partOfSpeech":"pronoun","meaning":"بهت / برات","form":"dative_2sg"},{"surface":"eine","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","meaning":"یک","form":"feminine_accusative"},{"surface":"Nachricht","lemma":"Nachricht","translation":"پیام","partOfSpeech":"noun"},{"surface":"geschickt","lemma":"schicken","translation":"فرستادن","partOfSpeech":"verb","meaning":"فرستادم","form":"past_participle","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,2,'learner','Ja. Ich habe deine Nachricht gelesen.','آره. پیامت را خوندم.',40,NULL,NULL,'ja ich habe deine nachricht gelesen',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"present_1sg"},{"surface":"deine","lemma":"dein","translation":"مال تو / تو","partOfSpeech":"determiner","meaning":"پیامت / مال تو","form":"feminine_accusative"},{"surface":"Nachricht","lemma":"Nachricht","translation":"پیام","partOfSpeech":"noun"},{"surface":"gelesen","lemma":"lesen","translation":"خواندن","partOfSpeech":"verb","meaning":"خوندم","form":"past_participle","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,3,'character','Warum hast du nicht geantwortet?','چرا جواب ندادی؟',40,NULL,NULL,NULL,NULL,'[{"surface":"Warum","lemma":"warum","translation":"چرا","partOfSpeech":"adverb","meaning":"چرا"},{"surface":"hast","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"nicht","lemma":"nicht","translation":"نه / نیست","partOfSpeech":"particle","meaning":"نـ / نه"},{"surface":"geantwortet","lemma":"antworten","translation":"جواب دادن","partOfSpeech":"verb","meaning":"جواب دادی","form":"past_participle","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":8}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,4,'learner','Ich hatte keine Zeit.','وقت نداشتم.',40,NULL,NULL,'ich hatte keine zeit',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"hatte","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"داشتم / نداشتم","form":"preterite_1sg"},{"surface":"keine","lemma":"kein","translation":"هیچ / نه یک","partOfSpeech":"determiner","meaning":"هیچ / نداشتم","form":"feminine_accusative"},{"surface":"Zeit","lemma":"Zeit","translation":"وقت / زمان","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_haben,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_dein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_nachricht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_lesen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_nicht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_antworten,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_nein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_warum,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_haben,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_dein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_nachricht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_lesen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_warum,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_nicht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_antworten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_kein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_zeit,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich_hatte_keine_zeit,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_warum_hast_du_nicht_geantwortet,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_warum,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_haben,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_nicht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_antworten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_kein,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_zeit,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_warum_hast_du_nicht_geantwortet,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich_hatte_keine_zeit,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_haben,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_du,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_nachricht,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_schicken,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_dein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_lesen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_warum,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_nicht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_antworten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_kein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_zeit,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich_habe_dir_eine_nachricht_geschickt,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_warum_hast_du_nicht_geantwortet,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich_hatte_keine_zeit,'review',0,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_antworten,'فعل جدید',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به توضیح سارا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'بگو جواب نداده',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به پاسخ سارا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'دلیل را بپرس',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,NULL,v_w_antworten,'معنی درست را انتخاب کن',NULL,40,'{"mode":"word_translation","question":"antworten","choices":["جواب دادن","فرستادن","خواندن"],"correctIndex":0}','{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_warum_hast_du_nicht_geantwortet,'عبارت جدید',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به جمله سارا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'بپرس چرا جواب نداده',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به دلیل سارا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'واکنش کوتاه بده',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_6,NULL,'معنی سوال را انتخاب کن',NULL,40,'{"mode":"turn_translation","question":"«Warum hast du nicht geantwortet?» یعنی چی؟","choices":["چرا جواب ندادی؟","چرا پیام نفرستادی؟","چرا زنگ زدی؟"],"correctIndex":0}','{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',7,v_t_6,NULL,'سوال را به ترتیب درست بساز',NULL,40,'{"source":"turn_tokens","shuffle":true}','{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_ich_hatte_keine_zeit,'عبارت جدید',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_9,NULL,'به سوال میا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_10,NULL,'بگو وقت نداشتی',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_11,NULL,'به سوال تاییدی میا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_12,NULL,'تایید کن',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_10,NULL,'معنی دلیل را انتخاب کن',NULL,40,'{"mode":"turn_translation","question":"«Ich hatte keine Zeit.» یعنی چی؟","choices":["وقت نداشتم.","وقت دارم.","پیام را نخوندم."],"correctIndex":0}','{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,40,'{"source":"lesson_story","question":"چرا سارا جواب نداده بود؟","choices":["وقت نداشت.","پیام را ندیده بود.","شماره میا را نداشت."],"correctIndex":0}','{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_13,NULL,'به یادآوری پیام گوش کن',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_14,NULL,'بگو پیام را خوندی',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_15,NULL,'به سوال میا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_16,NULL,'دلیل جواب ندادن را بگو',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',5,NULL,NULL,'کل گفتگو را بخوان و جواب بده',NULL,40,'{"source":"lesson_story","question":"چه اتفاقی افتاده بود؟","choices":["میا پیام فرستاده بود، سارا آن را خوانده بود ولی چون وقت نداشت جواب نداده بود.","سارا پیام را دریافت نکرده بود.","میا اصلا پیام نفرستاده بود."],"correctIndex":0}','{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',6,v_t_16,NULL,'دلیل سارا را بررسی کن',NULL,40,'{"mode":"turn_translation","question":"«Ich hatte keine Zeit.» یعنی چی؟","choices":["وقت نداشتم.","وقت زیادی داشتم.","پیام نداشتم."],"correctIndex":0}','{"cefr":"A2","module":8}');
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 078 lesson count.'; END IF;
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

CALL import_nova_series_078_v9();
DROP PROCEDURE IF EXISTS import_nova_series_078_v9;
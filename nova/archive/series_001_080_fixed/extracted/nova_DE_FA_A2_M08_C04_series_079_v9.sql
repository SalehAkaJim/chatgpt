-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 079
-- A2 > Telefon & Nachrichten > Sag mir bitte Bescheid
-- Requires Series 078.
-- Continues mia-sara-a2-communication orders 13-16.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_079_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_079_v9()
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
  DECLARE v_w_du BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_bitte BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danke BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_haben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_nicht BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_antworten BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_hatte_keine_zeit BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sagen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_bescheid BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sag_mir_bitte_bescheid BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_sage_dir_bescheid BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_zeit BIGINT UNSIGNED DEFAULT NULL;
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
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 076 before Series 079.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=3 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=4 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 08 Chapter 04 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 078 before Series 079.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_prev_chapter AND status IN ('validated','complete');
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 078 Chapter must be validated/complete before Series 079.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 08 Chapter 04 must be empty before Series 079 import.'; END IF;
  SELECT id INTO v_c_mia FROM characters WHERE course_id=v_course AND name='Mia' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_mia IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Mia not found.'; END IF;
  SELECT id INTO v_c_sara FROM characters WHERE course_id=v_course AND name='Sara' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_sara IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Sara not found.'; END IF;
  SELECT id INTO v_w_ich FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_ich IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ich not found.'; END IF;
  SELECT id INTO v_w_du FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_du IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word du not found.'; END IF;
  SELECT id INTO v_w_bitte FROM words WHERE course_id=v_course AND lemma='bitte' AND part_of_speech='interjection' AND translation='لطفا / خواهش می کنم' ORDER BY id LIMIT 1;
  IF v_w_bitte IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word bitte not found.'; END IF;
  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;
  SELECT id INTO v_w_gut FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_gut IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gut not found.'; END IF;
  SELECT id INTO v_w_danke FROM words WHERE course_id=v_course AND lemma='danke' AND part_of_speech='interjection' AND translation='ممنون' ORDER BY id LIMIT 1;
  IF v_w_danke IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word danke not found.'; END IF;
  SELECT id INTO v_w_haben FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_haben IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word haben not found.'; END IF;
  SELECT id INTO v_w_nicht FROM words WHERE course_id=v_course AND lemma='nicht' AND part_of_speech='particle' AND translation='نه / نیست' ORDER BY id LIMIT 1;
  IF v_w_nicht IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word nicht not found.'; END IF;
  SELECT id INTO v_w_antworten FROM words WHERE course_id=v_course AND lemma='antworten' AND part_of_speech='verb' AND translation='جواب دادن' ORDER BY id LIMIT 1;
  IF v_w_antworten IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word antworten not found.'; END IF;
  SELECT id INTO v_w_ich_hatte_keine_zeit FROM words WHERE course_id=v_course AND lemma='Ich hatte keine Zeit.' AND part_of_speech='phrase' AND translation='وقت نداشتم.' ORDER BY id LIMIT 1;
  IF v_w_ich_hatte_keine_zeit IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Ich hatte keine Zeit. not found.'; END IF;
  SELECT id INTO v_w_kein FROM words WHERE course_id=v_course AND lemma='kein' AND part_of_speech='determiner' AND translation='هیچ / نه یک' ORDER BY id LIMIT 1;
  IF v_w_kein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word kein not found.'; END IF;
  SELECT id INTO v_w_zeit FROM words WHERE course_id=v_course AND lemma='Zeit' AND part_of_speech='noun' AND translation='وقت / زمان' ORDER BY id LIMIT 1;
  IF v_w_zeit IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Zeit not found.'; END IF;
  SELECT id INTO v_w_sagen FROM words WHERE course_id=v_course AND lemma='sagen' AND part_of_speech='verb' AND translation='گفتن' ORDER BY id LIMIT 1;
  IF v_w_sagen IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'sagen','sagen','verb','گفتن',40,'{"infinitive":"sagen","present1sg":"sage","imperative2sg":"sag"}','[{"text":"antworten","translation":"جواب دادن"},{"text":"sprechen","translation":"صحبت کردن / حرف زدن"},{"text":"schicken","translation":"فرستادن"},{"text":"fragen","translation":"پرسیدن"},{"text":"anrufen","translation":"زنگ زدن / تماس گرفتن"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":79,"module":8}');
    SET v_w_sagen=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_bescheid FROM words WHERE course_id=v_course AND lemma='Bescheid' AND part_of_speech='noun' AND translation='خبر / اطلاع' ORDER BY id LIMIT 1;
  IF v_w_bescheid IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Bescheid','Bescheid','noun','خبر / اطلاع',40,'{"gender":"masculine","article":"der","idiom":"Bescheid sagen","idiomaticMeaning":"jemanden informieren"}','[{"text":"Nachricht","translation":"پیام"},{"text":"Antwort","translation":"پاسخ"},{"text":"Zeit","translation":"وقت / زمان"},{"text":"Frage","translation":"سوال"},{"text":"Hilfe","translation":"کمک"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":79,"module":8}');
    SET v_w_bescheid=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_sag_mir_bitte_bescheid FROM words WHERE course_id=v_course AND lemma='Sag mir bitte Bescheid.' AND part_of_speech='phrase' AND translation='لطفا بهم خبر بده.' ORDER BY id LIMIT 1;
  IF v_w_sag_mir_bitte_bescheid IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Sag mir bitte Bescheid.','Sag mir bitte Bescheid.','phrase','لطفا بهم خبر بده.',40,'{"verb":"sagen","verbForm":"imperative_2sg","recipient":"mir","recipientLemma":"ich","recipientForm":"dative_1sg","politeness":"bitte","idiom":"Bescheid sagen"}','[{"text":"Antworte mir bitte.","translation":"لطفا جوابم رو بده."},{"text":"Ruf mich bitte an.","translation":"لطفا بهم زنگ بزن."},{"text":"Schick mir bitte eine Nachricht.","translation":"لطفا برام پیام بفرست."},{"text":"Ich sage dir Bescheid.","translation":"بهت خبر می دم."},{"text":"Warum hast du nicht geantwortet?","translation":"چرا جواب ندادی؟"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":79,"module":8}');
    SET v_w_sag_mir_bitte_bescheid=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_ich_sage_dir_bescheid FROM words WHERE course_id=v_course AND lemma='Ich sage dir Bescheid.' AND part_of_speech='phrase' AND translation='بهت خبر می دم.' ORDER BY id LIMIT 1;
  IF v_w_ich_sage_dir_bescheid IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich sage dir Bescheid.','Ich sage dir Bescheid.','phrase','بهت خبر می دم.',40,'{"subject":"ich","verb":"sagen","verbForm":"present_1sg","recipient":"dir","recipientLemma":"du","recipientForm":"dative_2sg","idiom":"Bescheid sagen"}','[{"text":"Sag mir bitte Bescheid.","translation":"لطفا بهم خبر بده."},{"text":"Ich antworte dir.","translation":"بهت جواب می دم."},{"text":"Ich rufe dich an.","translation":"بهت زنگ می زنم."},{"text":"Ich schicke dir eine Nachricht.","translation":"برات پیام می فرستم."},{"text":"Ich hatte keine Zeit.","translation":"وقت نداشتم."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":79,"module":8}');
    SET v_w_ich_sage_dir_bescheid=LAST_INSERT_ID();
  END IF;
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Bescheid','خبر دادن','Sara erklärt noch einmal, dass sie keine Zeit hatte. Mia macht jetzt klar, was sie beim nächsten Mal erwartet.','سارا دوباره توضیح می دهد که وقت نداشته. میا حالا روشن می کند دفعه بعد چه انتظاری دارد.','story','mia-sara-a2-communication',13,40,110,1,'validated','{"context":"communication-expectation","cefr":"A2","module":8,"focus":"bescheid-sagen"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,1,'character','Ich hatte keine Zeit.','وقت نداشتم.',40,NULL,NULL,NULL,NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"hatte","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"داشتم / نداشتم","form":"preterite_1sg"},{"surface":"keine","lemma":"kein","translation":"هیچ / نه یک","partOfSpeech":"determiner","meaning":"نداشتم","form":"feminine_accusative"},{"surface":"Zeit","lemma":"Zeit","translation":"وقت / زمان","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,2,'learner','Sag mir bitte Bescheid.','لطفا بهم خبر بده.',40,NULL,NULL,'sag mir bitte bescheid',NULL,'[{"surface":"Sag","lemma":"sagen","translation":"گفتن","partOfSpeech":"verb","meaning":"خبر بده","form":"imperative_2sg"},{"surface":"mir","lemma":"ich","translation":"من","partOfSpeech":"pronoun","meaning":"بهم","form":"dative_1sg"},{"surface":"bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","meaning":"لطفا"},{"surface":"Bescheid","lemma":"Bescheid","translation":"خبر / اطلاع","partOfSpeech":"noun","meaning":"خبر / اطلاع","suffix":"."}]','Bescheid sagen','«Bescheid sagen» در این موقعیت یعنی «خبر دادن». «Sag mir bitte Bescheid.» یعنی «لطفا بهم خبر بده».',NULL,'{"cefr":"A2","module":8}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,3,'character','Ja.','آره.',40,NULL,NULL,NULL,NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,4,'learner','Danke.','ممنون.',40,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Sag mir bitte Bescheid','لطفا بهم خبر بده','Mia formuliert die Bitte jetzt als vollständigen Ziel-Satz. Sara reagiert mit einer klaren Zusage.','میا حالا درخواست را به شکل جمله کامل هدف می گوید. سارا هم روشن قول می دهد خبر بدهد.','story','mia-sara-a2-communication',14,40,110,2,'validated','{"context":"communication-expectation","cefr":"A2","module":8,"focus":"bescheid-sagen"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,1,'character','Ich habe nicht geantwortet.','جواب ندادم.',40,NULL,NULL,NULL,NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"present_1sg"},{"surface":"nicht","lemma":"nicht","translation":"نه / نیست","partOfSpeech":"particle","meaning":"نـ / نه"},{"surface":"geantwortet","lemma":"antworten","translation":"جواب دادن","partOfSpeech":"verb","meaning":"جواب دادم","form":"past_participle","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,2,'learner','Sag mir bitte Bescheid.','لطفا بهم خبر بده.',40,NULL,NULL,'sag mir bitte bescheid',NULL,'[{"surface":"Sag","lemma":"sagen","translation":"گفتن","partOfSpeech":"verb","meaning":"خبر بده","form":"imperative_2sg"},{"surface":"mir","lemma":"ich","translation":"من","partOfSpeech":"pronoun","meaning":"بهم","form":"dative_1sg"},{"surface":"bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","meaning":"لطفا"},{"surface":"Bescheid","lemma":"Bescheid","translation":"خبر / اطلاع","partOfSpeech":"noun","meaning":"خبر / اطلاع","suffix":"."}]','Imperativ کاربردی با sag','برای «du»، فرم کوتاه و طبیعی «sag» است. فقط همین chunk کاربردی را یاد می گیریم و جدول کامل Imperativ لازم نیست.',NULL,'{"cefr":"A2","module":8}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,3,'character','Ja. Ich sage dir Bescheid.','آره. بهت خبر می دم.',40,NULL,NULL,NULL,NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"sage","lemma":"sagen","translation":"گفتن","partOfSpeech":"verb","meaning":"خبر می دم","form":"present_1sg"},{"surface":"dir","lemma":"du","translation":"تو","partOfSpeech":"pronoun","meaning":"بهت","form":"dative_2sg"},{"surface":"Bescheid","lemma":"Bescheid","translation":"خبر / اطلاع","partOfSpeech":"noun","meaning":"خبر / اطلاع","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,4,'learner','Gut.','باشه.',40,NULL,NULL,'gut',NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"باشه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_mia,v_c_sara,'Ich sage dir Bescheid','بهت خبر می دم','Mia bittet um eine kurze Rückmeldung. Sara übt jetzt selbst die natürliche Zusage, dass sie Mia informieren wird.','میا درخواست یک خبر کوتاه می کند. سارا حالا خودش جمله طبیعی قول دادن به خبر دادن را تمرین می کند.','story','mia-sara-a2-communication',15,40,110,3,'validated','{"context":"communication-expectation","cefr":"A2","module":8,"focus":"bescheid-sagen"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,1,'character','Sag mir bitte Bescheid.','لطفا بهم خبر بده.',40,NULL,NULL,NULL,NULL,'[{"surface":"Sag","lemma":"sagen","translation":"گفتن","partOfSpeech":"verb","meaning":"خبر بده","form":"imperative_2sg"},{"surface":"mir","lemma":"ich","translation":"من","partOfSpeech":"pronoun","meaning":"بهم","form":"dative_1sg"},{"surface":"bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","meaning":"لطفا"},{"surface":"Bescheid","lemma":"Bescheid","translation":"خبر / اطلاع","partOfSpeech":"noun","meaning":"خبر / اطلاع","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,2,'learner','Ja. Ich sage dir Bescheid.','آره. بهت خبر می دم.',40,NULL,NULL,'ja ich sage dir bescheid',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"sage","lemma":"sagen","translation":"گفتن","partOfSpeech":"verb","meaning":"خبر می دم","form":"present_1sg"},{"surface":"dir","lemma":"du","translation":"تو","partOfSpeech":"pronoun","meaning":"بهت","form":"dative_2sg"},{"surface":"Bescheid","lemma":"Bescheid","translation":"خبر / اطلاع","partOfSpeech":"noun","meaning":"خبر / اطلاع","suffix":"."}]','dir از du','در «Ich sage dir Bescheid.»، «dir» یعنی «به تو / بهت» و به lemma «du» برمی گردد.',NULL,'{"cefr":"A2","module":8}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,3,'character','Danke.','ممنون.',40,NULL,NULL,NULL,NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,4,'learner','Gut.','باشه.',40,NULL,NULL,'gut',NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"باشه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Eine klare Abmachung','یک قرار روشن','Mia und Sara schließen das kleine Missverständnis ab: Wenn Sara nicht antworten kann, soll sie wenigstens kurz Bescheid sagen.','میا و سارا سوتفاهم کوچک را جمع می کنند: اگر سارا نتواند جواب بدهد، دست کم باید کوتاه خبر بدهد.','story','mia-sara-a2-communication',16,40,110,4,'validated','{"context":"communication-expectation","cefr":"A2","module":8,"focus":"bescheid-sagen"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,1,'character','Ich hatte keine Zeit.','وقت نداشتم.',40,NULL,NULL,NULL,NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"hatte","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"داشتم / نداشتم","form":"preterite_1sg"},{"surface":"keine","lemma":"kein","translation":"هیچ / نه یک","partOfSpeech":"determiner","meaning":"نداشتم","form":"feminine_accusative"},{"surface":"Zeit","lemma":"Zeit","translation":"وقت / زمان","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,2,'learner','Sag mir bitte Bescheid.','لطفا بهم خبر بده.',40,NULL,NULL,'sag mir bitte bescheid',NULL,'[{"surface":"Sag","lemma":"sagen","translation":"گفتن","partOfSpeech":"verb","meaning":"خبر بده","form":"imperative_2sg"},{"surface":"mir","lemma":"ich","translation":"من","partOfSpeech":"pronoun","meaning":"بهم","form":"dative_1sg"},{"surface":"bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","meaning":"لطفا"},{"surface":"Bescheid","lemma":"Bescheid","translation":"خبر / اطلاع","partOfSpeech":"noun","meaning":"خبر / اطلاع","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,3,'character','Ja. Ich sage dir Bescheid.','آره. بهت خبر می دم.',40,NULL,NULL,NULL,NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"sage","lemma":"sagen","translation":"گفتن","partOfSpeech":"verb","meaning":"خبر می دم","form":"present_1sg"},{"surface":"dir","lemma":"du","translation":"تو","partOfSpeech":"pronoun","meaning":"بهت","form":"dative_2sg"},{"surface":"Bescheid","lemma":"Bescheid","translation":"خبر / اطلاع","partOfSpeech":"noun","meaning":"خبر / اطلاع","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,4,'learner','Gut. Danke.','باشه. ممنون.',40,NULL,NULL,'gut danke',NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"باشه","suffix":"."},{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ich,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_haben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_kein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_zeit,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_sagen,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_bitte,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_bescheid,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_sag_mir_bitte_bescheid,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_haben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_nicht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_antworten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_sagen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_bitte,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_bescheid,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich_sage_dir_bescheid,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_sag_mir_bitte_bescheid,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_sagen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_bitte,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_bescheid,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_sag_mir_bitte_bescheid,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich_sage_dir_bescheid,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_haben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_kein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_zeit,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_sagen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_bitte,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_bescheid,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_sag_mir_bitte_bescheid,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich_sage_dir_bescheid,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich_hatte_keine_zeit,'review',0,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_bescheid,'واژه جدید',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به دلیل سارا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'ازش بخواه بهت خبر بده',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به تایید سارا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'تشکر کن',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,NULL,v_w_bescheid,'معنی درست را انتخاب کن',NULL,40,'{"mode":"word_translation","question":"Bescheid","choices":["خبر / اطلاع","جواب","وقت"],"correctIndex":0}','{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_sag_mir_bitte_bescheid,'عبارت جدید',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به توضیح سارا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'درخواست کامل را بگو',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به قول سارا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'واکنش کوتاه بده',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_6,NULL,'معنی درخواست را انتخاب کن',NULL,40,'{"mode":"turn_translation","question":"«Sag mir bitte Bescheid.» یعنی چی؟","choices":["لطفا بهم خبر بده.","لطفا جواب نده.","لطفا فردا زنگ بزن."],"correctIndex":0}','{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',7,v_t_6,NULL,'درخواست را به ترتیب درست بساز',NULL,40,'{"source":"turn_tokens","shuffle":true}','{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_ich_sage_dir_bescheid,'عبارت جدید',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_9,NULL,'به درخواست میا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_10,NULL,'قول بده بهش خبر می دی',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_11,NULL,'به تشکر میا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_12,NULL,'واکنش کوتاه بده',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_10,NULL,'معنی قول سارا را انتخاب کن',NULL,40,'{"mode":"turn_translation","question":"«Ich sage dir Bescheid.» یعنی چی؟","choices":["بهت خبر می دم.","بهت جواب نمی دم.","برات پیام فرستادم."],"correctIndex":0}','{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,40,'{"source":"lesson_story","question":"سارا چه قولی می دهد؟","choices":["به میا خبر می دهد.","دیگه پیام نمی خواند.","امروز تماس نمی گیرد."],"correctIndex":0}','{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_13,NULL,'به دلیل سارا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_14,NULL,'درخواست خبر دادن را تکرار کن',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_15,NULL,'به قول سارا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_16,NULL,'تایید و تشکر کن',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',5,NULL,NULL,'کل گفتگو را بخوان و جواب بده',NULL,40,'{"source":"lesson_story","question":"میا از سارا چه می خواهد؟","choices":["اگر نتوانست جواب بدهد، بهش خبر بدهد.","دیگه هیچ پیامی نفرستد.","فقط تماس تلفنی بگیرد."],"correctIndex":0}','{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',6,v_t_15,NULL,'قول سارا را بررسی کن',NULL,40,'{"mode":"turn_translation","question":"«Ich sage dir Bescheid.» یعنی چی؟","choices":["بهت خبر می دم.","وقت ندارم.","چرا جواب ندادی؟"],"correctIndex":0}','{"cefr":"A2","module":8}');
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 079 lesson count.'; END IF;
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

CALL import_nova_series_079_v9();
DROP PROCEDURE IF EXISTS import_nova_series_079_v9;
-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 077
-- A2 > Telefon & Nachrichten > Ich habe dir eine Nachricht geschickt
-- Requires Series 076.
-- Continues mia-sara-a2-communication orders 5-8.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_077_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_077_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_mia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_sara BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_hallo BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_haben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_du BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_mein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_lesen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_nachricht BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_schicken BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_habe_dir_eine_nachricht_geschickt BIGINT UNSIGNED DEFAULT NULL;
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
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=8 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 076 before Series 077.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=1 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 08 Chapter 02 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 076 before Series 077.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_prev_chapter AND status IN ('validated','complete');
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 076 Chapter must be validated/complete before Series 077.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 08 Chapter 02 must be empty before Series 077 import.'; END IF;
  SELECT id INTO v_c_mia FROM characters WHERE course_id=v_course AND name='Mia' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_mia IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Mia not found.'; END IF;
  SELECT id INTO v_c_sara FROM characters WHERE course_id=v_course AND name='Sara' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_sara IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Sara not found.'; END IF;
  SELECT id INTO v_w_hallo FROM words WHERE course_id=v_course AND lemma='Hallo' AND part_of_speech='interjection' AND translation='سلام' ORDER BY id LIMIT 1;
  IF v_w_hallo IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Hallo not found.'; END IF;
  SELECT id INTO v_w_ich FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_ich IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ich not found.'; END IF;
  SELECT id INTO v_w_haben FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_haben IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word haben not found.'; END IF;
  SELECT id INTO v_w_du FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_du IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word du not found.'; END IF;
  SELECT id INTO v_w_ein FROM words WHERE course_id=v_course AND lemma='ein' AND part_of_speech='article' AND translation='یک / حرف تعریف نامعین' ORDER BY id LIMIT 1;
  IF v_w_ein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ein not found.'; END IF;
  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;
  SELECT id INTO v_w_gut FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_gut IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gut not found.'; END IF;
  SELECT id INTO v_w_mein FROM words WHERE course_id=v_course AND lemma='mein' AND part_of_speech='determiner' AND translation='مال من / من' ORDER BY id LIMIT 1;
  IF v_w_mein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word mein not found.'; END IF;
  SELECT id INTO v_w_lesen FROM words WHERE course_id=v_course AND lemma='lesen' AND part_of_speech='verb' AND translation='خواندن' ORDER BY id LIMIT 1;
  IF v_w_lesen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word lesen not found.'; END IF;
  SELECT id INTO v_w_nachricht FROM words WHERE course_id=v_course AND lemma='Nachricht' AND part_of_speech='noun' AND translation='پیام' ORDER BY id LIMIT 1;
  IF v_w_nachricht IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Nachricht','Nachricht','noun','پیام',40,'{"gender":"feminine","article":"die","plural":"Nachrichten","usage":"message"}','[{"text":"Anruf","translation":"تماس"},{"text":"Frage","translation":"سوال"},{"text":"Antwort","translation":"جواب"},{"text":"Termin","translation":"قرار"},{"text":"Problem","translation":"مشکل"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":77,"module":8}');
    SET v_w_nachricht=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_schicken FROM words WHERE course_id=v_course AND lemma='schicken' AND part_of_speech='verb' AND translation='فرستادن' ORDER BY id LIMIT 1;
  IF v_w_schicken IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'schicken','schicken','verb','فرستادن',40,'{"infinitive":"schicken","pastParticiple":"geschickt","auxiliary":"haben"}','[{"text":"lesen","translation":"خواندن"},{"text":"anrufen","translation":"زنگ زدن / تماس گرفتن"},{"text":"antworten","translation":"جواب دادن"},{"text":"fragen","translation":"پرسیدن"},{"text":"sprechen","translation":"صحبت کردن / حرف زدن"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":77,"module":8}');
    SET v_w_schicken=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_ich_habe_dir_eine_nachricht_geschickt FROM words WHERE course_id=v_course AND lemma='Ich habe dir eine Nachricht geschickt.' AND part_of_speech='phrase' AND translation='برات پیام فرستادم.' ORDER BY id LIMIT 1;
  IF v_w_ich_habe_dir_eine_nachricht_geschickt IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich habe dir eine Nachricht geschickt.','Ich habe dir eine Nachricht geschickt.','phrase','برات پیام فرستادم.',40,'{"subject":"ich","auxiliary":"haben","auxiliaryForm":"habe","recipient":"dir","recipientLemma":"du","recipientForm":"dative_2sg","object":"eine Nachricht","participle":"geschickt","participleLemma":"schicken"}','[{"text":"Ich habe dich später angerufen.","translation":"بعدا بهت زنگ زدم."},{"text":"Ich habe deine Nachricht gelesen.","translation":"پیامت را خوندم."},{"text":"Ich kann nicht sprechen.","translation":"نمی تونم صحبت کنم."},{"text":"Kann ich dich später anrufen?","translation":"می تونم بعدا بهت زنگ بزنم؟"},{"text":"Ich habe keine Zeit.","translation":"وقت ندارم."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":77,"module":8}');
    SET v_w_ich_habe_dir_eine_nachricht_geschickt=LAST_INSERT_ID();
  END IF;
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Nachricht','پیام','Mia meldet sich nach dem verschobenen Telefonat bei Sara. Statt sofort zu telefonieren, sagt sie, dass sie bereits eine Nachricht geschickt hat.','میا بعد از عقب افتادن تماس با سارا ارتباط می گیرد. به جای تماس فوری می گوید که قبلا برایش پیام فرستاده است.','story','mia-sara-a2-communication',5,40,110,1,'validated','{"relationship":"friends_and_classmates","context":"sent-message","cefr":"A2","module":8,"focus":"message-and-send"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,1,'character','Hallo.','سلام.',40,NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,2,'learner','Ich habe dir eine Nachricht geschickt.','برات پیام فرستادم.',40,NULL,NULL,'ich habe dir eine nachricht geschickt',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"present_1sg"},{"surface":"dir","lemma":"du","translation":"تو","partOfSpeech":"pronoun","meaning":"بهت / برات","form":"dative_2sg"},{"surface":"eine","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","meaning":"یک","form":"feminine_accusative"},{"surface":"Nachricht","lemma":"Nachricht","translation":"پیام","partOfSpeech":"noun"},{"surface":"geschickt","lemma":"schicken","translation":"فرستادن","partOfSpeech":"verb","meaning":"فرستادم","form":"past_participle","suffix":"."}]','Nachricht','«Nachricht» یعنی پیام. در جمله «eine Nachricht» این اسم با «eine» می آید.',NULL,'{"cefr":"A2","module":8}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,3,'character','Eine Nachricht?','یه پیام؟',40,NULL,NULL,NULL,NULL,'[{"surface":"Eine","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","meaning":"یک","form":"feminine_accusative"},{"surface":"Nachricht","lemma":"Nachricht","translation":"پیام","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":8}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,4,'learner','Ja.','بله.',40,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Schicken','فرستادن','Sara bestätigt, dass es um eine Nachricht geht. Mia konzentriert sich jetzt auf das Verb schicken und seine Form geschickt im Perfekt.','سارا تایید می کند که صحبت درباره یک پیام است. میا حالا روی فعل schicken و شکل geschickt در گذشته تمرکز می کند.','story','mia-sara-a2-communication',6,40,110,2,'validated','{"relationship":"friends_and_classmates","context":"sent-message","cefr":"A2","module":8,"focus":"message-and-send"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,1,'character','Eine Nachricht?','یه پیام؟',40,NULL,NULL,NULL,NULL,'[{"surface":"Eine","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","meaning":"یک","form":"feminine_accusative"},{"surface":"Nachricht","lemma":"Nachricht","translation":"پیام","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":8}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,2,'learner','Ja. Ich habe dir eine Nachricht geschickt.','بله. برات پیام فرستادم.',40,NULL,NULL,'ja ich habe dir eine nachricht geschickt',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"present_1sg"},{"surface":"dir","lemma":"du","translation":"تو","partOfSpeech":"pronoun","meaning":"بهت / برات","form":"dative_2sg"},{"surface":"eine","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","meaning":"یک","form":"feminine_accusative"},{"surface":"Nachricht","lemma":"Nachricht","translation":"پیام","partOfSpeech":"noun"},{"surface":"geschickt","lemma":"schicken","translation":"فرستادن","partOfSpeech":"verb","meaning":"فرستادم","form":"past_participle","suffix":"."}]','geschickt از schicken','در این Perfekt آشنا، «geschickt» شکل گذشته «schicken» است. زمان جدیدی اضافه نمی شود؛ فقط یک فعل تازه در همان الگو می آید.',NULL,'{"cefr":"A2","module":8}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,3,'character','Geschickt?','فرستادی؟',40,NULL,NULL,NULL,NULL,'[{"surface":"Geschickt","lemma":"schicken","translation":"فرستادن","partOfSpeech":"verb","meaning":"فرستادی","form":"past_participle","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":8}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,4,'learner','Ja.','بله.',40,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Ich habe dir eine Nachricht geschickt','برات پیام فرستادم','Mia sagt den vollständigen Satz jetzt als neues Kommunikationsmuster. Danach prüft sie, ob Sara ihre Nachricht gelesen hat.','میا حالا جمله کامل را به عنوان یک الگوی جدید ارتباطی می گوید. بعد بررسی می کند که سارا پیامش را خوانده یا نه.','story','mia-sara-a2-communication',7,40,110,3,'validated','{"relationship":"friends_and_classmates","context":"sent-message","cefr":"A2","module":8,"focus":"message-and-send"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,1,'character','Eine Nachricht?','یه پیام؟',40,NULL,NULL,NULL,NULL,'[{"surface":"Eine","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","meaning":"یک","form":"feminine_accusative"},{"surface":"Nachricht","lemma":"Nachricht","translation":"پیام","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":8}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,2,'learner','Ich habe dir eine Nachricht geschickt.','برات پیام فرستادم.',40,NULL,NULL,'ich habe dir eine nachricht geschickt',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"present_1sg"},{"surface":"dir","lemma":"du","translation":"تو","partOfSpeech":"pronoun","meaning":"بهت / برات","form":"dative_2sg"},{"surface":"eine","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","meaning":"یک","form":"feminine_accusative"},{"surface":"Nachricht","lemma":"Nachricht","translation":"پیام","partOfSpeech":"noun"},{"surface":"geschickt","lemma":"schicken","translation":"فرستادن","partOfSpeech":"verb","meaning":"فرستادم","form":"past_participle","suffix":"."}]','dir = به تو','«dir» شکل داتیو «du» است و اینجا گیرنده پیام را نشان می دهد: «Ich habe dir ... geschickt.»',NULL,'{"cefr":"A2","module":8}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,3,'character','Gut.','خوبه.',40,NULL,NULL,NULL,NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"خوبه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,4,'learner','Hast du meine Nachricht gelesen?','پیامم رو خوندی؟',40,NULL,NULL,'hast du meine nachricht gelesen',NULL,'[{"surface":"Hast","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"meine","lemma":"mein","translation":"مال من / من","partOfSpeech":"determiner","meaning":"پیام من","form":"feminine_accusative"},{"surface":"Nachricht","lemma":"Nachricht","translation":"پیام","partOfSpeech":"noun"},{"surface":"gelesen","lemma":"lesen","translation":"خواندن","partOfSpeech":"verb","meaning":"خوندی","form":"past_participle","suffix":"?"}]','مرور Perfekt با lesen','«gelesen» شکل گذشته «lesen» است. این فقط مرور همان Perfekt آشناست تا داستان برای فصل بعد آماده شود.',NULL,'{"cefr":"A2","module":8}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,5,'character','Ja.','بله.',40,NULL,NULL,NULL,NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Die Nachricht ist angekommen','پیام خوانده شده','Mia wiederholt, dass sie die Nachricht geschickt hat, und Sara bestätigt, dass sie sie gelesen hat. Damit ist klar: Die Nachricht kam an, aber eine Antwort fehlt noch.','میا دوباره می گوید پیام را فرستاده و سارا تایید می کند که آن را خوانده است. پس پیام رسیده، اما هنوز جوابی داده نشده است.','story','mia-sara-a2-communication',8,40,110,4,'validated','{"relationship":"friends_and_classmates","context":"sent-message","cefr":"A2","module":8,"focus":"message-and-send"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,1,'character','Hallo.','سلام.',40,NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,2,'learner','Ich habe dir eine Nachricht geschickt.','برات پیام فرستادم.',40,NULL,NULL,'ich habe dir eine nachricht geschickt',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"present_1sg"},{"surface":"dir","lemma":"du","translation":"تو","partOfSpeech":"pronoun","meaning":"بهت / برات","form":"dative_2sg"},{"surface":"eine","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","meaning":"یک","form":"feminine_accusative"},{"surface":"Nachricht","lemma":"Nachricht","translation":"پیام","partOfSpeech":"noun"},{"surface":"geschickt","lemma":"schicken","translation":"فرستادن","partOfSpeech":"verb","meaning":"فرستادم","form":"past_participle","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,3,'character','Gut.','خوبه.',40,NULL,NULL,NULL,NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"خوبه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,4,'learner','Hast du meine Nachricht gelesen?','پیامم رو خوندی؟',40,NULL,NULL,'hast du meine nachricht gelesen',NULL,'[{"surface":"Hast","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"meine","lemma":"mein","translation":"مال من / من","partOfSpeech":"determiner","meaning":"پیام من","form":"feminine_accusative"},{"surface":"Nachricht","lemma":"Nachricht","translation":"پیام","partOfSpeech":"noun"},{"surface":"gelesen","lemma":"lesen","translation":"خواندن","partOfSpeech":"verb","meaning":"خوندی","form":"past_participle","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":8}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,5,'character','Ja.','بله.',40,NULL,NULL,NULL,NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_hallo,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_haben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ein,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_nachricht,'new',1,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_schicken,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ein,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_nachricht,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_haben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_schicken,'new',1,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ein,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_nachricht,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_haben,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_du,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_schicken,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_mein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_lesen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich_habe_dir_eine_nachricht_geschickt,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_hallo,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_haben,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_du,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_nachricht,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_schicken,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_mein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_lesen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich_habe_dir_eine_nachricht_geschickt,'review',0,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_nachricht,'اسم جدید',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به شروع سارا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'بگو براش پیام فرستادی',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به سوال سارا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'تایید کن',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,NULL,v_w_nachricht,'معنی درست را انتخاب کن',NULL,40,'{"mode":"word_translation","question":"Nachricht","choices":["پیام","تماس","قرار"],"correctIndex":0}','{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_schicken,'فعل جدید',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به سوال سارا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'بگو پیام را فرستادی',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به سوال تاییدی سارا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'تایید کن',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,NULL,v_w_schicken,'معنی درست را انتخاب کن',NULL,40,'{"mode":"word_translation","question":"schicken","choices":["فرستادن","خواندن","جواب دادن"],"correctIndex":0}','{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',7,v_t_6,NULL,'جمله پیام را به ترتیب درست بساز',NULL,40,'{"source":"turn_tokens","shuffle":true}','{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_ich_habe_dir_eine_nachricht_geschickt,'عبارت جدید',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_9,NULL,'به سوال سارا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_10,NULL,'جمله کامل پیام را بگو',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_11,NULL,'به واکنش سارا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_12,NULL,'بپرس پیام را خوانده یا نه',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',6,v_t_13,NULL,'به جواب سارا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',7,v_t_10,NULL,'معنی جمله را انتخاب کن',NULL,40,'{"mode":"turn_translation","question":"«Ich habe dir eine Nachricht geschickt.» یعنی چی؟","choices":["برات پیام فرستادم.","پیامت رو خوندم.","بعدا بهت زنگ می زنم."],"correctIndex":0}','{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',8,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,40,'{"source":"lesson_story","question":"میا بعد از فرستادن پیام چه چیزی می پرسد؟","choices":["می پرسد سارا پیام را خوانده یا نه.","می پرسد سارا کجاست.","می پرسد قطار چه ساعتی می رسد."],"correctIndex":0}','{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_14,NULL,'به شروع سارا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_15,NULL,'دوباره بگو براش پیام فرستادی',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_16,NULL,'به واکنش سارا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_17,NULL,'بپرس پیام را خوانده یا نه',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_18,NULL,'به جواب سارا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',6,NULL,NULL,'کل گفتگو را بخوان و جواب بده',NULL,40,'{"source":"lesson_story","question":"در پایان این فصل چه چیزی مشخص است؟","choices":["سارا پیام را خوانده، اما هنوز جوابش موضوع فصل بعد است.","پیام به سارا نرسیده است.","میا هیچ پیامی نفرستاده است."],"correctIndex":0}','{"cefr":"A2","module":8}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',7,v_t_17,NULL,'سوال میا را بررسی کن',NULL,40,'{"mode":"turn_translation","question":"«Hast du meine Nachricht gelesen?» یعنی چی؟","choices":["پیامم رو خوندی؟","برام پیام فرستادی؟","الان می تونی صحبت کنی؟"],"correctIndex":0}','{"cefr":"A2","module":8}');
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 077 lesson count.'; END IF;
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

CALL import_nova_series_077_v9();
DROP PROCEDURE IF EXISTS import_nova_series_077_v9;
-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 064
-- A2 > Im Hotel > Wann ist das Frühstück?
-- Requires Series 063.
-- Continues mia-marie-hotel orders 16-19.
-- Reuses canonical Frühstück and time vocabulary.
-- Checkout vocabulary is deferred to Series 065.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_064_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_064_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_mia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_marie BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_hallo BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_bitte BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danke BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wann BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_der BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_fruehstueck BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_um BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_uhr BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_acht BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wann_ist_das_fruehstueck BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_um_acht_uhr BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_das_fruehstueck_ist_um_acht_uhr BIGINT UNSIGNED DEFAULT NULL;
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
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=5 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 061 before Series 064.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=3 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=4 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 05 Chapter 04 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 063 before Series 064.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_prev_chapter AND status IN ('validated','complete');
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 063 Chapter must be validated/complete before Series 064.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 05 Chapter 04 must be empty before Series 064 import.'; END IF;

  SELECT id INTO v_c_mia FROM characters WHERE course_id=v_course AND name='Mia' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_mia IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Mia not found.'; END IF;

  SELECT id INTO v_c_marie FROM characters WHERE course_id=v_course AND name='Marie' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_marie IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Marie not found.'; END IF;

  SELECT id INTO v_w_hallo FROM words WHERE course_id=v_course AND lemma='Hallo' AND part_of_speech='interjection' AND translation='سلام' ORDER BY id LIMIT 1;
  IF v_w_hallo IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Hallo not found.'; END IF;

  SELECT id INTO v_w_bitte FROM words WHERE course_id=v_course AND lemma='bitte' AND part_of_speech='interjection' AND translation='لطفا / خواهش می کنم' ORDER BY id LIMIT 1;
  IF v_w_bitte IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word bitte not found.'; END IF;

  SELECT id INTO v_w_danke FROM words WHERE course_id=v_course AND lemma='danke' AND part_of_speech='interjection' AND translation='ممنون' ORDER BY id LIMIT 1;
  IF v_w_danke IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word danke not found.'; END IF;

  SELECT id INTO v_w_wann FROM words WHERE course_id=v_course AND lemma='wann' AND part_of_speech='adverb' AND translation='کی / چه زمانی' ORDER BY id LIMIT 1;
  IF v_w_wann IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word wann not found.'; END IF;

  SELECT id INTO v_w_sein FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_sein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word sein not found.'; END IF;

  SELECT id INTO v_w_der FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_der IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word der not found.'; END IF;

  SELECT id INTO v_w_fruehstueck FROM words WHERE course_id=v_course AND lemma='Frühstück' AND part_of_speech='noun' AND translation='صبحانه' ORDER BY id LIMIT 1;
  IF v_w_fruehstueck IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Frühstück not found.'; END IF;

  SELECT id INTO v_w_um FROM words WHERE course_id=v_course AND lemma='um' AND part_of_speech='preposition' AND translation='در ساعت / حوالی' ORDER BY id LIMIT 1;
  IF v_w_um IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word um not found.'; END IF;

  SELECT id INTO v_w_uhr FROM words WHERE course_id=v_course AND lemma='Uhr' AND part_of_speech='noun' AND translation='ساعت' ORDER BY id LIMIT 1;
  IF v_w_uhr IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Uhr not found.'; END IF;

  SELECT id INTO v_w_acht FROM words WHERE course_id=v_course AND lemma='acht' AND part_of_speech='number' AND translation='هشت' ORDER BY id LIMIT 1;
  IF v_w_acht IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'acht','acht','number','هشت',34,'{"value":8}','[{"text":"drei","translation":"سه"},{"text":"fünf","translation":"پنج"},{"text":"neun","translation":"نه"},{"text":"zehn","translation":"ده"},{"text":"zwei","translation":"دو"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":64,"module":5}');
    SET v_w_acht=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_wann_ist_das_fruehstueck FROM words WHERE course_id=v_course AND lemma='Wann ist das Frühstück?' AND part_of_speech='phrase' AND translation='صبحانه چه ساعتیه؟' ORDER BY id LIMIT 1;
  IF v_w_wann_ist_das_fruehstueck IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Wann ist das Frühstück?','Wann ist das Frühstück?','phrase','صبحانه چه ساعتیه؟',34,'{"questionWord":"wann","copula":"sein","copulaForm":"ist","subject":"das Frühstück"}','[{"text":"Wann ist das Abendessen?","translation":"شام چه ساعتیه؟"},{"text":"Wann kann er kommen?","translation":"کی می تونه بیاد؟"},{"text":"Ist das Zimmer gut?","translation":"اتاق خوبه؟"},{"text":"Das Frühstück ist um acht Uhr.","translation":"صبحانه ساعت هشته."},{"text":"Um acht Uhr.","translation":"ساعت هشت."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":64,"module":5}');
    SET v_w_wann_ist_das_fruehstueck=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_um_acht_uhr FROM words WHERE course_id=v_course AND lemma='Um acht Uhr.' AND part_of_speech='phrase' AND translation='ساعت هشت.' ORDER BY id LIMIT 1;
  IF v_w_um_acht_uhr IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Um acht Uhr.','Um acht Uhr.','phrase','ساعت هشت.',34,'{"timePreposition":"um","hour":8,"unit":"Uhr"}','[{"text":"Um drei Uhr.","translation":"ساعت سه."},{"text":"Morgen um drei Uhr.","translation":"فردا ساعت سه."},{"text":"Acht Uhr.","translation":"ساعت هشت."},{"text":"Das Frühstück ist um acht Uhr.","translation":"صبحانه ساعت هشته."},{"text":"Wann ist das Frühstück?","translation":"صبحانه چه ساعتیه؟"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":64,"module":5}');
    SET v_w_um_acht_uhr=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_das_fruehstueck_ist_um_acht_uhr FROM words WHERE course_id=v_course AND lemma='Das Frühstück ist um acht Uhr.' AND part_of_speech='phrase' AND translation='صبحانه ساعت هشته.' ORDER BY id LIMIT 1;
  IF v_w_das_fruehstueck_ist_um_acht_uhr IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Das Frühstück ist um acht Uhr.','Das Frühstück ist um acht Uhr.','phrase','صبحانه ساعت هشته.',35,'{"subject":"das Frühstück","copula":"sein","copulaForm":"ist","time":"um acht Uhr"}','[{"text":"Das Frühstück ist um neun Uhr.","translation":"صبحانه ساعت نهه."},{"text":"Um acht Uhr.","translation":"ساعت هشت."},{"text":"Das Zimmer ist zu laut.","translation":"اتاق خیلی پر سر و صداست."},{"text":"Ich bleibe eine Nacht länger.","translation":"یک شب بیشتر می مونم."},{"text":"Wann ist das Frühstück?","translation":"صبحانه چه ساعتیه؟"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":64,"module":5}');
    SET v_w_das_fruehstueck_ist_um_acht_uhr=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_marie,v_c_mia,'Wann ist das Frühstück?','صبحانه چه ساعتیه؟','Mias zusätzliche Nacht ist organisiert. Am nächsten Morgen fragt sie Marie nach der Frühstückszeit.','شب اضافه میا هماهنگ شده است. صبح روز بعد از ماری درباره ساعت صبحانه می پرسد.','story','mia-marie-hotel',16,34,110,1,'validated','{"relationship":"hotel_guest_and_receptionist","context":"hotel-breakfast-time","cefr":"A2","module":5,"focus":"service-time-question"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_marie,1,'character','Hallo.','سلام.',34,NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,2,'learner','Wann ist das Frühstück?','صبحانه چه ساعتیه؟',34,NULL,NULL,'wann ist das frühstück',NULL,'[{"surface":"Wann","lemma":"wann","translation":"کی / چه زمانی","partOfSpeech":"adverb","meaning":"کی / چه زمانی"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است / هست","form":"present_3sg"},{"surface":"das","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"neuter_nominative"},{"surface":"Frühstück","lemma":"Frühstück","translation":"صبحانه","partOfSpeech":"noun","suffix":"?"}]','Wann + ist','برای پرسیدن زمان یک سرویس می تونی از «Wann ist ...?» استفاده کنی. اینجا Frühstück همان واژه آشنای صبحانه است.',NULL,'{"cefr":"A2","module":5}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_marie,3,'character','Um acht Uhr.','ساعت هشت.',34,NULL,NULL,NULL,NULL,'[{"surface":"Um","lemma":"um","translation":"در ساعت / حوالی","partOfSpeech":"preposition","meaning":"در ساعت","form":"time_preposition"},{"surface":"acht","lemma":"acht","translation":"هشت","partOfSpeech":"number"},{"surface":"Uhr","lemma":"Uhr","translation":"ساعت","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,4,'learner','Danke.','ممنون.',34,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_4=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_mia,v_c_marie,'Um acht Uhr','ساعت هشت','Mia fragt nach der Zeit, und Marie antwortet diesmal kurz mit der genauen Uhrzeit.','میا زمان را می پرسد و ماری این بار کوتاه با ساعت دقیق جواب می دهد.','story','mia-marie-hotel',17,34,110,2,'validated','{"relationship":"hotel_guest_and_receptionist","context":"hotel-breakfast-time","cefr":"A2","module":5,"focus":"service-time-question"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,1,'character','Wann ist das Frühstück?','صبحانه چه ساعتیه؟',34,NULL,NULL,NULL,NULL,'[{"surface":"Wann","lemma":"wann","translation":"کی / چه زمانی","partOfSpeech":"adverb","meaning":"کی / چه زمانی"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است / هست","form":"present_3sg"},{"surface":"das","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"neuter_nominative"},{"surface":"Frühstück","lemma":"Frühstück","translation":"صبحانه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_marie,2,'learner','Um acht Uhr.','ساعت هشت.',34,NULL,NULL,'um acht uhr',NULL,'[{"surface":"Um","lemma":"um","translation":"در ساعت / حوالی","partOfSpeech":"preposition","meaning":"در ساعت","form":"time_preposition"},{"surface":"acht","lemma":"acht","translation":"هشت","partOfSpeech":"number"},{"surface":"Uhr","lemma":"Uhr","translation":"ساعت","partOfSpeech":"noun","suffix":"."}]','um برای ساعت دقیق','الگوی «um + ساعت + Uhr» را از قبل دیده ای. اینجا فقط ساعت جدید «acht» وارد می شود.',NULL,'{"cefr":"A2","module":5}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,3,'character','Danke.','ممنون.',34,NULL,NULL,NULL,NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_marie,4,'learner','Bitte.','خواهش می کنم.',34,NULL,NULL,'bitte',NULL,'[{"surface":"Bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","meaning":"خواهش می کنم","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_8=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_mia,v_c_marie,'Das Frühstück ist um acht Uhr','صبحانه ساعت هشته','Marie gibt die Information jetzt als vollständigen Satz weiter, damit Mia die Servicezeit sicher versteht.','ماری حالا اطلاعات را با یک جمله کامل می گوید تا میا ساعت سرویس را دقیق بفهمد.','story','mia-marie-hotel',18,35,110,3,'validated','{"relationship":"hotel_guest_and_receptionist","context":"hotel-breakfast-time","cefr":"A2","module":5,"focus":"service-time-question"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,1,'character','Wann ist das Frühstück?','صبحانه چه ساعتیه؟',35,NULL,NULL,NULL,NULL,'[{"surface":"Wann","lemma":"wann","translation":"کی / چه زمانی","partOfSpeech":"adverb","meaning":"کی / چه زمانی"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است / هست","form":"present_3sg"},{"surface":"das","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"neuter_nominative"},{"surface":"Frühstück","lemma":"Frühstück","translation":"صبحانه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_marie,2,'learner','Das Frühstück ist um acht Uhr.','صبحانه ساعت هشته.',35,NULL,NULL,'das frühstück ist um acht uhr',NULL,'[{"surface":"Das","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"neuter_nominative"},{"surface":"Frühstück","lemma":"Frühstück","translation":"صبحانه","partOfSpeech":"noun"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است","form":"present_3sg"},{"surface":"um","lemma":"um","translation":"در ساعت / حوالی","partOfSpeech":"preposition","meaning":"در ساعت","form":"time_preposition"},{"surface":"acht","lemma":"acht","translation":"هشت","partOfSpeech":"number"},{"surface":"Uhr","lemma":"Uhr","translation":"ساعت","partOfSpeech":"noun","suffix":"."}]','جمله کامل برای ساعت سرویس','در «Das Frühstück ist um acht Uhr.» زمان با «um» می آید و ساختار کلی جمله همان sein آشناست.',NULL,'{"cefr":"A2","module":5}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,3,'character','Danke.','ممنون.',35,NULL,NULL,NULL,NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_marie,4,'learner','Bitte.','خواهش می کنم.',35,NULL,NULL,'bitte',NULL,'[{"surface":"Bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","meaning":"خواهش می کنم","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_12=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_marie,v_c_mia,'Die Frühstückszeit','ساعت صبحانه','Mia fragt die Hotelinformation noch einmal klar ab. Marie gibt die vollständige Antwort, und Mia weiß jetzt, wann sie zum Frühstück kommen kann.','میا اطلاعات هتل را یک بار دیگر روشن می پرسد. ماری جواب کامل را می دهد و میا حالا ساعت صبحانه را می داند.','story','mia-marie-hotel',19,35,110,4,'validated','{"relationship":"hotel_guest_and_receptionist","context":"hotel-breakfast-time","cefr":"A2","module":5,"focus":"service-time-question"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_marie,1,'character','Hallo.','سلام.',35,NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,2,'learner','Wann ist das Frühstück?','صبحانه چه ساعتیه؟',35,NULL,NULL,'wann ist das frühstück',NULL,'[{"surface":"Wann","lemma":"wann","translation":"کی / چه زمانی","partOfSpeech":"adverb","meaning":"کی / چه زمانی"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است / هست","form":"present_3sg"},{"surface":"das","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"neuter_nominative"},{"surface":"Frühstück","lemma":"Frühstück","translation":"صبحانه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_marie,3,'character','Das Frühstück ist um acht Uhr.','صبحانه ساعت هشته.',35,NULL,NULL,NULL,NULL,'[{"surface":"Das","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"neuter_nominative"},{"surface":"Frühstück","lemma":"Frühstück","translation":"صبحانه","partOfSpeech":"noun"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است","form":"present_3sg"},{"surface":"um","lemma":"um","translation":"در ساعت / حوالی","partOfSpeech":"preposition","meaning":"در ساعت","form":"time_preposition"},{"surface":"acht","lemma":"acht","translation":"هشت","partOfSpeech":"number"},{"surface":"Uhr","lemma":"Uhr","translation":"ساعت","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,4,'learner','Danke.','ممنون.',35,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_16=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_hallo,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_wann,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_sein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_der,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_fruehstueck,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_um,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_acht,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_uhr,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_um_acht_uhr,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_wann_ist_das_fruehstueck,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_wann,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_sein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_der,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_fruehstueck,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_um,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_acht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_uhr,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_bitte,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_wann_ist_das_fruehstueck,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_um_acht_uhr,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_wann,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_sein,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_der,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_fruehstueck,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_um,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_acht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_uhr,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_bitte,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_wann_ist_das_fruehstueck,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_das_fruehstueck_ist_um_acht_uhr,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_hallo,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wann,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_sein,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_der,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_fruehstueck,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_um,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_acht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_uhr,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wann_ist_das_fruehstueck,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_um_acht_uhr,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_das_fruehstueck_ist_um_acht_uhr,'review',0,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_wann_ist_das_fruehstueck,'عبارت جدید',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به شروع گفتگو گوش کن',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'ساعت صبحانه را بپرس',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به ساعت صبحانه گوش کن',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'تشکر کن',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,v_t_2,NULL,'معنی درست را انتخاب کن',NULL,34,'{"mode":"turn_translation","question":"«Wann ist das Frühstück?» یعنی چی؟","choices":["صبحانه چه ساعتیه؟","صبحانه کجاست؟","اتاق چه ساعتی آماده است؟"],"correctIndex":0}','{"cefr":"A2","module":5}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_um_acht_uhr,'عبارت جدید',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به سوال میا گوش کن',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'ساعت صبحانه را جواب بده',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به تشکر میا گوش کن',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'جواب تشکر را بده',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_6,NULL,'معنی درست را انتخاب کن',NULL,34,'{"mode":"turn_translation","question":"«Um acht Uhr.» یعنی چی؟","choices":["ساعت هشت.","ساعت سه.","فردا صبح."],"correctIndex":0}','{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',7,v_t_6,NULL,'عبارت ساعت را به ترتیب درست بساز',NULL,34,'{"source":"turn_tokens","shuffle":true}','{"cefr":"A2","module":5}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_das_fruehstueck_ist_um_acht_uhr,'عبارت جدید',NULL,35,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_9,NULL,'به سوال میا گوش کن',NULL,35,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_10,NULL,'ساعت صبحانه را با جمله کامل بگو',NULL,35,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_11,NULL,'به تشکر میا گوش کن',NULL,35,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_12,NULL,'جواب تشکر را بده',NULL,35,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_10,NULL,'معنی درست را انتخاب کن',NULL,35,'{"mode":"turn_translation","question":"«Das Frühstück ist um acht Uhr.» یعنی چی؟","choices":["صبحانه ساعت هشته.","صبحانه ساعت سه است.","صبحانه فردا نیست."],"correctIndex":0}','{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,35,'{"source":"lesson_story","question":"صبحانه چه ساعتی است؟","choices":["ساعت هشت.","ساعت سه.","زمانش مشخص نیست."],"correctIndex":0}','{"cefr":"A2","module":5}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_13,NULL,'به شروع گفتگو گوش کن',NULL,35,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_14,NULL,'ساعت صبحانه را بپرس',NULL,35,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_15,NULL,'به جواب کامل ماری گوش کن',NULL,35,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_16,NULL,'تشکر کن',NULL,35,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',5,NULL,NULL,'کل گفتگو را بخوان و جواب بده',NULL,35,'{"source":"lesson_story","question":"میا در پایان چه اطلاعاتی دارد؟","choices":["صبحانه ساعت هشت است.","اتاق جدید هنوز آماده نیست.","باید امروز هتل را ترک کند."],"correctIndex":0}','{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',6,v_t_15,NULL,'جواب ماری را بررسی کن',NULL,35,'{"mode":"turn_translation","question":"«Das Frühstück ist um acht Uhr.» یعنی چی؟","choices":["صبحانه ساعت هشته.","صبحانه کنسل شده.","صبحانه در اتاق سرو می شود."],"correctIndex":0}','{"cefr":"A2","module":5}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 064 lesson count.'; END IF;
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

CALL import_nova_series_064_v9();
DROP PROCEDURE IF EXISTS import_nova_series_064_v9;
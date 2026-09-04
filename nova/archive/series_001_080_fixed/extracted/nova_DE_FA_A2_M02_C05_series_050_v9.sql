-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 050
-- A2 > Termine & Pläne > Einen neuen Termin finden
-- FINAL CHAPTER OF A2 MODULE 02
-- Requires Series 049.
-- Completes A2 Module 02.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_050_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_050_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_mia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_sara BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_koennen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_du BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_morgen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_nein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_muessen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_arbeiten BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_an BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sonntag BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_dann BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gern BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kannst_du_morgen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_muss_arbeiten BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_kann_am_sonntag BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wann BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wann_kannst_du BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_am_sonntag_kann_ich BIGINT UNSIGNED DEFAULT NULL;
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
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 046 before Series 050.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=4 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=5 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 02 Chapter 05 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 049 before Series 050.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 02 Chapter 05 must be empty before Series 050 import.'; END IF;

  SELECT id INTO v_c_mia FROM characters WHERE course_id=v_course AND name='Mia' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_mia IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Mia not found.'; END IF;

  SELECT id INTO v_c_sara FROM characters WHERE course_id=v_course AND name='Sara' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_sara IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Sara not found.'; END IF;

  SELECT id INTO v_w_koennen FROM words WHERE course_id=v_course AND lemma='können' AND part_of_speech='verb' AND translation='توانستن / بتوان' ORDER BY id LIMIT 1;
  IF v_w_koennen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word können not found.'; END IF;

  SELECT id INTO v_w_du FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_du IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word du not found.'; END IF;

  SELECT id INTO v_w_morgen FROM words WHERE course_id=v_course AND lemma='morgen' AND part_of_speech='adverb' AND translation='فردا' ORDER BY id LIMIT 1;
  IF v_w_morgen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word morgen not found.'; END IF;

  SELECT id INTO v_w_nein FROM words WHERE course_id=v_course AND lemma='nein' AND part_of_speech='interjection' AND translation='نه' ORDER BY id LIMIT 1;
  IF v_w_nein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word nein not found.'; END IF;

  SELECT id INTO v_w_ich FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_ich IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ich not found.'; END IF;

  SELECT id INTO v_w_muessen FROM words WHERE course_id=v_course AND lemma='müssen' AND part_of_speech='verb' AND translation='مجبور بودن / باید' ORDER BY id LIMIT 1;
  IF v_w_muessen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word müssen not found.'; END IF;

  SELECT id INTO v_w_arbeiten FROM words WHERE course_id=v_course AND lemma='arbeiten' AND part_of_speech='verb' AND translation='کار کردن' ORDER BY id LIMIT 1;
  IF v_w_arbeiten IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word arbeiten not found.'; END IF;

  SELECT id INTO v_w_an FROM words WHERE course_id=v_course AND lemma='an' AND part_of_speech='preposition' AND translation='در / در روز' ORDER BY id LIMIT 1;
  IF v_w_an IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word an not found.'; END IF;

  SELECT id INTO v_w_sonntag FROM words WHERE course_id=v_course AND lemma='Sonntag' AND part_of_speech='noun' AND translation='یکشنبه' ORDER BY id LIMIT 1;
  IF v_w_sonntag IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Sonntag not found.'; END IF;

  SELECT id INTO v_w_gut FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_gut IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gut not found.'; END IF;

  SELECT id INTO v_w_dann FROM words WHERE course_id=v_course AND lemma='dann' AND part_of_speech='adverb' AND translation='بعد / سپس' ORDER BY id LIMIT 1;
  IF v_w_dann IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word dann not found.'; END IF;

  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;

  SELECT id INTO v_w_gern FROM words WHERE course_id=v_course AND lemma='gern' AND part_of_speech='adverb' AND translation='با علاقه / با میل' ORDER BY id LIMIT 1;
  IF v_w_gern IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gern not found.'; END IF;

  SELECT id INTO v_w_kannst_du_morgen FROM words WHERE course_id=v_course AND lemma='Kannst du morgen?' AND part_of_speech='phrase' AND translation='فردا می تونی؟' ORDER BY id LIMIT 1;
  IF v_w_kannst_du_morgen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Kannst du morgen? not found.'; END IF;

  SELECT id INTO v_w_ich_muss_arbeiten FROM words WHERE course_id=v_course AND lemma='Ich muss arbeiten.' AND part_of_speech='phrase' AND translation='باید کار کنم.' ORDER BY id LIMIT 1;
  IF v_w_ich_muss_arbeiten IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Ich muss arbeiten. not found.'; END IF;

  SELECT id INTO v_w_ich_kann_am_sonntag FROM words WHERE course_id=v_course AND lemma='Ich kann am Sonntag.' AND part_of_speech='phrase' AND translation='یکشنبه می تونم.' ORDER BY id LIMIT 1;
  IF v_w_ich_kann_am_sonntag IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Ich kann am Sonntag. not found.'; END IF;

  SELECT id INTO v_w_wann FROM words WHERE course_id=v_course AND lemma='wann' AND part_of_speech='adverb' AND translation='کی / چه زمانی' ORDER BY id LIMIT 1;
  IF v_w_wann IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'wann','wann','adverb','کی / چه زمانی',26,'{"interrogative":true,"questionType":"time"}','[{"text":"wo","translation":"کجا"},{"text":"wie","translation":"چطور"},{"text":"was","translation":"چی / چه"},{"text":"heute","translation":"امروز"},{"text":"morgen","translation":"فردا"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":50,"module":2,"moduleFinal":true}');
    SET v_w_wann=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_wann_kannst_du FROM words WHERE course_id=v_course AND lemma='Wann kannst du?' AND part_of_speech='phrase' AND translation='کی می تونی؟' ORDER BY id LIMIT 1;
  IF v_w_wann_kannst_du IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Wann kannst du?','Wann kannst du?','phrase','کی می تونی؟',26,'{"questionWord":"wann","modal":"können","modalForm":"kannst","person":"2sg"}','[{"text":"Kannst du morgen?","translation":"فردا می تونی؟"},{"text":"Was hast du gemacht?","translation":"چه کار کردی؟"},{"text":"Wo bist du?","translation":"کجایی؟"},{"text":"Hast du Zeit?","translation":"وقت داری؟"},{"text":"Wann kommst du?","translation":"کی میای؟"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":50,"module":2,"moduleFinal":true}');
    SET v_w_wann_kannst_du=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_am_sonntag_kann_ich FROM words WHERE course_id=v_course AND lemma='Am Sonntag kann ich.' AND part_of_speech='phrase' AND translation='یکشنبه می تونم.' ORDER BY id LIMIT 1;
  IF v_w_am_sonntag_kann_ich IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Am Sonntag kann ich.','Am Sonntag kann ich.','phrase','یکشنبه می تونم.',26,'{"modal":"können","modalForm":"kann","person":"1sg","frontedTimePhrase":"am Sonntag","wordOrder":"time-first-verb-second"}','[{"text":"Ich kann am Sonntag.","translation":"یکشنبه می تونم."},{"text":"Ich kann morgen.","translation":"فردا می تونم."},{"text":"Ich muss arbeiten.","translation":"باید کار کنم."},{"text":"Am Sonntag habe ich Zeit.","translation":"یکشنبه وقت دارم."},{"text":"Ich komme später.","translation":"دیرتر میام."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":50,"module":2,"moduleFinal":true}');
    SET v_w_am_sonntag_kann_ich=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Wann?','کی؟','Mia und Sara möchten sich wieder treffen. Dieses Mal fragen sie nicht nur nach morgen, sondern offen nach einem passenden Zeitpunkt.','میا و سارا می خواهند دوباره همدیگر را ببینند. این بار فقط درباره فردا نمی پرسند و دنبال یک زمان مناسب می گردند.','story','mia-sara-a2-appointments',17,26,110,1,'validated','{"relationship":"friends_and_classmates","context":"finding-next-appointment","cefr":"A2","moduleFinal":true,"focus":"availability-obligation-synthesis"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,1,'character','Kannst du morgen?','فردا می تونی؟',26,NULL,NULL,NULL,NULL,'[{"surface":"Kannst","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونی","form":"modal_present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"morgen","lemma":"morgen","translation":"فردا","partOfSpeech":"adverb","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":2,"moduleFinal":true}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,2,'learner','Nein. Ich muss arbeiten.','نه. باید کار کنم.',26,NULL,NULL,'nein ich muss arbeiten',NULL,'[{"surface":"Nein","lemma":"nein","translation":"نه","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"muss","lemma":"müssen","translation":"مجبور بودن / باید","partOfSpeech":"verb","meaning":"باید","form":"modal_present_1sg"},{"surface":"arbeiten","lemma":"arbeiten","translation":"کار کردن","partOfSpeech":"verb","meaning":"کار کنم","form":"infinitive_after_modal","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":2,"moduleFinal":true}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,3,'character','Wann kannst du?','کی می تونی؟',26,NULL,NULL,NULL,NULL,'[{"surface":"Wann","lemma":"wann","translation":"کی / چه زمانی","partOfSpeech":"adverb","meaning":"کی / چه زمانی"},{"surface":"kannst","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونی","form":"modal_present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun","suffix":"?"}]','wann برای پرسیدن زمان','«wann» یعنی «کی / چه زمانی». این کلمه وقتی به کار می رود که زمان دقیق را نمی دانی و می خواهی طرف مقابل زمان مناسب را بگوید.',NULL,'{"cefr":"A2","module":2,"moduleFinal":true}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,4,'learner','Am Sonntag.','یکشنبه.',26,NULL,NULL,'am sonntag',NULL,'[{"surface":"Am","lemma":"an","translation":"در / در روز","partOfSpeech":"preposition","meaning":"در روز","form":"contraction_an_dem"},{"surface":"Sonntag","lemma":"Sonntag","translation":"یکشنبه","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":2,"moduleFinal":true}');
  SET v_t_4=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_mia,v_c_sara,'Wann kannst du?','کی می تونی؟','Mia stellt nun selbst die offene Frage nach einem passenden Zeitpunkt.','میا حالا خودش درباره یک زمان مناسب سوال می کند.','story','mia-sara-a2-appointments',18,26,110,2,'validated','{"relationship":"friends_and_classmates","context":"finding-next-appointment","cefr":"A2","moduleFinal":true,"focus":"availability-obligation-synthesis"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,1,'character','Wann kannst du?','کی می تونی؟',26,NULL,NULL,NULL,NULL,'[{"surface":"Wann","lemma":"wann","translation":"کی / چه زمانی","partOfSpeech":"adverb","meaning":"کی / چه زمانی"},{"surface":"kannst","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونی","form":"modal_present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun","suffix":"?"}]','سوال باز به جای بله یا نه','«Kannst du morgen?» فقط درباره فردا می پرسد، اما «Wann kannst du?» از طرف مقابل می خواهد خودش زمان مناسب را بگوید.',NULL,'{"cefr":"A2","module":2,"moduleFinal":true}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,2,'learner','Ich kann am Sonntag.','یکشنبه می تونم.',26,NULL,NULL,'ich kann am sonntag',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"kann","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونم","form":"modal_present_1sg"},{"surface":"am","lemma":"an","translation":"در / در روز","partOfSpeech":"preposition","meaning":"در روز","form":"contraction_an_dem"},{"surface":"Sonntag","lemma":"Sonntag","translation":"یکشنبه","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":2,"moduleFinal":true}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,3,'character','Gut.','خوبه.',26,NULL,NULL,NULL,NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"خوبه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":2,"moduleFinal":true}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,4,'learner','Ja.','بله.',26,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":2,"moduleFinal":true}');
  SET v_t_8=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_mia,v_c_sara,'Am Sonntag kann ich','یکشنبه می تونم','Sara nennt den passenden Tag jetzt zuerst und setzt das bekannte können-Muster in einer neuen Wortstellung ein.','سارا حالا اول روز مناسب را می گوید و همان الگوی آشنای können را با ترتیب تازه ای استفاده می کند.','story','mia-sara-a2-appointments',19,26,110,3,'validated','{"relationship":"friends_and_classmates","context":"finding-next-appointment","cefr":"A2","moduleFinal":true,"focus":"availability-obligation-synthesis"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,1,'character','Wann kannst du?','کی می تونی؟',26,NULL,NULL,NULL,NULL,'[{"surface":"Wann","lemma":"wann","translation":"کی / چه زمانی","partOfSpeech":"adverb","meaning":"کی / چه زمانی"},{"surface":"kannst","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونی","form":"modal_present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":2,"moduleFinal":true}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,2,'learner','Am Sonntag kann ich.','یکشنبه می تونم.',26,NULL,NULL,'am sonntag kann ich',NULL,'[{"surface":"Am","lemma":"an","translation":"در / در روز","partOfSpeech":"preposition","meaning":"در روز","form":"contraction_an_dem"},{"surface":"Sonntag","lemma":"Sonntag","translation":"یکشنبه","partOfSpeech":"noun"},{"surface":"kann","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونم","form":"modal_present_1sg"},{"surface":"ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun","suffix":"."}]','زمان اول جمله، فعل همچنان جای دوم','وقتی «Am Sonntag» را اول می آوری، فعل «kann» بلافاصله بعد از آن می آید: «Am Sonntag kann ich.» فعلا همین الگو را در جمله کامل تمرین کن.',NULL,'{"cefr":"A2","module":2,"moduleFinal":true}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,3,'character','Dann am Sonntag?','پس یکشنبه؟',26,NULL,NULL,NULL,NULL,'[{"surface":"Dann","lemma":"dann","translation":"بعد / سپس","partOfSpeech":"adverb","meaning":"پس"},{"surface":"am","lemma":"an","translation":"در / در روز","partOfSpeech":"preposition","meaning":"در روز","form":"contraction_an_dem"},{"surface":"Sonntag","lemma":"Sonntag","translation":"یکشنبه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":2,"moduleFinal":true}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,4,'learner','Ja, gern.','بله، حتما.',26,NULL,NULL,'ja gern',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"gern","lemma":"gern","translation":"با علاقه / با میل","partOfSpeech":"adverb","meaning":"حتما / با میل","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":2,"moduleFinal":true}');
  SET v_t_12=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Einen neuen Termin finden','پیدا کردن یک وقت جدید','Mia und Sara verbinden Verfügbarkeit und Verpflichtung und finden ohne lange Erklärung einen neuen Termin.','میا و سارا امکان و اجبار را کنار هم استفاده می کنند و بدون توضیح طولانی یک وقت جدید پیدا می کنند.','story','mia-sara-a2-appointments',20,26,110,4,'validated','{"relationship":"friends_and_classmates","context":"finding-next-appointment","cefr":"A2","moduleFinal":true,"focus":"availability-obligation-synthesis"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,1,'character','Kannst du morgen?','فردا می تونی؟',26,NULL,NULL,NULL,NULL,'[{"surface":"Kannst","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونی","form":"modal_present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"morgen","lemma":"morgen","translation":"فردا","partOfSpeech":"adverb","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":2,"moduleFinal":true}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,2,'learner','Nein. Ich muss arbeiten.','نه. باید کار کنم.',26,NULL,NULL,'nein ich muss arbeiten',NULL,'[{"surface":"Nein","lemma":"nein","translation":"نه","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"muss","lemma":"müssen","translation":"مجبور بودن / باید","partOfSpeech":"verb","meaning":"باید","form":"modal_present_1sg"},{"surface":"arbeiten","lemma":"arbeiten","translation":"کار کردن","partOfSpeech":"verb","meaning":"کار کنم","form":"infinitive_after_modal","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":2,"moduleFinal":true}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,3,'character','Wann kannst du?','کی می تونی؟',26,NULL,NULL,NULL,NULL,'[{"surface":"Wann","lemma":"wann","translation":"کی / چه زمانی","partOfSpeech":"adverb","meaning":"کی / چه زمانی"},{"surface":"kannst","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونی","form":"modal_present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":2,"moduleFinal":true}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,4,'learner','Am Sonntag kann ich.','یکشنبه می تونم.',26,NULL,NULL,'am sonntag kann ich',NULL,'[{"surface":"Am","lemma":"an","translation":"در / در روز","partOfSpeech":"preposition","meaning":"در روز","form":"contraction_an_dem"},{"surface":"Sonntag","lemma":"Sonntag","translation":"یکشنبه","partOfSpeech":"noun"},{"surface":"kann","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونم","form":"modal_present_1sg"},{"surface":"ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":2,"moduleFinal":true}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,5,'character','Dann am Sonntag?','پس یکشنبه؟',26,NULL,NULL,NULL,NULL,'[{"surface":"Dann","lemma":"dann","translation":"بعد / سپس","partOfSpeech":"adverb","meaning":"پس"},{"surface":"am","lemma":"an","translation":"در / در روز","partOfSpeech":"preposition","meaning":"در روز","form":"contraction_an_dem"},{"surface":"Sonntag","lemma":"Sonntag","translation":"یکشنبه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":2,"moduleFinal":true}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,6,'learner','Ja, gern.','بله، حتما.',26,NULL,NULL,'ja gern',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"gern","lemma":"gern","translation":"با علاقه / با میل","partOfSpeech":"adverb","meaning":"حتما / با میل","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":2,"moduleFinal":true}');
  SET v_t_18=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_koennen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_du,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_morgen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_nein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_muessen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_arbeiten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_wann,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_an,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_sonntag,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ich_muss_arbeiten,'review',0,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_wann,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_koennen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_an,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_sonntag,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich_kann_am_sonntag,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_wann_kannst_du,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_wann,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_koennen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_an,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_sonntag,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_dann,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_gern,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_wann_kannst_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_am_sonntag_kann_ich,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_koennen,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_du,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_morgen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_nein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_muessen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_arbeiten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wann,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_an,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_sonntag,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_dann,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_gern,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_kannst_du_morgen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich_muss_arbeiten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wann_kannst_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_am_sonntag_kann_ich,'review',0,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_wann,'کلمه پرسشی جدید',NULL,26,NULL,'{"cefr":"A2","module":2,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به سوال درباره فردا گوش کن',NULL,26,NULL,'{"cefr":"A2","module":2,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'بگو باید کار کنی',NULL,26,NULL,'{"cefr":"A2","module":2,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به سوال درباره زمان مناسب گوش کن',NULL,26,NULL,'{"cefr":"A2","module":2,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'یکشنبه را پیشنهاد بده',NULL,26,NULL,'{"cefr":"A2","module":2,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,NULL,v_w_wann,'معنی درست را انتخاب کن',NULL,26,'{"mode":"word_translation","question":"wann","choices":["کی / چه زمانی","کجا","چطور"],"correctIndex":0}','{"cefr":"A2","module":2,"moduleFinal":true}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_wann_kannst_du,'عبارت جدید',NULL,26,NULL,'{"cefr":"A2","module":2,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به سوال زمان مناسب گوش کن',NULL,26,NULL,'{"cefr":"A2","module":2,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'بگو یکشنبه می تونی',NULL,26,NULL,'{"cefr":"A2","module":2,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به واکنش میا گوش کن',NULL,26,NULL,'{"cefr":"A2","module":2,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'تایید کن',NULL,26,NULL,'{"cefr":"A2","module":2,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_5,NULL,'معنی درست را انتخاب کن',NULL,26,'{"mode":"turn_translation","question":"«Wann kannst du?» یعنی چی؟","choices":["کی می تونی؟","فردا می تونی؟","چرا نمی تونی؟"],"correctIndex":0}','{"cefr":"A2","module":2,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',7,v_t_5,NULL,'سوال را به ترتیب درست بساز',NULL,26,'{"source":"turn_tokens","shuffle":true}','{"cefr":"A2","module":2,"moduleFinal":true}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_am_sonntag_kann_ich,'عبارت جدید',NULL,26,NULL,'{"cefr":"A2","module":2,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_9,NULL,'به سوال زمان مناسب گوش کن',NULL,26,NULL,'{"cefr":"A2","module":2,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_10,NULL,'بگو یکشنبه می تونی',NULL,26,NULL,'{"cefr":"A2","module":2,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_11,NULL,'به تایید روز گوش کن',NULL,26,NULL,'{"cefr":"A2","module":2,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_12,NULL,'قرار را قبول کن',NULL,26,NULL,'{"cefr":"A2","module":2,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_10,NULL,'معنی درست را انتخاب کن',NULL,26,'{"mode":"turn_translation","question":"«Am Sonntag kann ich.» یعنی چی؟","choices":["یکشنبه می تونم.","یکشنبه باید کار کنم.","فردا می تونم."],"correctIndex":0}','{"cefr":"A2","module":2,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,26,'{"source":"lesson_story","question":"سارا چه روزی می تواند؟","choices":["یکشنبه","فردا","دیروز"],"correctIndex":0}','{"cefr":"A2","module":2,"moduleFinal":true}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_13,NULL,'به سوال فردا گوش کن',NULL,26,NULL,'{"cefr":"A2","module":2,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_14,NULL,'بگو باید کار کنی',NULL,26,NULL,'{"cefr":"A2","module":2,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_15,NULL,'به سوال زمان مناسب گوش کن',NULL,26,NULL,'{"cefr":"A2","module":2,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_16,NULL,'روز مناسب را بگو',NULL,26,NULL,'{"cefr":"A2","module":2,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_17,NULL,'به تایید روز گوش کن',NULL,26,NULL,'{"cefr":"A2","module":2,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_18,NULL,'قرار را قبول کن',NULL,26,NULL,'{"cefr":"A2","module":2,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,26,'{"source":"lesson_story","question":"چرا قرار برای فردا نمی ماند و چه روزی انتخاب می شود؟","choices":["میا باید کار کند و یکشنبه انتخاب می شود.","میا دیرتر می رسد و فردا انتخاب می شود.","سارا باید کار کند و شنبه انتخاب می شود."],"correctIndex":0}','{"cefr":"A2","module":2,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',8,v_t_15,NULL,'منظور سوال را انتخاب کن',NULL,26,'{"mode":"turn_translation","question":"«Wann kannst du?» در این گفتگو چه می پرسد؟","choices":["چه زمانی می تونی؟","چرا باید کار کنی؟","کجا میای؟"],"correctIndex":0}','{"cefr":"A2","module":2,"moduleFinal":true}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 050 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (ac.config IS NULL OR JSON_EXTRACT(ac.config,'$.question') IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without task.'; END IF;
  UPDATE chapters SET status='validated' WHERE id=v_chapter;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE module_id=v_module;
  IF v_count<>5 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 02 completion requires exactly 5 Chapters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE module_id=v_module AND status IN ('validated','complete');
  IF v_count<>5 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='All A2 Module 02 Chapters must be validated/complete.'; END IF;
  UPDATE modules SET status='complete' WHERE id=v_module;
  UPDATE levels SET status='active' WHERE id=v_level;
  COMMIT;
END$$
DELIMITER ;

CALL import_nova_series_050_v9();
DROP PROCEDURE IF EXISTS import_nova_series_050_v9;
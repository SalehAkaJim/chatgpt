-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 022
-- A1 > Einkaufen > Größe & Farbe
-- Canonical dependencies: Series 015 r3, Series 020 r2.
-- Includes duplicate lesson_words symbolic PK QA.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_022_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_022_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_julia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_sara BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_mia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_hallo BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_moechten BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_tshirt BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_hose BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_moechte_ein_tshirt BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_bitte BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danke BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_welcher BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_groesse BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_welche_groesse BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_size_m BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_farbe BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_welche_farbe BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_rot BIGINT UNSIGNED DEFAULT NULL;
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

  DECLARE EXIT HANDLER FOR SQLEXCEPTION
  BEGIN
    ROLLBACK;
    RESIGNAL;
  END;

  START TRANSACTION;

  SELECT id INTO v_course FROM courses WHERE learning_language='de' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND sort_order=1 ORDER BY id LIMIT 1;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=5 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 021 before Series 022.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=1 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Module 05 Chapter 02 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 021 before Series 022.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Module 05 Chapter 02 must be empty before Series 022 import.'; END IF;

  SELECT id INTO v_c_julia FROM characters WHERE course_id=v_course AND name='Julia' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_julia IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Julia not found.'; END IF;

  SELECT id INTO v_c_sara FROM characters WHERE course_id=v_course AND name='Sara' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_sara IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Sara not found.'; END IF;

  SELECT id INTO v_c_mia FROM characters WHERE course_id=v_course AND name='Mia' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_mia IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Mia not found.'; END IF;

  SELECT id INTO v_w_hallo FROM words WHERE course_id=v_course AND lemma='Hallo' AND part_of_speech='interjection' AND translation='سلام' ORDER BY id LIMIT 1;
  IF v_w_hallo IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Hallo not found.'; END IF;

  SELECT id INTO v_w_ich FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_ich IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ich not found.'; END IF;

  SELECT id INTO v_w_moechten FROM words WHERE course_id=v_course AND lemma='möchten' AND part_of_speech='verb' AND translation='خواستن / مایل بودن' ORDER BY id LIMIT 1;
  IF v_w_moechten IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word möchten not found.'; END IF;

  SELECT id INTO v_w_ein FROM words WHERE course_id=v_course AND lemma='ein' AND part_of_speech='article' AND translation='یک / حرف تعریف نامعین' ORDER BY id LIMIT 1;
  IF v_w_ein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ein not found.'; END IF;

  SELECT id INTO v_w_tshirt FROM words WHERE course_id=v_course AND lemma='T-Shirt' AND part_of_speech='noun' AND translation='تی شرت' ORDER BY id LIMIT 1;
  IF v_w_tshirt IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word T-Shirt not found.'; END IF;

  SELECT id INTO v_w_hose FROM words WHERE course_id=v_course AND lemma='Hose' AND part_of_speech='noun' AND translation='شلوار' ORDER BY id LIMIT 1;
  IF v_w_hose IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Hose not found.'; END IF;

  SELECT id INTO v_w_ich_moechte_ein_tshirt FROM words WHERE course_id=v_course AND lemma='Ich möchte ein T-Shirt.' AND part_of_speech='phrase' AND translation='من یک تی شرت می خواهم.' ORDER BY id LIMIT 1;
  IF v_w_ich_moechte_ein_tshirt IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Ich möchte ein T-Shirt. not found.'; END IF;

  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;

  SELECT id INTO v_w_bitte FROM words WHERE course_id=v_course AND lemma='bitte' AND part_of_speech='interjection' AND translation='لطفا / خواهش می کنم' ORDER BY id LIMIT 1;
  IF v_w_bitte IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word bitte not found.'; END IF;

  SELECT id INTO v_w_danke FROM words WHERE course_id=v_course AND lemma='danke' AND part_of_speech='interjection' AND translation='ممنون' ORDER BY id LIMIT 1;
  IF v_w_danke IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word danke not found.'; END IF;

  SELECT id INTO v_w_welcher FROM words WHERE course_id=v_course AND lemma='welcher' AND part_of_speech='determiner' AND translation='کدام / چه' ORDER BY id LIMIT 1;
  IF v_w_welcher IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'welcher','welcher','determiner','کدام / چه',13,'{"forms":{"masculine":"welcher","feminine":"welche","neuter":"welches"}}','[{"text":"was","translation":"چی / چه"},{"text":"wie","translation":"چطور"},{"text":"wo","translation":"کجا"},{"text":"wann","translation":"چه زمانی"},{"text":"warum","translation":"چرا"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_welcher=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_groesse FROM words WHERE course_id=v_course AND lemma='Größe' AND part_of_speech='noun' AND translation='اندازه / سایز' ORDER BY id LIMIT 1;
  IF v_w_groesse IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Größe','Größe','noun','اندازه / سایز',13,'{"article":"die","plural":"Größen"}','[{"text":"Farbe","translation":"رنگ"},{"text":"Preis","translation":"قیمت"},{"text":"Nummer","translation":"شماره"},{"text":"Länge","translation":"طول"},{"text":"Form","translation":"شکل"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_groesse=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_welche_groesse FROM words WHERE course_id=v_course AND lemma='Welche Größe?' AND part_of_speech='phrase' AND translation='چه سایزی؟' ORDER BY id LIMIT 1;
  IF v_w_welche_groesse IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Welche Größe?','Welche Größe?','phrase','چه سایزی؟',13,NULL,'[{"text":"Welche Farbe?","translation":"چه رنگی؟"},{"text":"Was kostet das?","translation":"این چقدر قیمت دارد؟"},{"text":"Wo ist der Bahnhof?","translation":"ایستگاه قطار کجاست؟"},{"text":"Hast du Zeit?","translation":"وقت داری؟"},{"text":"Was machst du gern?","translation":"دوست داری چه کار کنی؟"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_welche_groesse=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_size_m FROM words WHERE course_id=v_course AND lemma='M' AND part_of_speech='size_label' AND translation='سایز M / متوسط' ORDER BY id LIMIT 1;
  IF v_w_size_m IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'M','M','size_label','سایز M / متوسط',13,NULL,'[{"text":"S","translation":"سایز S / کوچک"},{"text":"L","translation":"سایز L / بزرگ"},{"text":"XL","translation":"سایز XL"},{"text":"XS","translation":"سایز XS"},{"text":"XXL","translation":"سایز XXL"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_size_m=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_farbe FROM words WHERE course_id=v_course AND lemma='Farbe' AND part_of_speech='noun' AND translation='رنگ' ORDER BY id LIMIT 1;
  IF v_w_farbe IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Farbe','Farbe','noun','رنگ',14,'{"article":"die","plural":"Farben"}','[{"text":"Größe","translation":"اندازه / سایز"},{"text":"Preis","translation":"قیمت"},{"text":"Material","translation":"جنس"},{"text":"Nummer","translation":"شماره"},{"text":"Form","translation":"شکل"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_farbe=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_welche_farbe FROM words WHERE course_id=v_course AND lemma='Welche Farbe?' AND part_of_speech='phrase' AND translation='چه رنگی؟' ORDER BY id LIMIT 1;
  IF v_w_welche_farbe IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Welche Farbe?','Welche Farbe?','phrase','چه رنگی؟',14,NULL,'[{"text":"Welche Größe?","translation":"چه سایزی؟"},{"text":"Was kostet das?","translation":"این چقدر قیمت دارد؟"},{"text":"Wo ist Gleis drei?","translation":"سکوی سه کجاست؟"},{"text":"Hast du Zeit?","translation":"وقت داری؟"},{"text":"Wie spät ist es?","translation":"ساعت چنده؟"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_welche_farbe=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_rot FROM words WHERE course_id=v_course AND lemma='rot' AND part_of_speech='adjective' AND translation='قرمز' ORDER BY id LIMIT 1;
  IF v_w_rot IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'rot','rot','adjective','قرمز',14,NULL,'[{"text":"blau","translation":"آبی"},{"text":"grün","translation":"سبز"},{"text":"schwarz","translation":"مشکی"},{"text":"weiß","translation":"سفید"},{"text":"gelb","translation":"زرد"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_rot=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_julia,v_c_sara,'Welche Größe?','چه سایزی؟','Julia fragt Sara nach der Größe des T-Shirts. Sara antwortet mit der einfachen Größe M.','جولیا سایز تی شرت را از سارا می پرسد. سارا با سایز ساده M جواب می دهد.','story','sara-julia-clothing-store',3,13,110,1,'validated','{"relationship":"customer-clothing_store_salesperson","storyArc":"beginning-development-ending"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_julia,1,'character','Welche Größe?','چه سایزی؟',13,NULL,NULL,NULL,NULL,'[{"surface":"Welche","lemma":"welcher","translation":"کدام / چه","partOfSpeech":"determiner","meaning":"چه / کدام","form":"feminine_nominative"},{"surface":"Größe","lemma":"Größe","translation":"اندازه / سایز","partOfSpeech":"noun","suffix":"?"}]','سوال را کامل یاد بگیر','«Welche Größe?» یعنی «چه سایزی؟». فعلا لازم نیست شکل های مختلف «welcher» را حفظ کنی.',NULL,NULL);
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,2,'learner','M, bitte.','سایز M، لطفا.',13,NULL,NULL,'m bitte','["em bitte"]','[{"surface":"M","lemma":"M","translation":"سایز M / متوسط","partOfSpeech":"size_label","suffix":","},{"surface":"bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_julia,3,'character','M?','سایز M؟',13,NULL,NULL,NULL,NULL,'[{"surface":"M","lemma":"M","translation":"سایز M / متوسط","partOfSpeech":"size_label","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,4,'learner','Ja.','بله.',13,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_4=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_julia,v_c_mia,'Welche Farbe?','چه رنگی؟','Julia fragt Mia nach der Farbe. Mia hört die neue Frage zuerst in einem sehr kurzen Dialog.','جولیا رنگ را از میا می پرسد. میا اول سوال جدید را در یک گفتگوی خیلی کوتاه می شنود.','story','mia-julia-clothing-store',3,14,110,2,'validated','{"relationship":"customer-clothing_store_salesperson","storyArc":"beginning-development-ending"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_julia,1,'character','Welche Farbe?','چه رنگی؟',14,NULL,NULL,NULL,NULL,'[{"surface":"Welche","lemma":"welcher","translation":"کدام / چه","partOfSpeech":"determiner","meaning":"چه / کدام","form":"feminine_nominative"},{"surface":"Farbe","lemma":"Farbe","translation":"رنگ","partOfSpeech":"noun","suffix":"?"}]','همان الگوی سوال را دوباره ببین','«Welche Farbe?» یعنی «چه رنگی؟». ساختار سوال شبیه «Welche Größe?» است.',NULL,NULL);
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,2,'learner','Rot, bitte.','قرمز، لطفا.',14,NULL,NULL,'rot bitte',NULL,'[{"surface":"Rot","lemma":"rot","translation":"قرمز","partOfSpeech":"adjective","suffix":","},{"surface":"bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_julia,3,'character','Rot?','قرمز؟',14,NULL,NULL,NULL,NULL,'[{"surface":"Rot","lemma":"rot","translation":"قرمز","partOfSpeech":"adjective","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,4,'learner','Ja.','بله.',14,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_8=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_julia,v_c_sara,'Rot, bitte','قرمز، لطفا','Sara antwortet jetzt sicher auf die Farbfrage und lernt Rot als eigenes Wortziel.','سارا حالا با اطمینان به سوال رنگ جواب می دهد و قرمز را به عنوان یک کلمه هدف یاد می گیرد.','story','sara-julia-clothing-store',4,14,110,3,'validated','{"relationship":"customer-clothing_store_salesperson","storyArc":"beginning-development-ending"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_julia,1,'character','Welche Farbe?','چه رنگی؟',14,NULL,NULL,NULL,NULL,'[{"surface":"Welche","lemma":"welcher","translation":"کدام / چه","partOfSpeech":"determiner","meaning":"چه / کدام","form":"feminine_nominative"},{"surface":"Farbe","lemma":"Farbe","translation":"رنگ","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,2,'learner','Rot, bitte.','قرمز، لطفا.',14,NULL,NULL,'rot bitte',NULL,'[{"surface":"Rot","lemma":"rot","translation":"قرمز","partOfSpeech":"adjective","suffix":","},{"surface":"bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_julia,3,'character','Rot.','قرمز.',14,NULL,NULL,NULL,NULL,'[{"surface":"Rot","lemma":"rot","translation":"قرمز","partOfSpeech":"adjective","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,4,'learner','Danke!','ممنون!',14,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_12=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_julia,v_c_sara,'T-Shirt in Größe M','تی شرت سایز M','Sara verbindet Kleidungsstück, Größe und Farbe in einem vollständigen kurzen Einkaufsgespräch.','سارا لباس، سایز و رنگ را در یک گفتگوی کوتاه و کامل خرید کنار هم می گذارد.','story','sara-julia-clothing-store',5,14,110,4,'validated','{"relationship":"customer-clothing_store_salesperson","storyArc":"beginning-development-ending"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_julia,1,'character','T-Shirt?','تی شرت؟',14,NULL,NULL,NULL,NULL,'[{"surface":"T-Shirt","lemma":"T-Shirt","translation":"تی شرت","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,2,'learner','Ja. Ich möchte ein T-Shirt.','بله. من یک تی شرت می خواهم.',14,NULL,NULL,'ja ich möchte ein t shirt',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"möchte","lemma":"möchten","translation":"خواستن / مایل بودن","partOfSpeech":"verb","meaning":"می خواهم","form":"present_1sg"},{"surface":"ein","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","meaning":"یک","form":"neuter_accusative"},{"surface":"T-Shirt","lemma":"T-Shirt","translation":"تی شرت","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_julia,3,'character','Welche Größe?','چه سایزی؟',14,NULL,NULL,NULL,NULL,'[{"surface":"Welche","lemma":"welcher","translation":"کدام / چه","partOfSpeech":"determiner","meaning":"چه / کدام","form":"feminine_nominative"},{"surface":"Größe","lemma":"Größe","translation":"اندازه / سایز","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,4,'learner','M, bitte.','سایز M، لطفا.',14,NULL,NULL,'m bitte','["em bitte"]','[{"surface":"M","lemma":"M","translation":"سایز M / متوسط","partOfSpeech":"size_label","suffix":","},{"surface":"bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_julia,5,'character','Welche Farbe?','چه رنگی؟',14,NULL,NULL,NULL,NULL,'[{"surface":"Welche","lemma":"welcher","translation":"کدام / چه","partOfSpeech":"determiner","meaning":"چه / کدام","form":"feminine_nominative"},{"surface":"Farbe","lemma":"Farbe","translation":"رنگ","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,6,'learner','Rot, bitte.','قرمز، لطفا.',14,NULL,NULL,'rot bitte',NULL,'[{"surface":"Rot","lemma":"rot","translation":"قرمز","partOfSpeech":"adjective","suffix":","},{"surface":"bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_18=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_welcher,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_groesse,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_size_m,'passive',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_bitte,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_welche_groesse,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_welcher,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_farbe,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_rot,'passive',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_bitte,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_welche_farbe,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_welcher,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_farbe,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_rot,'new',1,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_bitte,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_welche_farbe,'review',0,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_tshirt,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_moechten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_welcher,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_groesse,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_size_m,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_bitte,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_farbe,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_rot,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich_moechte_ein_tshirt,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_welche_groesse,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_welche_farbe,'review',0,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_welche_groesse,'عبارت جدید',NULL,13,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به سوال فروشنده گوش کن',NULL,13,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'سایز را بگو',NULL,13,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به فروشنده گوش کن',NULL,13,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'تایید کن',NULL,13,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,v_t_1,NULL,'معنی درست را انتخاب کن',NULL,13,'{"mode":"turn_translation","question":"«Welche Größe?» یعنی چی؟","choices":["چه سایزی؟","چه رنگی؟","چقدر قیمت دارد؟"],"correctIndex":0}',NULL);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_welche_farbe,'عبارت جدید',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به سوال رنگ گوش کن',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'رنگ را انتخاب کن',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به فروشنده گوش کن',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'تایید کن',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_5,NULL,'معنی درست را انتخاب کن',NULL,14,'{"mode":"turn_translation","question":"«Welche Farbe?» یعنی چی؟","choices":["چه رنگی؟","چه سایزی؟","کجاست؟"],"correctIndex":0}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,14,'{"source":"lesson_story","question":"میا چه رنگی را انتخاب می کند؟","choices":["قرمز","مشکی","آبی"],"correctIndex":0}',NULL);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_rot,'کلمه جدید',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_9,NULL,'به سوال رنگ گوش کن',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_10,NULL,'قرمز را انتخاب کن',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_11,NULL,'به فروشنده گوش کن',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_12,NULL,'تشکر کن',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,NULL,v_w_rot,'معنی درست را انتخاب کن',NULL,14,'{"mode":"word_translation","question":"Rot","choices":["قرمز","آبی","سبز"],"correctIndex":0}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'word_order',7,v_t_10,NULL,'جواب را به ترتیب درست بساز',NULL,14,'{"source":"turn_tokens","shuffle":true}',NULL);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_13,NULL,'به فروشنده گوش کن',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_14,NULL,'لباس را کامل بخواه',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_15,NULL,'به سوال سایز گوش کن',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_16,NULL,'سایز را بگو',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_17,NULL,'به سوال رنگ گوش کن',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_18,NULL,'رنگ را بگو',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,14,'{"source":"lesson_story","question":"سارا چه چیزی می خواهد؟","choices":["تی شرت قرمز سایز M","شلوار قرمز","تی شرت بدون سایز مشخص"],"correctIndex":0}',NULL);

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 022 lesson count.'; END IF;
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

CALL import_nova_series_022_v9();
DROP PROCEDURE IF EXISTS import_nova_series_022_v9;
-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 021
-- A1 > Einkaufen > Kleidung kaufen
-- Creates Module 05 skeleton when missing.
-- ===============================================================
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_series_021_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_021_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED; DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_prev_module BIGINT UNSIGNED; DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL; DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_sara BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_mia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_julia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_hallo BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_moechten BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_oder BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_bitte BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danke BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_tshirt BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_hose BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_moechte_ein_tshirt BIGINT UNSIGNED DEFAULT NULL;
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
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND sort_order=1 ORDER BY id LIMIT 1;
  SELECT id INTO v_prev_module FROM modules WHERE level_id=v_level AND sort_order=4 ORDER BY id LIMIT 1;
  IF v_prev_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 016 before Series 021.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_prev_module AND sort_order=5 ORDER BY id LIMIT 1;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 020 before Series 021.'; END IF;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=5 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN
    INSERT INTO modules(level_id,title,title_translation,description,description_translation,emoji,difficulty_min,difficulty_max,sort_order,status)
    VALUES(v_level,'Einkaufen','خرید کردن','Einfache Einkaufssituationen mit Kleidung, Größe, Farbe, Preis, Kasse und Umtausch.','موقعیت های ساده خرید لباس، اندازه، رنگ، قیمت، صندوق و تعویض کالا.','🛍️',13,15,5,'active');
    SET v_module=LAST_INSERT_ID();
  END IF;
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Kleidung kaufen','خرید لباس','Einfache Kleidungsstücke auswählen und danach fragen.','لباس های ساده را انتخاب کن و آن ها را بخواه.',NULL,13,13,1,'draft' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=1);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Größe & Farbe','اندازه و رنگ','Einfache Größen und Farben beim Kleidungskauf.','اندازه و رنگ ساده را هنگام خرید لباس استفاده کن.',NULL,13,14,2,'planned' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=2);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Was kostet das?','این چقدر قیمت دارد؟','Nach dem Preis einfacher Produkte fragen.','قیمت کالاهای ساده را بپرس.',NULL,14,14,3,'planned' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=3);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'An der Kasse','پای صندوق','Einfache Situationen beim Bezahlen an der Kasse.','موقعیت های ساده پرداخت پای صندوق.',NULL,14,15,4,'planned' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=4);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Umtauschen','تعویض کالا','Ein gekauftes Kleidungsstück einfach umtauschen.','یک لباس خریداری شده را به شکل ساده تعویض کن.',NULL,15,15,5,'planned' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=5);
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Module 05 Chapter 01 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Module 05 Chapter 01 must be empty before Series 021 import.'; END IF;
  SELECT id INTO v_c_sara FROM characters WHERE course_id=v_course AND name='Sara' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_sara IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Sara not found.'; END IF;
  SELECT id INTO v_c_mia FROM characters WHERE course_id=v_course AND name='Mia' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_mia IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Mia not found.'; END IF;
  SELECT id INTO v_c_julia FROM characters WHERE course_id=v_course AND name='Julia' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_julia IS NULL THEN INSERT INTO characters(course_id,name,gender,avatar_url,voice_key,profile,metadata) VALUES(v_course,'Julia','female',NULL,NULL,'{"role":"clothing_store_salesperson"}','{"context":"clothing_store","introducedInModule":5,"introducedInChapter":1}'); SET v_c_julia=LAST_INSERT_ID(); END IF;
  SELECT id INTO v_w_hallo FROM words WHERE course_id=v_course AND lemma='Hallo' AND part_of_speech='interjection' AND translation='سلام' ORDER BY id LIMIT 1;
  IF v_w_hallo IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Hallo not found.'; END IF;
  SELECT id INTO v_w_ich FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_ich IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ich not found.'; END IF;
  SELECT id INTO v_w_moechten FROM words WHERE course_id=v_course AND lemma='möchten' AND part_of_speech='verb' AND translation='خواستن / مایل بودن' ORDER BY id LIMIT 1;
  IF v_w_moechten IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word möchten not found.'; END IF;
  SELECT id INTO v_w_ein FROM words WHERE course_id=v_course AND lemma='ein' AND part_of_speech='article' AND translation='یک / حرف تعریف نامعین' ORDER BY id LIMIT 1;
  IF v_w_ein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ein not found.'; END IF;
  SELECT id INTO v_w_oder FROM words WHERE course_id=v_course AND lemma='oder' AND part_of_speech='conjunction' AND translation='یا' ORDER BY id LIMIT 1;
  IF v_w_oder IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word oder not found.'; END IF;
  SELECT id INTO v_w_bitte FROM words WHERE course_id=v_course AND lemma='bitte' AND part_of_speech='interjection' AND translation='لطفا / خواهش می کنم' ORDER BY id LIMIT 1;
  IF v_w_bitte IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word bitte not found.'; END IF;
  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;
  SELECT id INTO v_w_danke FROM words WHERE course_id=v_course AND lemma='danke' AND part_of_speech='interjection' AND translation='ممنون' ORDER BY id LIMIT 1;
  IF v_w_danke IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word danke not found.'; END IF;
  SELECT id INTO v_w_tshirt FROM words WHERE course_id=v_course AND lemma='T-Shirt' AND part_of_speech='noun' AND translation='تی شرت' ORDER BY id LIMIT 1;
  IF v_w_tshirt IS NULL THEN INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata) VALUES(v_course,'T-Shirt','T-Shirt','noun','تی شرت',13,'{"article":"das","plural":"T-Shirts"}','[{"text":"Hose","translation":"شلوار"},{"text":"Jacke","translation":"کاپشن / کت"},{"text":"Hemd","translation":"پیراهن"},{"text":"Kleid","translation":"پیراهن زنانه"},{"text":"Pullover","translation":"پلیور"}]',NULL,NULL,NULL,NULL,NULL); SET v_w_tshirt=LAST_INSERT_ID(); END IF;
  SELECT id INTO v_w_hose FROM words WHERE course_id=v_course AND lemma='Hose' AND part_of_speech='noun' AND translation='شلوار' ORDER BY id LIMIT 1;
  IF v_w_hose IS NULL THEN INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata) VALUES(v_course,'Hose','Hose','noun','شلوار',13,'{"article":"die","plural":"Hosen"}','[{"text":"T-Shirt","translation":"تی شرت"},{"text":"Jacke","translation":"کاپشن / کت"},{"text":"Rock","translation":"دامن"},{"text":"Kleid","translation":"پیراهن زنانه"},{"text":"Jeans","translation":"شلوار جین"}]',NULL,NULL,NULL,NULL,NULL); SET v_w_hose=LAST_INSERT_ID(); END IF;
  SELECT id INTO v_w_ich_moechte_ein_tshirt FROM words WHERE course_id=v_course AND lemma='Ich möchte ein T-Shirt.' AND part_of_speech='phrase' AND translation='من یک تی شرت می خواهم.' ORDER BY id LIMIT 1;
  IF v_w_ich_moechte_ein_tshirt IS NULL THEN INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata) VALUES(v_course,'Ich möchte ein T-Shirt.','Ich möchte ein T-Shirt.','phrase','من یک تی شرت می خواهم.',13,NULL,'[{"text":"Ich möchte Kaffee.","translation":"من قهوه می خواهم."},{"text":"Eine Fahrkarte, bitte.","translation":"یک بلیط، لطفا."},{"text":"Ich fahre mit dem Bus.","translation":"من با اتوبوس می روم."},{"text":"Ich höre Musik.","translation":"من موسیقی گوش می دهم."},{"text":"Ich bin im Büro.","translation":"من در دفتر کار هستم."}]',NULL,NULL,NULL,NULL,NULL); SET v_w_ich_moechte_ein_tshirt=LAST_INSERT_ID(); END IF;
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_julia,v_c_sara,'Sara wählt ein T-Shirt','سارا تی شرت را انتخاب می کند','Julia zeigt Sara zwei einfache Kleidungsstücke. Sara wählt das T-Shirt.','جولیا دو لباس ساده به سارا نشان می دهد. سارا تی شرت را انتخاب می کند.','story','sara-julia-clothing-store',1,13,105,1,'validated','{"relationship":"customer-clothing_store_salesperson","storyArc":"beginning-development-ending"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_julia,1,'character','Hallo! T-Shirt oder Hose?','سلام! تی شرت یا شلوار؟',13,NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"!"},{"surface":"T-Shirt","lemma":"T-Shirt","translation":"تی شرت","partOfSpeech":"noun"},{"surface":"oder","lemma":"oder","translation":"یا","partOfSpeech":"conjunction"},{"surface":"Hose","lemma":"Hose","translation":"شلوار","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,2,'learner','T-Shirt, bitte.','تی شرت، لطفا.',13,NULL,NULL,'t shirt bitte',NULL,'[{"surface":"T-Shirt","lemma":"T-Shirt","translation":"تی شرت","partOfSpeech":"noun","suffix":","},{"surface":"bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_julia,3,'character','Ja.','بله.',13,NULL,NULL,NULL,NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,4,'learner','Danke!','ممنون!',13,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_julia,v_c_mia,'Mia wählt eine Hose','میا شلوار را انتخاب می کند','Julia bietet Mia dieselben zwei Kleidungsstücke an. Mia wählt diesmal die Hose.','جولیا همان دو لباس را به میا پیشنهاد می دهد. این بار میا شلوار را انتخاب می کند.','story','mia-julia-clothing-store',1,13,105,2,'validated','{"relationship":"customer-clothing_store_salesperson","storyArc":"beginning-development-ending"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_julia,1,'character','T-Shirt oder Hose?','تی شرت یا شلوار؟',13,NULL,NULL,NULL,NULL,'[{"surface":"T-Shirt","lemma":"T-Shirt","translation":"تی شرت","partOfSpeech":"noun"},{"surface":"oder","lemma":"oder","translation":"یا","partOfSpeech":"conjunction"},{"surface":"Hose","lemma":"Hose","translation":"شلوار","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,2,'learner','Hose, bitte.','شلوار، لطفا.',13,NULL,NULL,'hose bitte',NULL,'[{"surface":"Hose","lemma":"Hose","translation":"شلوار","partOfSpeech":"noun","suffix":","},{"surface":"bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_julia,3,'character','Ja.','بله.',13,NULL,NULL,NULL,NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,4,'learner','Danke!','ممنون!',13,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_julia,v_c_sara,'Ich möchte ein T-Shirt','من یک تی شرت می خواهم','Sara benutzt jetzt den schon bekannten Wunsch mit einem neuen Kleidungsstück.','سارا حالا ساختار آشنای خواستن را با یک لباس جدید استفاده می کند.','story','sara-julia-clothing-store',2,13,105,3,'validated','{"relationship":"customer-clothing_store_salesperson","storyArc":"beginning-development-ending"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_julia,1,'character','T-Shirt?','تی شرت؟',13,NULL,NULL,NULL,NULL,'[{"surface":"T-Shirt","lemma":"T-Shirt","translation":"تی شرت","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,2,'learner','Ich möchte ein T-Shirt.','من یک تی شرت می خواهم.',13,NULL,NULL,'ich möchte ein t shirt',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"möchte","lemma":"möchten","translation":"خواستن / مایل بودن","partOfSpeech":"verb","meaning":"می خواهم","form":"present_1sg"},{"surface":"ein","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","meaning":"یک","form":"neuter_accusative"},{"surface":"T-Shirt","lemma":"T-Shirt","translation":"تی شرت","partOfSpeech":"noun","suffix":"."}]','الگوی آشنا را با لباس استفاده کن','قبلا «Ich möchte ...» را استفاده کرده ای. حالا می گویی «Ich möchte ein T-Shirt.» فعلا لازم نیست حالت دستوری «ein» را حفظ کنی.',NULL,NULL);
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_julia,3,'character','Ja.','بله.',13,NULL,NULL,NULL,NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,4,'learner','Danke!','ممنون!',13,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_julia,v_c_mia,'Ich möchte eine Hose','من یک شلوار می خواهم','Mia überträgt das bekannte Wunschmuster auf die Hose. Es wird kein neues Lernziel hinzugefügt.','میا همان الگوی آشنای خواستن را برای شلوار استفاده می کند. هدف آموزشی جدیدی اضافه نمی شود.','story','mia-julia-clothing-store',2,13,105,4,'validated','{"relationship":"customer-clothing_store_salesperson","storyArc":"beginning-development-ending"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_julia,1,'character','Hose?','شلوار؟',13,NULL,NULL,NULL,NULL,'[{"surface":"Hose","lemma":"Hose","translation":"شلوار","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,2,'learner','Ich möchte eine Hose.','من یک شلوار می خواهم.',13,NULL,NULL,'ich möchte eine hose',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"möchte","lemma":"möchten","translation":"خواستن / مایل بودن","partOfSpeech":"verb","meaning":"می خواهم","form":"present_1sg"},{"surface":"eine","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","meaning":"یک","form":"feminine_accusative"},{"surface":"Hose","lemma":"Hose","translation":"شلوار","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_julia,3,'character','Ja.','بله.',13,NULL,NULL,NULL,NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,4,'learner','Danke!','ممنون!',13,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_hallo,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_tshirt,'new',1,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_oder,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_hose,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_bitte,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_tshirt,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_oder,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_hose,'new',1,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_bitte,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_tshirt,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_moechten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich_moechte_ein_tshirt,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_hose,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_moechten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_danke,'review',0,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'new_word',1,NULL,v_w_tshirt,'کلمه جدید',NULL,13,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',2,v_t_1,NULL,'به دو گزینه گوش کن',NULL,13,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',3,v_t_2,NULL,'تی شرت را انتخاب کن',NULL,13,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',4,v_t_3,NULL,'به فروشنده گوش کن',NULL,13,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',5,v_t_4,NULL,'تشکر کن',NULL,13,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'meaning_choice',6,NULL,v_w_tshirt,'معنی درست را انتخاب کن',NULL,13,'{"mode":"word_translation","question":"T-Shirt","choices":["تی شرت","شلوار","کاپشن"],"correctIndex":0}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'new_word',1,NULL,v_w_hose,'کلمه جدید',NULL,13,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',2,v_t_5,NULL,'به دو گزینه گوش کن',NULL,13,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',3,v_t_6,NULL,'شلوار را انتخاب کن',NULL,13,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',4,v_t_7,NULL,'به فروشنده گوش کن',NULL,13,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',5,v_t_8,NULL,'تشکر کن',NULL,13,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'meaning_choice',6,NULL,v_w_hose,'معنی درست را انتخاب کن',NULL,13,'{"mode":"word_translation","question":"Hose","choices":["شلوار","تی شرت","دامن"],"correctIndex":0}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,13,'{"source":"lesson_story","question":"میا کدام لباس را انتخاب می کند؟","choices":["شلوار","تی شرت","کاپشن"],"correctIndex":0}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'new_word',1,NULL,v_w_ich_moechte_ein_tshirt,'عبارت جدید',NULL,13,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',2,v_t_9,NULL,'به فروشنده گوش کن',NULL,13,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',3,v_t_10,NULL,'با جمله کامل تی شرت بخواه',NULL,13,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',4,v_t_11,NULL,'به فروشنده گوش کن',NULL,13,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',5,v_t_12,NULL,'تشکر کن',NULL,13,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'meaning_choice',6,v_t_10,NULL,'معنی درست را انتخاب کن',NULL,13,'{"mode":"turn_translation","question":"«Ich möchte ein T-Shirt.» یعنی چی؟","choices":["من یک تی شرت می خواهم.","من یک شلوار می خواهم.","من با اتوبوس می روم."],"correctIndex":0}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'word_order',7,v_t_10,NULL,'جمله را به ترتیب درست بساز',NULL,13,'{"source":"turn_tokens","shuffle":true}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',1,v_t_13,NULL,'به فروشنده گوش کن',NULL,13,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',2,v_t_14,NULL,'این بار شلوار بخواه',NULL,13,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',3,v_t_15,NULL,'به فروشنده گوش کن',NULL,13,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',4,v_t_16,NULL,'تشکر کن',NULL,13,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'reading_comprehension',5,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,13,'{"source":"lesson_story","question":"میا چه لباسی می خواهد؟","choices":["شلوار","تی شرت","کاپشن"],"correctIndex":0}',NULL);
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter; IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 021 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id; IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)=''); IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  UPDATE chapters SET status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_series_021_v9();
DROP PROCEDURE IF EXISTS import_nova_series_021_v9;
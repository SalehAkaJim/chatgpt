-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 024
-- A1 > Einkaufen > An der Kasse
-- Canonical dependencies: Series 015 r3, Series 020 r2.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_024_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_024_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_sara BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_mia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_daniel BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_hallo BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_tshirt BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_hose BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_rot BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_size_m BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_das_pronoun BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_machen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_zwanzig BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_euro BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_mit BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_karte BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_mit_karte_bitte BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_bitte BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danke BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kasse BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_das_macht_zwanzig_euro BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_quittung BIGINT UNSIGNED DEFAULT NULL;
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
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=5 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 021 before Series 024.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=3 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=4 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Module 05 Chapter 04 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 023 before Series 024.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Module 05 Chapter 04 must be empty before Series 024 import.'; END IF;

  SELECT id INTO v_c_sara FROM characters WHERE course_id=v_course AND name='Sara' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_sara IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Sara not found.'; END IF;

  SELECT id INTO v_c_mia FROM characters WHERE course_id=v_course AND name='Mia' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_mia IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Mia not found.'; END IF;

  SELECT id INTO v_c_daniel FROM characters WHERE course_id=v_course AND name='Daniel' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_daniel IS NULL THEN
    INSERT INTO characters(course_id,name,gender,avatar_url,voice_key,profile,metadata)
    VALUES(v_course,'Daniel','male',NULL,NULL,'{"role":"cashier"}','{"context":"clothing_store_checkout","introducedInModule":5,"introducedInChapter":4}');
    SET v_c_daniel=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_hallo FROM words WHERE course_id=v_course AND lemma='Hallo' AND part_of_speech='interjection' AND translation='سلام' ORDER BY id LIMIT 1;
  IF v_w_hallo IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Hallo not found.'; END IF;

  SELECT id INTO v_w_tshirt FROM words WHERE course_id=v_course AND lemma='T-Shirt' AND part_of_speech='noun' AND translation='تی شرت' ORDER BY id LIMIT 1;
  IF v_w_tshirt IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word T-Shirt not found.'; END IF;

  SELECT id INTO v_w_hose FROM words WHERE course_id=v_course AND lemma='Hose' AND part_of_speech='noun' AND translation='شلوار' ORDER BY id LIMIT 1;
  IF v_w_hose IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Hose not found.'; END IF;

  SELECT id INTO v_w_rot FROM words WHERE course_id=v_course AND lemma='rot' AND part_of_speech='adjective' AND translation='قرمز' ORDER BY id LIMIT 1;
  IF v_w_rot IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word rot not found.'; END IF;

  SELECT id INTO v_w_size_m FROM words WHERE course_id=v_course AND lemma='M' AND part_of_speech='size_label' AND translation='سایز M / متوسط' ORDER BY id LIMIT 1;
  IF v_w_size_m IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word M not found.'; END IF;

  SELECT id INTO v_w_das_pronoun FROM words WHERE course_id=v_course AND lemma='das' AND part_of_speech='pronoun' AND translation='این / آن' ORDER BY id LIMIT 1;
  IF v_w_das_pronoun IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word das not found.'; END IF;

  SELECT id INTO v_w_machen FROM words WHERE course_id=v_course AND lemma='machen' AND part_of_speech='verb' AND translation='انجام دادن' ORDER BY id LIMIT 1;
  IF v_w_machen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word machen not found.'; END IF;

  SELECT id INTO v_w_zwanzig FROM words WHERE course_id=v_course AND lemma='zwanzig' AND part_of_speech='number' AND translation='بیست' ORDER BY id LIMIT 1;
  IF v_w_zwanzig IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word zwanzig not found.'; END IF;

  SELECT id INTO v_w_euro FROM words WHERE course_id=v_course AND lemma='Euro' AND part_of_speech='noun' AND translation='یورو' ORDER BY id LIMIT 1;
  IF v_w_euro IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Euro not found.'; END IF;

  SELECT id INTO v_w_mit FROM words WHERE course_id=v_course AND lemma='mit' AND part_of_speech='preposition' AND translation='با' ORDER BY id LIMIT 1;
  IF v_w_mit IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word mit not found.'; END IF;

  SELECT id INTO v_w_karte FROM words WHERE course_id=v_course AND lemma='Karte' AND part_of_speech='noun' AND translation='کارت' ORDER BY id LIMIT 1;
  IF v_w_karte IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Karte not found.'; END IF;

  SELECT id INTO v_w_mit_karte_bitte FROM words WHERE course_id=v_course AND lemma='Mit Karte, bitte.' AND part_of_speech='phrase' AND translation='با کارت، لطفا.' ORDER BY id LIMIT 1;
  IF v_w_mit_karte_bitte IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Mit Karte, bitte. not found.'; END IF;

  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;

  SELECT id INTO v_w_bitte FROM words WHERE course_id=v_course AND lemma='bitte' AND part_of_speech='interjection' AND translation='لطفا / خواهش می کنم' ORDER BY id LIMIT 1;
  IF v_w_bitte IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word bitte not found.'; END IF;

  SELECT id INTO v_w_danke FROM words WHERE course_id=v_course AND lemma='danke' AND part_of_speech='interjection' AND translation='ممنون' ORDER BY id LIMIT 1;
  IF v_w_danke IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word danke not found.'; END IF;

  SELECT id INTO v_w_kasse FROM words WHERE course_id=v_course AND lemma='Kasse' AND part_of_speech='noun' AND translation='صندوق' ORDER BY id LIMIT 1;
  IF v_w_kasse IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Kasse','Kasse','noun','صندوق',14,'{"article":"die","plural":"Kassen"}','[{"text":"Schalter","translation":"باجه"},{"text":"Theke","translation":"پیشخوان"},{"text":"Ausgang","translation":"خروجی"},{"text":"Eingang","translation":"ورودی"},{"text":"Regal","translation":"قفسه"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_kasse=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_das_macht_zwanzig_euro FROM words WHERE course_id=v_course AND lemma='Das macht zwanzig Euro.' AND part_of_speech='phrase' AND translation='جمعا می شود بیست یورو.' ORDER BY id LIMIT 1;
  IF v_w_das_macht_zwanzig_euro IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Das macht zwanzig Euro.','Das macht zwanzig Euro.','phrase','جمعا می شود بیست یورو.',15,NULL,'[{"text":"Zwanzig Euro.","translation":"بیست یورو."},{"text":"Was kostet das?","translation":"این چقدر قیمت دارد؟"},{"text":"Mit Karte, bitte.","translation":"با کارت، لطفا."},{"text":"Das ist teuer.","translation":"این گران است."},{"text":"Eine Fahrkarte, bitte.","translation":"یک بلیط، لطفا."}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_das_macht_zwanzig_euro=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_quittung FROM words WHERE course_id=v_course AND lemma='Quittung' AND part_of_speech='noun' AND translation='رسید' ORDER BY id LIMIT 1;
  IF v_w_quittung IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Quittung','Quittung','noun','رسید',15,'{"article":"die","plural":"Quittungen"}','[{"text":"Karte","translation":"کارت"},{"text":"Rechnung","translation":"صورتحساب"},{"text":"Fahrkarte","translation":"بلیط"},{"text":"Tüte","translation":"کیسه"},{"text":"Kasse","translation":"صندوق"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_quittung=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_daniel,v_c_sara,'An der Kasse','پای صندوق','Sara kommt mit ihrem T-Shirt zur Kasse und lernt das Wort Kasse im echten Einkaufskontext.','سارا با تی شرتش به صندوق می رسد و کلمه صندوق را در یک موقعیت واقعی خرید یاد می گیرد.','story','sara-daniel-checkout',1,14,105,1,'validated','{"relationship":"customer-cashier","storyArc":"beginning-development-ending"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_daniel,1,'character','Hallo!','سلام!',14,NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,2,'learner','Hallo!','سلام!',14,NULL,NULL,'hallo',NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_daniel,3,'character','Kasse.','صندوق.',14,NULL,NULL,NULL,NULL,'[{"surface":"Kasse","lemma":"Kasse","translation":"صندوق","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,4,'learner','Kasse?','صندوق؟',14,NULL,NULL,'kasse',NULL,'[{"surface":"Kasse","lemma":"Kasse","translation":"صندوق","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_daniel,5,'character','Ja.','بله.',14,NULL,NULL,NULL,NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,6,'learner','Danke!','ممنون!',14,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_6=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_daniel,v_c_mia,'Das macht zwanzig Euro','جمعا می شود بیست یورو','Mia hört an der Kasse eine typische Preisformulierung und bestätigt den Betrag.','میا پای صندوق یک عبارت معمول برای اعلام مبلغ را می شنود و مبلغ را تایید می کند.','story','mia-daniel-checkout',1,15,105,2,'validated','{"relationship":"customer-cashier","storyArc":"beginning-development-ending"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_daniel,1,'character','Das macht zwanzig Euro.','جمعا می شود بیست یورو.',15,NULL,NULL,NULL,NULL,'[{"surface":"Das","lemma":"das","translation":"این / آن","partOfSpeech":"pronoun","meaning":"این / جمع خرید"},{"surface":"macht","lemma":"machen","translation":"انجام دادن","partOfSpeech":"verb","meaning":"می شود / جمعا می شود","form":"present_3sg"},{"surface":"zwanzig","lemma":"zwanzig","translation":"بیست","partOfSpeech":"number"},{"surface":"Euro","lemma":"Euro","translation":"یورو","partOfSpeech":"noun","suffix":"."}]','عبارت صندوق را کامل یاد بگیر','پای صندوق «Das macht zwanzig Euro.» یعنی «جمعا می شود بیست یورو». فعلا لازم نیست کاربرد «machen» در این عبارت را جدا حفظ کنی.',NULL,NULL);
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,2,'learner','Zwanzig Euro?','بیست یورو؟',15,NULL,NULL,'zwanzig euro',NULL,'[{"surface":"Zwanzig","lemma":"zwanzig","translation":"بیست","partOfSpeech":"number"},{"surface":"Euro","lemma":"Euro","translation":"یورو","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_daniel,3,'character','Ja.','بله.',15,NULL,NULL,NULL,NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,4,'learner','Mit Karte, bitte.','با کارت، لطفا.',15,NULL,NULL,'mit karte bitte',NULL,'[{"surface":"Mit","lemma":"mit","translation":"با","partOfSpeech":"preposition"},{"surface":"Karte","lemma":"Karte","translation":"کارت","partOfSpeech":"noun","suffix":","},{"surface":"bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_10=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_daniel,v_c_sara,'Quittung?','رسید؟','Daniel fragt Sara nach der Quittung. Sara möchte sie und bedankt sich.','دانیل از سارا درباره رسید می پرسد. سارا رسید را می خواهد و تشکر می کند.','story','sara-daniel-checkout',2,15,105,3,'validated','{"relationship":"customer-cashier","storyArc":"beginning-development-ending"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_daniel,1,'character','Quittung?','رسید؟',15,NULL,NULL,NULL,NULL,'[{"surface":"Quittung","lemma":"Quittung","translation":"رسید","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,2,'learner','Ja, bitte.','بله، لطفا.',15,NULL,NULL,'ja bitte',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_daniel,3,'character','Quittung.','رسید.',15,NULL,NULL,NULL,NULL,'[{"surface":"Quittung","lemma":"Quittung","translation":"رسید","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,4,'learner','Danke!','ممنون!',15,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_14=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_daniel,v_c_sara,'Sara bezahlt','سارا پرداخت می کند','Sara bringt ihr rotes T-Shirt in Größe M zur Kasse, hört den Endpreis, zahlt mit Karte und nimmt die Quittung.','سارا تی شرت قرمز سایز M را به صندوق می برد، مبلغ نهایی را می شنود، با کارت پرداخت می کند و رسید را می گیرد.','story','sara-daniel-checkout',3,15,108,4,'validated','{"relationship":"customer-cashier","storyArc":"beginning-development-ending"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_daniel,1,'character','T-Shirt?','تی شرت؟',15,NULL,NULL,NULL,NULL,'[{"surface":"T-Shirt","lemma":"T-Shirt","translation":"تی شرت","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,2,'learner','Ja. Rot, M.','بله. قرمز، سایز M.',15,NULL,NULL,'ja rot m','["ja rot em"]','[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Rot","lemma":"rot","translation":"قرمز","partOfSpeech":"adjective","suffix":","},{"surface":"M","lemma":"M","translation":"سایز M / متوسط","partOfSpeech":"size_label","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_daniel,3,'character','Das macht zwanzig Euro.','جمعا می شود بیست یورو.',15,NULL,NULL,NULL,NULL,'[{"surface":"Das","lemma":"das","translation":"این / آن","partOfSpeech":"pronoun","meaning":"این / جمع خرید"},{"surface":"macht","lemma":"machen","translation":"انجام دادن","partOfSpeech":"verb","meaning":"می شود / جمعا می شود","form":"present_3sg"},{"surface":"zwanzig","lemma":"zwanzig","translation":"بیست","partOfSpeech":"number"},{"surface":"Euro","lemma":"Euro","translation":"یورو","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,4,'learner','Mit Karte, bitte.','با کارت، لطفا.',15,NULL,NULL,'mit karte bitte',NULL,'[{"surface":"Mit","lemma":"mit","translation":"با","partOfSpeech":"preposition"},{"surface":"Karte","lemma":"Karte","translation":"کارت","partOfSpeech":"noun","suffix":","},{"surface":"bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_daniel,5,'character','Quittung?','رسید؟',15,NULL,NULL,NULL,NULL,'[{"surface":"Quittung","lemma":"Quittung","translation":"رسید","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,6,'learner','Ja, bitte.','بله، لطفا.',15,NULL,NULL,'ja bitte',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_20=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_daniel,7,'character','Danke!','ممنون!',15,NULL,NULL,NULL,NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_21=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,8,'learner','Danke!','ممنون!',15,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_22=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_hallo,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_kasse,'new',1,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_danke,'review',0,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_das_pronoun,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_machen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_zwanzig,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_euro,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_mit,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_karte,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_bitte,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_das_macht_zwanzig_euro,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_quittung,'new',1,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_bitte,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_danke,'review',0,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_tshirt,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_rot,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_size_m,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_das_pronoun,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_machen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_zwanzig,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_euro,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_mit,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_karte,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_bitte,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_quittung,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_danke,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_das_macht_zwanzig_euro,'review',0,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_kasse,'کلمه جدید',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به صندوقدار گوش کن',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'سلام کن',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به کلمه جدید گوش کن',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'کلمه صندوق را تکرار کن',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',6,v_t_5,NULL,'به صندوقدار گوش کن',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',7,v_t_6,NULL,'تشکر کن',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',8,NULL,v_w_kasse,'معنی درست را انتخاب کن',NULL,14,'{"mode":"word_translation","question":"Kasse","choices":["صندوق","باجه بلیط","قفسه"],"correctIndex":0}',NULL);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_das_macht_zwanzig_euro,'عبارت جدید',NULL,15,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_7,NULL,'به مبلغ نهایی گوش کن',NULL,15,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_8,NULL,'مبلغ را تکرار کن',NULL,15,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_9,NULL,'به صندوقدار گوش کن',NULL,15,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_10,NULL,'روش پرداخت را بگو',NULL,15,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_7,NULL,'معنی درست را انتخاب کن',NULL,15,'{"mode":"turn_translation","question":"«Das macht zwanzig Euro.» یعنی چی؟","choices":["جمعا می شود بیست یورو.","این گران است.","این چقدر قیمت دارد؟"],"correctIndex":0}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',7,v_t_8,NULL,'مبلغ را به ترتیب درست بساز',NULL,15,'{"source":"turn_tokens","shuffle":true}',NULL);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_quittung,'کلمه جدید',NULL,15,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_11,NULL,'به سوال صندوقدار گوش کن',NULL,15,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_12,NULL,'رسید را قبول کن',NULL,15,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_13,NULL,'دوباره به کلمه رسید گوش کن',NULL,15,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_14,NULL,'تشکر کن',NULL,15,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,NULL,v_w_quittung,'معنی درست را انتخاب کن',NULL,15,'{"mode":"word_translation","question":"Quittung","choices":["رسید","کارت","صندوق"],"correctIndex":0}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,15,'{"source":"lesson_story","question":"سارا رسید را می خواهد؟","choices":["بله","نه","مشخص نیست"],"correctIndex":0}',NULL);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_15,NULL,'به صندوقدار گوش کن',NULL,15,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_16,NULL,'لباس را تایید کن',NULL,15,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_17,NULL,'به مبلغ نهایی گوش کن',NULL,15,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_18,NULL,'با کارت پرداخت کن',NULL,15,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_19,NULL,'به سوال رسید گوش کن',NULL,15,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_20,NULL,'رسید را قبول کن',NULL,15,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',7,v_t_21,NULL,'به صندوقدار گوش کن',NULL,15,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',8,v_t_22,NULL,'تشکر کن',NULL,15,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',9,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,15,'{"source":"lesson_story","question":"سارا چطور پرداخت می کند؟","choices":["با کارت","نقدی","پرداخت نمی کند"],"correctIndex":0}',NULL);

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 024 lesson count.'; END IF;
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

CALL import_nova_series_024_v9();
DROP PROCEDURE IF EXISTS import_nova_series_024_v9;
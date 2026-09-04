-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 023
-- A1 > Einkaufen > Was kostet das?
-- Canonical dependencies: Series 015 r3, Series 020 r2.
-- Includes dependency, status-enum and lesson_words duplicate QA.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_023_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_023_v9()
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
  DECLARE v_w_was BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kosten BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_zwanzig BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_euro BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_tshirt BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_hose BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_oder BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_welcher BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_groesse BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_size_m BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_farbe BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_rot BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_bitte BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danke BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_das_pronoun BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_was_kostet_das BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_zwanzig_euro BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_teuer BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_das_ist_teuer BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_nein BIGINT UNSIGNED DEFAULT NULL;
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
  DECLARE v_t_23 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_24 BIGINT UNSIGNED DEFAULT NULL;

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
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 021 before Series 023.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=2 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Module 05 Chapter 03 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 022 before Series 023.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Module 05 Chapter 03 must be empty before Series 023 import.'; END IF;

  SELECT id INTO v_c_julia FROM characters WHERE course_id=v_course AND name='Julia' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_julia IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Julia not found.'; END IF;

  SELECT id INTO v_c_sara FROM characters WHERE course_id=v_course AND name='Sara' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_sara IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Sara not found.'; END IF;

  SELECT id INTO v_c_mia FROM characters WHERE course_id=v_course AND name='Mia' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_mia IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Mia not found.'; END IF;

  SELECT id INTO v_w_hallo FROM words WHERE course_id=v_course AND lemma='Hallo' AND part_of_speech='interjection' AND translation='سلام' ORDER BY id LIMIT 1;
  IF v_w_hallo IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Hallo not found.'; END IF;

  SELECT id INTO v_w_was FROM words WHERE course_id=v_course AND lemma='was' AND part_of_speech='pronoun' AND translation='چی / چه' ORDER BY id LIMIT 1;
  IF v_w_was IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word was not found.'; END IF;

  SELECT id INTO v_w_kosten FROM words WHERE course_id=v_course AND lemma='kosten' AND part_of_speech='verb' AND translation='قیمت داشتن' ORDER BY id LIMIT 1;
  IF v_w_kosten IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word kosten not found.'; END IF;

  SELECT id INTO v_w_zwanzig FROM words WHERE course_id=v_course AND lemma='zwanzig' AND part_of_speech='number' AND translation='بیست' ORDER BY id LIMIT 1;
  IF v_w_zwanzig IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word zwanzig not found.'; END IF;

  SELECT id INTO v_w_euro FROM words WHERE course_id=v_course AND lemma='Euro' AND part_of_speech='noun' AND translation='یورو' ORDER BY id LIMIT 1;
  IF v_w_euro IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Euro not found.'; END IF;

  SELECT id INTO v_w_sein FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_sein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word sein not found.'; END IF;

  SELECT id INTO v_w_tshirt FROM words WHERE course_id=v_course AND lemma='T-Shirt' AND part_of_speech='noun' AND translation='تی شرت' ORDER BY id LIMIT 1;
  IF v_w_tshirt IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word T-Shirt not found.'; END IF;

  SELECT id INTO v_w_hose FROM words WHERE course_id=v_course AND lemma='Hose' AND part_of_speech='noun' AND translation='شلوار' ORDER BY id LIMIT 1;
  IF v_w_hose IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Hose not found.'; END IF;

  SELECT id INTO v_w_oder FROM words WHERE course_id=v_course AND lemma='oder' AND part_of_speech='conjunction' AND translation='یا' ORDER BY id LIMIT 1;
  IF v_w_oder IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word oder not found.'; END IF;

  SELECT id INTO v_w_welcher FROM words WHERE course_id=v_course AND lemma='welcher' AND part_of_speech='determiner' AND translation='کدام / چه' ORDER BY id LIMIT 1;
  IF v_w_welcher IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word welcher not found.'; END IF;

  SELECT id INTO v_w_groesse FROM words WHERE course_id=v_course AND lemma='Größe' AND part_of_speech='noun' AND translation='اندازه / سایز' ORDER BY id LIMIT 1;
  IF v_w_groesse IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Größe not found.'; END IF;

  SELECT id INTO v_w_size_m FROM words WHERE course_id=v_course AND lemma='M' AND part_of_speech='size_label' AND translation='سایز M / متوسط' ORDER BY id LIMIT 1;
  IF v_w_size_m IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word M not found.'; END IF;

  SELECT id INTO v_w_farbe FROM words WHERE course_id=v_course AND lemma='Farbe' AND part_of_speech='noun' AND translation='رنگ' ORDER BY id LIMIT 1;
  IF v_w_farbe IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Farbe not found.'; END IF;

  SELECT id INTO v_w_rot FROM words WHERE course_id=v_course AND lemma='rot' AND part_of_speech='adjective' AND translation='قرمز' ORDER BY id LIMIT 1;
  IF v_w_rot IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word rot not found.'; END IF;

  SELECT id INTO v_w_bitte FROM words WHERE course_id=v_course AND lemma='bitte' AND part_of_speech='interjection' AND translation='لطفا / خواهش می کنم' ORDER BY id LIMIT 1;
  IF v_w_bitte IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word bitte not found.'; END IF;

  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;

  SELECT id INTO v_w_danke FROM words WHERE course_id=v_course AND lemma='danke' AND part_of_speech='interjection' AND translation='ممنون' ORDER BY id LIMIT 1;
  IF v_w_danke IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word danke not found.'; END IF;

  SELECT id INTO v_w_das_pronoun FROM words WHERE course_id=v_course AND lemma='das' AND part_of_speech='pronoun' AND translation='این / آن' ORDER BY id LIMIT 1;
  IF v_w_das_pronoun IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'das','das','pronoun','این / آن',14,'{"type":"demonstrative_pronoun","basicMeaning":"this / that"}','[{"text":"dies","translation":"این"},{"text":"es","translation":"آن / این"},{"text":"hier","translation":"اینجا"},{"text":"dort","translation":"آنجا"},{"text":"was","translation":"چی / چه"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_das_pronoun=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_was_kostet_das FROM words WHERE course_id=v_course AND lemma='Was kostet das?' AND part_of_speech='phrase' AND translation='این چقدر قیمت دارد؟' ORDER BY id LIMIT 1;
  IF v_w_was_kostet_das IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Was kostet das?','Was kostet das?','phrase','این چقدر قیمت دارد؟',14,NULL,'[{"text":"Was kostet die Fahrkarte?","translation":"بلیط چقدر قیمت دارد؟"},{"text":"Welche Größe?","translation":"چه سایزی؟"},{"text":"Welche Farbe?","translation":"چه رنگی؟"},{"text":"Wo ist Gleis drei?","translation":"سکوی سه کجاست؟"},{"text":"Hast du Zeit?","translation":"وقت داری؟"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_was_kostet_das=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_zwanzig_euro FROM words WHERE course_id=v_course AND lemma='Zwanzig Euro.' AND part_of_speech='phrase' AND translation='بیست یورو.' ORDER BY id LIMIT 1;
  IF v_w_zwanzig_euro IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Zwanzig Euro.','Zwanzig Euro.','phrase','بیست یورو.',14,NULL,'[{"text":"Drei Euro.","translation":"سه یورو."},{"text":"Am Samstag.","translation":"شنبه."},{"text":"Hier, bitte.","translation":"همین جا، لطفا."},{"text":"Rot, bitte.","translation":"قرمز، لطفا."},{"text":"M, bitte.","translation":"سایز M، لطفا."}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_zwanzig_euro=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_teuer FROM words WHERE course_id=v_course AND lemma='teuer' AND part_of_speech='adjective' AND translation='گران' ORDER BY id LIMIT 1;
  IF v_w_teuer IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'teuer','teuer','adjective','گران',14,NULL,'[{"text":"billig","translation":"ارزان"},{"text":"groß","translation":"بزرگ"},{"text":"klein","translation":"کوچک"},{"text":"gut","translation":"خوب"},{"text":"neu","translation":"نو / جدید"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_teuer=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_das_ist_teuer FROM words WHERE course_id=v_course AND lemma='Das ist teuer.' AND part_of_speech='phrase' AND translation='این گران است.' ORDER BY id LIMIT 1;
  IF v_w_das_ist_teuer IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Das ist teuer.','Das ist teuer.','phrase','این گران است.',14,NULL,'[{"text":"Das ist gut.","translation":"این خوب است."},{"text":"Zwanzig Euro.","translation":"بیست یورو."},{"text":"Hier, bitte.","translation":"همین جا، لطفا."},{"text":"Ich bin im Büro.","translation":"من در دفتر کار هستم."},{"text":"Ich möchte ein T-Shirt.","translation":"من یک تی شرت می خواهم."}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_das_ist_teuer=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_nein FROM words WHERE course_id=v_course AND lemma='nein' AND part_of_speech='interjection' AND translation='نه' ORDER BY id LIMIT 1;
  IF v_w_nein IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'nein','nein','interjection','نه',14,NULL,'[{"text":"ja","translation":"بله / آره"},{"text":"bitte","translation":"لطفا / خواهش می کنم"},{"text":"danke","translation":"ممنون"},{"text":"gut","translation":"خوب"},{"text":"hallo","translation":"سلام"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_nein=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_julia,v_c_sara,'Was kostet das?','این چقدر قیمت دارد؟','Sara sieht ein T-Shirt und fragt Julia zum ersten Mal mit der allgemeinen Preisfrage.','سارا یک تی شرت می بیند و برای اولین بار با سوال عمومی قیمت از جولیا می پرسد.','story','sara-julia-clothing-store',6,14,100,1,'validated','{"relationship":"customer-clothing_store_salesperson","storyArc":"beginning-development-ending"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_julia,1,'character','T-Shirt?','تی شرت؟',14,NULL,NULL,NULL,NULL,'[{"surface":"T-Shirt","lemma":"T-Shirt","translation":"تی شرت","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,2,'learner','Ja. Was kostet das?','بله. این چقدر قیمت دارد؟',14,NULL,NULL,'ja was kostet das',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Was","lemma":"was","translation":"چی / چه","partOfSpeech":"pronoun","meaning":"در این سوال: چقدر"},{"surface":"kostet","lemma":"kosten","translation":"قیمت داشتن","partOfSpeech":"verb","meaning":"قیمت دارد","form":"present_3sg"},{"surface":"das","lemma":"das","translation":"این / آن","partOfSpeech":"pronoun","meaning":"این","suffix":"?"}]','سوال قیمت را عمومی کن','قبلا قیمت بلیط را پرسیدی. «Was kostet das?» یعنی «این چقدر قیمت دارد؟» و برای چیزهای مختلف قابل استفاده است.',NULL,NULL);
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_julia,3,'character','Zwanzig Euro.','بیست یورو.',14,NULL,NULL,NULL,NULL,'[{"surface":"Zwanzig","lemma":"zwanzig","translation":"بیست","partOfSpeech":"number"},{"surface":"Euro","lemma":"Euro","translation":"یورو","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,4,'learner','Danke!','ممنون!',14,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_4=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_julia,v_c_mia,'Zwanzig Euro','بیست یورو','Mia fragt nach einer Hose. Julia nennt den Preis, und Mia wiederholt ihn.','میا درباره یک شلوار قیمت می پرسد. جولیا قیمت را می گوید و میا آن را تکرار می کند.','story','mia-julia-clothing-store',4,14,108,2,'validated','{"relationship":"customer-clothing_store_salesperson","storyArc":"beginning-development-ending"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_julia,1,'character','Hose?','شلوار؟',14,NULL,NULL,NULL,NULL,'[{"surface":"Hose","lemma":"Hose","translation":"شلوار","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,2,'learner','Ja. Was kostet das?','بله. این چقدر قیمت دارد؟',14,NULL,NULL,'ja was kostet das',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Was","lemma":"was","translation":"چی / چه","partOfSpeech":"pronoun","meaning":"در این سوال: چقدر"},{"surface":"kostet","lemma":"kosten","translation":"قیمت داشتن","partOfSpeech":"verb","meaning":"قیمت دارد","form":"present_3sg"},{"surface":"das","lemma":"das","translation":"این / آن","partOfSpeech":"pronoun","meaning":"این","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_julia,3,'character','Zwanzig Euro.','بیست یورو.',14,NULL,NULL,NULL,NULL,'[{"surface":"Zwanzig","lemma":"zwanzig","translation":"بیست","partOfSpeech":"number"},{"surface":"Euro","lemma":"Euro","translation":"یورو","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,4,'learner','Zwanzig Euro?','بیست یورو؟',14,NULL,NULL,'zwanzig euro',NULL,'[{"surface":"Zwanzig","lemma":"zwanzig","translation":"بیست","partOfSpeech":"number"},{"surface":"Euro","lemma":"Euro","translation":"یورو","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_julia,5,'character','Ja.','بله.',14,NULL,NULL,NULL,NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,6,'learner','Danke!','ممنون!',14,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_10=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_julia,v_c_sara,'Das ist teuer','این گران است','Sara hört den Preis und reagiert mit einem kurzen neuen Satz.','سارا قیمت را می شنود و با یک جمله کوتاه جدید واکنش نشان می دهد.','story','sara-julia-clothing-store',7,14,100,3,'validated','{"relationship":"customer-clothing_store_salesperson","storyArc":"beginning-development-ending"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_julia,1,'character','Zwanzig Euro.','بیست یورو.',14,NULL,NULL,NULL,NULL,'[{"surface":"Zwanzig","lemma":"zwanzig","translation":"بیست","partOfSpeech":"number"},{"surface":"Euro","lemma":"Euro","translation":"یورو","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,2,'learner','Das ist teuer.','این گران است.',14,NULL,NULL,'das ist teuer',NULL,'[{"surface":"Das","lemma":"das","translation":"این / آن","partOfSpeech":"pronoun","meaning":"این"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است","form":"present_3sg"},{"surface":"teuer","lemma":"teuer","translation":"گران","partOfSpeech":"adjective","suffix":"."}]','یک واکنش کوتاه به قیمت','«Das ist teuer.» یعنی «این گران است». فعلا جمله را به صورت یک عبارت کاربردی یاد بگیر.',NULL,NULL);
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_julia,3,'character','Ja.','بله.',14,NULL,NULL,NULL,NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,4,'learner','T-Shirt, bitte.','تی شرت، لطفا.',14,NULL,NULL,'t shirt bitte',NULL,'[{"surface":"T-Shirt","lemma":"T-Shirt","translation":"تی شرت","partOfSpeech":"noun","suffix":","},{"surface":"bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_14=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_julia,v_c_mia,'Zu teuer','خیلی گران','Mia wählt ein T-Shirt mit Größe und Farbe, fragt nach dem Preis und entscheidet sich am Ende gegen den Kauf.','میا تی شرت را با سایز و رنگ انتخاب می کند، قیمت را می پرسد و در پایان از خرید منصرف می شود.','story','mia-julia-clothing-store',5,14,132,4,'validated','{"relationship":"customer-clothing_store_salesperson","storyArc":"beginning-development-ending"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_julia,1,'character','T-Shirt oder Hose?','تی شرت یا شلوار؟',14,NULL,NULL,NULL,NULL,'[{"surface":"T-Shirt","lemma":"T-Shirt","translation":"تی شرت","partOfSpeech":"noun"},{"surface":"oder","lemma":"oder","translation":"یا","partOfSpeech":"conjunction"},{"surface":"Hose","lemma":"Hose","translation":"شلوار","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,2,'learner','T-Shirt, bitte.','تی شرت، لطفا.',14,NULL,NULL,'t shirt bitte',NULL,'[{"surface":"T-Shirt","lemma":"T-Shirt","translation":"تی شرت","partOfSpeech":"noun","suffix":","},{"surface":"bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_julia,3,'character','Welche Größe?','چه سایزی؟',14,NULL,NULL,NULL,NULL,'[{"surface":"Welche","lemma":"welcher","translation":"کدام / چه","partOfSpeech":"determiner","meaning":"چه / کدام","form":"feminine_nominative"},{"surface":"Größe","lemma":"Größe","translation":"اندازه / سایز","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,4,'learner','M, bitte.','سایز M، لطفا.',14,NULL,NULL,'m bitte','["em bitte"]','[{"surface":"M","lemma":"M","translation":"سایز M / متوسط","partOfSpeech":"size_label","suffix":","},{"surface":"bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_julia,5,'character','Welche Farbe?','چه رنگی؟',14,NULL,NULL,NULL,NULL,'[{"surface":"Welche","lemma":"welcher","translation":"کدام / چه","partOfSpeech":"determiner","meaning":"چه / کدام","form":"feminine_nominative"},{"surface":"Farbe","lemma":"Farbe","translation":"رنگ","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,6,'learner','Rot, bitte.','قرمز، لطفا.',14,NULL,NULL,'rot bitte',NULL,'[{"surface":"Rot","lemma":"rot","translation":"قرمز","partOfSpeech":"adjective","suffix":","},{"surface":"bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_20=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_julia,7,'character','Zwanzig Euro.','بیست یورو.',14,NULL,NULL,NULL,NULL,'[{"surface":"Zwanzig","lemma":"zwanzig","translation":"بیست","partOfSpeech":"number"},{"surface":"Euro","lemma":"Euro","translation":"یورو","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_21=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,8,'learner','Das ist teuer.','این گران است.',14,NULL,NULL,'das ist teuer',NULL,'[{"surface":"Das","lemma":"das","translation":"این / آن","partOfSpeech":"pronoun","meaning":"این"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است","form":"present_3sg"},{"surface":"teuer","lemma":"teuer","translation":"گران","partOfSpeech":"adjective","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_22=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_julia,9,'character','T-Shirt?','تی شرت؟',14,NULL,NULL,NULL,NULL,'[{"surface":"T-Shirt","lemma":"T-Shirt","translation":"تی شرت","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_23=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,10,'learner','Nein, danke.','نه، ممنون.',14,NULL,NULL,'nein danke',NULL,'[{"surface":"Nein","lemma":"nein","translation":"نه","partOfSpeech":"interjection","suffix":","},{"surface":"danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_24=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_tshirt,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_was,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_kosten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_das_pronoun,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_zwanzig,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_euro,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_was_kostet_das,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_hose,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_was,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_kosten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_das_pronoun,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_zwanzig,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_euro,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_was_kostet_das,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_zwanzig_euro,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_zwanzig,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_euro,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_das_pronoun,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_sein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_teuer,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_tshirt,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_bitte,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_zwanzig_euro,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_das_ist_teuer,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_tshirt,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_oder,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_hose,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_bitte,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_welcher,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_groesse,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_size_m,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_farbe,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_rot,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_zwanzig,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_euro,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_das_pronoun,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_sein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_teuer,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_nein,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_was_kostet_das,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_zwanzig_euro,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_das_ist_teuer,'review',0,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_was_kostet_das,'عبارت جدید',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به فروشنده گوش کن',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'قیمت را بپرس',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به قیمت گوش کن',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'تشکر کن',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,v_t_2,NULL,'معنی درست را انتخاب کن',NULL,14,'{"mode":"turn_translation","question":"«Was kostet das?» یعنی چی؟","choices":["این چقدر قیمت دارد؟","چه سایزی؟","چه رنگی؟"],"correctIndex":0}',NULL);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_zwanzig_euro,'عبارت جدید',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به فروشنده گوش کن',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'قیمت را بپرس',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به قیمت گوش کن',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'قیمت را تکرار کن',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',6,v_t_9,NULL,'به فروشنده گوش کن',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',7,v_t_10,NULL,'تشکر کن',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',8,v_t_7,NULL,'معنی درست را انتخاب کن',NULL,14,'{"mode":"turn_translation","question":"«Zwanzig Euro.» یعنی چی؟","choices":["بیست یورو.","سه یورو.","بیست دلار."],"correctIndex":0}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',9,v_t_8,NULL,'قیمت را به ترتیب درست بساز',NULL,14,'{"source":"turn_tokens","shuffle":true}',NULL);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_das_ist_teuer,'عبارت جدید',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_11,NULL,'به قیمت گوش کن',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_12,NULL,'به قیمت واکنش نشان بده',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_13,NULL,'به فروشنده گوش کن',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_14,NULL,'تی شرت را انتخاب کن',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_12,NULL,'معنی درست را انتخاب کن',NULL,14,'{"mode":"turn_translation","question":"«Das ist teuer.» یعنی چی؟","choices":["این گران است.","این قرمز است.","این بزرگ است."],"correctIndex":0}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,14,'{"source":"lesson_story","question":"سارا درباره قیمت چه نظری دارد؟","choices":["گران است.","ارزان است.","قیمت را نمی داند."],"correctIndex":0}',NULL);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_15,NULL,'به دو گزینه گوش کن',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_16,NULL,'تی شرت را انتخاب کن',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_17,NULL,'به سوال سایز گوش کن',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_18,NULL,'سایز را بگو',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_19,NULL,'به سوال رنگ گوش کن',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_20,NULL,'رنگ را بگو',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',7,v_t_21,NULL,'به قیمت گوش کن',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',8,v_t_22,NULL,'به قیمت واکنش نشان بده',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',9,v_t_23,NULL,'به فروشنده گوش کن',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',10,v_t_24,NULL,'خرید را رد کن',NULL,14,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',11,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,14,'{"source":"lesson_story","question":"چرا میا در پایان تی شرت را نمی خرد؟","choices":["چون گران است.","چون قرمز نیست.","چون سایز ندارد."],"correctIndex":0}',NULL);

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 023 lesson count.'; END IF;
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

CALL import_nova_series_023_v9();
DROP PROCEDURE IF EXISTS import_nova_series_023_v9;
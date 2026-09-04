-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 073
-- A2 > Reisen & Verkehr > Wir müssen umsteigen
-- Requires Series 072; continues lena-ben-a2-train-trip orders 9-12.
-- ===============================================================
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_series_073_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_073_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_lena BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_ben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wir BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_muessen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_der BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_zug BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_haben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_verspaetung BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_von BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_welcher BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gleis BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_drei BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_fahren BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_der_zug_hat_verspaetung BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_von_welchem_gleis_faehrt_der_zug BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_der_zug_faehrt_von_gleis_drei BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_umsteigen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wir_muessen_umsteigen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wir_steigen_um BIGINT UNSIGNED DEFAULT NULL;
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
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=7 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 071 before Series 073.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=2 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 07 Chapter 03 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 072 before Series 073.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_prev_chapter AND status IN ('validated','complete');
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 072 Chapter must be validated/complete before Series 073.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 07 Chapter 03 must be empty before Series 073 import.'; END IF;
  SELECT id INTO v_c_lena FROM characters WHERE course_id=v_course AND name='Lena' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_lena IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Lena not found.'; END IF;
  SELECT id INTO v_c_ben FROM characters WHERE course_id=v_course AND name='Ben' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_ben IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Ben not found.'; END IF;
  SELECT id INTO v_w_wir FROM words WHERE course_id=v_course AND lemma='wir' AND part_of_speech='pronoun' AND translation='ما' ORDER BY id LIMIT 1;
  IF v_w_wir IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word wir not found.'; END IF;
  SELECT id INTO v_w_muessen FROM words WHERE course_id=v_course AND lemma='müssen' AND part_of_speech='verb' AND translation='مجبور بودن / باید' ORDER BY id LIMIT 1;
  IF v_w_muessen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word müssen not found.'; END IF;
  SELECT id INTO v_w_der FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_der IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word der not found.'; END IF;
  SELECT id INTO v_w_zug FROM words WHERE course_id=v_course AND lemma='Zug' AND part_of_speech='noun' AND translation='قطار' ORDER BY id LIMIT 1;
  IF v_w_zug IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Zug not found.'; END IF;
  SELECT id INTO v_w_haben FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_haben IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word haben not found.'; END IF;
  SELECT id INTO v_w_verspaetung FROM words WHERE course_id=v_course AND lemma='Verspätung' AND part_of_speech='noun' AND translation='تاخیر' ORDER BY id LIMIT 1;
  IF v_w_verspaetung IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Verspätung not found.'; END IF;
  SELECT id INTO v_w_von FROM words WHERE course_id=v_course AND lemma='von' AND part_of_speech='preposition' AND translation='از / از سمت' ORDER BY id LIMIT 1;
  IF v_w_von IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word von not found.'; END IF;
  SELECT id INTO v_w_welcher FROM words WHERE course_id=v_course AND lemma='welcher' AND part_of_speech='determiner' AND translation='کدام / چه' ORDER BY id LIMIT 1;
  IF v_w_welcher IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word welcher not found.'; END IF;
  SELECT id INTO v_w_gleis FROM words WHERE course_id=v_course AND lemma='Gleis' AND part_of_speech='noun' AND translation='سکوی قطار / خط' ORDER BY id LIMIT 1;
  IF v_w_gleis IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Gleis not found.'; END IF;
  SELECT id INTO v_w_drei FROM words WHERE course_id=v_course AND lemma='drei' AND part_of_speech='number' AND translation='سه' ORDER BY id LIMIT 1;
  IF v_w_drei IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word drei not found.'; END IF;
  SELECT id INTO v_w_fahren FROM words WHERE course_id=v_course AND lemma='fahren' AND part_of_speech='verb' AND translation='رفتن با وسیله / راندن' ORDER BY id LIMIT 1;
  IF v_w_fahren IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word fahren not found.'; END IF;
  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;
  SELECT id INTO v_w_gut FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_gut IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gut not found.'; END IF;
  SELECT id INTO v_w_der_zug_hat_verspaetung FROM words WHERE course_id=v_course AND lemma='Der Zug hat Verspätung.' AND part_of_speech='phrase' AND translation='قطار تاخیر دارد.' ORDER BY id LIMIT 1;
  IF v_w_der_zug_hat_verspaetung IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Der Zug hat Verspätung. not found.'; END IF;
  SELECT id INTO v_w_von_welchem_gleis_faehrt_der_zug FROM words WHERE course_id=v_course AND lemma='Von welchem Gleis fährt der Zug?' AND part_of_speech='phrase' AND translation='قطار از کدام سکو حرکت می کند؟' ORDER BY id LIMIT 1;
  IF v_w_von_welchem_gleis_faehrt_der_zug IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Von welchem Gleis fährt der Zug? not found.'; END IF;
  SELECT id INTO v_w_der_zug_faehrt_von_gleis_drei FROM words WHERE course_id=v_course AND lemma='Der Zug fährt von Gleis drei.' AND part_of_speech='phrase' AND translation='قطار از سکوی سه حرکت می کند.' ORDER BY id LIMIT 1;
  IF v_w_der_zug_faehrt_von_gleis_drei IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Der Zug fährt von Gleis drei. not found.'; END IF;
  SELECT id INTO v_w_umsteigen FROM words WHERE course_id=v_course AND lemma='umsteigen' AND part_of_speech='verb' AND translation='قطار عوض کردن / خط عوض کردن' ORDER BY id LIMIT 1;
  IF v_w_umsteigen IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'umsteigen','umsteigen','verb','قطار عوض کردن / خط عوض کردن',40,'{"separable":true,"prefix":"um","usage":"change_train_or_line","finiteExample":"wir steigen um"}','[{"text":"fahren","translation":"رفتن با وسیله / راندن"},{"text":"kommen","translation":"آمدن"},{"text":"warten","translation":"منتظر ماندن"},{"text":"aussteigen","translation":"پیاده شدن"},{"text":"einsteigen","translation":"سوار شدن"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":73,"module":7}');
    SET v_w_umsteigen=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_wir_muessen_umsteigen FROM words WHERE course_id=v_course AND lemma='Wir müssen umsteigen.' AND part_of_speech='phrase' AND translation='باید خط عوض کنیم.' ORDER BY id LIMIT 1;
  IF v_w_wir_muessen_umsteigen IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Wir müssen umsteigen.','Wir müssen umsteigen.','phrase','باید خط عوض کنیم.',40,'{"subject":"wir","modal":"müssen","modalForm":"müssen","person":"1pl","infinitive":"umsteigen"}','[{"text":"Wir können fahren.","translation":"می تونیم حرکت کنیم."},{"text":"Der Zug hat Verspätung.","translation":"قطار تاخیر دارد."},{"text":"Wir fahren von Gleis drei.","translation":"از سکوی سه حرکت می کنیم."},{"text":"Müssen wir umsteigen?","translation":"باید خط عوض کنیم؟"},{"text":"Wir kommen später.","translation":"دیرتر می رسیم."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":73,"module":7}');
    SET v_w_wir_muessen_umsteigen=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_wir_steigen_um FROM words WHERE course_id=v_course AND lemma='Wir steigen um.' AND part_of_speech='phrase' AND translation='خط عوض می کنیم.' ORDER BY id LIMIT 1;
  IF v_w_wir_steigen_um IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Wir steigen um.','Wir steigen um.','phrase','خط عوض می کنیم.',40,'{"subject":"wir","verb":"umsteigen","verbForm":"steigen ... um","person":"1pl","separable":true}','[{"text":"Wir müssen umsteigen.","translation":"باید خط عوض کنیم."},{"text":"Wir fahren weiter.","translation":"به مسیر ادامه می دیم."},{"text":"Wir warten hier.","translation":"اینجا منتظر می مونیم."},{"text":"Der Zug kommt später.","translation":"قطار دیرتر میاد."},{"text":"Wir fahren von Gleis drei.","translation":"از سکوی سه حرکت می کنیم."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":73,"module":7}');
    SET v_w_wir_steigen_um=LAST_INSERT_ID();
  END IF;
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ben,v_c_lena,'Umsteigen','عوض کردن قطار','Lena und Ben kennen Gleis drei. Jetzt erfahren sie, dass sie auf der Reise den Zug wechseln müssen.','لنا و بن سکوی سه را پیدا کرده اند. حالا می فهمند در ادامه سفر باید قطار عوض کنند.','story','lena-ben-a2-train-trip',9,40,110,1,'validated','{"context":"train-transfer","cefr":"A2","module":7,"focus":"umsteigen-with-muessen"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_ben,1,'character','Der Zug fährt von Gleis drei.','قطار از سکوی سه حرکت می کند.',40,NULL,NULL,NULL,NULL,'[{"surface":"Der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"masculine_nominative"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun"},{"surface":"fährt","lemma":"fahren","translation":"رفتن با وسیله / راندن","partOfSpeech":"verb","meaning":"حرکت می کند","form":"present_3sg"},{"surface":"von","lemma":"von","translation":"از / از سمت","partOfSpeech":"preposition","meaning":"از","form":"departure_source"},{"surface":"Gleis","lemma":"Gleis","translation":"سکوی قطار / خط","partOfSpeech":"noun"},{"surface":"drei","lemma":"drei","translation":"سه","partOfSpeech":"number","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_lena,2,'learner','Umsteigen?','قطار عوض کنیم؟',40,NULL,NULL,'umsteigen',NULL,'[{"surface":"Umsteigen","lemma":"umsteigen","translation":"قطار عوض کردن / خط عوض کردن","partOfSpeech":"verb","meaning":"قطار عوض کردن","form":"infinitive","suffix":"?"}]','umsteigen','«umsteigen» یعنی در مسیر وسیله یا قطار را عوض کردن. این فعل جداشدنی است، اما فعلا آن را به شکل کامل می بینیم.',NULL,'{"cefr":"A2","module":7}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_ben,3,'character','Ja. Wir müssen umsteigen.','بله. باید خط عوض کنیم.',40,NULL,NULL,NULL,NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"müssen","lemma":"müssen","translation":"مجبور بودن / باید","partOfSpeech":"verb","meaning":"باید","form":"modal_present_1pl"},{"surface":"umsteigen","lemma":"umsteigen","translation":"قطار عوض کردن / خط عوض کردن","partOfSpeech":"verb","meaning":"خط عوض کنیم","form":"infinitive_after_modal","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_lena,4,'learner','Gut.','باشه.',40,NULL,NULL,'gut',NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"باشه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ben,v_c_lena,'Wir müssen umsteigen','باید خط عوض کنیم','Ben bestätigt den nächsten Schritt der Reise. Lena übt die vollständige Aussage mit müssen.','بن قدم بعدی سفر را تایید می کند. لنا جمله کامل با müssen را تمرین می کند.','story','lena-ben-a2-train-trip',10,40,110,2,'validated','{"context":"train-transfer","cefr":"A2","module":7,"focus":"umsteigen-with-muessen"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_ben,1,'character','Der Zug hat Verspätung.','قطار تاخیر دارد.',40,NULL,NULL,NULL,NULL,'[{"surface":"Der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"masculine_nominative"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun"},{"surface":"hat","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارد","form":"present_3sg"},{"surface":"Verspätung","lemma":"Verspätung","translation":"تاخیر","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_lena,2,'learner','Wir müssen umsteigen.','باید خط عوض کنیم.',40,NULL,NULL,'wir müssen umsteigen',NULL,'[{"surface":"Wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"müssen","lemma":"müssen","translation":"مجبور بودن / باید","partOfSpeech":"verb","meaning":"باید","form":"modal_present_1pl"},{"surface":"umsteigen","lemma":"umsteigen","translation":"قطار عوض کردن / خط عوض کردن","partOfSpeech":"verb","meaning":"خط عوض کنیم","form":"infinitive_after_modal","suffix":"."}]','müssen + infinitive','برای «wir» خود فعل «müssen» همین شکل را دارد. فعل اصلی «umsteigen» در پایان و به شکل کامل می آید.',NULL,'{"cefr":"A2","module":7}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_ben,3,'character','Ja.','بله.',40,NULL,NULL,NULL,NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_lena,4,'learner','Gut.','باشه.',40,NULL,NULL,'gut',NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"باشه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_lena,v_c_ben,'Wir steigen um','خط عوض می کنیم','Lena fragt, ob ein Umstieg nötig ist. Ben antwortet mit der getrennten Verbform von umsteigen.','لنا می پرسد آیا عوض کردن قطار لازم است. بن با شکل جداشدنی فعل umsteigen جواب می دهد.','story','lena-ben-a2-train-trip',11,40,110,3,'validated','{"context":"train-transfer","cefr":"A2","module":7,"focus":"umsteigen-with-muessen"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_lena,1,'character','Müssen wir umsteigen?','باید خط عوض کنیم؟',40,NULL,NULL,NULL,NULL,'[{"surface":"Müssen","lemma":"müssen","translation":"مجبور بودن / باید","partOfSpeech":"verb","meaning":"باید","form":"modal_present_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"umsteigen","lemma":"umsteigen","translation":"قطار عوض کردن / خط عوض کردن","partOfSpeech":"verb","meaning":"خط عوض کنیم","form":"infinitive_after_modal","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_ben,2,'learner','Ja. Wir steigen um.','بله. خط عوض می کنیم.',40,NULL,NULL,'ja wir steigen um',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"steigen","lemma":"umsteigen","translation":"قطار عوض کردن / خط عوض کردن","partOfSpeech":"verb","meaning":"عوض می کنیم","form":"separable_present_1pl_stem"},{"surface":"um","lemma":"umsteigen","translation":"قطار عوض کردن / خط عوض کردن","partOfSpeech":"verb","meaning":"بخش جداشدنی فعل","form":"separable_prefix","suffix":"."}]','فعل جداشدنی در جمله خبری','در «Wir steigen um.» فعل «umsteigen» جدا می شود: «steigen» جای فعل می آید و «um» آخر جمله می رود.',NULL,'{"cefr":"A2","module":7}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_lena,3,'character','Der Zug hat Verspätung?','قطار تاخیر داره؟',40,NULL,NULL,NULL,NULL,'[{"surface":"Der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"masculine_nominative"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun"},{"surface":"hat","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"داره","form":"present_3sg"},{"surface":"Verspätung","lemma":"Verspätung","translation":"تاخیر","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_ben,4,'learner','Ja.','بله.',40,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ben,v_c_lena,'Der nächste Schritt','قدم بعدی سفر','Lena und Ben verbinden Verspätung, Gleis und Umstieg. Jetzt wissen sie, wie die Reise weitergeht.','لنا و بن تاخیر، سکو و عوض کردن قطار را کنار هم می گذارند. حالا می دانند سفر چطور ادامه پیدا می کند.','story','lena-ben-a2-train-trip',12,40,110,4,'validated','{"context":"train-transfer","cefr":"A2","module":7,"focus":"umsteigen-with-muessen"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_ben,1,'character','Der Zug hat Verspätung.','قطار تاخیر دارد.',40,NULL,NULL,NULL,NULL,'[{"surface":"Der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"masculine_nominative"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun"},{"surface":"hat","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارد","form":"present_3sg"},{"surface":"Verspätung","lemma":"Verspätung","translation":"تاخیر","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_lena,2,'learner','Ja.','بله.',40,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_ben,3,'character','Von welchem Gleis fährt der Zug?','قطار از کدام سکو حرکت می کند؟',40,NULL,NULL,NULL,NULL,'[{"surface":"Von","lemma":"von","translation":"از / از سمت","partOfSpeech":"preposition","meaning":"از","form":"departure_source"},{"surface":"welchem","lemma":"welcher","translation":"کدام / چه","partOfSpeech":"determiner","meaning":"کدام","form":"neuter_dative_after_von"},{"surface":"Gleis","lemma":"Gleis","translation":"سکوی قطار / خط","partOfSpeech":"noun"},{"surface":"fährt","lemma":"fahren","translation":"رفتن با وسیله / راندن","partOfSpeech":"verb","meaning":"حرکت می کند","form":"present_3sg"},{"surface":"der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"masculine_nominative"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_lena,4,'learner','Von Gleis drei.','از سکوی سه.',40,NULL,NULL,'von gleis drei',NULL,'[{"surface":"Von","lemma":"von","translation":"از / از سمت","partOfSpeech":"preposition","meaning":"از","form":"departure_source"},{"surface":"Gleis","lemma":"Gleis","translation":"سکوی قطار / خط","partOfSpeech":"noun"},{"surface":"drei","lemma":"drei","translation":"سه","partOfSpeech":"number","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_ben,5,'character','Müssen wir umsteigen?','باید خط عوض کنیم؟',40,NULL,NULL,NULL,NULL,'[{"surface":"Müssen","lemma":"müssen","translation":"مجبور بودن / باید","partOfSpeech":"verb","meaning":"باید","form":"modal_present_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"umsteigen","lemma":"umsteigen","translation":"قطار عوض کردن / خط عوض کردن","partOfSpeech":"verb","meaning":"خط عوض کنیم","form":"infinitive_after_modal","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_lena,6,'learner','Ja. Wir müssen umsteigen.','بله. باید خط عوض کنیم.',40,NULL,NULL,'ja wir müssen umsteigen',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"müssen","lemma":"müssen","translation":"مجبور بودن / باید","partOfSpeech":"verb","meaning":"باید","form":"modal_present_1pl"},{"surface":"umsteigen","lemma":"umsteigen","translation":"قطار عوض کردن / خط عوض کردن","partOfSpeech":"verb","meaning":"خط عوض کنیم","form":"infinitive_after_modal","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_der,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_zug,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_fahren,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_von,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_gleis,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_drei,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_umsteigen,'new',1,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_wir,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_muessen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_der_zug_faehrt_von_gleis_drei,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_der,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_zug,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_haben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_verspaetung,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_wir,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_muessen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_umsteigen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_der_zug_hat_verspaetung,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_wir_muessen_umsteigen,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_muessen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_wir,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_umsteigen,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_der,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_zug,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_haben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_verspaetung,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_wir_muessen_umsteigen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_wir_steigen_um,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_der,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_zug,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_haben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_verspaetung,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_von,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_welcher,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_gleis,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_fahren,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_drei,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_muessen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wir,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_umsteigen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_der_zug_hat_verspaetung,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_von_welchem_gleis_faehrt_der_zug,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_der_zug_faehrt_von_gleis_drei,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wir_muessen_umsteigen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wir_steigen_um,'review',0,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_umsteigen,'فعل جدید',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به اطلاعات مسیر گوش کن',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'بپرس باید قطار عوض کنیم؟',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به جواب بن گوش کن',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'واکنش کوتاه بده',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,NULL,v_w_umsteigen,'معنی درست را انتخاب کن',NULL,40,'{"mode":"word_translation","question":"umsteigen","choices":["قطار عوض کردن / خط عوض کردن","پیاده شدن","منتظر ماندن"],"correctIndex":0}','{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_wir_muessen_umsteigen,'عبارت جدید',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به وضعیت قطار گوش کن',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'بگو باید خط عوض کنیم',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به تایید بن گوش کن',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'واکنش کوتاه بده',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_6,NULL,'معنی جمله را انتخاب کن',NULL,40,'{"mode":"turn_translation","question":"«Wir müssen umsteigen.» یعنی چی؟","choices":["باید خط عوض کنیم.","می تونیم مستقیم برویم.","قطار تاخیر ندارد."],"correctIndex":0}','{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',7,v_t_6,NULL,'جمله را به ترتیب درست بساز',NULL,40,'{"source":"turn_tokens","shuffle":true}','{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_wir_steigen_um,'عبارت جدید',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_9,NULL,'به سوال لنا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_10,NULL,'بگو خط عوض می کنیم',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_11,NULL,'به سوال درباره تاخیر گوش کن',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_12,NULL,'تایید کن',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_10,NULL,'معنی جمله را انتخاب کن',NULL,40,'{"mode":"turn_translation","question":"«Wir steigen um.» یعنی چی؟","choices":["خط عوض می کنیم.","پیاده می شویم.","منتظر می مانیم."],"correctIndex":0}','{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,40,'{"source":"lesson_story","question":"لنا و بن در مسیر چه کاری باید انجام بدهند؟","choices":["قطار عوض کنند.","سفر را لغو کنند.","به خانه برگردند."],"correctIndex":0}','{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_13,NULL,'به وضعیت قطار گوش کن',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_14,NULL,'تایید کن',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_15,NULL,'به سوال سکو گوش کن',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_16,NULL,'سکوی حرکت را بگو',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_17,NULL,'به سوال درباره تعویض قطار گوش کن',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_18,NULL,'بگو باید خط عوض کنید',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',7,NULL,NULL,'کل گفتگو را بخوان و جواب بده',NULL,40,'{"source":"lesson_story","question":"برنامه فعلی سفر لنا و بن چیست؟","choices":["قطار تاخیر دارد، از سکوی سه حرکت می کند و باید قطار عوض کنند.","قطار لغو شده و سفر تمام شده است.","قطار بدون توقف مستقیم می رود."],"correctIndex":0}','{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',8,v_t_18,NULL,'نتیجه سفر را بررسی کن',NULL,40,'{"mode":"turn_translation","question":"«Wir müssen umsteigen.» یعنی چی؟","choices":["باید خط عوض کنیم.","باید صبر کنیم.","باید بلیت بخریم."],"correctIndex":0}','{"cefr":"A2","module":7}');
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 073 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  UPDATE chapters SET status='validated' WHERE id=v_chapter;
  UPDATE modules SET status='active' WHERE id=v_module;
  UPDATE levels SET status='active' WHERE id=v_level;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_series_073_v9();
DROP PROCEDURE IF EXISTS import_nova_series_073_v9;
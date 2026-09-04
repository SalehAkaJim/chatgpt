-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 075
-- A2 > Reisen & Verkehr > Wann kommen wir an?
-- FINAL CHAPTER OF A2 MODULE 07
-- Requires Series 074.
-- Continues lena-ben-a2-train-trip orders 17-20.
-- Completes the train-trip storyline and A2 Module 07.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_075_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_075_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_lena BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_ben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wann BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wir BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_um BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_acht BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_uhr BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_der BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_zug BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kommen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_spaeter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_dann BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_warten BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_haben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_verpassen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_um_acht_uhr BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wir_haben_den_zug_verpasst BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_dann_warten_wir BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ankommen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wann_kommen_wir_an BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wir_kommen_um_acht_uhr_an BIGINT UNSIGNED DEFAULT NULL;
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
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 071 before Series 075.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=4 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=5 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 07 Chapter 05 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 074 before Series 075.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_prev_chapter AND status IN ('validated','complete');
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 074 Chapter must be validated/complete before Series 075.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 07 Chapter 05 must be empty before Series 075 import.'; END IF;

  SELECT id INTO v_c_lena FROM characters WHERE course_id=v_course AND name='Lena' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_lena IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Lena not found.'; END IF;

  SELECT id INTO v_c_ben FROM characters WHERE course_id=v_course AND name='Ben' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_ben IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Ben not found.'; END IF;

  SELECT id INTO v_w_wann FROM words WHERE course_id=v_course AND lemma='wann' AND part_of_speech='adverb' AND translation='کی / چه زمانی' ORDER BY id LIMIT 1;
  IF v_w_wann IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word wann not found.'; END IF;

  SELECT id INTO v_w_wir FROM words WHERE course_id=v_course AND lemma='wir' AND part_of_speech='pronoun' AND translation='ما' ORDER BY id LIMIT 1;
  IF v_w_wir IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word wir not found.'; END IF;

  SELECT id INTO v_w_um FROM words WHERE course_id=v_course AND lemma='um' AND part_of_speech='preposition' AND translation='در ساعت / حوالی' ORDER BY id LIMIT 1;
  IF v_w_um IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word um not found.'; END IF;

  SELECT id INTO v_w_acht FROM words WHERE course_id=v_course AND lemma='acht' AND part_of_speech='number' AND translation='هشت' ORDER BY id LIMIT 1;
  IF v_w_acht IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word acht not found.'; END IF;

  SELECT id INTO v_w_uhr FROM words WHERE course_id=v_course AND lemma='Uhr' AND part_of_speech='noun' AND translation='ساعت' ORDER BY id LIMIT 1;
  IF v_w_uhr IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Uhr not found.'; END IF;

  SELECT id INTO v_w_gut FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_gut IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gut not found.'; END IF;

  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;

  SELECT id INTO v_w_der FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_der IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word der not found.'; END IF;

  SELECT id INTO v_w_zug FROM words WHERE course_id=v_course AND lemma='Zug' AND part_of_speech='noun' AND translation='قطار' ORDER BY id LIMIT 1;
  IF v_w_zug IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Zug not found.'; END IF;

  SELECT id INTO v_w_kommen FROM words WHERE course_id=v_course AND lemma='kommen' AND part_of_speech='verb' AND translation='آمدن' ORDER BY id LIMIT 1;
  IF v_w_kommen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word kommen not found.'; END IF;

  SELECT id INTO v_w_spaeter FROM words WHERE course_id=v_course AND lemma='später' AND part_of_speech='adverb' AND translation='بعدا' ORDER BY id LIMIT 1;
  IF v_w_spaeter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word später not found.'; END IF;

  SELECT id INTO v_w_dann FROM words WHERE course_id=v_course AND lemma='dann' AND part_of_speech='adverb' AND translation='بعد / سپس' ORDER BY id LIMIT 1;
  IF v_w_dann IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word dann not found.'; END IF;

  SELECT id INTO v_w_warten FROM words WHERE course_id=v_course AND lemma='warten' AND part_of_speech='verb' AND translation='منتظر ماندن / صبر کردن' ORDER BY id LIMIT 1;
  IF v_w_warten IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word warten not found.'; END IF;

  SELECT id INTO v_w_haben FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_haben IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word haben not found.'; END IF;

  SELECT id INTO v_w_verpassen FROM words WHERE course_id=v_course AND lemma='verpassen' AND part_of_speech='verb' AND translation='از دست دادن' ORDER BY id LIMIT 1;
  IF v_w_verpassen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word verpassen not found.'; END IF;

  SELECT id INTO v_w_um_acht_uhr FROM words WHERE course_id=v_course AND lemma='Um acht Uhr.' AND part_of_speech='phrase' AND translation='ساعت هشت.' ORDER BY id LIMIT 1;
  IF v_w_um_acht_uhr IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Um acht Uhr. not found.'; END IF;

  SELECT id INTO v_w_wir_haben_den_zug_verpasst FROM words WHERE course_id=v_course AND lemma='Wir haben den Zug verpasst.' AND part_of_speech='phrase' AND translation='قطار را از دست دادیم.' ORDER BY id LIMIT 1;
  IF v_w_wir_haben_den_zug_verpasst IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Wir haben den Zug verpasst. not found.'; END IF;

  SELECT id INTO v_w_dann_warten_wir FROM words WHERE course_id=v_course AND lemma='Dann warten wir.' AND part_of_speech='phrase' AND translation='پس منتظر می مونیم.' ORDER BY id LIMIT 1;
  IF v_w_dann_warten_wir IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Dann warten wir. not found.'; END IF;

  SELECT id INTO v_w_ankommen FROM words WHERE course_id=v_course AND lemma='ankommen' AND part_of_speech='verb' AND translation='رسیدن' ORDER BY id LIMIT 1;
  IF v_w_ankommen IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'ankommen','ankommen','verb','رسیدن',40,'{"separable":true,"prefix":"an","infinitive":"ankommen","present1pl":"wir kommen ... an","usage":"arrival"}','[{"text":"kommen","translation":"آمدن"},{"text":"fahren","translation":"رفتن با وسیله / راندن"},{"text":"warten","translation":"منتظر ماندن / صبر کردن"},{"text":"umsteigen","translation":"قطار عوض کردن / خط عوض کردن"},{"text":"verpassen","translation":"از دست دادن"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":75,"module":7,"moduleFinal":true}');
    SET v_w_ankommen=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_wann_kommen_wir_an FROM words WHERE course_id=v_course AND lemma='Wann kommen wir an?' AND part_of_speech='phrase' AND translation='کی می رسیم؟' ORDER BY id LIMIT 1;
  IF v_w_wann_kommen_wir_an IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Wann kommen wir an?','Wann kommen wir an?','phrase','کی می رسیم؟',40,'{"questionWord":"wann","verb":"ankommen","finiteStem":"kommen","finiteForm":"present_1pl","subject":"wir","separablePrefix":"an"}','[{"text":"Wann kommt der Zug?","translation":"قطار کی میاد؟"},{"text":"Wann fahren wir?","translation":"کی حرکت می کنیم؟"},{"text":"Wo steigen wir um?","translation":"کجا قطار عوض می کنیم؟"},{"text":"Hat der Zug Verspätung?","translation":"قطار تاخیر داره؟"},{"text":"Von welchem Gleis fährt der Zug?","translation":"قطار از کدام سکو حرکت می کند؟"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":75,"module":7,"moduleFinal":true}');
    SET v_w_wann_kommen_wir_an=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_wir_kommen_um_acht_uhr_an FROM words WHERE course_id=v_course AND lemma='Wir kommen um acht Uhr an.' AND part_of_speech='phrase' AND translation='ساعت هشت می رسیم.' ORDER BY id LIMIT 1;
  IF v_w_wir_kommen_um_acht_uhr_an IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Wir kommen um acht Uhr an.','Wir kommen um acht Uhr an.','phrase','ساعت هشت می رسیم.',40,'{"verb":"ankommen","finiteStem":"kommen","finiteForm":"present_1pl","subject":"wir","time":"um acht Uhr","separablePrefix":"an"}','[{"text":"Wir fahren um acht Uhr.","translation":"ساعت هشت حرکت می کنیم."},{"text":"Um acht Uhr.","translation":"ساعت هشت."},{"text":"Der Zug kommt später.","translation":"قطار دیرتر میاد."},{"text":"Dann warten wir.","translation":"پس منتظر می مونیم."},{"text":"Wir haben den Zug verpasst.","translation":"قطار را از دست دادیم."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":75,"module":7,"moduleFinal":true}');
    SET v_w_wir_kommen_um_acht_uhr_an=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ben,v_c_lena,'Ankommen','رسیدن','Lena und Ben haben den Anschlusszug verpasst und gewartet. Jetzt sind sie im nächsten Zug und sprechen über die Ankunft.','لنا و بن قطار بعدی را از دست داده بودند و منتظر ماندند. حالا سوار قطار بعدی شده اند و درباره رسیدن صحبت می کنند.','story','lena-ben-a2-train-trip',17,40,110,1,'validated','{"relationship":"friends_and_classmates","context":"train-arrival","cefr":"A2","module":7,"moduleFinal":true,"focus":"ankommen-and-arrival-time"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_ben,1,'character','Der Zug kommt später.','قطار دیرتر میاد.',40,NULL,NULL,NULL,NULL,'[{"surface":"Der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"masculine_nominative"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun"},{"surface":"kommt","lemma":"kommen","translation":"آمدن","partOfSpeech":"verb","meaning":"میاد","form":"present_3sg"},{"surface":"später","lemma":"später","translation":"بعدا","partOfSpeech":"adverb","meaning":"دیرتر","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7,"moduleFinal":true}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_lena,2,'learner','Wann kommen wir an?','کی می رسیم؟',40,NULL,NULL,'wann kommen wir an',NULL,'[{"surface":"Wann","lemma":"wann","translation":"کی / چه زمانی","partOfSpeech":"adverb","meaning":"کی"},{"surface":"kommen","lemma":"ankommen","translation":"رسیدن","partOfSpeech":"verb","meaning":"می رسیم","form":"separable_present_1pl_stem"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"an","lemma":"ankommen","translation":"رسیدن","partOfSpeech":"verb","meaning":"بخش جداشدنی فعل","form":"separable_prefix","suffix":"?"}]','ankommen یک فعل جداشدنی است','در «Wann kommen wir an?» بخش صرف شده «kommen» وسط جمله است و «an» در پایان می آید؛ هر دو به lemma «ankommen» برمی گردند.',NULL,'{"cefr":"A2","module":7,"moduleFinal":true}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_ben,3,'character','Um acht Uhr.','ساعت هشت.',40,NULL,NULL,NULL,NULL,'[{"surface":"Um","lemma":"um","translation":"در ساعت / حوالی","partOfSpeech":"preposition","meaning":"در ساعت","form":"time_preposition"},{"surface":"acht","lemma":"acht","translation":"هشت","partOfSpeech":"number"},{"surface":"Uhr","lemma":"Uhr","translation":"ساعت","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7,"moduleFinal":true}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_lena,4,'learner','Gut.','باشه.',40,NULL,NULL,'gut',NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"باشه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7,"moduleFinal":true}');
  SET v_t_4=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ben,v_c_lena,'Wann kommen wir an?','کی می رسیم؟','Ben sagt noch einmal, dass der Zug später kommt. Lena fragt jetzt die Ankunftszeit mit dem vollständigen A2-Satz.','بن دوباره می گوید قطار دیرتر می آید. لنا حالا با جمله کامل A2 زمان رسیدن را می پرسد.','story','lena-ben-a2-train-trip',18,40,110,2,'validated','{"relationship":"friends_and_classmates","context":"train-arrival","cefr":"A2","module":7,"moduleFinal":true,"focus":"ankommen-and-arrival-time"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_ben,1,'character','Der Zug kommt später.','قطار دیرتر میاد.',40,NULL,NULL,NULL,NULL,'[{"surface":"Der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"masculine_nominative"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun"},{"surface":"kommt","lemma":"kommen","translation":"آمدن","partOfSpeech":"verb","meaning":"میاد","form":"present_3sg"},{"surface":"später","lemma":"später","translation":"بعدا","partOfSpeech":"adverb","meaning":"دیرتر","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7,"moduleFinal":true}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_lena,2,'learner','Wann kommen wir an?','کی می رسیم؟',40,NULL,NULL,'wann kommen wir an',NULL,'[{"surface":"Wann","lemma":"wann","translation":"کی / چه زمانی","partOfSpeech":"adverb","meaning":"کی"},{"surface":"kommen","lemma":"ankommen","translation":"رسیدن","partOfSpeech":"verb","meaning":"می رسیم","form":"separable_present_1pl_stem"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"an","lemma":"ankommen","translation":"رسیدن","partOfSpeech":"verb","meaning":"بخش جداشدنی فعل","form":"separable_prefix","suffix":"?"}]','سوال زمان رسیدن','برای پرسیدن زمان رسیدن، «Wann» اول می آید و فعل جداشدنی «ankommen» به شکل «kommen ... an» استفاده می شود.',NULL,'{"cefr":"A2","module":7,"moduleFinal":true}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_ben,3,'character','Um acht Uhr.','ساعت هشت.',40,NULL,NULL,NULL,NULL,'[{"surface":"Um","lemma":"um","translation":"در ساعت / حوالی","partOfSpeech":"preposition","meaning":"در ساعت","form":"time_preposition"},{"surface":"acht","lemma":"acht","translation":"هشت","partOfSpeech":"number"},{"surface":"Uhr","lemma":"Uhr","translation":"ساعت","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7,"moduleFinal":true}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_lena,4,'learner','Gut.','باشه.',40,NULL,NULL,'gut',NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"باشه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7,"moduleFinal":true}');
  SET v_t_8=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_lena,v_c_ben,'Wir kommen um acht Uhr an','ساعت هشت می رسیم','Lena fragt nach der Ankunft. Ben antwortet diesmal mit einem vollständigen Satz und verwendet ankommen selbst.','لنا درباره زمان رسیدن می پرسد. بن این بار با یک جمله کامل جواب می دهد و خودش از ankommen استفاده می کند.','story','lena-ben-a2-train-trip',19,40,110,3,'validated','{"relationship":"friends_and_classmates","context":"train-arrival","cefr":"A2","module":7,"moduleFinal":true,"focus":"ankommen-and-arrival-time"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_lena,1,'character','Wann kommen wir an?','کی می رسیم؟',40,NULL,NULL,NULL,NULL,'[{"surface":"Wann","lemma":"wann","translation":"کی / چه زمانی","partOfSpeech":"adverb","meaning":"کی"},{"surface":"kommen","lemma":"ankommen","translation":"رسیدن","partOfSpeech":"verb","meaning":"می رسیم","form":"separable_present_1pl_stem"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"an","lemma":"ankommen","translation":"رسیدن","partOfSpeech":"verb","meaning":"بخش جداشدنی فعل","form":"separable_prefix","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":7,"moduleFinal":true}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_ben,2,'learner','Wir kommen um acht Uhr an.','ساعت هشت می رسیم.',40,NULL,NULL,'wir kommen um acht uhr an',NULL,'[{"surface":"Wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"kommen","lemma":"ankommen","translation":"رسیدن","partOfSpeech":"verb","meaning":"می رسیم","form":"separable_present_1pl_stem"},{"surface":"um","lemma":"um","translation":"در ساعت / حوالی","partOfSpeech":"preposition","meaning":"در ساعت","form":"time_preposition"},{"surface":"acht","lemma":"acht","translation":"هشت","partOfSpeech":"number"},{"surface":"Uhr","lemma":"Uhr","translation":"ساعت","partOfSpeech":"noun"},{"surface":"an","lemma":"ankommen","translation":"رسیدن","partOfSpeech":"verb","meaning":"بخش جداشدنی فعل","form":"separable_prefix","suffix":"."}]','زمان وسط فعل جداشدنی','در «Wir kommen um acht Uhr an.» زمان بین بخش صرف شده و پیشوند جداشدنی می آید؛ «kommen ... an» همچنان یک فعل است.',NULL,'{"cefr":"A2","module":7,"moduleFinal":true}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_lena,3,'character','Um acht Uhr?','ساعت هشت؟',40,NULL,NULL,NULL,NULL,'[{"surface":"Um","lemma":"um","translation":"در ساعت / حوالی","partOfSpeech":"preposition","meaning":"در ساعت","form":"time_preposition"},{"surface":"acht","lemma":"acht","translation":"هشت","partOfSpeech":"number"},{"surface":"Uhr","lemma":"Uhr","translation":"ساعت","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":7,"moduleFinal":true}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_ben,4,'learner','Ja.','بله.',40,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7,"moduleFinal":true}');
  SET v_t_12=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ben,v_c_lena,'Die Zugreise','پایان سفر با قطار','Lena und Ben verbinden das verpasste Umsteigen, das Warten und die neue Ankunftszeit. Die Zugreise endet mit einer klaren Ankunftszeit.','لنا و بن از دست دادن قطار، منتظر ماندن و زمان جدید رسیدن را کنار هم می گذارند. سفر با یک زمان رسیدن روشن تمام می شود.','story','lena-ben-a2-train-trip',20,40,110,4,'validated','{"relationship":"friends_and_classmates","context":"train-arrival","cefr":"A2","module":7,"moduleFinal":true,"focus":"ankommen-and-arrival-time"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_ben,1,'character','Wir haben den Zug verpasst.','قطار را از دست دادیم.',40,NULL,NULL,NULL,NULL,'[{"surface":"Wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"haben","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"present_1pl"},{"surface":"den","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"masculine_accusative"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun"},{"surface":"verpasst","lemma":"verpassen","translation":"از دست دادن","partOfSpeech":"verb","meaning":"از دست دادیم","form":"past_participle","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7,"moduleFinal":true}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_lena,2,'learner','Dann warten wir.','پس منتظر می مونیم.',40,NULL,NULL,'dann warten wir',NULL,'[{"surface":"Dann","lemma":"dann","translation":"بعد / سپس","partOfSpeech":"adverb","meaning":"پس / بعد"},{"surface":"warten","lemma":"warten","translation":"منتظر ماندن / صبر کردن","partOfSpeech":"verb","meaning":"منتظر می مونیم","form":"present_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7,"moduleFinal":true}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_ben,3,'character','Der Zug kommt später.','قطار دیرتر میاد.',40,NULL,NULL,NULL,NULL,'[{"surface":"Der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"masculine_nominative"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun"},{"surface":"kommt","lemma":"kommen","translation":"آمدن","partOfSpeech":"verb","meaning":"میاد","form":"present_3sg"},{"surface":"später","lemma":"später","translation":"بعدا","partOfSpeech":"adverb","meaning":"دیرتر","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7,"moduleFinal":true}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_lena,4,'learner','Wann kommen wir an?','کی می رسیم؟',40,NULL,NULL,'wann kommen wir an',NULL,'[{"surface":"Wann","lemma":"wann","translation":"کی / چه زمانی","partOfSpeech":"adverb","meaning":"کی"},{"surface":"kommen","lemma":"ankommen","translation":"رسیدن","partOfSpeech":"verb","meaning":"می رسیم","form":"separable_present_1pl_stem"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"an","lemma":"ankommen","translation":"رسیدن","partOfSpeech":"verb","meaning":"بخش جداشدنی فعل","form":"separable_prefix","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":7,"moduleFinal":true}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_ben,5,'character','Wir kommen um acht Uhr an.','ساعت هشت می رسیم.',40,NULL,NULL,NULL,NULL,'[{"surface":"Wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"kommen","lemma":"ankommen","translation":"رسیدن","partOfSpeech":"verb","meaning":"می رسیم","form":"separable_present_1pl_stem"},{"surface":"um","lemma":"um","translation":"در ساعت / حوالی","partOfSpeech":"preposition","meaning":"در ساعت","form":"time_preposition"},{"surface":"acht","lemma":"acht","translation":"هشت","partOfSpeech":"number"},{"surface":"Uhr","lemma":"Uhr","translation":"ساعت","partOfSpeech":"noun"},{"surface":"an","lemma":"ankommen","translation":"رسیدن","partOfSpeech":"verb","meaning":"بخش جداشدنی فعل","form":"separable_prefix","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7,"moduleFinal":true}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_lena,6,'learner','Gut.','باشه.',40,NULL,NULL,'gut',NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"باشه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7,"moduleFinal":true}');
  SET v_t_18=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_der,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_zug,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_kommen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_spaeter,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_wann,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ankommen,'new',1,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_wir,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_um,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_acht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_uhr,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_um_acht_uhr,'review',0,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_der,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_zug,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_kommen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_spaeter,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_wann,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ankommen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_wir,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_um,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_acht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_uhr,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_um_acht_uhr,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_wann_kommen_wir_an,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_wann,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ankommen,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_wir,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_um,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_acht,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_uhr,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_wann_kommen_wir_an,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_um_acht_uhr,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_wir_kommen_um_acht_uhr_an,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wir,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_haben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_der,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_zug,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_verpassen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_dann,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_warten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_kommen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_spaeter,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wann,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ankommen,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_um,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_acht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_uhr,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wir_haben_den_zug_verpasst,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_dann_warten_wir,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wann_kommen_wir_an,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wir_kommen_um_acht_uhr_an,'review',0,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_ankommen,'فعل جدید',NULL,40,NULL,'{"cefr":"A2","module":7,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به وضعیت قطار گوش کن',NULL,40,NULL,'{"cefr":"A2","module":7,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'بپرس کی می رسید',NULL,40,NULL,'{"cefr":"A2","module":7,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به زمان رسیدن گوش کن',NULL,40,NULL,'{"cefr":"A2","module":7,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'واکنش کوتاه بده',NULL,40,NULL,'{"cefr":"A2","module":7,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,NULL,v_w_ankommen,'معنی درست را انتخاب کن',NULL,40,'{"mode":"word_translation","question":"ankommen","choices":["رسیدن","منتظر ماندن","قطار عوض کردن"],"correctIndex":0}','{"cefr":"A2","module":7,"moduleFinal":true}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_wann_kommen_wir_an,'عبارت جدید',NULL,40,NULL,'{"cefr":"A2","module":7,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به وضعیت قطار گوش کن',NULL,40,NULL,'{"cefr":"A2","module":7,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'زمان رسیدن را بپرس',NULL,40,NULL,'{"cefr":"A2","module":7,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به جواب بن گوش کن',NULL,40,NULL,'{"cefr":"A2","module":7,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'واکنش کوتاه بده',NULL,40,NULL,'{"cefr":"A2","module":7,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_6,NULL,'معنی سوال را انتخاب کن',NULL,40,'{"mode":"turn_translation","question":"«Wann kommen wir an?» یعنی چی؟","choices":["کی می رسیم؟","کی حرکت می کنیم؟","کجا قطار عوض می کنیم؟"],"correctIndex":0}','{"cefr":"A2","module":7,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',7,v_t_6,NULL,'سوال زمان رسیدن را به ترتیب درست بساز',NULL,40,'{"source":"turn_tokens","shuffle":true}','{"cefr":"A2","module":7,"moduleFinal":true}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_wir_kommen_um_acht_uhr_an,'عبارت جدید',NULL,40,NULL,'{"cefr":"A2","module":7,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_9,NULL,'به سوال لنا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":7,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_10,NULL,'زمان رسیدن را با جمله کامل بگو',NULL,40,NULL,'{"cefr":"A2","module":7,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_11,NULL,'به سوال تاییدی لنا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":7,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_12,NULL,'تایید کن',NULL,40,NULL,'{"cefr":"A2","module":7,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_10,NULL,'معنی جواب را انتخاب کن',NULL,40,'{"mode":"turn_translation","question":"«Wir kommen um acht Uhr an.» یعنی چی؟","choices":["ساعت هشت می رسیم.","ساعت هشت حرکت می کنیم.","ساعت هشت قطار عوض می کنیم."],"correctIndex":0}','{"cefr":"A2","module":7,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,40,'{"source":"lesson_story","question":"لنا و بن چه ساعتی می رسند؟","choices":["ساعت هشت.","ساعت سه.","زمان رسیدن مشخص نیست."],"correctIndex":0}','{"cefr":"A2","module":7,"moduleFinal":true}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_13,NULL,'به مشکل قبلی سفر گوش کن',NULL,40,NULL,'{"cefr":"A2","module":7,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_14,NULL,'بگو پس منتظر می مونید',NULL,40,NULL,'{"cefr":"A2","module":7,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_15,NULL,'به خبر قطار بعدی گوش کن',NULL,40,NULL,'{"cefr":"A2","module":7,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_16,NULL,'زمان رسیدن را بپرس',NULL,40,NULL,'{"cefr":"A2","module":7,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_17,NULL,'به زمان رسیدن گوش کن',NULL,40,NULL,'{"cefr":"A2","module":7,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_18,NULL,'واکنش کوتاه بده',NULL,40,NULL,'{"cefr":"A2","module":7,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',7,NULL,NULL,'کل داستان را بخوان و جواب بده',NULL,40,'{"source":"lesson_story","question":"سفر Lena و Ben چطور ادامه پیدا می کند؟","choices":["قطار را از دست می دهند، منتظر می مانند و ساعت هشت می رسند.","سفر را لغو می کنند.","بدون تاخیر ساعت سه می رسند."],"correctIndex":0}','{"cefr":"A2","module":7,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',8,v_t_17,NULL,'زمان رسیدن را بررسی کن',NULL,40,'{"mode":"turn_translation","question":"«Wir kommen um acht Uhr an.» یعنی چی؟","choices":["ساعت هشت می رسیم.","ساعت هشت منتظر می مونیم.","ساعت هشت حرکت می کنیم."],"correctIndex":0}','{"cefr":"A2","module":7,"moduleFinal":true}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 075 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (ac.config IS NULL OR JSON_EXTRACT(ac.config,'$.question') IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without task.'; END IF;
  UPDATE chapters SET status='validated' WHERE id=v_chapter;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE module_id=v_module;
  IF v_count<>5 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 07 completion requires exactly 5 Chapters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE module_id=v_module AND status IN ('validated','complete');
  IF v_count<>5 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='All A2 Module 07 Chapters must be validated/complete.'; END IF;
  UPDATE modules SET status='complete' WHERE id=v_module;
  UPDATE levels SET status='active' WHERE id=v_level;
  COMMIT;
END$$
DELIMITER ;

CALL import_nova_series_075_v9();
DROP PROCEDURE IF EXISTS import_nova_series_075_v9;
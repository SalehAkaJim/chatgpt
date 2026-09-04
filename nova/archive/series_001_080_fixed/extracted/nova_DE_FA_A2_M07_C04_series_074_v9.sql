-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 074
-- A2 > Reisen & Verkehr > Wir haben den Zug verpasst
-- Requires Series 073.
-- Continues lena-ben-a2-train-trip orders 13-16.
-- Perfekt review with verpassen; arrival vocabulary deferred to 075.
-- ===============================================================
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_series_074_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_074_v9()
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
  DECLARE v_w_haben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_der BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_zug BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_muessen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_umsteigen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_dann BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kommen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_spaeter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_nein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wir_muessen_umsteigen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_verpassen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_warten BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wir_haben_den_zug_verpasst BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_dann_warten_wir BIGINT UNSIGNED DEFAULT NULL;
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
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 071 before Series 074.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=3 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=4 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 07 Chapter 04 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 073 before Series 074.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_prev_chapter AND status IN ('validated','complete');
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 073 Chapter must be validated/complete before Series 074.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 07 Chapter 04 must be empty before Series 074 import.'; END IF;
  SELECT id INTO v_c_lena FROM characters WHERE course_id=v_course AND name='Lena' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_lena IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Lena not found.'; END IF;
  SELECT id INTO v_c_ben FROM characters WHERE course_id=v_course AND name='Ben' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_ben IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Ben not found.'; END IF;
  SELECT id INTO v_w_wir FROM words WHERE course_id=v_course AND lemma='wir' AND part_of_speech='pronoun' AND translation='ما' ORDER BY id LIMIT 1;
  IF v_w_wir IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word wir not found.'; END IF;
  SELECT id INTO v_w_haben FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_haben IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word haben not found.'; END IF;
  SELECT id INTO v_w_der FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_der IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word der not found.'; END IF;
  SELECT id INTO v_w_zug FROM words WHERE course_id=v_course AND lemma='Zug' AND part_of_speech='noun' AND translation='قطار' ORDER BY id LIMIT 1;
  IF v_w_zug IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Zug not found.'; END IF;
  SELECT id INTO v_w_muessen FROM words WHERE course_id=v_course AND lemma='müssen' AND part_of_speech='verb' AND translation='مجبور بودن / باید' ORDER BY id LIMIT 1;
  IF v_w_muessen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word müssen not found.'; END IF;
  SELECT id INTO v_w_umsteigen FROM words WHERE course_id=v_course AND lemma='umsteigen' AND part_of_speech='verb' AND translation='قطار عوض کردن / خط عوض کردن' ORDER BY id LIMIT 1;
  IF v_w_umsteigen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word umsteigen not found.'; END IF;
  SELECT id INTO v_w_dann FROM words WHERE course_id=v_course AND lemma='dann' AND part_of_speech='adverb' AND translation='بعد / سپس' ORDER BY id LIMIT 1;
  IF v_w_dann IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word dann not found.'; END IF;
  SELECT id INTO v_w_kommen FROM words WHERE course_id=v_course AND lemma='kommen' AND part_of_speech='verb' AND translation='آمدن' ORDER BY id LIMIT 1;
  IF v_w_kommen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word kommen not found.'; END IF;
  SELECT id INTO v_w_spaeter FROM words WHERE course_id=v_course AND lemma='später' AND part_of_speech='adverb' AND translation='بعدا' ORDER BY id LIMIT 1;
  IF v_w_spaeter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word später not found.'; END IF;
  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;
  SELECT id INTO v_w_nein FROM words WHERE course_id=v_course AND lemma='nein' AND part_of_speech='interjection' AND translation='نه' ORDER BY id LIMIT 1;
  IF v_w_nein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word nein not found.'; END IF;
  SELECT id INTO v_w_gut FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_gut IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gut not found.'; END IF;
  SELECT id INTO v_w_wir_muessen_umsteigen FROM words WHERE course_id=v_course AND lemma='Wir müssen umsteigen.' AND part_of_speech='phrase' AND translation='باید خط عوض کنیم.' ORDER BY id LIMIT 1;
  IF v_w_wir_muessen_umsteigen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Wir müssen umsteigen. not found.'; END IF;
  SELECT id INTO v_w_verpassen FROM words WHERE course_id=v_course AND lemma='verpassen' AND part_of_speech='verb' AND translation='از دست دادن' ORDER BY id LIMIT 1;
  IF v_w_verpassen IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'verpassen','verpassen','verb','از دست دادن',40,'{"regular":true,"participle":"verpasst","auxiliary":"haben","travelUsage":"einen Zug verpassen"}','[{"text":"ankommen","translation":"رسیدن"},{"text":"umsteigen","translation":"قطار عوض کردن / خط عوض کردن"},{"text":"fahren","translation":"رفتن با وسیله / راندن"},{"text":"warten","translation":"منتظر ماندن / صبر کردن"},{"text":"kommen","translation":"آمدن"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":74,"module":7}');
    SET v_w_verpassen=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_warten FROM words WHERE course_id=v_course AND lemma='warten' AND part_of_speech='verb' AND translation='منتظر ماندن / صبر کردن' ORDER BY id LIMIT 1;
  IF v_w_warten IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'warten','warten','verb','منتظر ماندن / صبر کردن',40,'{"present1pl":"warten","usage":"wait_after_missed_connection"}','[{"text":"fahren","translation":"رفتن با وسیله / راندن"},{"text":"kommen","translation":"آمدن"},{"text":"bleiben","translation":"ماندن"},{"text":"umsteigen","translation":"قطار عوض کردن / خط عوض کردن"},{"text":"gehen","translation":"رفتن"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":74,"module":7}');
    SET v_w_warten=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_wir_haben_den_zug_verpasst FROM words WHERE course_id=v_course AND lemma='Wir haben den Zug verpasst.' AND part_of_speech='phrase' AND translation='قطار را از دست دادیم.' ORDER BY id LIMIT 1;
  IF v_w_wir_haben_den_zug_verpasst IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Wir haben den Zug verpasst.','Wir haben den Zug verpasst.','phrase','قطار را از دست دادیم.',40,'{"tense":"Perfekt","subject":"wir","auxiliary":"haben","auxiliaryForm":"haben","object":"den Zug","participle":"verpasst","participleLemma":"verpassen"}','[{"text":"Wir müssen umsteigen.","translation":"باید خط عوض کنیم."},{"text":"Der Zug hat Verspätung.","translation":"قطار تاخیر دارد."},{"text":"Wir warten.","translation":"منتظر می مونیم."},{"text":"Der Zug kommt später.","translation":"قطار دیرتر میاد."},{"text":"Wir fahren von Gleis drei.","translation":"از سکوی سه حرکت می کنیم."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":74,"module":7}');
    SET v_w_wir_haben_den_zug_verpasst=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_dann_warten_wir FROM words WHERE course_id=v_course AND lemma='Dann warten wir.' AND part_of_speech='phrase' AND translation='پس منتظر می مونیم.' ORDER BY id LIMIT 1;
  IF v_w_dann_warten_wir IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Dann warten wir.','Dann warten wir.','phrase','پس منتظر می مونیم.',40,'{"adverb":"dann","verb":"warten","verbForm":"warten","person":"1pl","wordOrder":"adverb_verb_subject"}','[{"text":"Dann fahren wir.","translation":"پس حرکت می کنیم."},{"text":"Wir müssen umsteigen.","translation":"باید خط عوض کنیم."},{"text":"Der Zug kommt später.","translation":"قطار دیرتر میاد."},{"text":"Wir warten hier.","translation":"اینجا منتظر می مونیم."},{"text":"Dann kommen wir.","translation":"پس میایم."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":74,"module":7}');
    SET v_w_dann_warten_wir=LAST_INSERT_ID();
  END IF;
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ben,v_c_lena,'Verpasst','قطار را از دست دادیم','Beim Umsteigen läuft etwas schief: Lena und Ben erreichen den Anschlusszug nicht. Ben sagt, dass sie den Zug verpasst haben.','هنگام عوض کردن قطار یک مشکل پیش می آید: لنا و بن به قطار بعدی نمی رسند. بن می گوید قطار را از دست داده اند.','story','lena-ben-a2-train-trip',13,40,110,1,'validated','{"context":"missed-train-connection","cefr":"A2","module":7,"focus":"verpassen-perfekt-recovery"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_ben,1,'character','Wir haben den Zug verpasst.','قطار را از دست دادیم.',40,NULL,NULL,NULL,NULL,'[{"surface":"Wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"haben","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"داریم / فعل کمکی","form":"present_1pl"},{"surface":"den","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"masculine_accusative"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun"},{"surface":"verpasst","lemma":"verpassen","translation":"از دست دادن","partOfSpeech":"verb","meaning":"از دست دادیم","form":"past_participle","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_lena,2,'learner','Den Zug?','قطار؟',40,NULL,NULL,'den zug',NULL,'[{"surface":"Den","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"masculine_accusative"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun","suffix":"?"}]','verpassen در سفر','«einen Zug verpassen» یعنی به موقع به قطار نرسیدن و آن را از دست دادن.',NULL,'{"cefr":"A2","module":7}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_ben,3,'character','Ja.','بله.',40,NULL,NULL,NULL,NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_lena,4,'learner','Nein.','نه.',40,NULL,NULL,'nein',NULL,'[{"surface":"Nein","lemma":"nein","translation":"نه","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ben,v_c_lena,'Wir haben den Zug verpasst','قطار را از دست دادیم','Lena formuliert das Problem jetzt vollständig. Das bekannte Perfekt-Muster wird mit dem neuen Verb verpassen wiederholt.','لنا حالا مشکل را با یک جمله کامل می گوید. الگوی آشنای گذشته با فعل جدید verpassen مرور می شود.','story','lena-ben-a2-train-trip',14,40,110,2,'validated','{"context":"missed-train-connection","cefr":"A2","module":7,"focus":"verpassen-perfekt-recovery"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_ben,1,'character','Den Zug?','قطار؟',40,NULL,NULL,NULL,NULL,'[{"surface":"Den","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"masculine_accusative"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_lena,2,'learner','Wir haben den Zug verpasst.','قطار را از دست دادیم.',40,NULL,NULL,'wir haben den zug verpasst',NULL,'[{"surface":"Wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"haben","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"present_1pl"},{"surface":"den","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"masculine_accusative"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun"},{"surface":"verpasst","lemma":"verpassen","translation":"از دست دادن","partOfSpeech":"verb","meaning":"از دست دادیم","form":"past_participle","suffix":"."}]','Perfekt با verpassen','این ساختار همان Perfekt آشناست: «haben» + بخش اصلی جمله + «verpasst». زمان جدیدی وارد نمی شود.',NULL,'{"cefr":"A2","module":7}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_ben,3,'character','Warten?','منتظر بمونیم؟',40,NULL,NULL,NULL,NULL,'[{"surface":"Warten","lemma":"warten","translation":"منتظر ماندن / صبر کردن","partOfSpeech":"verb","meaning":"منتظر ماندن","form":"infinitive","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_lena,4,'learner','Ja.','بله.',40,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_lena,v_c_ben,'Dann warten wir','پس منتظر می مونیم','Der Anschlusszug ist weg. Ben entscheidet sich für den einfachen nächsten Schritt: warten.','قطاری که باید سوارش می شدند رفته است. بن قدم ساده بعدی را انتخاب می کند: منتظر ماندن.','story','lena-ben-a2-train-trip',15,40,110,3,'validated','{"context":"missed-train-connection","cefr":"A2","module":7,"focus":"verpassen-perfekt-recovery"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_lena,1,'character','Wir haben den Zug verpasst.','قطار را از دست دادیم.',40,NULL,NULL,NULL,NULL,'[{"surface":"Wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"haben","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"present_1pl"},{"surface":"den","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"masculine_accusative"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun"},{"surface":"verpasst","lemma":"verpassen","translation":"از دست دادن","partOfSpeech":"verb","meaning":"از دست دادیم","form":"past_participle","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_ben,2,'learner','Dann warten wir.','پس منتظر می مونیم.',40,NULL,NULL,'dann warten wir',NULL,'[{"surface":"Dann","lemma":"dann","translation":"بعد / سپس","partOfSpeech":"adverb","meaning":"پس / بعد"},{"surface":"warten","lemma":"warten","translation":"منتظر ماندن / صبر کردن","partOfSpeech":"verb","meaning":"منتظر می مونیم","form":"present_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun","suffix":"."}]','فعل در جای دوم','وقتی جمله با «Dann» شروع می شود، فعل صرف شده در جای دوم می آید: «Dann warten wir.»',NULL,'{"cefr":"A2","module":7}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_lena,3,'character','Warten?','منتظر بمونیم؟',40,NULL,NULL,NULL,NULL,'[{"surface":"Warten","lemma":"warten","translation":"منتظر ماندن / صبر کردن","partOfSpeech":"verb","meaning":"منتظر ماندن","form":"infinitive","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_ben,4,'learner','Ja.','بله.',40,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ben,v_c_lena,'Der verpasste Zug','قطاری که از دست رفت','Lena und Ben verbinden Umstieg, verpassten Zug und die nächste Entscheidung. Sie warten, bis sie weiterfahren können.','لنا و بن عوض کردن قطار، از دست دادن قطار و تصمیم بعدی را کنار هم می گذارند. منتظر می مانند تا بتوانند سفر را ادامه بدهند.','story','lena-ben-a2-train-trip',16,40,110,4,'validated','{"context":"missed-train-connection","cefr":"A2","module":7,"focus":"verpassen-perfekt-recovery"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_ben,1,'character','Wir müssen umsteigen.','باید خط عوض کنیم.',40,NULL,NULL,NULL,NULL,'[{"surface":"Wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"müssen","lemma":"müssen","translation":"مجبور بودن / باید","partOfSpeech":"verb","meaning":"باید","form":"modal_present_1pl"},{"surface":"umsteigen","lemma":"umsteigen","translation":"قطار عوض کردن / خط عوض کردن","partOfSpeech":"verb","meaning":"خط عوض کنیم","form":"infinitive_after_modal","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_lena,2,'learner','Ja.','بله.',40,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_ben,3,'character','Wir haben den Zug verpasst.','قطار را از دست دادیم.',40,NULL,NULL,NULL,NULL,'[{"surface":"Wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"haben","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"present_1pl"},{"surface":"den","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"masculine_accusative"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun"},{"surface":"verpasst","lemma":"verpassen","translation":"از دست دادن","partOfSpeech":"verb","meaning":"از دست دادیم","form":"past_participle","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_lena,4,'learner','Dann warten wir.','پس منتظر می مونیم.',40,NULL,NULL,'dann warten wir',NULL,'[{"surface":"Dann","lemma":"dann","translation":"بعد / سپس","partOfSpeech":"adverb","meaning":"پس / بعد"},{"surface":"warten","lemma":"warten","translation":"منتظر ماندن / صبر کردن","partOfSpeech":"verb","meaning":"منتظر می مونیم","form":"present_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_ben,5,'character','Der Zug kommt später.','قطار دیرتر میاد.',40,NULL,NULL,NULL,NULL,'[{"surface":"Der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","form":"masculine_nominative"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun"},{"surface":"kommt","lemma":"kommen","translation":"آمدن","partOfSpeech":"verb","meaning":"میاد","form":"present_3sg"},{"surface":"später","lemma":"später","translation":"بعدا","partOfSpeech":"adverb","meaning":"دیرتر","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_lena,6,'learner','Gut.','باشه.',40,NULL,NULL,'gut',NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"باشه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_wir,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_haben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_der,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_zug,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_verpassen,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_nein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_wir_haben_den_zug_verpasst,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_wir_muessen_umsteigen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_der,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_zug,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_wir,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_haben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_verpassen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_warten,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_wir_haben_den_zug_verpasst,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_wir,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_haben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_der,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_zug,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_verpassen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_dann,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_warten,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_wir_haben_den_zug_verpasst,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_dann_warten_wir,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wir,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_muessen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_umsteigen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_haben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_der,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_zug,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_verpassen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_dann,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_warten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_kommen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_spaeter,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wir_muessen_umsteigen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wir_haben_den_zug_verpasst,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_dann_warten_wir,'review',0,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_verpassen,'فعل جدید',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به خبر بن گوش کن',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'برای اطمینان درباره قطار بپرس',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به تایید بن گوش کن',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'به خبر بد واکنش نشان بده',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,NULL,v_w_verpassen,'معنی درست را انتخاب کن',NULL,40,'{"mode":"word_translation","question":"verpassen","choices":["از دست دادن","رسیدن","خط عوض کردن"],"correctIndex":0}','{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_wir_haben_den_zug_verpasst,'عبارت جدید',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به سوال بن گوش کن',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'کامل بگو قطار را از دست دادید',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به پیشنهاد صبر کردن گوش کن',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'تایید کن',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_6,NULL,'معنی جمله را انتخاب کن',NULL,40,'{"mode":"turn_translation","question":"«Wir haben den Zug verpasst.» یعنی چی؟","choices":["قطار را از دست دادیم.","قطار تاخیر دارد.","باید خط عوض کنیم."],"correctIndex":0}','{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',7,v_t_6,NULL,'جمله از دست دادن قطار را به ترتیب درست بساز',NULL,40,'{"source":"turn_tokens","shuffle":true}','{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_dann_warten_wir,'عبارت جدید',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_9,NULL,'به مشکل سفر گوش کن',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_10,NULL,'راه بعدی را بگو',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_11,NULL,'به سوال تاییدی لنا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_12,NULL,'تایید کن',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_10,NULL,'معنی تصمیم بن را انتخاب کن',NULL,40,'{"mode":"turn_translation","question":"«Dann warten wir.» یعنی چی؟","choices":["پس منتظر می مونیم.","پس خط عوض می کنیم.","پس برمی گردیم."],"correctIndex":0}','{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,40,'{"source":"lesson_story","question":"بعد از از دست دادن قطار، بن چه تصمیمی می گیرد؟","choices":["منتظر می مانند.","هتل می گیرند.","سفر را لغو می کنند."],"correctIndex":0}','{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_13,NULL,'به مرحله سفر گوش کن',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_14,NULL,'تایید کن',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_15,NULL,'به مشکل اتصال گوش کن',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_16,NULL,'تصمیم بعدی را بگو',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_17,NULL,'به خبر قطار بعدی گوش کن',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_18,NULL,'واکنش کوتاه بده',NULL,40,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',7,NULL,NULL,'کل گفتگو را بخوان و جواب بده',NULL,40,'{"source":"lesson_story","question":"بعد از از دست دادن قطار، لنا و بن چه می کنند؟","choices":["منتظر می مانند چون قطار بعدی دیرتر می آید.","به خانه برمی گردند.","دیگر خط عوض نمی کنند."],"correctIndex":0}','{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',8,v_t_15,NULL,'مشکل اصلی را بررسی کن',NULL,40,'{"mode":"turn_translation","question":"«Wir haben den Zug verpasst.» یعنی چی؟","choices":["قطار را از دست دادیم.","قطار را پیدا کردیم.","قطار تاخیر ندارد."],"correctIndex":0}','{"cefr":"A2","module":7}');
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 074 lesson count.'; END IF;
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
CALL import_nova_series_074_v9();
DROP PROCEDURE IF EXISTS import_nova_series_074_v9;
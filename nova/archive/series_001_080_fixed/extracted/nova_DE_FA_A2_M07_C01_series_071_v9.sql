-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 071
-- A2 > Reisen & Verkehr > Der Zug hat Verspätung
-- FIRST CHAPTER OF A2 MODULE 07
-- Requires completed A2 Module 06 through Series 070.
-- Creates A2 Module 07 + five Chapter skeleton rows when missing.
-- Starts fresh Lena-Ben train-trip storyline orders 1-4.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_071_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_071_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_prev_module BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_lena BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_ben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_der BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_zug BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_haben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kommen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_spaeter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_nein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wann BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_verspaetung BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_der_zug_hat_verspaetung BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_hat_der_zug_verspaetung BIGINT UNSIGNED DEFAULT NULL;
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
  SELECT id INTO v_prev_module FROM modules WHERE level_id=v_level AND sort_order=6 ORDER BY id LIMIT 1;
  IF v_prev_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 06 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM modules WHERE id=v_prev_module AND status='complete';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 070 and complete A2 Module 06 before Series 071.'; END IF;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=7 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN
    INSERT INTO modules(level_id,title,title_translation,description,description_translation,emoji,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES(v_level,'Reisen & Verkehr','سفر و رفت و آمد','Probleme und Informationen auf einer Zugreise verstehen und darauf reagieren.','مشکلات و اطلاعات یک سفر با قطار را بفهم و به آن ها واکنش نشان بده.','🚆',39,40,7,'active','{"focus":"train-trip-delays-platform-transfer-arrival","grammarApproach":"context-first","continuity":"lena-ben-a2-train-trip"}');
    SET v_module=LAST_INSERT_ID();
  END IF;
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Der Zug hat Verspätung','قطار تاخیر دارد','Eine Verspätung verstehen, benennen und nach ihr fragen.','تاخیر قطار را بفهم، بیان کن و درباره آن سوال بپرس.',NULL,39,39,1,'draft'
  WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=1);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Von welchem Gleis fährt der Zug?','قطار از کدام سکو حرکت می کند؟','Das richtige Gleis erfragen und eine Bahnhofsinformation verstehen.','سکوی درست را بپرس و اطلاعات ایستگاه را بفهم.',NULL,39,40,2,'planned'
  WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=2);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Wir müssen umsteigen','باید خط عوض کنیم','Einen Umstieg verstehen und den nächsten Reiseschritt planen.','تعویض قطار را بفهم و قدم بعدی سفر را برنامه ریزی کن.',NULL,40,40,3,'planned'
  WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=3);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Wir haben den Zug verpasst','قطار را از دست دادیم','Über einen verpassten Zug sprechen und eine neue Option suchen.','درباره از دست دادن قطار صحبت کن و راه بعدی را پیدا کن.',NULL,40,40,4,'planned'
  WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=4);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Wann kommen wir an?','کی می رسیم؟','Nach der Ankunft fragen und die Zugreise als Mini-Geschichte abschließen.','درباره زمان رسیدن سوال کن و داستان سفر با قطار را کامل کن.',NULL,40,40,5,'planned'
  WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=5);
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 07 Chapter 01 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 07 Chapter 01 must be empty before Series 071 import.'; END IF;

  SELECT id INTO v_c_lena FROM characters WHERE course_id=v_course AND name='Lena' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_lena IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Lena not found.'; END IF;

  SELECT id INTO v_c_ben FROM characters WHERE course_id=v_course AND name='Ben' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_ben IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Ben not found.'; END IF;

  SELECT id INTO v_w_der FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_der IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word der not found.'; END IF;

  SELECT id INTO v_w_zug FROM words WHERE course_id=v_course AND lemma='Zug' AND part_of_speech='noun' AND translation='قطار' ORDER BY id LIMIT 1;
  IF v_w_zug IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Zug not found.'; END IF;

  SELECT id INTO v_w_haben FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_haben IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word haben not found.'; END IF;

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

  SELECT id INTO v_w_wann FROM words WHERE course_id=v_course AND lemma='wann' AND part_of_speech='adverb' AND translation='کی / چه زمانی' ORDER BY id LIMIT 1;
  IF v_w_wann IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word wann not found.'; END IF;

  SELECT id INTO v_w_verspaetung FROM words WHERE course_id=v_course AND lemma='Verspätung' AND part_of_speech='noun' AND translation='تاخیر' ORDER BY id LIMIT 1;
  IF v_w_verspaetung IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Verspätung','Verspätung','noun','تاخیر',39,'{"gender":"feminine","article":"die","plural":"Verspätungen","commonPattern":"Verspätung haben"}','[{"text":"Zug","translation":"قطار"},{"text":"Gleis","translation":"سکوی قطار / خط"},{"text":"Bahnhof","translation":"ایستگاه قطار"},{"text":"Ticket","translation":"بلیت"},{"text":"Bus","translation":"اتوبوس"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":71,"module":7}');
    SET v_w_verspaetung=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_der_zug_hat_verspaetung FROM words WHERE course_id=v_course AND lemma='Der Zug hat Verspätung.' AND part_of_speech='phrase' AND translation='قطار تاخیر دارد.' ORDER BY id LIMIT 1;
  IF v_w_der_zug_hat_verspaetung IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Der Zug hat Verspätung.','Der Zug hat Verspätung.','phrase','قطار تاخیر دارد.',39,'{"subject":"der Zug","verb":"haben","verbForm":"hat","person":"3sg","object":"Verspätung"}','[{"text":"Der Zug kommt später.","translation":"قطار دیرتر میاد."},{"text":"Der Zug ist gut.","translation":"قطار خوب است."},{"text":"Der Bus hat Verspätung.","translation":"اتوبوس تاخیر دارد."},{"text":"Der Zug fährt heute.","translation":"قطار امروز حرکت می کند."},{"text":"Der Zug kommt morgen.","translation":"قطار فردا میاد."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":71,"module":7}');
    SET v_w_der_zug_hat_verspaetung=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_hat_der_zug_verspaetung FROM words WHERE course_id=v_course AND lemma='Hat der Zug Verspätung?' AND part_of_speech='phrase' AND translation='قطار تاخیر داره؟' ORDER BY id LIMIT 1;
  IF v_w_hat_der_zug_verspaetung IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Hat der Zug Verspätung?','Hat der Zug Verspätung?','phrase','قطار تاخیر داره؟',39,'{"questionType":"yes_no","verb":"haben","verbForm":"hat","person":"3sg","subject":"der Zug","object":"Verspätung"}','[{"text":"Wann kommt der Zug?","translation":"قطار کی میاد؟"},{"text":"Der Zug hat Verspätung.","translation":"قطار تاخیر دارد."},{"text":"Ist der Zug da?","translation":"قطار رسیده؟"},{"text":"Kommt der Zug später?","translation":"قطار دیرتر میاد؟"},{"text":"Wo ist der Zug?","translation":"قطار کجاست؟"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":71,"module":7}');
    SET v_w_hat_der_zug_verspaetung=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ben,v_c_lena,'Verspätung','تاخیر','Lena und Ben wollen mit dem Zug fahren. Am Bahnhof sehen sie, dass der Zug später kommt.','لنا و بن می خواهند با قطار سفر کنند. در ایستگاه می بینند که قطار دیرتر می آید.','story','lena-ben-a2-train-trip',1,39,110,1,'validated','{"relationship":"friends_and_classmates","context":"train-delay-at-station","cefr":"A2","module":7,"focus":"train-delay"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_ben,1,'character','Der Zug kommt später.','قطار دیرتر میاد.',39,NULL,NULL,NULL,NULL,'[{"surface":"Der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"masculine_nominative"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun"},{"surface":"kommt","lemma":"kommen","translation":"آمدن","partOfSpeech":"verb","meaning":"میاد","form":"present_3sg"},{"surface":"später","lemma":"später","translation":"بعدا","partOfSpeech":"adverb","meaning":"دیرتر","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_lena,2,'learner','Verspätung?','تاخیر؟',39,NULL,NULL,'verspätung',NULL,'[{"surface":"Verspätung","lemma":"Verspätung","translation":"تاخیر","partOfSpeech":"noun","suffix":"?"}]','Verspätung','«Verspätung» یعنی تاخیر. درباره قطار و اتوبوس خیلی وقت ها با الگوی «Verspätung haben» می آید.',NULL,'{"cefr":"A2","module":7}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_ben,3,'character','Ja. Der Zug hat Verspätung.','بله. قطار تاخیر دارد.',39,NULL,NULL,NULL,NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"masculine_nominative"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun"},{"surface":"hat","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارد","form":"present_3sg"},{"surface":"Verspätung","lemma":"Verspätung","translation":"تاخیر","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_lena,4,'learner','Gut.','باشه.',39,NULL,NULL,'gut',NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"باشه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_4=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ben,v_c_lena,'Der Zug hat Verspätung','قطار تاخیر دارد','Ben prüft die Information noch einmal. Lena sagt jetzt den vollständigen Satz über die Verspätung.','بن اطلاعات را یک بار دیگر بررسی می کند. لنا حالا جمله کامل درباره تاخیر را می گوید.','story','lena-ben-a2-train-trip',2,39,110,2,'validated','{"relationship":"friends_and_classmates","context":"train-delay-at-station","cefr":"A2","module":7,"focus":"train-delay"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_ben,1,'character','Der Zug?','قطار؟',39,NULL,NULL,NULL,NULL,'[{"surface":"Der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"masculine_nominative"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_lena,2,'learner','Der Zug hat Verspätung.','قطار تاخیر دارد.',39,NULL,NULL,'der zug hat verspätung',NULL,'[{"surface":"Der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"masculine_nominative"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun"},{"surface":"hat","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارد","form":"present_3sg"},{"surface":"Verspätung","lemma":"Verspätung","translation":"تاخیر","partOfSpeech":"noun","suffix":"."}]','hat از haben','اینجا «hat» شکل موردنیاز «haben» برای «der Zug» است: «Der Zug hat Verspätung.»',NULL,'{"cefr":"A2","module":7}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_ben,3,'character','Kommt der Zug später?','قطار دیرتر میاد؟',39,NULL,NULL,NULL,NULL,'[{"surface":"Kommt","lemma":"kommen","translation":"آمدن","partOfSpeech":"verb","meaning":"میاد","form":"present_3sg"},{"surface":"der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"masculine_nominative"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun"},{"surface":"später","lemma":"später","translation":"بعدا","partOfSpeech":"adverb","meaning":"دیرتر","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_lena,4,'learner','Ja.','بله.',39,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_8=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_lena,v_c_ben,'Hat der Zug Verspätung?','قطار تاخیر داره؟','Lena fragt jetzt selbst nach der Verspätung. Ben bestätigt die Information und erklärt das Ergebnis.','لنا حالا خودش درباره تاخیر می پرسد. بن اطلاعات را تایید می کند و نتیجه را توضیح می دهد.','story','lena-ben-a2-train-trip',3,39,110,3,'validated','{"relationship":"friends_and_classmates","context":"train-delay-at-station","cefr":"A2","module":7,"focus":"train-delay"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_lena,1,'character','Hat der Zug Verspätung?','قطار تاخیر داره؟',39,NULL,NULL,NULL,NULL,'[{"surface":"Hat","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"داره","form":"present_3sg"},{"surface":"der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"masculine_nominative"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun"},{"surface":"Verspätung","lemma":"Verspätung","translation":"تاخیر","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_ben,2,'learner','Ja. Der Zug hat Verspätung.','بله. قطار تاخیر دارد.',39,NULL,NULL,'ja der zug hat verspätung',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"masculine_nominative"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun"},{"surface":"hat","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارد","form":"present_3sg"},{"surface":"Verspätung","lemma":"Verspätung","translation":"تاخیر","partOfSpeech":"noun","suffix":"."}]','سوال بله یا نه با فعل اول','برای سوال «Hat der Zug Verspätung?» فعل «hat» اول می آید. جواب دوباره همان جمله خبری است.',NULL,'{"cefr":"A2","module":7}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_lena,3,'character','Kommt der Zug später?','قطار دیرتر میاد؟',39,NULL,NULL,NULL,NULL,'[{"surface":"Kommt","lemma":"kommen","translation":"آمدن","partOfSpeech":"verb","meaning":"میاد","form":"present_3sg"},{"surface":"der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"masculine_nominative"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun"},{"surface":"später","lemma":"später","translation":"بعدا","partOfSpeech":"adverb","meaning":"دیرتر","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_ben,4,'learner','Ja.','بله.',39,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_12=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ben,v_c_lena,'Am Bahnhof','در ایستگاه قطار','Lena und Ben fassen die Situation am Bahnhof zusammen. Der Zug hat Verspätung und kommt später, also wissen beide, warum die Reise noch nicht beginnt.','لنا و بن وضعیت ایستگاه را جمع بندی می کنند. قطار تاخیر دارد و دیرتر می آید، پس هر دو می دانند چرا سفر هنوز شروع نشده است.','story','lena-ben-a2-train-trip',4,39,110,4,'validated','{"relationship":"friends_and_classmates","context":"train-delay-at-station","cefr":"A2","module":7,"focus":"train-delay"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_ben,1,'character','Hat der Zug Verspätung?','قطار تاخیر داره؟',39,NULL,NULL,NULL,NULL,'[{"surface":"Hat","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"داره","form":"present_3sg"},{"surface":"der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"masculine_nominative"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun"},{"surface":"Verspätung","lemma":"Verspätung","translation":"تاخیر","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_lena,2,'learner','Ja. Der Zug hat Verspätung.','بله. قطار تاخیر دارد.',39,NULL,NULL,'ja der zug hat verspätung',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"masculine_nominative"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun"},{"surface":"hat","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارد","form":"present_3sg"},{"surface":"Verspätung","lemma":"Verspätung","translation":"تاخیر","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_ben,3,'character','Kommt der Zug später?','قطار دیرتر میاد؟',39,NULL,NULL,NULL,NULL,'[{"surface":"Kommt","lemma":"kommen","translation":"آمدن","partOfSpeech":"verb","meaning":"میاد","form":"present_3sg"},{"surface":"der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"masculine_nominative"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun"},{"surface":"später","lemma":"später","translation":"بعدا","partOfSpeech":"adverb","meaning":"دیرتر","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_lena,4,'learner','Ja. Der Zug kommt später.','بله. قطار دیرتر میاد.',39,NULL,NULL,'ja der zug kommt später',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"masculine_nominative"},{"surface":"Zug","lemma":"Zug","translation":"قطار","partOfSpeech":"noun"},{"surface":"kommt","lemma":"kommen","translation":"آمدن","partOfSpeech":"verb","meaning":"میاد","form":"present_3sg"},{"surface":"später","lemma":"später","translation":"بعدا","partOfSpeech":"adverb","meaning":"دیرتر","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":7}');
  SET v_t_16=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_der,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_zug,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_kommen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_spaeter,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_verspaetung,'new',1,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_haben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_der_zug_hat_verspaetung,'passive',0,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_der,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_zug,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_haben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_verspaetung,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_kommen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_spaeter,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_der_zug_hat_verspaetung,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_haben,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_der,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_zug,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_verspaetung,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_kommen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_spaeter,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_der_zug_hat_verspaetung,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_hat_der_zug_verspaetung,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_haben,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_der,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_zug,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_verspaetung,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_kommen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_spaeter,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_der_zug_hat_verspaetung,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_hat_der_zug_verspaetung,'review',0,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_verspaetung,'اسم جدید',NULL,39,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به خبر بن درباره قطار گوش کن',NULL,39,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'بپرس منظورت تاخیره؟',NULL,39,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به توضیح کامل بن گوش کن',NULL,39,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'واکنش کوتاه بده',NULL,39,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,NULL,v_w_verspaetung,'معنی درست را انتخاب کن',NULL,39,'{"mode":"word_translation","question":"Verspätung","choices":["تاخیر","سکو","بلیت"],"correctIndex":0}','{"cefr":"A2","module":7}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_der_zug_hat_verspaetung,'عبارت جدید',NULL,39,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به سوال بن گوش کن',NULL,39,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'کامل بگو قطار تاخیر دارد',NULL,39,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به سوال درباره دیرتر آمدن گوش کن',NULL,39,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'تایید کن',NULL,39,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_6,NULL,'معنی جمله را انتخاب کن',NULL,39,'{"mode":"turn_translation","question":"«Der Zug hat Verspätung.» یعنی چی؟","choices":["قطار تاخیر دارد.","قطار رسیده است.","قطار امروز حرکت نمی کند."],"correctIndex":0}','{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',7,v_t_6,NULL,'جمله تاخیر را به ترتیب درست بساز',NULL,39,'{"source":"turn_tokens","shuffle":true}','{"cefr":"A2","module":7}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_hat_der_zug_verspaetung,'عبارت جدید',NULL,39,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_9,NULL,'به سوال لنا گوش کن',NULL,39,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_10,NULL,'تایید کن قطار تاخیر دارد',NULL,39,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_11,NULL,'به سوال دوم گوش کن',NULL,39,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_12,NULL,'تایید کن',NULL,39,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_9,NULL,'معنی سوال را انتخاب کن',NULL,39,'{"mode":"turn_translation","question":"«Hat der Zug Verspätung?» یعنی چی؟","choices":["قطار تاخیر داره؟","قطار کجاست؟","قطار کی میاد؟"],"correctIndex":0}','{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,39,'{"source":"lesson_story","question":"وضعیت قطار چیست؟","choices":["تاخیر دارد.","رسیده است.","لغو شده است."],"correctIndex":0}','{"cefr":"A2","module":7}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_13,NULL,'به سوال درباره تاخیر گوش کن',NULL,39,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_14,NULL,'وضعیت قطار را بگو',NULL,39,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_15,NULL,'به سوال درباره زمان رسیدن گوش کن',NULL,39,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_16,NULL,'بگو قطار دیرتر میاد',NULL,39,NULL,'{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',5,NULL,NULL,'کل گفتگو را بخوان و جواب بده',NULL,39,'{"source":"lesson_story","question":"چرا لنا و بن هنوز حرکت نکرده اند؟","choices":["چون قطار تاخیر دارد.","چون بلیت ندارند.","چون قطار را از دست داده اند."],"correctIndex":0}','{"cefr":"A2","module":7}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',6,v_t_16,NULL,'نتیجه را بررسی کن',NULL,39,'{"mode":"turn_translation","question":"«Der Zug kommt später.» یعنی چی؟","choices":["قطار دیرتر میاد.","قطار الان رسیده.","قطار فردا حرکت می کند."],"correctIndex":0}','{"cefr":"A2","module":7}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 071 lesson count.'; END IF;
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

CALL import_nova_series_071_v9();
DROP PROCEDURE IF EXISTS import_nova_series_071_v9;
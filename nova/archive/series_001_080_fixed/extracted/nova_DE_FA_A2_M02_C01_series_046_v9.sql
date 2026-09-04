-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 046
-- A2 > Termine & Pläne > Kannst du morgen?
-- FIRST CHAPTER OF A2 MODULE 02
-- Requires completed A2 Module 01 through Series 045.
-- Creates A2 Module 02 + five Chapter skeleton rows when missing.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_046_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_046_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_prev_module BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_mia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_sara BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_haben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_du BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_zeit BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kaffee BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gern BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_treffen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wir BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_morgen_adv BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_koennen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kannst_du_morgen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_kann_morgen BIGINT UNSIGNED DEFAULT NULL;
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
  BEGIN ROLLBACK; RESIGNAL; END;

  START TRANSACTION;
  SELECT id INTO v_course FROM courses WHERE learning_language='de' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='A2' AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 041 before Series 046.'; END IF;
  SELECT id INTO v_prev_module FROM modules WHERE level_id=v_level AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_prev_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 01 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM modules WHERE id=v_prev_module AND status='complete';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 045 and complete A2 Module 01 before Series 046.'; END IF;

  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN
    INSERT INTO modules(level_id,title,title_translation,description,description_translation,emoji,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES(v_level,'Termine & Pläne','قرارها و برنامه ها','Verfügbarkeit, Verpflichtungen und Terminänderungen in einfachen Alltagssituationen ausdrücken.','درباره امکان، اجبار و تغییر قرارها در موقعیت های ساده روزمره صحبت کن.','📅',24,26,2,'active','{"focus":"appointments-and-plans","grammarApproach":"context-first","modalProgression":true}');
    SET v_module=LAST_INSERT_ID();
  END IF;

  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Kannst du morgen?','فردا می تونی؟','Nach Verfügbarkeit fragen und mit können kurz antworten.','درباره امکان برای فردا بپرس و با können کوتاه جواب بده.',NULL,24,24,1,'draft' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=1);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Ich muss arbeiten','باید کار کنم','Eine einfache Verpflichtung mit müssen ausdrücken.','یک اجبار ساده را با müssen بیان کن.',NULL,24,25,2,'planned' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=2);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Einen Termin verschieben','جا به جا کردن یک قرار','Einen bekannten Termin einfach auf einen anderen Zeitpunkt verschieben.','یک قرار آشنا را به شکل ساده به زمان دیگری منتقل کن.',NULL,25,25,3,'planned' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=3);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Ich komme später','دیرتر میام','Verspätung ankündigen und kurz darauf reagieren.','دیر رسیدن را اطلاع بده و کوتاه به آن واکنش نشان بده.',NULL,25,26,4,'planned' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=4);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Einen neuen Termin finden','پیدا کردن یک وقت جدید','Verfügbarkeit, Verpflichtung und Terminänderung in einem kurzen Gespräch verbinden.','امکان، اجبار و تغییر قرار را در یک گفتگوی کوتاه کنار هم استفاده کن.',NULL,26,26,5,'planned' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=5);

  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 02 Chapter 01 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 02 Chapter 01 must be empty before Series 046 import.'; END IF;

  SELECT id INTO v_c_mia FROM characters WHERE course_id=v_course AND name='Mia' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_mia IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Mia not found.'; END IF;

  SELECT id INTO v_c_sara FROM characters WHERE course_id=v_course AND name='Sara' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_sara IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Sara not found.'; END IF;

  SELECT id INTO v_w_haben FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_haben IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word haben not found.'; END IF;

  SELECT id INTO v_w_du FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_du IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word du not found.'; END IF;

  SELECT id INTO v_w_zeit FROM words WHERE course_id=v_course AND lemma='Zeit' AND part_of_speech='noun' AND translation='وقت / زمان' ORDER BY id LIMIT 1;
  IF v_w_zeit IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Zeit not found.'; END IF;

  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;

  SELECT id INTO v_w_kaffee FROM words WHERE course_id=v_course AND lemma='Kaffee' AND part_of_speech='noun' AND translation='قهوه' ORDER BY id LIMIT 1;
  IF v_w_kaffee IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Kaffee not found.'; END IF;

  SELECT id INTO v_w_gern FROM words WHERE course_id=v_course AND lemma='gern' AND part_of_speech='adverb' AND translation='با علاقه / با میل' ORDER BY id LIMIT 1;
  IF v_w_gern IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gern not found.'; END IF;

  SELECT id INTO v_w_treffen FROM words WHERE course_id=v_course AND lemma='treffen' AND part_of_speech='verb' AND translation='دیدن / ملاقات کردن' ORDER BY id LIMIT 1;
  IF v_w_treffen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word treffen not found.'; END IF;

  SELECT id INTO v_w_wir FROM words WHERE course_id=v_course AND lemma='wir' AND part_of_speech='pronoun' AND translation='ما' ORDER BY id LIMIT 1;
  IF v_w_wir IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word wir not found.'; END IF;

  SELECT id INTO v_w_ich FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_ich IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ich not found.'; END IF;

  SELECT id INTO v_w_gut FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_gut IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gut not found.'; END IF;

  SELECT id INTO v_w_morgen_adv FROM words WHERE course_id=v_course AND lemma='morgen' AND part_of_speech='adverb' AND translation='فردا' ORDER BY id LIMIT 1;
  IF v_w_morgen_adv IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'morgen','morgen','adverb','فردا',24,'{"timeReference":"next_day"}','[{"text":"heute","translation":"امروز"},{"text":"gestern","translation":"دیروز"},{"text":"später","translation":"بعدا"},{"text":"Samstag","translation":"شنبه"},{"text":"Sonntag","translation":"یکشنبه"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":46,"module":2}');
    SET v_w_morgen_adv=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_koennen FROM words WHERE course_id=v_course AND lemma='können' AND part_of_speech='verb' AND translation='توانستن / بتوان' ORDER BY id LIMIT 1;
  IF v_w_koennen IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'können','können','verb','توانستن / بتوان',24,'{"modal":true,"present":{"ich":"kann","du":"kannst","er_sie_es":"kann","wir":"können","Sie":"können"}}','[{"text":"haben","translation":"داشتن"},{"text":"brauchen","translation":"نیاز داشتن / لازم داشتن"},{"text":"kommen","translation":"آمدن"},{"text":"arbeiten","translation":"کار کردن"},{"text":"treffen","translation":"دیدن / ملاقات کردن"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":46,"module":2}');
    SET v_w_koennen=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_kannst_du_morgen FROM words WHERE course_id=v_course AND lemma='Kannst du morgen?' AND part_of_speech='phrase' AND translation='فردا می تونی؟' ORDER BY id LIMIT 1;
  IF v_w_kannst_du_morgen IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Kannst du morgen?','Kannst du morgen?','phrase','فردا می تونی؟',24,'{"modal":"können","modalForm":"kannst","person":"2sg","time":"morgen"}','[{"text":"Hast du morgen Zeit?","translation":"فردا وقت داری؟"},{"text":"Was hast du gemacht?","translation":"چه کار کردی؟"},{"text":"Treffen wir uns morgen?","translation":"فردا همدیگر را ببینیم؟"},{"text":"Kannst du heute?","translation":"امروز می تونی؟"},{"text":"Kaffee morgen?","translation":"فردا قهوه؟"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":46,"module":2}');
    SET v_w_kannst_du_morgen=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_ich_kann_morgen FROM words WHERE course_id=v_course AND lemma='Ich kann morgen.' AND part_of_speech='phrase' AND translation='فردا می تونم.' ORDER BY id LIMIT 1;
  IF v_w_ich_kann_morgen IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich kann morgen.','Ich kann morgen.','phrase','فردا می تونم.',24,'{"modal":"können","modalForm":"kann","person":"1sg","time":"morgen"}','[{"text":"Ich habe morgen Zeit.","translation":"فردا وقت دارم."},{"text":"Ich kann heute.","translation":"امروز می تونم."},{"text":"Ich arbeite morgen.","translation":"فردا کار می کنم."},{"text":"Ich habe gearbeitet.","translation":"کار کردم."},{"text":"Ich komme später.","translation":"دیرتر میام."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":46,"module":2}');
    SET v_w_ich_kann_morgen=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Morgen','فردا','Sara möchte Mia wieder treffen und fragt, ob sie morgen Zeit hat.','سارا می خواهد دوباره میا را ببیند و می پرسد آیا فردا وقت دارد.','story','mia-sara-a2-appointments',1,24,110,1,'validated','{"relationship":"friends_and_classmates","context":"making-a-plan-for-tomorrow","cefr":"A2","grammarFocus":"controlled-koennen"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,1,'character','Hast du morgen Zeit?','فردا وقت داری؟',24,NULL,NULL,NULL,NULL,'[{"surface":"Hast","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"داری","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"morgen","lemma":"morgen","translation":"فردا","partOfSpeech":"adverb"},{"surface":"Zeit","lemma":"Zeit","translation":"وقت / زمان","partOfSpeech":"noun","suffix":"?"}]','morgen یعنی فردا','«morgen» با حرف کوچک یعنی «فردا». آن را با «Morgen» به معنی «صبح» اشتباه نکن.',NULL,'{"cefr":"A2","module":2}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,2,'learner','Ja.','بله.',24,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":2}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,3,'character','Kaffee?','قهوه؟',24,NULL,NULL,NULL,NULL,'[{"surface":"Kaffee","lemma":"Kaffee","translation":"قهوه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":2}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,4,'learner','Ja, gern.','بله، حتما.',24,NULL,NULL,'ja gern',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"gern","lemma":"gern","translation":"با علاقه / با میل","partOfSpeech":"adverb","meaning":"حتما / با میل","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":2}');
  SET v_t_4=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Kannst du morgen?','فردا می تونی؟','Sara fragt nun direkt nach Mias Verfügbarkeit. Mia hört und benutzt zum ersten Mal eine kurze Form von können.','سارا حالا مستقیم درباره امکان میا می پرسد. میا برای اولین بار یک شکل کوتاه از können را می شنود و استفاده می کند.','story','mia-sara-a2-appointments',2,24,110,2,'validated','{"relationship":"friends_and_classmates","context":"making-a-plan-for-tomorrow","cefr":"A2","grammarFocus":"controlled-koennen"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,1,'character','Kannst du morgen?','فردا می تونی؟',24,NULL,NULL,NULL,NULL,'[{"surface":"Kannst","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونی","form":"modal_present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"morgen","lemma":"morgen","translation":"فردا","partOfSpeech":"adverb","suffix":"?"}]','اولین modal: können','«kannst» از «können» می آید و اینجا یعنی «می تونی». فعلا لازم نیست صرف کامل فعل را حفظ کنی.',NULL,'{"cefr":"A2","module":2}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,2,'learner','Ja. Ich kann morgen.','بله. فردا می تونم.',24,NULL,NULL,'ja ich kann morgen',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"kann","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونم","form":"modal_present_1sg"},{"surface":"morgen","lemma":"morgen","translation":"فردا","partOfSpeech":"adverb","suffix":"."}]','kann برای ich','در «Ich kann morgen.» کلمه «kann» یعنی «می تونم». جمله کامل در درس بعد Target اصلی می شود.',NULL,'{"cefr":"A2","module":2}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,3,'character','Kaffee?','قهوه؟',24,NULL,NULL,NULL,NULL,'[{"surface":"Kaffee","lemma":"Kaffee","translation":"قهوه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":2}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,4,'learner','Ja, gern.','بله، حتما.',24,NULL,NULL,'ja gern',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"gern","lemma":"gern","translation":"با علاقه / با میل","partOfSpeech":"adverb","meaning":"حتما / با میل","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":2}');
  SET v_t_8=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Ich kann morgen','فردا می تونم','Mia antwortet jetzt selbst mit dem neuen können-Muster und bestätigt anschließend ein Treffen.','میا حالا خودش با الگوی جدید können جواب می دهد و بعد قرار دیدار را تایید می کند.','story','mia-sara-a2-appointments',3,24,110,3,'validated','{"relationship":"friends_and_classmates","context":"making-a-plan-for-tomorrow","cefr":"A2","grammarFocus":"controlled-koennen"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,1,'character','Kannst du morgen?','فردا می تونی؟',24,NULL,NULL,NULL,NULL,'[{"surface":"Kannst","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونی","form":"modal_present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"morgen","lemma":"morgen","translation":"فردا","partOfSpeech":"adverb","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":2}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,2,'learner','Ja. Ich kann morgen.','بله. فردا می تونم.',24,NULL,NULL,'ja ich kann morgen',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"kann","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونم","form":"modal_present_1sg"},{"surface":"morgen","lemma":"morgen","translation":"فردا","partOfSpeech":"adverb","suffix":"."}]','یک جواب کاربردی برای قرار','«Ich kann morgen.» یعنی «فردا می تونم». اینجا können برای گفتن امکان و در دسترس بودن استفاده شده است.',NULL,'{"cefr":"A2","module":2}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,3,'character','Treffen wir uns morgen?','فردا همدیگر را ببینیم؟',24,NULL,NULL,NULL,NULL,'[{"surface":"Treffen","lemma":"treffen","translation":"دیدن / ملاقات کردن","partOfSpeech":"verb","meaning":"همدیگر را ببینیم","form":"present_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"uns","lemma":"wir","translation":"ما","partOfSpeech":"pronoun","meaning":"همدیگر","form":"reflexive_accusative_1pl"},{"surface":"morgen","lemma":"morgen","translation":"فردا","partOfSpeech":"adverb","suffix":"?"}]','مرور یک الگوی قدیمی','«Treffen wir uns ...?» را از A1 می شناسی؛ فقط زمان آن این بار «morgen» است.',NULL,'{"cefr":"A2","module":2}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,4,'learner','Ja, gern.','بله، حتما.',24,NULL,NULL,'ja gern',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"gern","lemma":"gern","translation":"با علاقه / با میل","partOfSpeech":"adverb","meaning":"حتما / با میل","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":2}');
  SET v_t_12=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Mia und Sara planen','میا و سارا برنامه می گذارند','Sara und Mia führen ein kurzes vollständiges Gespräch über ihre Verfügbarkeit und bestätigen ein Treffen für morgen.','سارا و میا یک گفتگوی کوتاه و کامل درباره امکانشان دارند و یک دیدار برای فردا را قطعی می کنند.','story','mia-sara-a2-appointments',4,24,110,4,'validated','{"relationship":"friends_and_classmates","context":"making-a-plan-for-tomorrow","cefr":"A2","grammarFocus":"controlled-koennen"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,1,'character','Hast du morgen Zeit?','فردا وقت داری؟',24,NULL,NULL,NULL,NULL,'[{"surface":"Hast","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"داری","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"morgen","lemma":"morgen","translation":"فردا","partOfSpeech":"adverb"},{"surface":"Zeit","lemma":"Zeit","translation":"وقت / زمان","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":2}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,2,'learner','Ja.','بله.',24,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":2}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,3,'character','Kannst du morgen?','فردا می تونی؟',24,NULL,NULL,NULL,NULL,'[{"surface":"Kannst","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونی","form":"modal_present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"morgen","lemma":"morgen","translation":"فردا","partOfSpeech":"adverb","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":2}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,4,'learner','Ja. Ich kann morgen.','بله. فردا می تونم.',24,NULL,NULL,'ja ich kann morgen',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"kann","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونم","form":"modal_present_1sg"},{"surface":"morgen","lemma":"morgen","translation":"فردا","partOfSpeech":"adverb","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":2}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,5,'character','Treffen wir uns morgen?','فردا همدیگر را ببینیم؟',24,NULL,NULL,NULL,NULL,'[{"surface":"Treffen","lemma":"treffen","translation":"دیدن / ملاقات کردن","partOfSpeech":"verb","meaning":"همدیگر را ببینیم","form":"present_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"uns","lemma":"wir","translation":"ما","partOfSpeech":"pronoun","meaning":"همدیگر","form":"reflexive_accusative_1pl"},{"surface":"morgen","lemma":"morgen","translation":"فردا","partOfSpeech":"adverb","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":2}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,6,'learner','Ja, gern.','بله، حتما.',24,NULL,NULL,'ja gern',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"gern","lemma":"gern","translation":"با علاقه / با میل","partOfSpeech":"adverb","meaning":"حتما / با میل","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":2}');
  SET v_t_18=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_haben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_morgen_adv,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_zeit,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_kaffee,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_gern,'review',0,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_koennen,'passive',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_morgen_adv,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_kaffee,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_gern,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_kannst_du_morgen,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_koennen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_morgen_adv,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_treffen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_wir,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_gern,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_kannst_du_morgen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich_kann_morgen,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_haben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_du,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_morgen_adv,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_zeit,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ja,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_koennen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_treffen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wir,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_gern,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_kannst_du_morgen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich_kann_morgen,'review',0,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_morgen_adv,'کلمه جدید',NULL,24,NULL,'{"cefr":"A2","module":2}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به سوال درباره فردا گوش کن',NULL,24,NULL,'{"cefr":"A2","module":2}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'تایید کن',NULL,24,NULL,'{"cefr":"A2","module":2}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به پیشنهاد قهوه گوش کن',NULL,24,NULL,'{"cefr":"A2","module":2}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'پیشنهاد را قبول کن',NULL,24,NULL,'{"cefr":"A2","module":2}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,NULL,v_w_morgen_adv,'معنی درست را انتخاب کن',NULL,24,'{"mode":"word_translation","question":"morgen","choices":["فردا","دیروز","امروز"],"correctIndex":0}','{"cefr":"A2","module":2}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_kannst_du_morgen,'عبارت جدید',NULL,24,NULL,'{"cefr":"A2","module":2}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به سوال امکان برای فردا گوش کن',NULL,24,NULL,'{"cefr":"A2","module":2}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'بگو فردا می تونی',NULL,24,NULL,'{"cefr":"A2","module":2}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به پیشنهاد قهوه گوش کن',NULL,24,NULL,'{"cefr":"A2","module":2}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'پیشنهاد را قبول کن',NULL,24,NULL,'{"cefr":"A2","module":2}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_5,NULL,'معنی درست را انتخاب کن',NULL,24,'{"mode":"turn_translation","question":"«Kannst du morgen?» یعنی چی؟","choices":["فردا می تونی؟","فردا وقت داری؟","دیروز چه کار کردی؟"],"correctIndex":0}','{"cefr":"A2","module":2}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_ich_kann_morgen,'عبارت جدید',NULL,24,NULL,'{"cefr":"A2","module":2}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_9,NULL,'به سوال امکان گوش کن',NULL,24,NULL,'{"cefr":"A2","module":2}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_10,NULL,'بگو فردا می تونی',NULL,24,NULL,'{"cefr":"A2","module":2}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_11,NULL,'به پیشنهاد دیدار گوش کن',NULL,24,NULL,'{"cefr":"A2","module":2}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_12,NULL,'قرار را قبول کن',NULL,24,NULL,'{"cefr":"A2","module":2}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_10,NULL,'معنی درست را انتخاب کن',NULL,24,'{"mode":"turn_translation","question":"«Ich kann morgen.» یعنی چی؟","choices":["فردا می تونم.","فردا وقت ندارم.","امروز می تونم."],"correctIndex":0}','{"cefr":"A2","module":2}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'word_order',7,v_t_10,NULL,'جمله را به ترتیب درست بساز',NULL,24,'{"source":"turn_tokens","shuffle":true}','{"cefr":"A2","module":2}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_13,NULL,'به سوال وقت گوش کن',NULL,24,NULL,'{"cefr":"A2","module":2}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_14,NULL,'تایید کن',NULL,24,NULL,'{"cefr":"A2","module":2}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_15,NULL,'به سوال امکان گوش کن',NULL,24,NULL,'{"cefr":"A2","module":2}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_16,NULL,'بگو فردا می تونی',NULL,24,NULL,'{"cefr":"A2","module":2}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_17,NULL,'به پیشنهاد دیدار گوش کن',NULL,24,NULL,'{"cefr":"A2","module":2}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_18,NULL,'قرار را قبول کن',NULL,24,NULL,'{"cefr":"A2","module":2}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,24,'{"source":"lesson_story","question":"میا و سارا برای چه زمانی قرار می گذارند؟","choices":["فردا","دیروز","آخر هفته گذشته"],"correctIndex":0}','{"cefr":"A2","module":2}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',8,v_t_15,NULL,'منظور سارا را انتخاب کن',NULL,24,'{"mode":"turn_translation","question":"سارا با «Kannst du morgen?» چه می پرسد؟","choices":["آیا میا فردا می تواند؟","آیا میا دیروز کار کرده؟","آیا میا قهوه دارد؟"],"correctIndex":0}','{"cefr":"A2","module":2}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 046 lesson count.'; END IF;
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

CALL import_nova_series_046_v9();
DROP PROCEDURE IF EXISTS import_nova_series_046_v9;
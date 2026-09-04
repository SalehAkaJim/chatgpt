-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 056
-- A2 > Probleme zu Hause > Die Heizung funktioniert nicht
-- FIRST CHAPTER OF A2 MODULE 04
-- Requires completed A2 Module 03 through Series 055.
-- Creates A2 Module 04 + five Chapter skeleton rows when missing.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_056_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_056_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_prev_module BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_anna BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_jonas BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_der BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_nicht BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_was BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_koennen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wir BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_machen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_du BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_helfen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_nein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danke BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_problem BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kaputt BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_das BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_zusammen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kannst_du_mir_helfen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wir_machen_das_zusammen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_funktionieren BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_heizung BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_die_heizung_funktioniert_nicht BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_was_koennen_wir_machen BIGINT UNSIGNED DEFAULT NULL;
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
  SELECT id INTO v_prev_module FROM modules WHERE level_id=v_level AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_prev_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 03 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM modules WHERE id=v_prev_module AND status='complete';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 055 and complete A2 Module 03 before Series 056.'; END IF;

  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=4 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN
    INSERT INTO modules(level_id,title,title_translation,description,description_translation,emoji,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES(v_level,'Probleme zu Hause','مشکلات خانه','Einfache Probleme zu Hause beschreiben, eine Reparatur planen und die Lösung organisieren.','مشکلات ساده خانه را توضیح بده، برای تعمیر برنامه ریزی کن و حل مشکل را هماهنگ کن.','🏠',30,32,4,'active','{"focus":"home-problems-and-repairs","grammarApproach":"context-first","communication":"household"}');
    SET v_module=LAST_INSERT_ID();
  END IF;

  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Die Heizung funktioniert nicht','شوفاژ کار نمی کند','Ein technisches Problem zu Hause erkennen und einfach beschreiben.','یک مشکل فنی در خانه را تشخیص بده و ساده توضیحش بده.',NULL,30,30,1,'draft'
  WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=1);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Kannst du das reparieren?','می تونی این را تعمیر کنی؟','Nach einer möglichen Reparatur fragen und einfache Antworten verstehen.','درباره امکان تعمیر سوال کن و جواب های ساده را بفهم.',NULL,30,31,2,'planned'
  WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=2);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Ich rufe den Techniker an','به تعمیرکار زنگ می زنم','Einen Reparaturdienst kontaktieren und das Problem kurz nennen.','با تعمیرکار تماس بگیر و مشکل را کوتاه توضیح بده.',NULL,31,31,3,'planned'
  WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=3);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Wann kann er kommen?','کی می تونه بیاد؟','Einen Besuchstermin für die Reparatur abstimmen.','برای آمدن تعمیرکار یک زمان هماهنگ کن.',NULL,31,32,4,'planned'
  WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=4);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Das Problem ist gelöst','مشکل حل شده','Problem, Reparatur, Termin und Ergebnis in einer kurzen Geschichte verbinden.','مشکل، تعمیر، زمان و نتیجه را در یک داستان کوتاه کنار هم استفاده کن.',NULL,32,32,5,'planned'
  WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=5);

  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 04 Chapter 01 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 04 Chapter 01 must be empty before Series 056 import.'; END IF;

  SELECT id INTO v_c_anna FROM characters WHERE course_id=v_course AND name='Anna' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_anna IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Anna not found.'; END IF;

  SELECT id INTO v_c_jonas FROM characters WHERE course_id=v_course AND name='Jonas' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_jonas IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Jonas not found.'; END IF;

  SELECT id INTO v_w_der FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_der IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word der not found.'; END IF;

  SELECT id INTO v_w_nicht FROM words WHERE course_id=v_course AND lemma='nicht' AND part_of_speech='particle' AND translation='نه / نیست' ORDER BY id LIMIT 1;
  IF v_w_nicht IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word nicht not found.'; END IF;

  SELECT id INTO v_w_sein FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_sein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word sein not found.'; END IF;

  SELECT id INTO v_w_was FROM words WHERE course_id=v_course AND lemma='was' AND part_of_speech='pronoun' AND translation='چی / چه' ORDER BY id LIMIT 1;
  IF v_w_was IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word was not found.'; END IF;

  SELECT id INTO v_w_koennen FROM words WHERE course_id=v_course AND lemma='können' AND part_of_speech='verb' AND translation='توانستن / بتوان' ORDER BY id LIMIT 1;
  IF v_w_koennen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word können not found.'; END IF;

  SELECT id INTO v_w_wir FROM words WHERE course_id=v_course AND lemma='wir' AND part_of_speech='pronoun' AND translation='ما' ORDER BY id LIMIT 1;
  IF v_w_wir IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word wir not found.'; END IF;

  SELECT id INTO v_w_machen FROM words WHERE course_id=v_course AND lemma='machen' AND part_of_speech='verb' AND translation='انجام دادن' ORDER BY id LIMIT 1;
  IF v_w_machen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word machen not found.'; END IF;

  SELECT id INTO v_w_du FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_du IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word du not found.'; END IF;

  SELECT id INTO v_w_ich FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_ich IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ich not found.'; END IF;

  SELECT id INTO v_w_helfen FROM words WHERE course_id=v_course AND lemma='helfen' AND part_of_speech='verb' AND translation='کمک کردن' ORDER BY id LIMIT 1;
  IF v_w_helfen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word helfen not found.'; END IF;

  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;

  SELECT id INTO v_w_nein FROM words WHERE course_id=v_course AND lemma='nein' AND part_of_speech='interjection' AND translation='نه' ORDER BY id LIMIT 1;
  IF v_w_nein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word nein not found.'; END IF;

  SELECT id INTO v_w_danke FROM words WHERE course_id=v_course AND lemma='danke' AND part_of_speech='interjection' AND translation='ممنون' ORDER BY id LIMIT 1;
  IF v_w_danke IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word danke not found.'; END IF;

  SELECT id INTO v_w_kein FROM words WHERE course_id=v_course AND lemma='kein' AND part_of_speech='determiner' AND translation='هیچ / نه یک' ORDER BY id LIMIT 1;
  IF v_w_kein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word kein not found.'; END IF;

  SELECT id INTO v_w_problem FROM words WHERE course_id=v_course AND lemma='Problem' AND part_of_speech='noun' AND translation='مشکل' ORDER BY id LIMIT 1;
  IF v_w_problem IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Problem not found.'; END IF;

  SELECT id INTO v_w_kaputt FROM words WHERE course_id=v_course AND lemma='kaputt' AND part_of_speech='adjective' AND translation='خراب' ORDER BY id LIMIT 1;
  IF v_w_kaputt IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word kaputt not found.'; END IF;

  SELECT id INTO v_w_das FROM words WHERE course_id=v_course AND lemma='das' AND part_of_speech='pronoun' AND translation='این / آن' ORDER BY id LIMIT 1;
  IF v_w_das IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word das not found.'; END IF;

  SELECT id INTO v_w_zusammen FROM words WHERE course_id=v_course AND lemma='zusammen' AND part_of_speech='adverb' AND translation='با هم' ORDER BY id LIMIT 1;
  IF v_w_zusammen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word zusammen not found.'; END IF;

  SELECT id INTO v_w_kannst_du_mir_helfen FROM words WHERE course_id=v_course AND lemma='Kannst du mir helfen?' AND part_of_speech='phrase' AND translation='می تونی کمکم کنی؟' ORDER BY id LIMIT 1;
  IF v_w_kannst_du_mir_helfen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Kannst du mir helfen? not found.'; END IF;

  SELECT id INTO v_w_wir_machen_das_zusammen FROM words WHERE course_id=v_course AND lemma='Wir machen das zusammen.' AND part_of_speech='phrase' AND translation='با هم انجامش می دیم.' ORDER BY id LIMIT 1;
  IF v_w_wir_machen_das_zusammen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Wir machen das zusammen. not found.'; END IF;

  SELECT id INTO v_w_funktionieren FROM words WHERE course_id=v_course AND lemma='funktionieren' AND part_of_speech='verb' AND translation='کار کردن / درست کار کردن' ORDER BY id LIMIT 1;
  IF v_w_funktionieren IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'funktionieren','funktionieren','verb','کار کردن / درست کار کردن',30,'{"present":{"ich":"funktioniere","du":"funktionierst","er_sie_es":"funktioniert"},"usage":"devices_and_systems"}','[{"text":"arbeiten","translation":"کار کردن"},{"text":"reparieren","translation":"تعمیر کردن"},{"text":"machen","translation":"انجام دادن"},{"text":"helfen","translation":"کمک کردن"},{"text":"sein","translation":"بودن"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":56,"module":4}');
    SET v_w_funktionieren=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_heizung FROM words WHERE course_id=v_course AND lemma='Heizung' AND part_of_speech='noun' AND translation='سیستم گرمایشی / شوفاژ' ORDER BY id LIMIT 1;
  IF v_w_heizung IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Heizung','Heizung','noun','سیستم گرمایشی / شوفاژ',30,'{"gender":"feminine","article":"die","plural":"Heizungen"}','[{"text":"Lampe","translation":"چراغ"},{"text":"Küche","translation":"آشپزخانه"},{"text":"Bett","translation":"تخت"},{"text":"Wohnung","translation":"خانه / آپارتمان"},{"text":"Tür","translation":"در"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":56,"module":4}');
    SET v_w_heizung=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_die_heizung_funktioniert_nicht FROM words WHERE course_id=v_course AND lemma='Die Heizung funktioniert nicht.' AND part_of_speech='phrase' AND translation='شوفاژ کار نمی کند.' ORDER BY id LIMIT 1;
  IF v_w_die_heizung_funktioniert_nicht IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Die Heizung funktioniert nicht.','Die Heizung funktioniert nicht.','phrase','شوفاژ کار نمی کند.',30,'{"subject":"die Heizung","verb":"funktionieren","verbForm":"funktioniert","person":"3sg","negation":"nicht"}','[{"text":"Die Lampe ist kaputt.","translation":"چراغ خراب است."},{"text":"Die Heizung ist gut.","translation":"شوفاژ خوب است."},{"text":"Das Problem ist gelöst.","translation":"مشکل حل شده است."},{"text":"Die Wohnung ist sauber.","translation":"خانه تمیز است."},{"text":"Ich bin noch nicht fertig.","translation":"هنوز تمام نکرده ام."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":56,"module":4}');
    SET v_w_die_heizung_funktioniert_nicht=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_was_koennen_wir_machen FROM words WHERE course_id=v_course AND lemma='Was können wir machen?' AND part_of_speech='phrase' AND translation='چه کاری می تونیم انجام بدیم؟' ORDER BY id LIMIT 1;
  IF v_w_was_koennen_wir_machen IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Was können wir machen?','Was können wir machen?','phrase','چه کاری می تونیم انجام بدیم؟',30,'{"questionWord":"was","modal":"können","modalForm":"können","person":"1pl","infinitive":"machen"}','[{"text":"Was soll ich machen?","translation":"باید چه کار کنم؟"},{"text":"Wann kannst du?","translation":"کی می تونی؟"},{"text":"Kannst du mir helfen?","translation":"می تونی کمکم کنی؟"},{"text":"Wir machen das zusammen.","translation":"با هم انجامش می دیم."},{"text":"Was hast du gemacht?","translation":"چه کار کردی؟"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":56,"module":4}');
    SET v_w_was_koennen_wir_machen=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_jonas,v_c_anna,'Funktionieren','درست کار کردن','Zu Hause merkt Anna, dass mit der Heizung etwas nicht stimmt. Sie beschreibt das Problem zuerst ganz direkt.','آنا در خانه متوجه می شود شوفاژ درست کار نمی کند. اول مشکل را خیلی مستقیم توضیح می دهد.','story','anna-jonas-a2-home-repairs',1,30,110,1,'validated','{"relationship":"spouses","context":"home-heating-problem","cefr":"A2","module":4,"focus":"problem-description"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_jonas,1,'character','Was ist?','چی شده؟',30,NULL,NULL,NULL,NULL,'[{"surface":"Was","lemma":"was","translation":"چی / چه","partOfSpeech":"pronoun"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"شده / است","form":"present_3sg","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,2,'learner','Die Heizung funktioniert nicht.','شوفاژ کار نمی کند.',30,NULL,NULL,'die heizung funktioniert nicht',NULL,'[{"surface":"Die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"feminine_nominative"},{"surface":"Heizung","lemma":"Heizung","translation":"سیستم گرمایشی / شوفاژ","partOfSpeech":"noun"},{"surface":"funktioniert","lemma":"funktionieren","translation":"کار کردن / درست کار کردن","partOfSpeech":"verb","meaning":"کار می کند","form":"present_3sg"},{"surface":"nicht","lemma":"nicht","translation":"نه / نیست","partOfSpeech":"particle","meaning":"نمی","form":"negation","suffix":"."}]','funktionieren برای وسیله و سیستم','«funktionieren» یعنی چیزی درست کار کند. در «Die Heizung funktioniert nicht.» یعنی سیستم گرمایش کار نمی کند.',NULL,'{"cefr":"A2","module":4}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_jonas,3,'character','Die Heizung?','شوفاژ؟',30,NULL,NULL,NULL,NULL,'[{"surface":"Die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"feminine_nominative"},{"surface":"Heizung","lemma":"Heizung","translation":"سیستم گرمایشی / شوفاژ","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,4,'learner','Ja.','بله.',30,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_4=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_jonas,v_c_anna,'Die Heizung funktioniert nicht','شوفاژ کار نمی کند','Jonas prüft, ob er das Problem richtig verstanden hat. Anna nennt den Fehler jetzt als vollständigen Statussatz.','یوناس بررسی می کند مشکل را درست فهمیده یا نه. آنا حالا مشکل را با یک جمله کامل بیان می کند.','story','anna-jonas-a2-home-repairs',2,30,110,2,'validated','{"relationship":"spouses","context":"home-heating-problem","cefr":"A2","module":4,"focus":"problem-description"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_jonas,1,'character','Funktioniert die Heizung?','شوفاژ کار می کند؟',30,NULL,NULL,NULL,NULL,'[{"surface":"Funktioniert","lemma":"funktionieren","translation":"کار کردن / درست کار کردن","partOfSpeech":"verb","meaning":"کار می کند","form":"present_3sg"},{"surface":"die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"feminine_nominative"},{"surface":"Heizung","lemma":"Heizung","translation":"سیستم گرمایشی / شوفاژ","partOfSpeech":"noun","suffix":"?"}]','سوال بله یا نه','برای سوال کوتاه، فعل صرف شده اول می آید: «Funktioniert die Heizung?» الگو را در موقعیت ببین.',NULL,'{"cefr":"A2","module":4}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,2,'learner','Nein. Die Heizung funktioniert nicht.','نه. شوفاژ کار نمی کند.',30,NULL,NULL,'nein die heizung funktioniert nicht',NULL,'[{"surface":"Nein","lemma":"nein","translation":"نه","partOfSpeech":"interjection","suffix":"."},{"surface":"Die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"feminine_nominative"},{"surface":"Heizung","lemma":"Heizung","translation":"سیستم گرمایشی / شوفاژ","partOfSpeech":"noun"},{"surface":"funktioniert","lemma":"funktionieren","translation":"کار کردن / درست کار کردن","partOfSpeech":"verb","meaning":"کار می کند","form":"present_3sg"},{"surface":"nicht","lemma":"nicht","translation":"نه / نیست","partOfSpeech":"particle","meaning":"نمی","form":"negation","suffix":"."}]','مشکل را کامل بگو','این جمله برای گزارش خرابی یک وسیله یا سیستم کاربردی است: اسم + funktioniert nicht.',NULL,'{"cefr":"A2","module":4}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_jonas,3,'character','Kein Problem.','مشکلی نیست.',30,NULL,NULL,NULL,NULL,'[{"surface":"Kein","lemma":"kein","translation":"هیچ / نه یک","partOfSpeech":"determiner","meaning":"هیچ / بدون","form":"neuter_nominative_accusative"},{"surface":"Problem","lemma":"Problem","translation":"مشکل","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,4,'learner','Danke.','ممنون.',30,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_8=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_anna,v_c_jonas,'Was können wir machen?','چه کاری می تونیم انجام بدیم؟','Anna und Jonas wissen jetzt genau, was nicht funktioniert. Jonas fragt nach dem nächsten Schritt.','آنا و یوناس حالا دقیقا می دانند چه چیزی کار نمی کند. یوناس درباره قدم بعدی می پرسد.','story','anna-jonas-a2-home-repairs',3,30,110,3,'validated','{"relationship":"spouses","context":"home-heating-problem","cefr":"A2","module":4,"focus":"problem-description"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,1,'character','Die Heizung funktioniert nicht.','شوفاژ کار نمی کند.',30,NULL,NULL,NULL,NULL,'[{"surface":"Die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"feminine_nominative"},{"surface":"Heizung","lemma":"Heizung","translation":"سیستم گرمایشی / شوفاژ","partOfSpeech":"noun"},{"surface":"funktioniert","lemma":"funktionieren","translation":"کار کردن / درست کار کردن","partOfSpeech":"verb","meaning":"کار می کند","form":"present_3sg"},{"surface":"nicht","lemma":"nicht","translation":"نه / نیست","partOfSpeech":"particle","meaning":"نمی","form":"negation","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_jonas,2,'learner','Was können wir machen?','چه کاری می تونیم انجام بدیم؟',30,NULL,NULL,'was können wir machen',NULL,'[{"surface":"Was","lemma":"was","translation":"چی / چه","partOfSpeech":"pronoun"},{"surface":"können","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونیم","form":"modal_present_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"machen","lemma":"machen","translation":"انجام دادن","partOfSpeech":"verb","meaning":"انجام بدیم","form":"infinitive_after_modal","suffix":"?"}]','مرور modal برای پیدا کردن راه حل','ساختار können را از قبل می شناسی. اینجا با «Was» از آن برای پرسیدن راه حل استفاده می کنی.',NULL,'{"cefr":"A2","module":4}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,3,'character','Kannst du mir helfen?','می تونی کمکم کنی؟',30,NULL,NULL,NULL,NULL,'[{"surface":"Kannst","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونی","form":"modal_present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"mir","lemma":"ich","translation":"من","partOfSpeech":"pronoun","meaning":"به من / کمکم","form":"dative_1sg"},{"surface":"helfen","lemma":"helfen","translation":"کمک کردن","partOfSpeech":"verb","meaning":"کمک کنی","form":"infinitive_after_modal","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_jonas,4,'learner','Ja.','بله.',30,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_12=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_jonas,v_c_anna,'Ein Problem zu Hause','یک مشکل در خانه','Anna meldet das Heizungsproblem, Jonas fragt nach einer Lösung, und beide entscheiden, das Problem gemeinsam anzugehen.','آنا مشکل شوفاژ را می گوید، یوناس درباره راه حل می پرسد و هر دو تصمیم می گیرند با هم به مشکل رسیدگی کنند.','story','anna-jonas-a2-home-repairs',4,30,110,4,'validated','{"relationship":"spouses","context":"home-heating-problem","cefr":"A2","module":4,"focus":"problem-description"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_jonas,1,'character','Funktioniert die Heizung?','شوفاژ کار می کند؟',30,NULL,NULL,NULL,NULL,'[{"surface":"Funktioniert","lemma":"funktionieren","translation":"کار کردن / درست کار کردن","partOfSpeech":"verb","meaning":"کار می کند","form":"present_3sg"},{"surface":"die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"feminine_nominative"},{"surface":"Heizung","lemma":"Heizung","translation":"سیستم گرمایشی / شوفاژ","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,2,'learner','Nein. Die Heizung funktioniert nicht.','نه. شوفاژ کار نمی کند.',30,NULL,NULL,'nein die heizung funktioniert nicht',NULL,'[{"surface":"Nein","lemma":"nein","translation":"نه","partOfSpeech":"interjection","suffix":"."},{"surface":"Die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"feminine_nominative"},{"surface":"Heizung","lemma":"Heizung","translation":"سیستم گرمایشی / شوفاژ","partOfSpeech":"noun"},{"surface":"funktioniert","lemma":"funktionieren","translation":"کار کردن / درست کار کردن","partOfSpeech":"verb","meaning":"کار می کند","form":"present_3sg"},{"surface":"nicht","lemma":"nicht","translation":"نه / نیست","partOfSpeech":"particle","meaning":"نمی","form":"negation","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_jonas,3,'character','Was können wir machen?','چه کاری می تونیم انجام بدیم؟',30,NULL,NULL,NULL,NULL,'[{"surface":"Was","lemma":"was","translation":"چی / چه","partOfSpeech":"pronoun"},{"surface":"können","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونیم","form":"modal_present_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"machen","lemma":"machen","translation":"انجام دادن","partOfSpeech":"verb","meaning":"انجام بدیم","form":"infinitive_after_modal","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,4,'learner','Kannst du mir helfen?','می تونی کمکم کنی؟',30,NULL,NULL,'kannst du mir helfen',NULL,'[{"surface":"Kannst","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونی","form":"modal_present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"mir","lemma":"ich","translation":"من","partOfSpeech":"pronoun","meaning":"به من / کمکم","form":"dative_1sg"},{"surface":"helfen","lemma":"helfen","translation":"کمک کردن","partOfSpeech":"verb","meaning":"کمک کنی","form":"infinitive_after_modal","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_jonas,5,'character','Ja. Wir machen das zusammen.','بله. با هم انجامش می دیم.',30,NULL,NULL,NULL,NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"machen","lemma":"machen","translation":"انجام دادن","partOfSpeech":"verb","meaning":"انجام می دیم","form":"present_1pl"},{"surface":"das","lemma":"das","translation":"این / آن","partOfSpeech":"pronoun","meaning":"این را / انجامش","form":"accusative_neuter"},{"surface":"zusammen","lemma":"zusammen","translation":"با هم","partOfSpeech":"adverb","meaning":"با هم","form":"base","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,6,'learner','Danke.','ممنون.',30,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_18=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_was,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_sein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_der,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_heizung,'passive',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_funktionieren,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_nicht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_die_heizung_funktioniert_nicht,'passive',0,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_funktionieren,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_der,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_heizung,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_nein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_nicht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_kein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_problem,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_die_heizung_funktioniert_nicht,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_der,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_heizung,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_funktionieren,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_nicht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_was,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_koennen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_wir,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_machen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_helfen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_die_heizung_funktioniert_nicht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_kannst_du_mir_helfen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_was_koennen_wir_machen,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_funktionieren,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_der,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_heizung,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_nein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_nicht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_was,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_koennen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wir,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_machen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_helfen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_das,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_zusammen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_die_heizung_funktioniert_nicht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_was_koennen_wir_machen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_kannst_du_mir_helfen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wir_machen_das_zusammen,'review',0,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_funktionieren,'فعل جدید',NULL,30,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به سوال یوناس گوش کن',NULL,30,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'مشکل شوفاژ را بگو',NULL,30,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به سوال تاییدی یوناس گوش کن',NULL,30,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'تایید کن',NULL,30,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,NULL,v_w_funktionieren,'معنی درست را انتخاب کن',NULL,30,'{"mode":"word_translation","question":"funktionieren","choices":["درست کار کردن","تعمیر کردن","خاموش کردن"],"correctIndex":0}','{"cefr":"A2","module":4}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_die_heizung_funktioniert_nicht,'عبارت جدید',NULL,30,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به سوال درباره شوفاژ گوش کن',NULL,30,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'کامل بگو شوفاژ کار نمی کند',NULL,30,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به واکنش یوناس گوش کن',NULL,30,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'تشکر کن',NULL,30,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_6,NULL,'معنی درست را انتخاب کن',NULL,30,'{"mode":"turn_translation","question":"«Die Heizung funktioniert nicht.» یعنی چی؟","choices":["شوفاژ کار نمی کند.","چراغ خراب است.","شوفاژ خوب کار می کند."],"correctIndex":0}','{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',7,v_t_6,NULL,'جمله مشکل را به ترتیب درست بساز',NULL,30,'{"source":"turn_tokens","shuffle":true,"focusSegment":["Die","Heizung","funktioniert","nicht"]}','{"cefr":"A2","module":4}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_was_koennen_wir_machen,'عبارت جدید',NULL,30,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_9,NULL,'به توضیح مشکل گوش کن',NULL,30,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_10,NULL,'بپرس چه کاری می تونید انجام بدید',NULL,30,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_11,NULL,'به درخواست کمک گوش کن',NULL,30,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_12,NULL,'قبول کن',NULL,30,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_10,NULL,'معنی درست را انتخاب کن',NULL,30,'{"mode":"turn_translation","question":"«Was können wir machen?» یعنی چی؟","choices":["چه کاری می تونیم انجام بدیم؟","باید چه کار کنم؟","کی می تونی بیای؟"],"correctIndex":0}','{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,30,'{"source":"lesson_story","question":"یوناس بعد از فهمیدن مشکل چه چیزی می پرسد؟","choices":["چه کاری می توانند انجام بدهند.","شوفاژ کجاست.","آنا کی به خانه می آید."],"correctIndex":0}','{"cefr":"A2","module":4}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_13,NULL,'به سوال درباره شوفاژ گوش کن',NULL,30,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_14,NULL,'مشکل را کامل توضیح بده',NULL,30,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_15,NULL,'به سوال راه حل گوش کن',NULL,30,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_16,NULL,'از یوناس کمک بخواه',NULL,30,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_17,NULL,'به جواب یوناس گوش کن',NULL,30,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_18,NULL,'تشکر کن',NULL,30,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',7,NULL,NULL,'کل مکالمه را بخوان و جواب بده',NULL,30,'{"source":"lesson_story","question":"در پایان این Chapter چه چیزی مشخص است؟","choices":["شوفاژ کار نمی کند و آنا و یوناس می خواهند با هم به مشکل رسیدگی کنند.","شوفاژ تعمیر شده است.","تعمیرکار به خانه رسیده است."],"correctIndex":0}','{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',8,v_t_15,NULL,'سوال یوناس را بررسی کن',NULL,30,'{"mode":"turn_translation","question":"«Was können wir machen?» یعنی چی؟","choices":["چه کاری می تونیم انجام بدیم؟","شوفاژ کار می کند؟","مشکلی نیست."],"correctIndex":0}','{"cefr":"A2","module":4}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 056 lesson count.'; END IF;
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

CALL import_nova_series_056_v9();
DROP PROCEDURE IF EXISTS import_nova_series_056_v9;
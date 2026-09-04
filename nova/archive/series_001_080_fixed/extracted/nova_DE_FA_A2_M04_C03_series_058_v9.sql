-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 058
-- A2 > Probleme zu Hause > Ich rufe den Techniker an
-- Requires Series 057.
-- Continues anna-jonas-a2-home-repairs orders 9-12.
-- Adds Herr Becker, a heating technician.
-- Introduces controlled separable anrufen.
-- Scheduling details are deferred to Series 059.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_058_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_058_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_anna BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_jonas BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_becker BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_hallo BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_der BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_heizung BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_funktionieren BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_nicht BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_koennen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sie BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kommen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wir BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_brauchen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_hilfe BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danke BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_was_koennen_wir_machen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_die_heizung_funktioniert_nicht BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kannst_du_das_reparieren BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_kann_das_nicht_reparieren BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_anrufen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_techniker BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_rufe_den_techniker_an BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_koennen_sie_kommen BIGINT UNSIGNED DEFAULT NULL;
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

  DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN ROLLBACK; RESIGNAL; END;
  START TRANSACTION;
  SELECT id INTO v_course FROM courses WHERE learning_language='de' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='A2' AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Level not found.'; END IF;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=4 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 056 before Series 058.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=2 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 04 Chapter 03 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 057 before Series 058.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 04 Chapter 03 must be empty before Series 058 import.'; END IF;

  SELECT id INTO v_c_anna FROM characters WHERE course_id=v_course AND name='Anna' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_anna IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Anna not found.'; END IF;

  SELECT id INTO v_c_jonas FROM characters WHERE course_id=v_course AND name='Jonas' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_jonas IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Jonas not found.'; END IF;

  SELECT id INTO v_c_becker FROM characters WHERE course_id=v_course AND name='Herr Becker' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_becker IS NULL THEN
    INSERT INTO characters(course_id,name,gender,avatar_url,voice_key,profile,metadata)
    VALUES(v_course,'Herr Becker','male',NULL,NULL,'{"role":"heating_technician"}','{"context":"home_repair_service","relationshipToAnnaJonas":"technician","introducedInLevel":"A2","introducedInModule":4,"introducedInChapter":3}');
    SET v_c_becker=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_hallo FROM words WHERE course_id=v_course AND lemma='Hallo' AND part_of_speech='interjection' AND translation='سلام' ORDER BY id LIMIT 1;
  IF v_w_hallo IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Hallo not found.'; END IF;

  SELECT id INTO v_w_der FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_der IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word der not found.'; END IF;

  SELECT id INTO v_w_heizung FROM words WHERE course_id=v_course AND lemma='Heizung' AND part_of_speech='noun' AND translation='سیستم گرمایشی / شوفاژ' ORDER BY id LIMIT 1;
  IF v_w_heizung IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Heizung not found.'; END IF;

  SELECT id INTO v_w_funktionieren FROM words WHERE course_id=v_course AND lemma='funktionieren' AND part_of_speech='verb' AND translation='کار کردن / درست کار کردن' ORDER BY id LIMIT 1;
  IF v_w_funktionieren IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word funktionieren not found.'; END IF;

  SELECT id INTO v_w_nicht FROM words WHERE course_id=v_course AND lemma='nicht' AND part_of_speech='particle' AND translation='نه / نیست' ORDER BY id LIMIT 1;
  IF v_w_nicht IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word nicht not found.'; END IF;

  SELECT id INTO v_w_koennen FROM words WHERE course_id=v_course AND lemma='können' AND part_of_speech='verb' AND translation='توانستن / بتوان' ORDER BY id LIMIT 1;
  IF v_w_koennen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word können not found.'; END IF;

  SELECT id INTO v_w_sie FROM words WHERE course_id=v_course AND lemma='Sie' AND part_of_speech='pronoun' AND translation='شما' ORDER BY id LIMIT 1;
  IF v_w_sie IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Sie not found.'; END IF;

  SELECT id INTO v_w_kommen FROM words WHERE course_id=v_course AND lemma='kommen' AND part_of_speech='verb' AND translation='آمدن' ORDER BY id LIMIT 1;
  IF v_w_kommen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word kommen not found.'; END IF;

  SELECT id INTO v_w_ich FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_ich IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ich not found.'; END IF;

  SELECT id INTO v_w_wir FROM words WHERE course_id=v_course AND lemma='wir' AND part_of_speech='pronoun' AND translation='ما' ORDER BY id LIMIT 1;
  IF v_w_wir IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word wir not found.'; END IF;

  SELECT id INTO v_w_brauchen FROM words WHERE course_id=v_course AND lemma='brauchen' AND part_of_speech='verb' AND translation='نیاز داشتن / لازم داشتن' ORDER BY id LIMIT 1;
  IF v_w_brauchen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word brauchen not found.'; END IF;

  SELECT id INTO v_w_hilfe FROM words WHERE course_id=v_course AND lemma='Hilfe' AND part_of_speech='noun' AND translation='کمک' ORDER BY id LIMIT 1;
  IF v_w_hilfe IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Hilfe not found.'; END IF;

  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;

  SELECT id INTO v_w_danke FROM words WHERE course_id=v_course AND lemma='danke' AND part_of_speech='interjection' AND translation='ممنون' ORDER BY id LIMIT 1;
  IF v_w_danke IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word danke not found.'; END IF;

  SELECT id INTO v_w_gut FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_gut IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gut not found.'; END IF;

  SELECT id INTO v_w_was_koennen_wir_machen FROM words WHERE course_id=v_course AND lemma='Was können wir machen?' AND part_of_speech='phrase' AND translation='چه کاری می تونیم انجام بدیم؟' ORDER BY id LIMIT 1;
  IF v_w_was_koennen_wir_machen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Was können wir machen? not found.'; END IF;

  SELECT id INTO v_w_die_heizung_funktioniert_nicht FROM words WHERE course_id=v_course AND lemma='Die Heizung funktioniert nicht.' AND part_of_speech='phrase' AND translation='شوفاژ کار نمی کند.' ORDER BY id LIMIT 1;
  IF v_w_die_heizung_funktioniert_nicht IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Die Heizung funktioniert nicht. not found.'; END IF;

  SELECT id INTO v_w_kannst_du_das_reparieren FROM words WHERE course_id=v_course AND lemma='Kannst du das reparieren?' AND part_of_speech='phrase' AND translation='می تونی این را تعمیر کنی؟' ORDER BY id LIMIT 1;
  IF v_w_kannst_du_das_reparieren IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Kannst du das reparieren? not found.'; END IF;

  SELECT id INTO v_w_ich_kann_das_nicht_reparieren FROM words WHERE course_id=v_course AND lemma='Ich kann das nicht reparieren.' AND part_of_speech='phrase' AND translation='نمی تونم این را تعمیر کنم.' ORDER BY id LIMIT 1;
  IF v_w_ich_kann_das_nicht_reparieren IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Ich kann das nicht reparieren. not found.'; END IF;

  SELECT id INTO v_w_anrufen FROM words WHERE course_id=v_course AND lemma='anrufen' AND part_of_speech='verb' AND translation='زنگ زدن / تماس گرفتن' ORDER BY id LIMIT 1;
  IF v_w_anrufen IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'anrufen','anrufen','verb','زنگ زدن / تماس گرفتن',31,'{"separable":true,"prefix":"an","present":{"ich":"rufe ... an","du":"rufst ... an","er_sie_es":"ruft ... an"}}','[{"text":"kommen","translation":"آمدن"},{"text":"reparieren","translation":"تعمیر کردن"},{"text":"helfen","translation":"کمک کردن"},{"text":"fragen","translation":"پرسیدن"},{"text":"machen","translation":"انجام دادن"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":58,"module":4}');
    SET v_w_anrufen=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_techniker FROM words WHERE course_id=v_course AND lemma='Techniker' AND part_of_speech='noun' AND translation='تعمیرکار / تکنسین' ORDER BY id LIMIT 1;
  IF v_w_techniker IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Techniker','Techniker','noun','تعمیرکار / تکنسین',31,'{"gender":"masculine","article":"der","plural":"Techniker"}','[{"text":"Arzt","translation":"پزشک"},{"text":"Kollege","translation":"همکار"},{"text":"Fahrer","translation":"راننده"},{"text":"Kellner","translation":"گارسون"},{"text":"Nachbar","translation":"همسایه"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":58,"module":4}');
    SET v_w_techniker=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_ich_rufe_den_techniker_an FROM words WHERE course_id=v_course AND lemma='Ich rufe den Techniker an.' AND part_of_speech='phrase' AND translation='به تعمیرکار زنگ می زنم.' ORDER BY id LIMIT 1;
  IF v_w_ich_rufe_den_techniker_an IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich rufe den Techniker an.','Ich rufe den Techniker an.','phrase','به تعمیرکار زنگ می زنم.',31,'{"verb":"anrufen","verbForm":"rufe ... an","person":"1sg","object":"den Techniker","separable":true}','[{"text":"Ich brauche Hilfe.","translation":"کمک لازم دارم."},{"text":"Ich kann das nicht reparieren.","translation":"نمی تونم این را تعمیر کنم."},{"text":"Der Techniker kann kommen.","translation":"تعمیرکار می تونه بیاد."},{"text":"Ich rufe Anna an.","translation":"به آنا زنگ می زنم."},{"text":"Wir machen das zusammen.","translation":"با هم انجامش می دیم."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":58,"module":4}');
    SET v_w_ich_rufe_den_techniker_an=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_koennen_sie_kommen FROM words WHERE course_id=v_course AND lemma='Können Sie kommen?' AND part_of_speech='phrase' AND translation='می تونید بیاید؟' ORDER BY id LIMIT 1;
  IF v_w_koennen_sie_kommen IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Können Sie kommen?','Können Sie kommen?','phrase','می تونید بیاید؟',31,'{"modal":"können","modalForm":"können","person":"formal_2","infinitive":"kommen","register":"formal"}','[{"text":"Kannst du kommen?","translation":"می تونی بیای؟"},{"text":"Wann kann er kommen?","translation":"کی می تونه بیاد؟"},{"text":"Können Sie helfen?","translation":"می تونید کمک کنید؟"},{"text":"Was können wir machen?","translation":"چه کاری می تونیم انجام بدیم؟"},{"text":"Die Heizung funktioniert nicht.","translation":"شوفاژ کار نمی کند."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":58,"module":4}');
    SET v_w_koennen_sie_kommen=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_anna,v_c_jonas,'Anrufen','زنگ زدن','Anna und Jonas haben entschieden, dass sie Hilfe brauchen. Jonas übernimmt den nächsten Schritt und will einen Techniker anrufen.','آنا و یوناس به این نتیجه رسیده اند که کمک لازم دارند. یوناس قدم بعدی را بر عهده می گیرد و می خواهد به تعمیرکار زنگ بزند.','story','anna-jonas-a2-home-repairs',9,31,110,1,'validated','{"context":"contacting-heating-technician","cefr":"A2","module":4,"focus":"separable-anrufen-and-formal-request"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,1,'character','Wir brauchen Hilfe.','کمک لازم داریم.',31,NULL,NULL,NULL,NULL,'[{"surface":"Wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"brauchen","lemma":"brauchen","translation":"نیاز داشتن / لازم داشتن","partOfSpeech":"verb","meaning":"لازم داریم","form":"present_1pl"},{"surface":"Hilfe","lemma":"Hilfe","translation":"کمک","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_jonas,2,'learner','Ja. Ich rufe den Techniker an.','بله. به تعمیرکار زنگ می زنم.',31,NULL,NULL,'ja ich rufe den techniker an',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"rufe","lemma":"anrufen","translation":"زنگ زدن / تماس گرفتن","partOfSpeech":"verb","meaning":"زنگ می زنم","form":"separable_present_1sg_stem"},{"surface":"den","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"masculine_accusative"},{"surface":"Techniker","lemma":"Techniker","translation":"تعمیرکار / تکنسین","partOfSpeech":"noun"},{"surface":"an","lemma":"anrufen","translation":"زنگ زدن / تماس گرفتن","partOfSpeech":"verb","meaning":"بخش جداشدنی فعل","form":"separable_prefix","suffix":"."}]','فعل جداشدنی anrufen','در جمله خبری، «anrufen» جدا می شود: «Ich rufe ... an.» بخش «an» به پایان جمله می رود. فعلا همین الگوی کاربردی را تمرین کن.',NULL,'{"cefr":"A2","module":4}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,3,'character','Gut.','خوبه.',31,NULL,NULL,NULL,NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"خوبه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_jonas,4,'learner','Ja.','بله.',31,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_4=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_anna,v_c_jonas,'Ich rufe den Techniker an','به تعمیرکار زنگ می زنم','Anna erinnert an das Problem. Jonas sagt nun klar, welchen nächsten Schritt er übernimmt.','آنا دوباره مشکل را یادآوری می کند. یوناس حالا روشن می گوید قدم بعدی را خودش انجام می دهد.','story','anna-jonas-a2-home-repairs',10,31,110,2,'validated','{"context":"contacting-heating-technician","cefr":"A2","module":4,"focus":"separable-anrufen-and-formal-request"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,1,'character','Die Heizung funktioniert nicht.','شوفاژ کار نمی کند.',31,NULL,NULL,NULL,NULL,'[{"surface":"Die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"feminine_nominative"},{"surface":"Heizung","lemma":"Heizung","translation":"سیستم گرمایشی / شوفاژ","partOfSpeech":"noun"},{"surface":"funktioniert","lemma":"funktionieren","translation":"کار کردن / درست کار کردن","partOfSpeech":"verb","meaning":"کار می کند","form":"present_3sg"},{"surface":"nicht","lemma":"nicht","translation":"نه / نیست","partOfSpeech":"particle","meaning":"نمی","form":"negation","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_jonas,2,'learner','Ich rufe den Techniker an.','به تعمیرکار زنگ می زنم.',31,NULL,NULL,'ich rufe den techniker an',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"rufe","lemma":"anrufen","translation":"زنگ زدن / تماس گرفتن","partOfSpeech":"verb","meaning":"زنگ می زنم","form":"separable_present_1sg_stem"},{"surface":"den","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"masculine_accusative"},{"surface":"Techniker","lemma":"Techniker","translation":"تعمیرکار / تکنسین","partOfSpeech":"noun"},{"surface":"an","lemma":"anrufen","translation":"زنگ زدن / تماس گرفتن","partOfSpeech":"verb","meaning":"بخش جداشدنی فعل","form":"separable_prefix","suffix":"."}]','den Techniker','در این جمله Techniker مفعول است، پس «der» به شکل «den» دیده می شود. لازم نیست جدول حالت ها را حفظ کنی؛ عبارت کامل را یاد بگیر.',NULL,'{"cefr":"A2","module":4}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,3,'character','Gut.','خوبه.',31,NULL,NULL,NULL,NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"خوبه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_jonas,4,'learner','Ja.','بله.',31,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_8=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_becker,v_c_jonas,'Können Sie kommen?','می تونید بیاید؟','Jonas telefoniert mit Herrn Becker. Er beschreibt zuerst kurz das Problem und fragt dann höflich, ob der Techniker kommen kann.','یوناس با آقای بکر تلفنی صحبت می کند. اول مشکل را کوتاه توضیح می دهد و بعد مودبانه می پرسد آیا تعمیرکار می تواند بیاید.','story','anna-jonas-a2-home-repairs',11,31,117,3,'validated','{"context":"contacting-heating-technician","cefr":"A2","module":4,"focus":"separable-anrufen-and-formal-request"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_becker,1,'character','Hallo.','سلام.',31,NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_jonas,2,'learner','Hallo. Die Heizung funktioniert nicht.','سلام. شوفاژ کار نمی کند.',31,NULL,NULL,'hallo die heizung funktioniert nicht',NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"."},{"surface":"Die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"feminine_nominative"},{"surface":"Heizung","lemma":"Heizung","translation":"سیستم گرمایشی / شوفاژ","partOfSpeech":"noun"},{"surface":"funktioniert","lemma":"funktionieren","translation":"کار کردن / درست کار کردن","partOfSpeech":"verb","meaning":"کار می کند","form":"present_3sg"},{"surface":"nicht","lemma":"nicht","translation":"نه / نیست","partOfSpeech":"particle","meaning":"نمی","form":"negation","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_becker,3,'character','Die Heizung?','شوفاژ؟',31,NULL,NULL,NULL,NULL,'[{"surface":"Die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"feminine_nominative"},{"surface":"Heizung","lemma":"Heizung","translation":"سیستم گرمایشی / شوفاژ","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_jonas,4,'learner','Ja. Können Sie kommen?','بله. می تونید بیاید؟',31,NULL,NULL,'ja können sie kommen',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Können","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونید","form":"modal_present_formal"},{"surface":"Sie","lemma":"Sie","translation":"شما","partOfSpeech":"pronoun","meaning":"شما","form":"formal_2"},{"surface":"kommen","lemma":"kommen","translation":"آمدن","partOfSpeech":"verb","meaning":"بیاید","form":"infinitive_after_modal","suffix":"?"}]','Sie برای خطاب مودبانه','با تعمیرکار از «Sie» استفاده می کنیم. «Können Sie kommen?» یک درخواست مودبانه و ساده است؛ جدول صرف جدیدی لازم نیست.',NULL,'{"cefr":"A2","module":4}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_becker,5,'character','Ja.','بله.',31,NULL,NULL,NULL,NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_jonas,6,'learner','Danke.','ممنون.',31,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_14=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_becker,v_c_jonas,'Der Anruf','تماس تلفنی','Jonas führt den kurzen Anruf vollständig: Er nennt das Heizungsproblem und fragt Herrn Becker, ob er kommen kann.','یوناس تماس کوتاه را کامل انجام می دهد: مشکل شوفاژ را می گوید و از آقای بکر می پرسد آیا می تواند بیاید.','story','anna-jonas-a2-home-repairs',12,31,110,4,'validated','{"context":"contacting-heating-technician","cefr":"A2","module":4,"focus":"separable-anrufen-and-formal-request"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_becker,1,'character','Hallo.','سلام.',31,NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_jonas,2,'learner','Hallo. Die Heizung funktioniert nicht.','سلام. شوفاژ کار نمی کند.',31,NULL,NULL,'hallo die heizung funktioniert nicht',NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"."},{"surface":"Die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"feminine_nominative"},{"surface":"Heizung","lemma":"Heizung","translation":"سیستم گرمایشی / شوفاژ","partOfSpeech":"noun"},{"surface":"funktioniert","lemma":"funktionieren","translation":"کار کردن / درست کار کردن","partOfSpeech":"verb","meaning":"کار می کند","form":"present_3sg"},{"surface":"nicht","lemma":"nicht","translation":"نه / نیست","partOfSpeech":"particle","meaning":"نمی","form":"negation","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_becker,3,'character','Die Heizung?','شوفاژ؟',31,NULL,NULL,NULL,NULL,'[{"surface":"Die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"feminine_nominative"},{"surface":"Heizung","lemma":"Heizung","translation":"سیستم گرمایشی / شوفاژ","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_jonas,4,'learner','Ja. Können Sie kommen?','بله. می تونید بیاید؟',31,NULL,NULL,'ja können sie kommen',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Können","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونید","form":"modal_present_formal"},{"surface":"Sie","lemma":"Sie","translation":"شما","partOfSpeech":"pronoun","meaning":"شما","form":"formal_2"},{"surface":"kommen","lemma":"kommen","translation":"آمدن","partOfSpeech":"verb","meaning":"بیاید","form":"infinitive_after_modal","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_becker,5,'character','Ja. Ich kann kommen.','بله. می تونم بیام.',31,NULL,NULL,NULL,NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"kann","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونم","form":"modal_present_1sg"},{"surface":"kommen","lemma":"kommen","translation":"آمدن","partOfSpeech":"verb","meaning":"بیام","form":"infinitive_after_modal","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_jonas,6,'learner','Danke.','ممنون.',31,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_20=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_wir,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_brauchen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_hilfe,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_anrufen,'new',1,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_der,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_techniker,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ich_rufe_den_techniker_an,'passive',0,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_der,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_heizung,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_funktionieren,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_nicht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_anrufen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_techniker,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_die_heizung_funktioniert_nicht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich_rufe_den_techniker_an,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_hallo,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_der,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_heizung,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_funktionieren,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_nicht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_koennen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_sie,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_kommen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_die_heizung_funktioniert_nicht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_koennen_sie_kommen,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_hallo,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_der,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_heizung,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_funktionieren,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_nicht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_koennen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_sie,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_kommen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich_rufe_den_techniker_an,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_die_heizung_funktioniert_nicht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_koennen_sie_kommen,'review',0,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_anrufen,'فعل جداشدنی جدید',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به نتیجه آنا گوش کن',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'بگو به تعمیرکار زنگ می زنی',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به واکنش آنا گوش کن',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'تایید کن',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,NULL,v_w_anrufen,'معنی درست را انتخاب کن',NULL,31,'{"mode":"word_translation","question":"anrufen","choices":["زنگ زدن / تماس گرفتن","آمدن","تعمیر کردن"],"correctIndex":0}','{"cefr":"A2","module":4}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_ich_rufe_den_techniker_an,'عبارت جدید',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به مشکل شوفاژ گوش کن',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'بگو به تعمیرکار زنگ می زنی',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به واکنش آنا گوش کن',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'تایید کن',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_6,NULL,'معنی درست را انتخاب کن',NULL,31,'{"mode":"turn_translation","question":"«Ich rufe den Techniker an.» یعنی چی؟","choices":["به تعمیرکار زنگ می زنم.","تعمیرکار به خانه می آید.","نمی تونم تعمیرش کنم."],"correctIndex":0}','{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',7,v_t_6,NULL,'جمله تماس را به ترتیب درست بساز',NULL,31,'{"source":"turn_tokens","shuffle":true}','{"cefr":"A2","module":4}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_koennen_sie_kommen,'عبارت جدید',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_9,NULL,'به شروع تماس گوش کن',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_10,NULL,'سلام کن و مشکل را بگو',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_11,NULL,'به سوال تعمیرکار گوش کن',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_12,NULL,'بپرس آیا می تواند بیاید',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',6,v_t_13,NULL,'به جواب تعمیرکار گوش کن',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',7,v_t_14,NULL,'تشکر کن',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',8,v_t_12,NULL,'معنی درست را انتخاب کن',NULL,31,'{"mode":"turn_translation","question":"«Können Sie kommen?» یعنی چی؟","choices":["می تونید بیاید؟","کی می تونید بیاید؟","می تونید تعمیرش کنید؟"],"correctIndex":0}','{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',9,NULL,NULL,'تماس را بخوان و جواب بده',NULL,31,'{"source":"lesson_story","question":"یوناس از تعمیرکار چه درخواستی دارد؟","choices":["می پرسد آیا می تواند بیاید.","می پرسد شوفاژ جدید چقدر قیمت دارد.","می گوید دیگر کمک لازم ندارد."],"correctIndex":0}','{"cefr":"A2","module":4}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_15,NULL,'به شروع تماس گوش کن',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_16,NULL,'مشکل را برای تعمیرکار توضیح بده',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_17,NULL,'به سوال تاییدی تعمیرکار گوش کن',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_18,NULL,'بپرس آیا می تواند بیاید',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_19,NULL,'به جواب تعمیرکار گوش کن',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_20,NULL,'تشکر کن',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',7,NULL,NULL,'کل تماس را بخوان و جواب بده',NULL,31,'{"source":"lesson_story","question":"در پایان تماس چه چیزی مشخص می شود؟","choices":["تعمیرکار می تواند بیاید.","شوفاژ تعمیر شده است.","یوناس دیگر به تعمیرکار نیاز ندارد."],"correctIndex":0}','{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',8,v_t_19,NULL,'جواب تعمیرکار را بررسی کن',NULL,31,'{"mode":"turn_translation","question":"«Ich kann kommen.» یعنی چی؟","choices":["می تونم بیام.","الان نمی تونم بیام.","باید تعمیرش کنم."],"correctIndex":0}','{"cefr":"A2","module":4}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 058 lesson count.'; END IF;
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

CALL import_nova_series_058_v9();
DROP PROCEDURE IF EXISTS import_nova_series_058_v9;
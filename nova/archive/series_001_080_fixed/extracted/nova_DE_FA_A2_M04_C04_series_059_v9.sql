-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 059
-- A2 > Probleme zu Hause > Wann kann er kommen?
-- Requires Series 058.
-- Continues anna-jonas-a2-home-repairs orders 13-16.
-- Schedules Herr Becker for tomorrow at three.
-- The repair itself is deliberately deferred to Series 060.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_059_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_059_v9()
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
  DECLARE v_w_wann BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_koennen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sie_formal BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kommen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_morgen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_um BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_drei BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_uhr BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_der BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_techniker BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danke BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_heizung BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_funktionieren BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_nicht BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_anrufen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_rufe_den_techniker_an BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_koennen_sie_kommen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_die_heizung_funktioniert_nicht BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_er BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wann_koennen_sie_kommen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wann_kann_er_kommen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_er_kann_morgen_um_drei_uhr_kommen BIGINT UNSIGNED DEFAULT NULL;
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
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 056 before Series 059.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=3 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=4 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 04 Chapter 04 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 058 before Series 059.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 04 Chapter 04 must be empty before Series 059 import.'; END IF;

  SELECT id INTO v_c_anna FROM characters WHERE course_id=v_course AND name='Anna' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_anna IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Anna not found.'; END IF;

  SELECT id INTO v_c_jonas FROM characters WHERE course_id=v_course AND name='Jonas' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_jonas IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Jonas not found.'; END IF;

  SELECT id INTO v_c_becker FROM characters WHERE course_id=v_course AND name='Herr Becker' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_becker IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Herr Becker not found.'; END IF;

  SELECT id INTO v_w_wann FROM words WHERE course_id=v_course AND lemma='wann' AND part_of_speech='adverb' AND translation='کی / چه زمانی' ORDER BY id LIMIT 1;
  IF v_w_wann IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word wann not found.'; END IF;

  SELECT id INTO v_w_koennen FROM words WHERE course_id=v_course AND lemma='können' AND part_of_speech='verb' AND translation='توانستن / بتوان' ORDER BY id LIMIT 1;
  IF v_w_koennen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word können not found.'; END IF;

  SELECT id INTO v_w_sie_formal FROM words WHERE course_id=v_course AND lemma='Sie' AND part_of_speech='pronoun' AND translation='شما' ORDER BY id LIMIT 1;
  IF v_w_sie_formal IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Sie not found.'; END IF;

  SELECT id INTO v_w_kommen FROM words WHERE course_id=v_course AND lemma='kommen' AND part_of_speech='verb' AND translation='آمدن' ORDER BY id LIMIT 1;
  IF v_w_kommen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word kommen not found.'; END IF;

  SELECT id INTO v_w_morgen FROM words WHERE course_id=v_course AND lemma='morgen' AND part_of_speech='adverb' AND translation='فردا' ORDER BY id LIMIT 1;
  IF v_w_morgen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word morgen not found.'; END IF;

  SELECT id INTO v_w_um FROM words WHERE course_id=v_course AND lemma='um' AND part_of_speech='preposition' AND translation='در ساعت / حوالی' ORDER BY id LIMIT 1;
  IF v_w_um IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word um not found.'; END IF;

  SELECT id INTO v_w_drei FROM words WHERE course_id=v_course AND lemma='drei' AND part_of_speech='number' AND translation='سه' ORDER BY id LIMIT 1;
  IF v_w_drei IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word drei not found.'; END IF;

  SELECT id INTO v_w_uhr FROM words WHERE course_id=v_course AND lemma='Uhr' AND part_of_speech='noun' AND translation='ساعت' ORDER BY id LIMIT 1;
  IF v_w_uhr IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Uhr not found.'; END IF;

  SELECT id INTO v_w_der FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_der IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word der not found.'; END IF;

  SELECT id INTO v_w_techniker FROM words WHERE course_id=v_course AND lemma='Techniker' AND part_of_speech='noun' AND translation='تعمیرکار / تکنسین' ORDER BY id LIMIT 1;
  IF v_w_techniker IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Techniker not found.'; END IF;

  SELECT id INTO v_w_ich FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_ich IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ich not found.'; END IF;

  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;

  SELECT id INTO v_w_danke FROM words WHERE course_id=v_course AND lemma='danke' AND part_of_speech='interjection' AND translation='ممنون' ORDER BY id LIMIT 1;
  IF v_w_danke IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word danke not found.'; END IF;

  SELECT id INTO v_w_gut FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_gut IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gut not found.'; END IF;

  SELECT id INTO v_w_heizung FROM words WHERE course_id=v_course AND lemma='Heizung' AND part_of_speech='noun' AND translation='سیستم گرمایشی / شوفاژ' ORDER BY id LIMIT 1;
  IF v_w_heizung IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Heizung not found.'; END IF;

  SELECT id INTO v_w_funktionieren FROM words WHERE course_id=v_course AND lemma='funktionieren' AND part_of_speech='verb' AND translation='کار کردن / درست کار کردن' ORDER BY id LIMIT 1;
  IF v_w_funktionieren IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word funktionieren not found.'; END IF;

  SELECT id INTO v_w_nicht FROM words WHERE course_id=v_course AND lemma='nicht' AND part_of_speech='particle' AND translation='نه / نیست' ORDER BY id LIMIT 1;
  IF v_w_nicht IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word nicht not found.'; END IF;

  SELECT id INTO v_w_anrufen FROM words WHERE course_id=v_course AND lemma='anrufen' AND part_of_speech='verb' AND translation='زنگ زدن / تماس گرفتن' ORDER BY id LIMIT 1;
  IF v_w_anrufen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word anrufen not found.'; END IF;

  SELECT id INTO v_w_ich_rufe_den_techniker_an FROM words WHERE course_id=v_course AND lemma='Ich rufe den Techniker an.' AND part_of_speech='phrase' AND translation='به تعمیرکار زنگ می زنم.' ORDER BY id LIMIT 1;
  IF v_w_ich_rufe_den_techniker_an IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Ich rufe den Techniker an. not found.'; END IF;

  SELECT id INTO v_w_koennen_sie_kommen FROM words WHERE course_id=v_course AND lemma='Können Sie kommen?' AND part_of_speech='phrase' AND translation='می تونید بیاید؟' ORDER BY id LIMIT 1;
  IF v_w_koennen_sie_kommen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Können Sie kommen? not found.'; END IF;

  SELECT id INTO v_w_die_heizung_funktioniert_nicht FROM words WHERE course_id=v_course AND lemma='Die Heizung funktioniert nicht.' AND part_of_speech='phrase' AND translation='شوفاژ کار نمی کند.' ORDER BY id LIMIT 1;
  IF v_w_die_heizung_funktioniert_nicht IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Die Heizung funktioniert nicht. not found.'; END IF;

  SELECT id INTO v_w_er FROM words WHERE course_id=v_course AND lemma='er' AND part_of_speech='pronoun' AND translation='او (مذکر)' ORDER BY id LIMIT 1;
  IF v_w_er IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'er','er','pronoun','او (مذکر)',31,'{"person":"3sg","gender":"masculine","case":"nominative"}','[{"text":"ich","translation":"من"},{"text":"du","translation":"تو"},{"text":"wir","translation":"ما"},{"text":"ihr","translation":"شما (جمع دوستانه)"},{"text":"es","translation":"آن / آن چیز"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":59,"module":4}');
    SET v_w_er=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_wann_koennen_sie_kommen FROM words WHERE course_id=v_course AND lemma='Wann können Sie kommen?' AND part_of_speech='phrase' AND translation='کی می تونید بیاید؟' ORDER BY id LIMIT 1;
  IF v_w_wann_koennen_sie_kommen IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Wann können Sie kommen?','Wann können Sie kommen?','phrase','کی می تونید بیاید؟',31,'{"questionWord":"wann","modal":"können","modalForm":"können","person":"formal_2","infinitive":"kommen","register":"formal"}','[{"text":"Können Sie kommen?","translation":"می تونید بیاید؟"},{"text":"Wann kann er kommen?","translation":"کی می تونه بیاد؟"},{"text":"Was können wir machen?","translation":"چه کاری می تونیم انجام بدیم؟"},{"text":"Kannst du morgen?","translation":"فردا می تونی؟"},{"text":"Ich rufe den Techniker an.","translation":"به تعمیرکار زنگ می زنم."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":59,"module":4}');
    SET v_w_wann_koennen_sie_kommen=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_wann_kann_er_kommen FROM words WHERE course_id=v_course AND lemma='Wann kann er kommen?' AND part_of_speech='phrase' AND translation='کی می تونه بیاد؟' ORDER BY id LIMIT 1;
  IF v_w_wann_kann_er_kommen IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Wann kann er kommen?','Wann kann er kommen?','phrase','کی می تونه بیاد؟',32,'{"questionWord":"wann","modal":"können","modalForm":"kann","person":"3sg","subject":"er","infinitive":"kommen"}','[{"text":"Wann können Sie kommen?","translation":"کی می تونید بیاید؟"},{"text":"Kann er kommen?","translation":"می تونه بیاد؟"},{"text":"Wann kannst du kommen?","translation":"کی می تونی بیای؟"},{"text":"Er kann morgen kommen.","translation":"فردا می تونه بیاد."},{"text":"Können Sie kommen?","translation":"می تونید بیاید؟"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":59,"module":4}');
    SET v_w_wann_kann_er_kommen=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_er_kann_morgen_um_drei_uhr_kommen FROM words WHERE course_id=v_course AND lemma='Er kann morgen um drei Uhr kommen.' AND part_of_speech='phrase' AND translation='فردا ساعت سه می تونه بیاد.' ORDER BY id LIMIT 1;
  IF v_w_er_kann_morgen_um_drei_uhr_kommen IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Er kann morgen um drei Uhr kommen.','Er kann morgen um drei Uhr kommen.','phrase','فردا ساعت سه می تونه بیاد.',32,'{"subject":"er","modal":"können","modalForm":"kann","person":"3sg","time":"morgen um drei Uhr","infinitive":"kommen"}','[{"text":"Er kann morgen kommen.","translation":"فردا می تونه بیاد."},{"text":"Morgen um drei Uhr.","translation":"فردا ساعت سه."},{"text":"Ich kann morgen um drei Uhr kommen.","translation":"فردا ساعت سه می تونم بیام."},{"text":"Wann kann er kommen?","translation":"کی می تونه بیاد؟"},{"text":"Er kann heute nicht kommen.","translation":"امروز نمی تونه بیاد."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":59,"module":4}');
    SET v_w_er_kann_morgen_um_drei_uhr_kommen=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_becker,v_c_jonas,'Wann können Sie kommen?','کی می تونید بیاید؟','Herr Becker hat bestätigt, dass er kommen kann. Jonas fragt jetzt höflich nach dem Zeitpunkt.','آقای بکر تایید کرده که می تواند بیاید. یوناس حالا مودبانه درباره زمان آمدن می پرسد.','story','anna-jonas-a2-home-repairs',13,31,110,1,'validated','{"context":"scheduling-technician-visit","cefr":"A2","module":4,"focus":"formal-to-third-person-time-report"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_becker,1,'character','Ja. Ich kann kommen.','بله. می تونم بیام.',31,NULL,NULL,NULL,NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"kann","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونم","form":"modal_present_1sg"},{"surface":"kommen","lemma":"kommen","translation":"آمدن","partOfSpeech":"verb","meaning":"بیام","form":"infinitive_after_modal","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_jonas,2,'learner','Wann können Sie kommen?','کی می تونید بیاید؟',31,NULL,NULL,'wann können sie kommen',NULL,'[{"surface":"Wann","lemma":"wann","translation":"کی / چه زمانی","partOfSpeech":"adverb","meaning":"کی / چه زمانی"},{"surface":"können","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونید","form":"modal_present_formal"},{"surface":"Sie","lemma":"Sie","translation":"شما","partOfSpeech":"pronoun","meaning":"شما","form":"formal_2"},{"surface":"kommen","lemma":"kommen","translation":"آمدن","partOfSpeech":"verb","meaning":"بیاید","form":"infinitive_after_modal","suffix":"?"}]','اضافه کردن Wann به درخواست رسمی','در Series قبل «Können Sie kommen?» را داشتی. با اضافه کردن «Wann» می پرسی دقیقا چه زمانی می توانند بیایند.',NULL,'{"cefr":"A2","module":4}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_becker,3,'character','Morgen um drei Uhr.','فردا ساعت سه.',31,NULL,NULL,NULL,NULL,'[{"surface":"Morgen","lemma":"morgen","translation":"فردا","partOfSpeech":"adverb","meaning":"فردا"},{"surface":"um","lemma":"um","translation":"در ساعت / حوالی","partOfSpeech":"preposition","meaning":"ساعت / در ساعت","form":"time_preposition"},{"surface":"drei","lemma":"drei","translation":"سه","partOfSpeech":"number"},{"surface":"Uhr","lemma":"Uhr","translation":"ساعت","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_jonas,4,'learner','Danke.','ممنون.',31,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_4=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_jonas,v_c_anna,'Wann kann er kommen?','کی می تونه بیاد؟','Nach dem Telefonat erzählt Jonas Anna, dass der Techniker kommen kann. Anna fragt nach der vereinbarten Zeit.','بعد از تماس، یوناس به آنا می گوید تعمیرکار می تواند بیاید. آنا درباره زمانی که هماهنگ شده می پرسد.','story','anna-jonas-a2-home-repairs',14,32,110,2,'validated','{"context":"scheduling-technician-visit","cefr":"A2","module":4,"focus":"formal-to-third-person-time-report"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_jonas,1,'character','Der Techniker kann kommen.','تعمیرکار می تونه بیاد.',32,NULL,NULL,NULL,NULL,'[{"surface":"Der","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"masculine_nominative"},{"surface":"Techniker","lemma":"Techniker","translation":"تعمیرکار / تکنسین","partOfSpeech":"noun"},{"surface":"kann","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونه","form":"modal_present_3sg"},{"surface":"kommen","lemma":"kommen","translation":"آمدن","partOfSpeech":"verb","meaning":"بیاد","form":"infinitive_after_modal","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,2,'learner','Wann kann er kommen?','کی می تونه بیاد؟',32,NULL,NULL,'wann kann er kommen',NULL,'[{"surface":"Wann","lemma":"wann","translation":"کی / چه زمانی","partOfSpeech":"adverb","meaning":"کی / چه زمانی"},{"surface":"kann","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونه","form":"modal_present_3sg"},{"surface":"er","lemma":"er","translation":"او (مذکر)","partOfSpeech":"pronoun","meaning":"او / تعمیرکار","form":"nominative_3sg_masculine"},{"surface":"kommen","lemma":"kommen","translation":"آمدن","partOfSpeech":"verb","meaning":"بیاد","form":"infinitive_after_modal","suffix":"?"}]','er برای اشاره به یک مرد','اینجا «er» به Herr Becker اشاره می کند. شکل «kann» برای «er» همان شکلی است که در این جمله می بینی؛ نیازی به جدول صرف کامل نیست.',NULL,'{"cefr":"A2","module":4}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_jonas,3,'character','Morgen um drei Uhr.','فردا ساعت سه.',32,NULL,NULL,NULL,NULL,'[{"surface":"Morgen","lemma":"morgen","translation":"فردا","partOfSpeech":"adverb","meaning":"فردا"},{"surface":"um","lemma":"um","translation":"در ساعت / حوالی","partOfSpeech":"preposition","meaning":"ساعت / در ساعت","form":"time_preposition"},{"surface":"drei","lemma":"drei","translation":"سه","partOfSpeech":"number"},{"surface":"Uhr","lemma":"Uhr","translation":"ساعت","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,4,'learner','Gut.','خوبه.',32,NULL,NULL,'gut',NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"خوبه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_8=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_anna,v_c_jonas,'Er kann morgen um drei Uhr kommen','فردا ساعت سه می تونه بیاد','Anna fragt noch einmal nach dem Zeitpunkt. Jonas gibt die Information jetzt als vollständigen Satz weiter.','آنا دوباره درباره زمان می پرسد. یوناس این بار اطلاعات را با یک جمله کامل منتقل می کند.','story','anna-jonas-a2-home-repairs',15,32,110,3,'validated','{"context":"scheduling-technician-visit","cefr":"A2","module":4,"focus":"formal-to-third-person-time-report"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,1,'character','Wann kann er kommen?','کی می تونه بیاد؟',32,NULL,NULL,NULL,NULL,'[{"surface":"Wann","lemma":"wann","translation":"کی / چه زمانی","partOfSpeech":"adverb","meaning":"کی / چه زمانی"},{"surface":"kann","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونه","form":"modal_present_3sg"},{"surface":"er","lemma":"er","translation":"او (مذکر)","partOfSpeech":"pronoun","meaning":"او / تعمیرکار","form":"nominative_3sg_masculine"},{"surface":"kommen","lemma":"kommen","translation":"آمدن","partOfSpeech":"verb","meaning":"بیاد","form":"infinitive_after_modal","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_jonas,2,'learner','Er kann morgen um drei Uhr kommen.','فردا ساعت سه می تونه بیاد.',32,NULL,NULL,'er kann morgen um drei uhr kommen',NULL,'[{"surface":"Er","lemma":"er","translation":"او (مذکر)","partOfSpeech":"pronoun","meaning":"او / تعمیرکار","form":"nominative_3sg_masculine"},{"surface":"kann","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونه","form":"modal_present_3sg"},{"surface":"morgen","lemma":"morgen","translation":"فردا","partOfSpeech":"adverb","meaning":"فردا"},{"surface":"um","lemma":"um","translation":"در ساعت / حوالی","partOfSpeech":"preposition","meaning":"ساعت / در ساعت","form":"time_preposition"},{"surface":"drei","lemma":"drei","translation":"سه","partOfSpeech":"number"},{"surface":"Uhr","lemma":"Uhr","translation":"ساعت","partOfSpeech":"noun"},{"surface":"kommen","lemma":"kommen","translation":"آمدن","partOfSpeech":"verb","meaning":"بیاد","form":"infinitive_after_modal","suffix":"."}]','زمان داخل جمله با modal','در این جمله زمان «morgen um drei Uhr» وسط جمله می آید و فعل اصلی «kommen» همچنان در پایان می ماند.',NULL,'{"cefr":"A2","module":4}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,3,'character','Gut.','خوبه.',32,NULL,NULL,NULL,NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"خوبه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_jonas,4,'learner','Ja.','بله.',32,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_12=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_anna,v_c_jonas,'Der Termin steht','زمان آمدن مشخص شد','Anna und Jonas fassen den bisherigen Ablauf zusammen: Die Heizung ist kaputt, Jonas hat angerufen und der Besuch des Technikers ist jetzt zeitlich geklärt.','آنا و یوناس روند تا اینجا را جمع بندی می کنند: شوفاژ کار نمی کند، یوناس تماس گرفته و زمان آمدن تعمیرکار حالا مشخص شده است.','story','anna-jonas-a2-home-repairs',16,32,130,4,'validated','{"context":"scheduling-technician-visit","cefr":"A2","module":4,"focus":"formal-to-third-person-time-report"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,1,'character','Die Heizung funktioniert nicht.','شوفاژ کار نمی کند.',32,NULL,NULL,NULL,NULL,'[{"surface":"Die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"feminine_nominative"},{"surface":"Heizung","lemma":"Heizung","translation":"سیستم گرمایشی / شوفاژ","partOfSpeech":"noun"},{"surface":"funktioniert","lemma":"funktionieren","translation":"کار کردن / درست کار کردن","partOfSpeech":"verb","meaning":"کار می کند","form":"present_3sg"},{"surface":"nicht","lemma":"nicht","translation":"نه / نیست","partOfSpeech":"particle","meaning":"نمی","form":"negation","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_jonas,2,'learner','Ich rufe den Techniker an.','به تعمیرکار زنگ می زنم.',32,NULL,NULL,'ich rufe den techniker an',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"rufe","lemma":"anrufen","translation":"زنگ زدن / تماس گرفتن","partOfSpeech":"verb","meaning":"زنگ می زنم","form":"separable_present_1sg_stem"},{"surface":"den","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"masculine_accusative"},{"surface":"Techniker","lemma":"Techniker","translation":"تعمیرکار / تکنسین","partOfSpeech":"noun"},{"surface":"an","lemma":"anrufen","translation":"زنگ زدن / تماس گرفتن","partOfSpeech":"verb","meaning":"بخش جداشدنی فعل","form":"separable_prefix","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,3,'character','Kann er kommen?','می تونه بیاد؟',32,NULL,NULL,NULL,NULL,'[{"surface":"Kann","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونه","form":"modal_present_3sg"},{"surface":"er","lemma":"er","translation":"او (مذکر)","partOfSpeech":"pronoun","meaning":"او / تعمیرکار","form":"nominative_3sg_masculine"},{"surface":"kommen","lemma":"kommen","translation":"آمدن","partOfSpeech":"verb","meaning":"بیاد","form":"infinitive_after_modal","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_jonas,4,'learner','Ja.','بله.',32,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,5,'character','Wann kann er kommen?','کی می تونه بیاد؟',32,NULL,NULL,NULL,NULL,'[{"surface":"Wann","lemma":"wann","translation":"کی / چه زمانی","partOfSpeech":"adverb","meaning":"کی / چه زمانی"},{"surface":"kann","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونه","form":"modal_present_3sg"},{"surface":"er","lemma":"er","translation":"او (مذکر)","partOfSpeech":"pronoun","meaning":"او / تعمیرکار","form":"nominative_3sg_masculine"},{"surface":"kommen","lemma":"kommen","translation":"آمدن","partOfSpeech":"verb","meaning":"بیاد","form":"infinitive_after_modal","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_jonas,6,'learner','Er kann morgen um drei Uhr kommen.','فردا ساعت سه می تونه بیاد.',32,NULL,NULL,'er kann morgen um drei uhr kommen',NULL,'[{"surface":"Er","lemma":"er","translation":"او (مذکر)","partOfSpeech":"pronoun","meaning":"او / تعمیرکار","form":"nominative_3sg_masculine"},{"surface":"kann","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونه","form":"modal_present_3sg"},{"surface":"morgen","lemma":"morgen","translation":"فردا","partOfSpeech":"adverb","meaning":"فردا"},{"surface":"um","lemma":"um","translation":"در ساعت / حوالی","partOfSpeech":"preposition","meaning":"ساعت / در ساعت","form":"time_preposition"},{"surface":"drei","lemma":"drei","translation":"سه","partOfSpeech":"number"},{"surface":"Uhr","lemma":"Uhr","translation":"ساعت","partOfSpeech":"noun"},{"surface":"kommen","lemma":"kommen","translation":"آمدن","partOfSpeech":"verb","meaning":"بیاد","form":"infinitive_after_modal","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,7,'character','Gut.','خوبه.',32,NULL,NULL,NULL,NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"خوبه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_jonas,8,'learner','Ja.','بله.',32,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_20=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_koennen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_kommen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_wann,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_sie_formal,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_morgen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_um,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_drei,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_uhr,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_koennen_sie_kommen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_wann_koennen_sie_kommen,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_der,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_techniker,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_koennen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_kommen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_wann,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_er,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_morgen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_um,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_drei,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_uhr,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_wann_kann_er_kommen,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_wann,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_koennen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_er,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_kommen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_morgen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_um,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_drei,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_uhr,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_wann_kann_er_kommen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_er_kann_morgen_um_drei_uhr_kommen,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_der,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_heizung,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_funktionieren,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_nicht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_anrufen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_techniker,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_koennen,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_er,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_kommen,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wann,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_morgen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_um,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_drei,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_uhr,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_die_heizung_funktioniert_nicht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich_rufe_den_techniker_an,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wann_kann_er_kommen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_er_kann_morgen_um_drei_uhr_kommen,'review',0,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_wann_koennen_sie_kommen,'عبارت جدید',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به جواب تعمیرکار گوش کن',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'مودبانه زمان آمدن را بپرس',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به زمان پیشنهادی گوش کن',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'تشکر کن',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,v_t_2,NULL,'معنی درست را انتخاب کن',NULL,31,'{"mode":"turn_translation","question":"«Wann können Sie kommen?» یعنی چی؟","choices":["کی می تونید بیاید؟","می تونید بیاید؟","کی می تونه بیاد؟"],"correctIndex":0}','{"cefr":"A2","module":4}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_wann_kann_er_kommen,'عبارت جدید',NULL,32,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به خبر یوناس گوش کن',NULL,32,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'بپرس تعمیرکار کی می تونه بیاد',NULL,32,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به زمان آمدن گوش کن',NULL,32,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'تایید کن',NULL,32,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_6,NULL,'معنی درست را انتخاب کن',NULL,32,'{"mode":"turn_translation","question":"«Wann kann er kommen?» یعنی چی؟","choices":["کی می تونه بیاد؟","کی می تونید بیاید؟","فردا می تونه بیاد."],"correctIndex":0}','{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',7,v_t_6,NULL,'سوال زمان را به ترتیب درست بساز',NULL,32,'{"source":"turn_tokens","shuffle":true}','{"cefr":"A2","module":4}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_er_kann_morgen_um_drei_uhr_kommen,'عبارت جدید',NULL,32,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_9,NULL,'به سوال آنا گوش کن',NULL,32,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_10,NULL,'زمان آمدن تعمیرکار را کامل بگو',NULL,32,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_11,NULL,'به واکنش آنا گوش کن',NULL,32,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_12,NULL,'تایید کن',NULL,32,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_10,NULL,'معنی درست را انتخاب کن',NULL,32,'{"mode":"turn_translation","question":"«Er kann morgen um drei Uhr kommen.» یعنی چی؟","choices":["فردا ساعت سه می تونه بیاد.","امروز ساعت سه می تونه بیاد.","فردا نمی تونه بیاد."],"correctIndex":0}','{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,32,'{"source":"lesson_story","question":"تعمیرکار چه زمانی می تواند بیاید؟","choices":["فردا ساعت سه.","امروز ساعت سه.","فردا صبح بدون زمان مشخص."],"correctIndex":0}','{"cefr":"A2","module":4}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_13,NULL,'به مشکل اصلی گوش کن',NULL,32,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_14,NULL,'بگو به تعمیرکار زنگ می زنی',NULL,32,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_15,NULL,'به سوال آنا گوش کن',NULL,32,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_16,NULL,'تایید کن که می تواند بیاید',NULL,32,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_17,NULL,'به سوال زمان گوش کن',NULL,32,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_18,NULL,'زمان آمدن تعمیرکار را کامل بگو',NULL,32,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',7,v_t_19,NULL,'به واکنش آنا گوش کن',NULL,32,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',8,v_t_20,NULL,'تایید کن',NULL,32,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',9,NULL,NULL,'کل گفتگو را بخوان و جواب بده',NULL,32,'{"source":"lesson_story","question":"در پایان این Chapter چه چیزی مشخص شده است؟","choices":["تعمیرکار فردا ساعت سه می آید.","شوفاژ تعمیر شده است.","یوناس هنوز با تعمیرکار تماس نگرفته است."],"correctIndex":0}','{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',10,v_t_18,NULL,'زمان آمدن را بررسی کن',NULL,32,'{"mode":"turn_translation","question":"«Er kann morgen um drei Uhr kommen.» یعنی چی؟","choices":["فردا ساعت سه می تونه بیاد.","امروز ساعت سه میاد.","فردا ساعت سه نمی تونه بیاد."],"correctIndex":0}','{"cefr":"A2","module":4}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 059 lesson count.'; END IF;
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

CALL import_nova_series_059_v9();
DROP PROCEDURE IF EXISTS import_nova_series_059_v9;
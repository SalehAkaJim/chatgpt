-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 053
-- A2 > Arbeit & Aufgaben > Ich bin noch nicht fertig
-- Requires Series 052.
-- Continues Anna + Martin office-task storyline.
-- Introduces task status with fertig + noch nicht.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_053_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_053_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_anna BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_martin BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_du BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_nicht BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_nein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danke BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_problem BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kannst_du_mir_helfen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja_ich_helfe_dir BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_fertig BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_noch BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_bin_noch_nicht_fertig BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_noch_nicht BIGINT UNSIGNED DEFAULT NULL;
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

  DECLARE EXIT HANDLER FOR SQLEXCEPTION
  BEGIN ROLLBACK; RESIGNAL; END;

  START TRANSACTION;
  SELECT id INTO v_course FROM courses WHERE learning_language='de' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='A2' AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Level not found.'; END IF;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 051 before Series 053.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=2 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 03 Chapter 03 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 052 before Series 053.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 03 Chapter 03 must be empty before Series 053 import.'; END IF;

  SELECT id INTO v_c_anna FROM characters WHERE course_id=v_course AND name='Anna' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_anna IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Anna not found.'; END IF;

  SELECT id INTO v_c_martin FROM characters WHERE course_id=v_course AND name='Martin' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_martin IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Martin not found.'; END IF;

  SELECT id INTO v_w_sein FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_sein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word sein not found.'; END IF;

  SELECT id INTO v_w_du FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_du IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word du not found.'; END IF;

  SELECT id INTO v_w_ich FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_ich IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ich not found.'; END IF;

  SELECT id INTO v_w_nicht FROM words WHERE course_id=v_course AND lemma='nicht' AND part_of_speech='particle' AND translation='نه / نیست' ORDER BY id LIMIT 1;
  IF v_w_nicht IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word nicht not found.'; END IF;

  SELECT id INTO v_w_nein FROM words WHERE course_id=v_course AND lemma='nein' AND part_of_speech='interjection' AND translation='نه' ORDER BY id LIMIT 1;
  IF v_w_nein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word nein not found.'; END IF;

  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;

  SELECT id INTO v_w_gut FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_gut IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gut not found.'; END IF;

  SELECT id INTO v_w_danke FROM words WHERE course_id=v_course AND lemma='danke' AND part_of_speech='interjection' AND translation='ممنون' ORDER BY id LIMIT 1;
  IF v_w_danke IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word danke not found.'; END IF;

  SELECT id INTO v_w_kein FROM words WHERE course_id=v_course AND lemma='kein' AND part_of_speech='determiner' AND translation='هیچ / نه یک' ORDER BY id LIMIT 1;
  IF v_w_kein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word kein not found.'; END IF;

  SELECT id INTO v_w_problem FROM words WHERE course_id=v_course AND lemma='Problem' AND part_of_speech='noun' AND translation='مشکل' ORDER BY id LIMIT 1;
  IF v_w_problem IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Problem not found.'; END IF;

  SELECT id INTO v_w_kannst_du_mir_helfen FROM words WHERE course_id=v_course AND lemma='Kannst du mir helfen?' AND part_of_speech='phrase' AND translation='می تونی کمکم کنی؟' ORDER BY id LIMIT 1;
  IF v_w_kannst_du_mir_helfen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Kannst du mir helfen? not found.'; END IF;

  SELECT id INTO v_w_ja_ich_helfe_dir FROM words WHERE course_id=v_course AND lemma='Ja, ich helfe dir.' AND part_of_speech='phrase' AND translation='بله، کمکت می کنم.' ORDER BY id LIMIT 1;
  IF v_w_ja_ich_helfe_dir IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Ja, ich helfe dir. not found.'; END IF;

  SELECT id INTO v_w_fertig FROM words WHERE course_id=v_course AND lemma='fertig' AND part_of_speech='adjective' AND translation='تمام / آماده' ORDER BY id LIMIT 1;
  IF v_w_fertig IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'fertig','fertig','adjective','تمام / آماده',28,'{"usage":"task_status"}','[{"text":"kaputt","translation":"خراب"},{"text":"sauber","translation":"تمیز"},{"text":"gut","translation":"خوب"},{"text":"später","translation":"بعدا"},{"text":"Problem","translation":"مشکل"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":53,"module":3}');
    SET v_w_fertig=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_noch FROM words WHERE course_id=v_course AND lemma='noch' AND part_of_speech='adverb' AND translation='هنوز' ORDER BY id LIMIT 1;
  IF v_w_noch IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'noch','noch','adverb','هنوز',28,'{"usage":"continuing_state"}','[{"text":"schon","translation":"از قبل / دیگه"},{"text":"jetzt","translation":"الان"},{"text":"später","translation":"بعدا"},{"text":"heute","translation":"امروز"},{"text":"nicht","translation":"نه / نیست"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":53,"module":3}');
    SET v_w_noch=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_ich_bin_noch_nicht_fertig FROM words WHERE course_id=v_course AND lemma='Ich bin noch nicht fertig.' AND part_of_speech='phrase' AND translation='هنوز تمام نکرده ام.' ORDER BY id LIMIT 1;
  IF v_w_ich_bin_noch_nicht_fertig IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich bin noch nicht fertig.','Ich bin noch nicht fertig.','phrase','هنوز تمام نکرده ام.',28,'{"verb":"sein","verbForm":"bin","person":"1sg","statusAdjective":"fertig","continuity":"noch","negation":"nicht"}','[{"text":"Ich bin fertig.","translation":"کارم تمام شده."},{"text":"Noch nicht.","translation":"هنوز نه."},{"text":"Kein Problem.","translation":"مشکلی نیست."},{"text":"Ich muss arbeiten.","translation":"باید کار کنم."},{"text":"Ich komme später.","translation":"دیرتر میام."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":53,"module":3}');
    SET v_w_ich_bin_noch_nicht_fertig=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_noch_nicht FROM words WHERE course_id=v_course AND lemma='Noch nicht.' AND part_of_speech='phrase' AND translation='هنوز نه.' ORDER BY id LIMIT 1;
  IF v_w_noch_nicht IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Noch nicht.','Noch nicht.','phrase','هنوز نه.',28,'{"continuity":"noch","negation":"nicht","pragmaticFunction":"short_status_reply"}','[{"text":"Ja.","translation":"بله."},{"text":"Nein.","translation":"نه."},{"text":"Kein Problem.","translation":"مشکلی نیست."},{"text":"Ich bin fertig.","translation":"کارم تمام شده."},{"text":"Danke.","translation":"ممنون."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":53,"module":3}');
    SET v_w_noch_nicht=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_martin,v_c_anna,'Fertig?','تمام شده؟','Martin fragt nach dem Stand der Aufgabe. Anna kann kurz sagen, dass sie noch nicht fertig ist.','مارتین درباره وضعیت کار می پرسد. آنا می تواند کوتاه بگوید که هنوز کارش تمام نشده است.','story','anna-martin-work-tasks',9,28,105,1,'validated','{"relationship":"team_lead_and_employee","context":"reporting-task-status","cefr":"A2","focus":"noch-nicht-fertig"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_martin,1,'character','Bist du fertig?','کارت تمام شده؟',28,NULL,NULL,NULL,NULL,'[{"surface":"Bist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"هستی / شده","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"fertig","lemma":"fertig","translation":"تمام / آماده","partOfSpeech":"adjective","meaning":"تمام / آماده","suffix":"?"}]','fertig برای وضعیت کار','«fertig» یعنی چیزی تمام یا آماده شده است. در محیط کار خیلی وقت ها با «Bist du fertig?» وضعیت انجام کار را می پرسند.',NULL,'{"cefr":"A2","module":3}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,2,'learner','Noch nicht.','هنوز نه.',28,NULL,NULL,'noch nicht',NULL,'[{"surface":"Noch","lemma":"noch","translation":"هنوز","partOfSpeech":"adverb","meaning":"هنوز"},{"surface":"nicht","lemma":"nicht","translation":"نه / نیست","partOfSpeech":"particle","meaning":"نه / هنوز نشده","form":"negation","suffix":"."}]','noch nicht','«noch nicht» یعنی «هنوز نه / هنوز نشده». فعلا این ترکیب را به صورت یک جواب کوتاه و کاربردی یاد بگیر.',NULL,'{"cefr":"A2","module":3}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_martin,3,'character','Kein Problem.','مشکلی نیست.',28,NULL,NULL,NULL,NULL,'[{"surface":"Kein","lemma":"kein","translation":"هیچ / نه یک","partOfSpeech":"determiner","meaning":"هیچ / بدون","form":"neuter_nominative_accusative"},{"surface":"Problem","lemma":"Problem","translation":"مشکل","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,4,'learner','Danke.','ممنون.',28,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_4=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_martin,v_c_anna,'Ich bin noch nicht fertig','هنوز تمام نکرده ام','Anna gibt Martin jetzt einen vollständigen Statussatz statt nur einer kurzen Antwort.','آنا حالا به جای یک جواب کوتاه، وضعیت کارش را با یک جمله کامل به مارتین می گوید.','story','anna-martin-work-tasks',10,28,105,2,'validated','{"relationship":"team_lead_and_employee","context":"reporting-task-status","cefr":"A2","focus":"noch-nicht-fertig"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_martin,1,'character','Bist du fertig?','کارت تمام شده؟',28,NULL,NULL,NULL,NULL,'[{"surface":"Bist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"هستی / شده","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"fertig","lemma":"fertig","translation":"تمام / آماده","partOfSpeech":"adjective","meaning":"تمام / آماده","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,2,'learner','Nein. Ich bin noch nicht fertig.','نه. هنوز تمام نکرده ام.',28,NULL,NULL,'nein ich bin noch nicht fertig',NULL,'[{"surface":"Nein","lemma":"nein","translation":"نه","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"bin","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"هستم / شده ام","form":"present_1sg"},{"surface":"noch","lemma":"noch","translation":"هنوز","partOfSpeech":"adverb","meaning":"هنوز"},{"surface":"nicht","lemma":"nicht","translation":"نه / نیست","partOfSpeech":"particle","meaning":"نه / نشده","form":"negation"},{"surface":"fertig","lemma":"fertig","translation":"تمام / آماده","partOfSpeech":"adjective","meaning":"تمام","suffix":"."}]','noch + nicht برای وضعیت ادامه دار','«Ich bin noch nicht fertig.» یعنی کار هنوز به پایان نرسیده است. «bin» و «nicht» را از قبل می شناسی؛ چیز اصلی اینجا ترکیب «noch nicht» است.',NULL,'{"cefr":"A2","module":3}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_martin,3,'character','Kein Problem.','مشکلی نیست.',28,NULL,NULL,NULL,NULL,'[{"surface":"Kein","lemma":"kein","translation":"هیچ / نه یک","partOfSpeech":"determiner","meaning":"هیچ / بدون","form":"neuter_nominative_accusative"},{"surface":"Problem","lemma":"Problem","translation":"مشکل","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,4,'learner','Danke.','ممنون.',28,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_8=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_martin,v_c_anna,'Noch nicht','هنوز نه','Martin fragt erneut nach dem Arbeitsstand. Anna übt die kurze natürliche Antwort Noch nicht.','مارتین دوباره درباره وضعیت کار می پرسد. آنا جواب کوتاه و طبیعی «هنوز نه» را تمرین می کند.','story','anna-martin-work-tasks',11,28,105,3,'validated','{"relationship":"team_lead_and_employee","context":"reporting-task-status","cefr":"A2","focus":"noch-nicht-fertig"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_martin,1,'character','Bist du fertig?','کارت تمام شده؟',28,NULL,NULL,NULL,NULL,'[{"surface":"Bist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"هستی / شده","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"fertig","lemma":"fertig","translation":"تمام / آماده","partOfSpeech":"adjective","meaning":"تمام / آماده","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,2,'learner','Noch nicht.','هنوز نه.',28,NULL,NULL,'noch nicht',NULL,'[{"surface":"Noch","lemma":"noch","translation":"هنوز","partOfSpeech":"adverb","meaning":"هنوز"},{"surface":"nicht","lemma":"nicht","translation":"نه / نیست","partOfSpeech":"particle","meaning":"نه / نشده","form":"negation","suffix":"."}]','جواب کوتاه به جای تکرار جمله کامل','وقتی موضوع روشن است، لازم نیست همیشه جمله کامل را تکرار کنی. «Noch nicht.» یک جواب طبیعی و بسیار رایج است.',NULL,'{"cefr":"A2","module":3}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_martin,3,'character','Gut.','باشه.',28,NULL,NULL,NULL,NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"باشه / خوب","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,4,'learner','Danke.','ممنون.',28,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_12=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_martin,v_c_anna,'Der Arbeitsstand','وضعیت کار','Martin prüft den Stand der Aufgabe. Anna meldet ehrlich, dass sie noch nicht fertig ist, und Martin akzeptiert den Status.','مارتین وضعیت کار را بررسی می کند. آنا صادقانه می گوید هنوز تمام نکرده و مارتین وضعیت را می پذیرد.','story','anna-martin-work-tasks',12,28,105,4,'validated','{"relationship":"team_lead_and_employee","context":"reporting-task-status","cefr":"A2","focus":"noch-nicht-fertig"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_martin,1,'character','Bist du fertig?','کارت تمام شده؟',28,NULL,NULL,NULL,NULL,'[{"surface":"Bist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"هستی / شده","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"fertig","lemma":"fertig","translation":"تمام / آماده","partOfSpeech":"adjective","meaning":"تمام / آماده","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,2,'learner','Nein. Ich bin noch nicht fertig.','نه. هنوز تمام نکرده ام.',28,NULL,NULL,'nein ich bin noch nicht fertig',NULL,'[{"surface":"Nein","lemma":"nein","translation":"نه","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"bin","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"هستم / شده ام","form":"present_1sg"},{"surface":"noch","lemma":"noch","translation":"هنوز","partOfSpeech":"adverb","meaning":"هنوز"},{"surface":"nicht","lemma":"nicht","translation":"نه / نیست","partOfSpeech":"particle","meaning":"نه / نشده","form":"negation"},{"surface":"fertig","lemma":"fertig","translation":"تمام / آماده","partOfSpeech":"adjective","meaning":"تمام","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_martin,3,'character','Kein Problem.','مشکلی نیست.',28,NULL,NULL,NULL,NULL,'[{"surface":"Kein","lemma":"kein","translation":"هیچ / نه یک","partOfSpeech":"determiner","meaning":"هیچ / بدون","form":"neuter_nominative_accusative"},{"surface":"Problem","lemma":"Problem","translation":"مشکل","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,4,'learner','Danke.','ممنون.',28,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_16=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_sein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_fertig,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_noch,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_nicht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_kein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_problem,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_danke,'review',0,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_sein,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_fertig,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_nein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_noch,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_nicht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_kein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_problem,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_noch_nicht,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_ich_bin_noch_nicht_fertig,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_sein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_fertig,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_noch,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_nicht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_ich_bin_noch_nicht_fertig,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_noch_nicht,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_sein,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_fertig,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_nein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_noch,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_nicht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_kein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_problem,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_ich_bin_noch_nicht_fertig,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_noch_nicht,'review',0,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_fertig,'کلمه جدید برای وضعیت کار',NULL,28,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به سوال مارتین گوش کن',NULL,28,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'بگو هنوز نه',NULL,28,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به جواب مارتین گوش کن',NULL,28,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'تشکر کن',NULL,28,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,NULL,v_w_fertig,'معنی درست را انتخاب کن',NULL,28,'{"mode":"word_translation","question":"fertig","choices":["تمام / آماده","خراب","دیرتر"],"correctIndex":0}','{"cefr":"A2","module":3}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_ich_bin_noch_nicht_fertig,'عبارت جدید',NULL,28,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به سوال وضعیت کار گوش کن',NULL,28,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'بگو هنوز تمام نکرده ای',NULL,28,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به جواب مارتین گوش کن',NULL,28,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'تشکر کن',NULL,28,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_6,NULL,'معنی درست را انتخاب کن',NULL,28,'{"mode":"turn_translation","question":"«Ich bin noch nicht fertig.» یعنی چی؟","choices":["هنوز تمام نکرده ام.","کارم تمام شده.","هنوز شروع نکرده ام."],"correctIndex":0}','{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',7,v_t_6,NULL,'جمله وضعیت کار را به ترتیب درست بساز',NULL,28,'{"source":"turn_tokens","shuffle":true}','{"cefr":"A2","module":3}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_noch_nicht,'عبارت کوتاه جدید',NULL,28,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_9,NULL,'به سوال مارتین گوش کن',NULL,28,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_10,NULL,'کوتاه بگو هنوز نه',NULL,28,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_11,NULL,'به واکنش مارتین گوش کن',NULL,28,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_12,NULL,'تشکر کن',NULL,28,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_10,NULL,'معنی درست را انتخاب کن',NULL,28,'{"mode":"turn_translation","question":"«Noch nicht.» یعنی چی؟","choices":["هنوز نه.","دیگه تمام شد.","الان نه، فردا."],"correctIndex":0}','{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,28,'{"source":"lesson_story","question":"آیا کار آنا تمام شده است؟","choices":["نه، هنوز تمام نشده است.","بله، تمام شده است.","مارتین نمی داند."],"correctIndex":0}','{"cefr":"A2","module":3}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_13,NULL,'به سوال وضعیت کار گوش کن',NULL,28,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_14,NULL,'وضعیت کارت را کامل توضیح بده',NULL,28,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_15,NULL,'به واکنش مارتین گوش کن',NULL,28,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_16,NULL,'تشکر کن',NULL,28,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',5,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,28,'{"source":"lesson_story","question":"آنا چه وضعیتی را به مارتین گزارش می دهد؟","choices":["هنوز کارش تمام نشده است.","کارش تمام شده است.","امروز کار نمی کند."],"correctIndex":0}','{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',6,v_t_14,NULL,'معنی جمله آنا را انتخاب کن',NULL,28,'{"mode":"turn_translation","question":"«Ich bin noch nicht fertig.» یعنی چی؟","choices":["هنوز تمام نکرده ام.","مشکلی نیست.","باید چه کار کنم؟"],"correctIndex":0}','{"cefr":"A2","module":3}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 053 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count
  FROM turns t JOIN lessons l ON l.id=t.lesson_id
  WHERE l.chapter_id=v_chapter
    AND t.role='learner'
    AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count
  FROM activities ac JOIN lessons l ON l.id=ac.lesson_id
  WHERE l.chapter_id=v_chapter
    AND ac.activity_type='reading_comprehension'
    AND (ac.config IS NULL OR JSON_EXTRACT(ac.config,'$.question') IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without task.'; END IF;
  UPDATE chapters SET status='validated' WHERE id=v_chapter;
  UPDATE modules SET status='active' WHERE id=v_module;
  UPDATE levels SET status='active' WHERE id=v_level;
  COMMIT;
END$$
DELIMITER ;

CALL import_nova_series_053_v9();
DROP PROCEDURE IF EXISTS import_nova_series_053_v9;
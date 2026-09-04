-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 055
-- A2 > Arbeit & Aufgaben > Wir machen das zusammen
-- FINAL CHAPTER OF A2 MODULE 03
-- Requires Series 054. Completes A2 Module 03.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_055_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_055_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_anna BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_martin BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wir BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_machen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_das BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_fertig BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_haben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_frage BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_verstehen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_nicht BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_du BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_helfen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_koennen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_problem BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danke BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_noch BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_habe_eine_frage BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_verstehe_das_nicht BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kannst_du_mir_helfen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja_ich_helfe_dir BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_noch_nicht BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_bin_noch_nicht_fertig BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_zusammen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wir_machen_das_zusammen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_bin_fertig BIGINT UNSIGNED DEFAULT NULL;
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
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 051 before Series 055.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=4 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=5 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 03 Chapter 05 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 054 before Series 055.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 03 Chapter 05 must be empty before Series 055 import.'; END IF;

  SELECT id INTO v_c_anna FROM characters WHERE course_id=v_course AND name='Anna' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_anna IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Anna not found.'; END IF;
  SELECT id INTO v_c_martin FROM characters WHERE course_id=v_course AND name='Martin' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_martin IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Martin not found.'; END IF;
  SELECT id INTO v_w_wir FROM words WHERE course_id=v_course AND lemma='wir' AND part_of_speech='pronoun' AND translation='ما' ORDER BY id LIMIT 1;
  IF v_w_wir IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word wir not found.'; END IF;
  SELECT id INTO v_w_machen FROM words WHERE course_id=v_course AND lemma='machen' AND part_of_speech='verb' AND translation='انجام دادن' ORDER BY id LIMIT 1;
  IF v_w_machen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word machen not found.'; END IF;
  SELECT id INTO v_w_das FROM words WHERE course_id=v_course AND lemma='das' AND part_of_speech='pronoun' AND translation='این / آن' ORDER BY id LIMIT 1;
  IF v_w_das IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word das not found.'; END IF;
  SELECT id INTO v_w_ich FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_ich IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ich not found.'; END IF;
  SELECT id INTO v_w_sein FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_sein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word sein not found.'; END IF;
  SELECT id INTO v_w_fertig FROM words WHERE course_id=v_course AND lemma='fertig' AND part_of_speech='adjective' AND translation='تمام / آماده' ORDER BY id LIMIT 1;
  IF v_w_fertig IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word fertig not found.'; END IF;
  SELECT id INTO v_w_haben FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_haben IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word haben not found.'; END IF;
  SELECT id INTO v_w_ein FROM words WHERE course_id=v_course AND lemma='ein' AND part_of_speech='article' AND translation='یک / حرف تعریف نامعین' ORDER BY id LIMIT 1;
  IF v_w_ein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ein not found.'; END IF;
  SELECT id INTO v_w_frage FROM words WHERE course_id=v_course AND lemma='Frage' AND part_of_speech='noun' AND translation='سوال' ORDER BY id LIMIT 1;
  IF v_w_frage IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Frage not found.'; END IF;
  SELECT id INTO v_w_verstehen FROM words WHERE course_id=v_course AND lemma='verstehen' AND part_of_speech='verb' AND translation='فهمیدن / متوجه شدن' ORDER BY id LIMIT 1;
  IF v_w_verstehen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word verstehen not found.'; END IF;
  SELECT id INTO v_w_nicht FROM words WHERE course_id=v_course AND lemma='nicht' AND part_of_speech='particle' AND translation='نه / نیست' ORDER BY id LIMIT 1;
  IF v_w_nicht IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word nicht not found.'; END IF;
  SELECT id INTO v_w_du FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_du IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word du not found.'; END IF;
  SELECT id INTO v_w_helfen FROM words WHERE course_id=v_course AND lemma='helfen' AND part_of_speech='verb' AND translation='کمک کردن' ORDER BY id LIMIT 1;
  IF v_w_helfen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word helfen not found.'; END IF;
  SELECT id INTO v_w_koennen FROM words WHERE course_id=v_course AND lemma='können' AND part_of_speech='verb' AND translation='توانستن / بتوان' ORDER BY id LIMIT 1;
  IF v_w_koennen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word können not found.'; END IF;
  SELECT id INTO v_w_kein FROM words WHERE course_id=v_course AND lemma='kein' AND part_of_speech='determiner' AND translation='هیچ / نه یک' ORDER BY id LIMIT 1;
  IF v_w_kein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word kein not found.'; END IF;
  SELECT id INTO v_w_problem FROM words WHERE course_id=v_course AND lemma='Problem' AND part_of_speech='noun' AND translation='مشکل' ORDER BY id LIMIT 1;
  IF v_w_problem IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Problem not found.'; END IF;
  SELECT id INTO v_w_danke FROM words WHERE course_id=v_course AND lemma='danke' AND part_of_speech='interjection' AND translation='ممنون' ORDER BY id LIMIT 1;
  IF v_w_danke IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word danke not found.'; END IF;
  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;
  SELECT id INTO v_w_gut FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_gut IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gut not found.'; END IF;
  SELECT id INTO v_w_noch FROM words WHERE course_id=v_course AND lemma='noch' AND part_of_speech='adverb' AND translation='هنوز' ORDER BY id LIMIT 1;
  IF v_w_noch IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word noch not found.'; END IF;
  SELECT id INTO v_w_ich_habe_eine_frage FROM words WHERE course_id=v_course AND lemma='Ich habe eine Frage.' AND part_of_speech='phrase' AND translation='یک سوال دارم.' ORDER BY id LIMIT 1;
  IF v_w_ich_habe_eine_frage IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Ich habe eine Frage. not found.'; END IF;
  SELECT id INTO v_w_ich_verstehe_das_nicht FROM words WHERE course_id=v_course AND lemma='Ich verstehe das nicht.' AND part_of_speech='phrase' AND translation='این را نمی فهمم.' ORDER BY id LIMIT 1;
  IF v_w_ich_verstehe_das_nicht IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Ich verstehe das nicht. not found.'; END IF;
  SELECT id INTO v_w_kannst_du_mir_helfen FROM words WHERE course_id=v_course AND lemma='Kannst du mir helfen?' AND part_of_speech='phrase' AND translation='می تونی کمکم کنی؟' ORDER BY id LIMIT 1;
  IF v_w_kannst_du_mir_helfen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Kannst du mir helfen? not found.'; END IF;
  SELECT id INTO v_w_ja_ich_helfe_dir FROM words WHERE course_id=v_course AND lemma='Ja, ich helfe dir.' AND part_of_speech='phrase' AND translation='بله، کمکت می کنم.' ORDER BY id LIMIT 1;
  IF v_w_ja_ich_helfe_dir IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Ja, ich helfe dir. not found.'; END IF;
  SELECT id INTO v_w_noch_nicht FROM words WHERE course_id=v_course AND lemma='Noch nicht.' AND part_of_speech='phrase' AND translation='هنوز نه.' ORDER BY id LIMIT 1;
  IF v_w_noch_nicht IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Noch nicht. not found.'; END IF;
  SELECT id INTO v_w_ich_bin_noch_nicht_fertig FROM words WHERE course_id=v_course AND lemma='Ich bin noch nicht fertig.' AND part_of_speech='phrase' AND translation='هنوز تمام نکرده ام.' ORDER BY id LIMIT 1;
  IF v_w_ich_bin_noch_nicht_fertig IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Ich bin noch nicht fertig. not found.'; END IF;
  SELECT id INTO v_w_zusammen FROM words WHERE course_id=v_course AND lemma='zusammen' AND part_of_speech='adverb' AND translation='با هم' ORDER BY id LIMIT 1;
  IF v_w_zusammen IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'zusammen','zusammen','adverb','با هم',29,'{"usage":"joint_action"}','[{"text":"allein","translation":"تنها"},{"text":"später","translation":"بعدا"},{"text":"hier","translation":"اینجا"},{"text":"heute","translation":"امروز"},{"text":"wieder","translation":"دوباره"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":55,"module":3,"moduleFinal":true}');
    SET v_w_zusammen=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_wir_machen_das_zusammen FROM words WHERE course_id=v_course AND lemma='Wir machen das zusammen.' AND part_of_speech='phrase' AND translation='با هم انجامش می دیم.' ORDER BY id LIMIT 1;
  IF v_w_wir_machen_das_zusammen IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Wir machen das zusammen.','Wir machen das zusammen.','phrase','با هم انجامش می دیم.',29,'{"verb":"machen","verbForm":"machen","person":"1pl","object":"das","manner":"zusammen"}','[{"text":"Ich mache das.","translation":"من انجامش می دم."},{"text":"Kannst du mir helfen?","translation":"می تونی کمکم کنی؟"},{"text":"Ich verstehe das nicht.","translation":"این را نمی فهمم."},{"text":"Wir arbeiten heute.","translation":"امروز کار می کنیم."},{"text":"Ich bin noch nicht fertig.","translation":"هنوز تمام نکرده ام."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":55,"module":3,"moduleFinal":true}');
    SET v_w_wir_machen_das_zusammen=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_ich_bin_fertig FROM words WHERE course_id=v_course AND lemma='Ich bin fertig.' AND part_of_speech='phrase' AND translation='کارم تمام شده.' ORDER BY id LIMIT 1;
  IF v_w_ich_bin_fertig IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich bin fertig.','Ich bin fertig.','phrase','کارم تمام شده.',29,'{"verb":"sein","verbForm":"bin","person":"1sg","statusAdjective":"fertig"}','[{"text":"Ich bin noch nicht fertig.","translation":"هنوز تمام نکرده ام."},{"text":"Noch nicht.","translation":"هنوز نه."},{"text":"Ich habe eine Frage.","translation":"یک سوال دارم."},{"text":"Ich verstehe das nicht.","translation":"این را نمی فهمم."},{"text":"Kein Problem.","translation":"مشکلی نیست."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":55,"module":3,"moduleFinal":true}');
    SET v_w_ich_bin_fertig=LAST_INSERT_ID();
  END IF;
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_anna,v_c_martin,'Zusammen','با هم','Anna versteht einen Teil der Aufgabe noch nicht. Martin schlägt vor, das Problem gemeinsam zu lösen.','آنا هنوز بخشی از کار را متوجه نمی شود. مارتین پیشنهاد می دهد مشکل را با هم حل کنند.','story','anna-martin-work-tasks',17,29,110,1,'validated','{"relationship":"team_lead_and_employee","context":"collaborative-task-resolution","cefr":"A2","moduleFinal":true,"focus":"module-synthesis"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,1,'character','Ich verstehe das nicht.','این را نمی فهمم.',29,NULL,NULL,NULL,NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"verstehe","lemma":"verstehen","translation":"فهمیدن / متوجه شدن","partOfSpeech":"verb","meaning":"می فهمم / متوجه می شوم","form":"present_1sg"},{"surface":"das","lemma":"das","translation":"این / آن","partOfSpeech":"pronoun","meaning":"این را","form":"accusative_neuter"},{"surface":"nicht","lemma":"nicht","translation":"نه / نیست","partOfSpeech":"particle","meaning":"نمی","form":"negation","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_martin,2,'learner','Kein Problem.','مشکلی نیست.',29,NULL,NULL,'kein problem',NULL,'[{"surface":"Kein","lemma":"kein","translation":"هیچ / نه یک","partOfSpeech":"determiner","meaning":"هیچ / بدون","form":"neuter_nominative_accusative"},{"surface":"Problem","lemma":"Problem","translation":"مشکل","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,3,'character','Kannst du mir helfen?','می تونی کمکم کنی؟',29,NULL,NULL,NULL,NULL,'[{"surface":"Kannst","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونی","form":"modal_present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"mir","lemma":"ich","translation":"من","partOfSpeech":"pronoun","meaning":"به من / کمکم","form":"dative_1sg"},{"surface":"helfen","lemma":"helfen","translation":"کمک کردن","partOfSpeech":"verb","meaning":"کمک کنی","form":"infinitive_after_modal","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_martin,4,'learner','Ja. Wir machen das zusammen.','بله. با هم انجامش می دیم.',29,NULL,NULL,'ja wir machen das zusammen',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"machen","lemma":"machen","translation":"انجام دادن","partOfSpeech":"verb","meaning":"انجام می دیم","form":"present_1pl"},{"surface":"das","lemma":"das","translation":"این / آن","partOfSpeech":"pronoun","meaning":"این را / انجامش","form":"accusative_neuter"},{"surface":"zusammen","lemma":"zusammen","translation":"با هم","partOfSpeech":"adverb","meaning":"با هم","suffix":"."}]','zusammen یعنی با هم','«zusammen» یعنی «با هم». اینجا مارتین می گوید کار را با هم انجام می دهند.',NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_anna,v_c_martin,'Wir machen das zusammen','با هم انجامش می دیم','Anna erklärt ihr Verständnisproblem. Martin übernimmt die Lösung nicht allein, sondern schlägt gemeinsames Arbeiten vor.','آنا مشکلش را توضیح می دهد. مارتین کار را به تنهایی از دست او نمی گیرد و پیشنهاد می دهد با هم انجامش دهند.','story','anna-martin-work-tasks',18,29,110,2,'validated','{"relationship":"team_lead_and_employee","context":"collaborative-task-resolution","cefr":"A2","moduleFinal":true,"focus":"module-synthesis"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,1,'character','Ich habe eine Frage.','یک سوال دارم.',29,NULL,NULL,NULL,NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارم","form":"present_1sg"},{"surface":"eine","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","meaning":"یک","form":"feminine_accusative"},{"surface":"Frage","lemma":"Frage","translation":"سوال","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_martin,2,'learner','Ja?','بله؟',29,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,3,'character','Ich verstehe das nicht.','این را نمی فهمم.',29,NULL,NULL,NULL,NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"verstehe","lemma":"verstehen","translation":"فهمیدن / متوجه شدن","partOfSpeech":"verb","meaning":"می فهمم / متوجه می شوم","form":"present_1sg"},{"surface":"das","lemma":"das","translation":"این / آن","partOfSpeech":"pronoun","meaning":"این را","form":"accusative_neuter"},{"surface":"nicht","lemma":"nicht","translation":"نه / نیست","partOfSpeech":"particle","meaning":"نمی","form":"negation","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_martin,4,'learner','Kein Problem. Wir machen das zusammen.','مشکلی نیست. با هم انجامش می دیم.',29,NULL,NULL,'kein problem wir machen das zusammen',NULL,'[{"surface":"Kein","lemma":"kein","translation":"هیچ / نه یک","partOfSpeech":"determiner","meaning":"هیچ / بدون","form":"neuter_nominative_accusative"},{"surface":"Problem","lemma":"Problem","translation":"مشکل","partOfSpeech":"noun","suffix":"."},{"surface":"Wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"machen","lemma":"machen","translation":"انجام دادن","partOfSpeech":"verb","meaning":"انجام می دیم","form":"present_1pl"},{"surface":"das","lemma":"das","translation":"این / آن","partOfSpeech":"pronoun","meaning":"این را / انجامش","form":"accusative_neuter"},{"surface":"zusammen","lemma":"zusammen","translation":"با هم","partOfSpeech":"adverb","meaning":"با هم","suffix":"."}]','machen برای wir','در «Wir machen das zusammen.» فعل «machen» برای «wir» همان شکل پایه را دارد. تمرکز اصلی روی جمله کاربردی است، نه جدول صرف.',NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_martin,v_c_anna,'Ich bin fertig','کارم تمام شده','Nach Martins Hilfe kann Anna den neuen positiven Arbeitsstatus ausdrücken: Die Aufgabe ist für sie abgeschlossen.','بعد از کمک مارتین، آنا می تواند وضعیت مثبت جدید را بگوید: کارش تمام شده است.','story','anna-martin-work-tasks',19,29,110,3,'validated','{"relationship":"team_lead_and_employee","context":"collaborative-task-resolution","cefr":"A2","moduleFinal":true,"focus":"module-synthesis"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_martin,1,'character','Bist du fertig?','کارت تمام شده؟',29,NULL,NULL,NULL,NULL,'[{"surface":"Bist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"هستی / شده","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"fertig","lemma":"fertig","translation":"تمام / آماده","partOfSpeech":"adjective","meaning":"تمام / آماده","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,2,'learner','Ja. Ich bin fertig.','بله. کارم تمام شده.',29,NULL,NULL,'ja ich bin fertig',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"bin","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"هستم / شده","form":"present_1sg"},{"surface":"fertig","lemma":"fertig","translation":"تمام / آماده","partOfSpeech":"adjective","meaning":"تمام","suffix":"."}]','از noch nicht fertig به fertig','قبلا گفتی «Ich bin noch nicht fertig.» حالا با حذف «noch nicht» می گویی کار تمام شده: «Ich bin fertig.»',NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_martin,3,'character','Gut.','خوبه.',29,NULL,NULL,NULL,NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"خوبه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,4,'learner','Danke.','ممنون.',29,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_martin,v_c_anna,'Wir schaffen die Aufgabe','کار را با هم تمام می کنند','Martin prüft den Stand. Anna meldet eine Frage, erklärt das Problem, arbeitet mit Martin zusammen und schließt die Aufgabe ab.','مارتین وضعیت کار را بررسی می کند. آنا سوالش را مطرح می کند، مشکل را توضیح می دهد، با مارتین همکاری می کند و کار را به پایان می رساند.','story','anna-martin-work-tasks',20,29,130,4,'validated','{"relationship":"team_lead_and_employee","context":"collaborative-task-resolution","cefr":"A2","moduleFinal":true,"focus":"module-synthesis"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_martin,1,'character','Bist du fertig?','کارت تمام شده؟',29,NULL,NULL,NULL,NULL,'[{"surface":"Bist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"هستی / شده","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"fertig","lemma":"fertig","translation":"تمام / آماده","partOfSpeech":"adjective","meaning":"تمام / آماده","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,2,'learner','Noch nicht. Ich habe eine Frage.','هنوز نه. یک سوال دارم.',29,NULL,NULL,'noch nicht ich habe eine frage',NULL,'[{"surface":"Noch","lemma":"noch","translation":"هنوز","partOfSpeech":"adverb","meaning":"هنوز"},{"surface":"nicht","lemma":"nicht","translation":"نه / نیست","partOfSpeech":"particle","meaning":"نه / نشده","form":"negation","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارم","form":"present_1sg"},{"surface":"eine","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","meaning":"یک","form":"feminine_accusative"},{"surface":"Frage","lemma":"Frage","translation":"سوال","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_martin,3,'character','Ja?','بله؟',29,NULL,NULL,NULL,NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,4,'learner','Ich verstehe das nicht.','این را نمی فهمم.',29,NULL,NULL,'ich verstehe das nicht',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"verstehe","lemma":"verstehen","translation":"فهمیدن / متوجه شدن","partOfSpeech":"verb","meaning":"می فهمم / متوجه می شوم","form":"present_1sg"},{"surface":"das","lemma":"das","translation":"این / آن","partOfSpeech":"pronoun","meaning":"این را","form":"accusative_neuter"},{"surface":"nicht","lemma":"nicht","translation":"نه / نیست","partOfSpeech":"particle","meaning":"نمی","form":"negation","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_martin,5,'character','Kein Problem. Wir machen das zusammen.','مشکلی نیست. با هم انجامش می دیم.',29,NULL,NULL,NULL,NULL,'[{"surface":"Kein","lemma":"kein","translation":"هیچ / نه یک","partOfSpeech":"determiner","meaning":"هیچ / بدون","form":"neuter_nominative_accusative"},{"surface":"Problem","lemma":"Problem","translation":"مشکل","partOfSpeech":"noun","suffix":"."},{"surface":"Wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"machen","lemma":"machen","translation":"انجام دادن","partOfSpeech":"verb","meaning":"انجام می دیم","form":"present_1pl"},{"surface":"das","lemma":"das","translation":"این / آن","partOfSpeech":"pronoun","meaning":"این را / انجامش","form":"accusative_neuter"},{"surface":"zusammen","lemma":"zusammen","translation":"با هم","partOfSpeech":"adverb","meaning":"با هم","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,6,'learner','Danke.','ممنون.',29,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_martin,7,'character','Bist du fertig?','کارت تمام شده؟',29,NULL,NULL,NULL,NULL,'[{"surface":"Bist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"هستی / شده","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"fertig","lemma":"fertig","translation":"تمام / آماده","partOfSpeech":"adjective","meaning":"تمام / آماده","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,8,'learner','Ja. Ich bin fertig.','بله. کارم تمام شده.',29,NULL,NULL,'ja ich bin fertig',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"bin","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"هستم / شده","form":"present_1sg"},{"surface":"fertig","lemma":"fertig","translation":"تمام / آماده","partOfSpeech":"adjective","meaning":"تمام","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  SET v_t_20=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ich,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_verstehen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_das,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_nicht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_kein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_problem,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_koennen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_helfen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_wir,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_machen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_zusammen,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ich_verstehe_das_nicht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_kannst_du_mir_helfen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_wir_machen_das_zusammen,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_haben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_frage,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_verstehen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_das,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_nicht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_kein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_problem,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_wir,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_machen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_zusammen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich_habe_eine_frage,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich_verstehe_das_nicht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_wir_machen_das_zusammen,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_sein,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_fertig,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_wir_machen_das_zusammen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich_bin_noch_nicht_fertig,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich_bin_fertig,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_sein,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_du,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_fertig,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_noch,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_nicht,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_haben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_frage,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_verstehen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_das,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_kein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_problem,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wir,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_machen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_zusammen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_noch_nicht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich_habe_eine_frage,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich_verstehe_das_nicht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wir_machen_das_zusammen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich_bin_fertig,'review',0,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_zusammen,'کلمه جدید',NULL,29,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به مشکل آنا گوش کن',NULL,29,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'بگو مشکلی نیست',NULL,29,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به درخواست کمک گوش کن',NULL,29,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'بگو با هم انجامش می دید',NULL,29,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,NULL,v_w_zusammen,'معنی درست را انتخاب کن',NULL,29,'{"mode":"word_translation","question":"zusammen","choices":["با هم","تنها","بعدا"],"correctIndex":0}','{"cefr":"A2","module":3,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_wir_machen_das_zusammen,'عبارت جدید',NULL,29,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به جمله آنا گوش کن',NULL,29,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'از آنا بخواه ادامه بدهد',NULL,29,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به مشکل آنا گوش کن',NULL,29,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'پیشنهاد بده با هم انجامش بدید',NULL,29,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_8,NULL,'معنی درست را انتخاب کن',NULL,29,'{"mode":"turn_translation","question":"«Wir machen das zusammen.» یعنی چی؟","choices":["با هم انجامش می دیم.","من تنهایی انجامش می دم.","هنوز تمام نکرده ام."],"correctIndex":0}','{"cefr":"A2","module":3,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',7,v_t_8,NULL,'جمله همکاری را به ترتیب درست بساز',NULL,29,'{"source":"turn_tokens","shuffle":true,"focusSegment":["Wir","machen","das","zusammen"]}','{"cefr":"A2","module":3,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_ich_bin_fertig,'عبارت جدید',NULL,29,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_9,NULL,'به سوال وضعیت کار گوش کن',NULL,29,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_10,NULL,'بگو کارت تمام شده',NULL,29,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_11,NULL,'به واکنش مارتین گوش کن',NULL,29,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_12,NULL,'تشکر کن',NULL,29,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_10,NULL,'معنی درست را انتخاب کن',NULL,29,'{"mode":"turn_translation","question":"«Ich bin fertig.» یعنی چی؟","choices":["کارم تمام شده.","هنوز تمام نکرده ام.","یک سوال دارم."],"correctIndex":0}','{"cefr":"A2","module":3,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,29,'{"source":"lesson_story","question":"وضعیت کار آنا در پایان چیست؟","choices":["کارش تمام شده است.","هنوز کارش تمام نشده است.","کار را شروع نکرده است."],"correctIndex":0}','{"cefr":"A2","module":3,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_13,NULL,'به سوال وضعیت کار گوش کن',NULL,29,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_14,NULL,'بگو هنوز تمام نکرده ای و سوال داری',NULL,29,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_15,NULL,'به واکنش مارتین گوش کن',NULL,29,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_16,NULL,'مشکل را توضیح بده',NULL,29,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_17,NULL,'به پیشنهاد همکاری گوش کن',NULL,29,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_18,NULL,'تشکر کن',NULL,29,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',7,v_t_19,NULL,'به سوال نهایی مارتین گوش کن',NULL,29,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',8,v_t_20,NULL,'بگو کارت تمام شده',NULL,29,NULL,'{"cefr":"A2","module":3,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',9,NULL,NULL,'کل گفتگو را بخوان و جواب بده',NULL,29,'{"source":"lesson_story","question":"چه چیزی باعث می شود آنا در پایان کار را تمام کند؟","choices":["مشکلش را می گوید و با مارتین روی کار همکاری می کند.","قرار کاری را لغو می کند.","بدون پرسیدن سوال محل کار را ترک می کند."],"correctIndex":0}','{"cefr":"A2","module":3,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',10,v_t_17,NULL,'پیشنهاد مارتین را بررسی کن',NULL,29,'{"mode":"turn_translation","question":"«Wir machen das zusammen.» یعنی چی؟","choices":["با هم انجامش می دیم.","هنوز تمام نکرده ام.","باید چه کار کنم؟"],"correctIndex":0}','{"cefr":"A2","module":3,"moduleFinal":true}');
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 055 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (ac.config IS NULL OR JSON_EXTRACT(ac.config,'$.question') IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without task.'; END IF;
  UPDATE chapters SET status='validated' WHERE id=v_chapter;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE module_id=v_module;
  IF v_count<>5 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 03 completion requires exactly 5 Chapters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE module_id=v_module AND status IN ('validated','complete');
  IF v_count<>5 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='All A2 Module 03 Chapters must be validated/complete.'; END IF;
  UPDATE modules SET status='complete' WHERE id=v_module;
  UPDATE levels SET status='active' WHERE id=v_level;
  COMMIT;
END$$
DELIMITER ;

CALL import_nova_series_055_v9();
DROP PROCEDURE IF EXISTS import_nova_series_055_v9;
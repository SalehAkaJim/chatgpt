-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 060
-- A2 > Probleme zu Hause > Das Problem ist gelöst
-- FINAL CHAPTER OF A2 MODULE 04
-- Requires Series 059.
-- Continues anna-jonas-a2-home-repairs orders 17-20.
-- Resolves the heating problem and completes A2 Module 04.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_060_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_060_v9()
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
  DECLARE v_w_der BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_problem BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_heizung BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_funktionieren BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_reparieren BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danke BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_bitte BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_nicht BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_techniker BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_die_heizung_funktioniert_nicht BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wann_kann_er_kommen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_er_kann_morgen_um_drei_uhr_kommen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_loesen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wieder BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_das_problem_ist_geloest BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_die_heizung_funktioniert_wieder BIGINT UNSIGNED DEFAULT NULL;
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
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=4 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 056 before Series 060.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=4 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=5 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 04 Chapter 05 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 059 before Series 060.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_prev_chapter AND status IN ('validated','complete');
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 059 Chapter must be validated/complete before Series 060.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 04 Chapter 05 must be empty before Series 060 import.'; END IF;

  SELECT id INTO v_c_anna FROM characters WHERE course_id=v_course AND name='Anna' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_anna IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Anna not found.'; END IF;

  SELECT id INTO v_c_jonas FROM characters WHERE course_id=v_course AND name='Jonas' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_jonas IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Jonas not found.'; END IF;

  SELECT id INTO v_c_becker FROM characters WHERE course_id=v_course AND name='Herr Becker' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_becker IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Herr Becker not found.'; END IF;

  SELECT id INTO v_w_der FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_der IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word der not found.'; END IF;

  SELECT id INTO v_w_problem FROM words WHERE course_id=v_course AND lemma='Problem' AND part_of_speech='noun' AND translation='مشکل' ORDER BY id LIMIT 1;
  IF v_w_problem IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Problem not found.'; END IF;

  SELECT id INTO v_w_sein FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_sein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word sein not found.'; END IF;

  SELECT id INTO v_w_heizung FROM words WHERE course_id=v_course AND lemma='Heizung' AND part_of_speech='noun' AND translation='سیستم گرمایشی / شوفاژ' ORDER BY id LIMIT 1;
  IF v_w_heizung IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Heizung not found.'; END IF;

  SELECT id INTO v_w_funktionieren FROM words WHERE course_id=v_course AND lemma='funktionieren' AND part_of_speech='verb' AND translation='کار کردن / درست کار کردن' ORDER BY id LIMIT 1;
  IF v_w_funktionieren IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word funktionieren not found.'; END IF;

  SELECT id INTO v_w_reparieren FROM words WHERE course_id=v_course AND lemma='reparieren' AND part_of_speech='verb' AND translation='تعمیر کردن' ORDER BY id LIMIT 1;
  IF v_w_reparieren IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word reparieren not found.'; END IF;

  SELECT id INTO v_w_ich FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_ich IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ich not found.'; END IF;

  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;

  SELECT id INTO v_w_danke FROM words WHERE course_id=v_course AND lemma='danke' AND part_of_speech='interjection' AND translation='ممنون' ORDER BY id LIMIT 1;
  IF v_w_danke IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word danke not found.'; END IF;

  SELECT id INTO v_w_bitte FROM words WHERE course_id=v_course AND lemma='bitte' AND part_of_speech='interjection' AND translation='لطفا / خواهش می کنم' ORDER BY id LIMIT 1;
  IF v_w_bitte IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word bitte not found.'; END IF;

  SELECT id INTO v_w_gut FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_gut IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gut not found.'; END IF;

  SELECT id INTO v_w_nicht FROM words WHERE course_id=v_course AND lemma='nicht' AND part_of_speech='particle' AND translation='نه / نیست' ORDER BY id LIMIT 1;
  IF v_w_nicht IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word nicht not found.'; END IF;

  SELECT id INTO v_w_techniker FROM words WHERE course_id=v_course AND lemma='Techniker' AND part_of_speech='noun' AND translation='تعمیرکار / تکنسین' ORDER BY id LIMIT 1;
  IF v_w_techniker IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Techniker not found.'; END IF;

  SELECT id INTO v_w_die_heizung_funktioniert_nicht FROM words WHERE course_id=v_course AND lemma='Die Heizung funktioniert nicht.' AND part_of_speech='phrase' AND translation='شوفاژ کار نمی کند.' ORDER BY id LIMIT 1;
  IF v_w_die_heizung_funktioniert_nicht IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Die Heizung funktioniert nicht. not found.'; END IF;

  SELECT id INTO v_w_wann_kann_er_kommen FROM words WHERE course_id=v_course AND lemma='Wann kann er kommen?' AND part_of_speech='phrase' AND translation='کی می تونه بیاد؟' ORDER BY id LIMIT 1;
  IF v_w_wann_kann_er_kommen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Wann kann er kommen? not found.'; END IF;

  SELECT id INTO v_w_er_kann_morgen_um_drei_uhr_kommen FROM words WHERE course_id=v_course AND lemma='Er kann morgen um drei Uhr kommen.' AND part_of_speech='phrase' AND translation='فردا ساعت سه می تونه بیاد.' ORDER BY id LIMIT 1;
  IF v_w_er_kann_morgen_um_drei_uhr_kommen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Er kann morgen um drei Uhr kommen. not found.'; END IF;

  SELECT id INTO v_w_loesen FROM words WHERE course_id=v_course AND lemma='lösen' AND part_of_speech='verb' AND translation='حل کردن' ORDER BY id LIMIT 1;
  IF v_w_loesen IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'lösen','lösen','verb','حل کردن',32,'{"present":{"ich":"löse","du":"löst","er_sie_es":"löst"},"participle":"gelöst"}','[{"text":"reparieren","translation":"تعمیر کردن"},{"text":"helfen","translation":"کمک کردن"},{"text":"machen","translation":"انجام دادن"},{"text":"fragen","translation":"پرسیدن"},{"text":"finden","translation":"پیدا کردن"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":60,"module":4,"moduleFinal":true}');
    SET v_w_loesen=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_wieder FROM words WHERE course_id=v_course AND lemma='wieder' AND part_of_speech='adverb' AND translation='دوباره' ORDER BY id LIMIT 1;
  IF v_w_wieder IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'wieder','wieder','adverb','دوباره',32,'{"usage":"restored_state_or_repetition"}','[{"text":"noch","translation":"هنوز"},{"text":"später","translation":"بعدا"},{"text":"morgen","translation":"فردا"},{"text":"zusammen","translation":"با هم"},{"text":"nicht","translation":"نه / نیست"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":60,"module":4,"moduleFinal":true}');
    SET v_w_wieder=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_das_problem_ist_geloest FROM words WHERE course_id=v_course AND lemma='Das Problem ist gelöst.' AND part_of_speech='phrase' AND translation='مشکل حل شده.' ORDER BY id LIMIT 1;
  IF v_w_das_problem_ist_geloest IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Das Problem ist gelöst.','Das Problem ist gelöst.','phrase','مشکل حل شده.',32,'{"subject":"das Problem","copula":"sein","copulaForm":"ist","resultParticiple":"gelöst","participleLemma":"lösen","construction":"result_state"}','[{"text":"Die Heizung funktioniert wieder.","translation":"شوفاژ دوباره کار می کند."},{"text":"Das Problem ist noch da.","translation":"مشکل هنوز هست."},{"text":"Ich kann das nicht reparieren.","translation":"نمی تونم این را تعمیر کنم."},{"text":"Der Techniker kann kommen.","translation":"تعمیرکار می تونه بیاد."},{"text":"Die Heizung funktioniert nicht.","translation":"شوفاژ کار نمی کند."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":60,"module":4,"moduleFinal":true}');
    SET v_w_das_problem_ist_geloest=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_die_heizung_funktioniert_wieder FROM words WHERE course_id=v_course AND lemma='Die Heizung funktioniert wieder.' AND part_of_speech='phrase' AND translation='شوفاژ دوباره کار می کند.' ORDER BY id LIMIT 1;
  IF v_w_die_heizung_funktioniert_wieder IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Die Heizung funktioniert wieder.','Die Heizung funktioniert wieder.','phrase','شوفاژ دوباره کار می کند.',32,'{"subject":"die Heizung","verb":"funktionieren","verbForm":"funktioniert","person":"3sg","adverb":"wieder","meaning":"restored_function"}','[{"text":"Die Heizung funktioniert nicht.","translation":"شوفاژ کار نمی کند."},{"text":"Das Problem ist gelöst.","translation":"مشکل حل شده."},{"text":"Die Heizung ist kaputt.","translation":"شوفاژ خراب است."},{"text":"Der Techniker kommt morgen.","translation":"تعمیرکار فردا می آید."},{"text":"Ich repariere die Heizung.","translation":"شوفاژ را تعمیر می کنم."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":60,"module":4,"moduleFinal":true}');
    SET v_w_die_heizung_funktioniert_wieder=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_jonas,v_c_becker,'Das Problem lösen','حل کردن مشکل','Herr Becker ist zum vereinbarten Termin da. Jonas zeigt ihm die Heizung, und der Techniker übernimmt die Lösung.','آقای بکر در زمان هماهنگ شده آمده است. یوناس شوفاژ را نشانش می دهد و تعمیرکار حل مشکل را بر عهده می گیرد.','story','anna-jonas-a2-home-repairs',17,32,110,1,'validated','{"context":"home-repair-resolution","cefr":"A2","module":4,"moduleFinal":true,"focus":"result-state-and-restored-function"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_jonas,1,'character','Die Heizung funktioniert nicht.','شوفاژ کار نمی کند.',32,NULL,NULL,NULL,NULL,'[{"surface":"Die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"feminine_nominative"},{"surface":"Heizung","lemma":"Heizung","translation":"سیستم گرمایشی / شوفاژ","partOfSpeech":"noun"},{"surface":"funktioniert","lemma":"funktionieren","translation":"کار کردن / درست کار کردن","partOfSpeech":"verb","meaning":"کار می کند","form":"present_3sg"},{"surface":"nicht","lemma":"nicht","translation":"نه / نیست","partOfSpeech":"particle","meaning":"نمی","form":"negation","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4,"moduleFinal":true}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_becker,2,'learner','Ja. Ich löse das Problem.','بله. مشکل را حل می کنم.',32,NULL,NULL,'ja ich löse das problem',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"löse","lemma":"lösen","translation":"حل کردن","partOfSpeech":"verb","meaning":"حل می کنم","form":"present_1sg"},{"surface":"das","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"neuter_accusative"},{"surface":"Problem","lemma":"Problem","translation":"مشکل","partOfSpeech":"noun","suffix":"."}]','lösen یعنی حل کردن','«lösen» برای حل کردن یک مشکل به کار می رود. در «Ich löse das Problem.» شکل «löse» برای ich آمده است.',NULL,'{"cefr":"A2","module":4,"moduleFinal":true}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_jonas,3,'character','Danke.','ممنون.',32,NULL,NULL,NULL,NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4,"moduleFinal":true}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_becker,4,'learner','Bitte.','خواهش می کنم.',32,NULL,NULL,'bitte',NULL,'[{"surface":"Bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","meaning":"خواهش می کنم","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4,"moduleFinal":true}');
  SET v_t_4=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_jonas,v_c_becker,'Das Problem ist gelöst','مشکل حل شده','Nach der Arbeit prüft Jonas das Ergebnis. Herr Becker bestätigt, dass das Problem jetzt gelöst ist.','بعد از انجام کار، یوناس نتیجه را بررسی می کند. آقای بکر تایید می کند که مشکل حل شده است.','story','anna-jonas-a2-home-repairs',18,32,110,2,'validated','{"context":"home-repair-resolution","cefr":"A2","module":4,"moduleFinal":true,"focus":"result-state-and-restored-function"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_jonas,1,'character','Ist das Problem gelöst?','مشکل حل شده؟',32,NULL,NULL,NULL,NULL,'[{"surface":"Ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است / شده","form":"present_3sg"},{"surface":"das","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"neuter_nominative"},{"surface":"Problem","lemma":"Problem","translation":"مشکل","partOfSpeech":"noun"},{"surface":"gelöst","lemma":"lösen","translation":"حل کردن","partOfSpeech":"verb","meaning":"حل شده","form":"past_participle_predicative","suffix":"?"}]','gelöst به lösen برمی گردد','«gelöst» شکل participle از «lösen» است. اینجا با «ist» نتیجه را می گوید: مشکل حل شده است؛ این Chapter قرار نیست یک زمان گذشته تازه یاد بدهد.',NULL,'{"cefr":"A2","module":4,"moduleFinal":true}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_becker,2,'learner','Ja. Das Problem ist gelöst.','بله. مشکل حل شده.',32,NULL,NULL,'ja das problem ist gelöst',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Das","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"neuter_nominative"},{"surface":"Problem","lemma":"Problem","translation":"مشکل","partOfSpeech":"noun"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است / شده","form":"present_3sg"},{"surface":"gelöst","lemma":"lösen","translation":"حل کردن","partOfSpeech":"verb","meaning":"حل شده","form":"past_participle_predicative","suffix":"."}]','یک الگوی نتیجه','«Das Problem ist gelöst.» یک الگوی بسیار کاربردی برای گفتن نتیجه است. gelöst همچنان به lemma «lösen» وصل می شود.',NULL,'{"cefr":"A2","module":4,"moduleFinal":true}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_jonas,3,'character','Danke.','ممنون.',32,NULL,NULL,NULL,NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4,"moduleFinal":true}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_becker,4,'learner','Bitte.','خواهش می کنم.',32,NULL,NULL,'bitte',NULL,'[{"surface":"Bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","meaning":"خواهش می کنم","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4,"moduleFinal":true}');
  SET v_t_8=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_anna,v_c_jonas,'Die Heizung funktioniert wieder','شوفاژ دوباره کار می کند','Anna überprüft nach der Reparatur die Heizung. Jonas kann ihr jetzt sagen, dass das System wieder funktioniert.','آنا بعد از تعمیر شوفاژ را بررسی می کند. یوناس حالا می تواند بگوید سیستم دوباره کار می کند.','story','anna-jonas-a2-home-repairs',19,32,110,3,'validated','{"context":"home-repair-resolution","cefr":"A2","module":4,"moduleFinal":true,"focus":"result-state-and-restored-function"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,1,'character','Funktioniert die Heizung?','شوفاژ کار می کند؟',32,NULL,NULL,NULL,NULL,'[{"surface":"Funktioniert","lemma":"funktionieren","translation":"کار کردن / درست کار کردن","partOfSpeech":"verb","meaning":"کار می کند","form":"present_3sg"},{"surface":"die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"feminine_nominative"},{"surface":"Heizung","lemma":"Heizung","translation":"سیستم گرمایشی / شوفاژ","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":4,"moduleFinal":true}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_jonas,2,'learner','Ja. Die Heizung funktioniert wieder.','بله. شوفاژ دوباره کار می کند.',32,NULL,NULL,'ja die heizung funktioniert wieder',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"feminine_nominative"},{"surface":"Heizung","lemma":"Heizung","translation":"سیستم گرمایشی / شوفاژ","partOfSpeech":"noun"},{"surface":"funktioniert","lemma":"funktionieren","translation":"کار کردن / درست کار کردن","partOfSpeech":"verb","meaning":"کار می کند","form":"present_3sg"},{"surface":"wieder","lemma":"wieder","translation":"دوباره","partOfSpeech":"adverb","meaning":"دوباره","suffix":"."}]','wieder برای برگشتن به وضعیت قبلی','اینجا «wieder» فقط تکرار نیست؛ یعنی شوفاژ بعد از خرابی دوباره به وضعیت کار کردن برگشته است.',NULL,'{"cefr":"A2","module":4,"moduleFinal":true}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,3,'character','Gut.','خوبه.',32,NULL,NULL,NULL,NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"خوبه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4,"moduleFinal":true}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_jonas,4,'learner','Ja.','بله.',32,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4,"moduleFinal":true}');
  SET v_t_12=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_jonas,v_c_becker,'Alles funktioniert','مشکل کاملا حل شد','Jonas prüft mit Herrn Becker zum Schluss noch einmal Ergebnis und Funktion. Der Techniker bestätigt die Lösung, und die Reparaturgeschichte endet vollständig.','یوناس در پایان نتیجه و کارکرد شوفاژ را دوباره با آقای بکر بررسی می کند. تعمیرکار حل مشکل را تایید می کند و داستان تعمیر کامل تمام می شود.','story','anna-jonas-a2-home-repairs',20,32,110,4,'validated','{"context":"home-repair-resolution","cefr":"A2","module":4,"moduleFinal":true,"focus":"result-state-and-restored-function"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_jonas,1,'character','Ist das Problem gelöst?','مشکل حل شده؟',32,NULL,NULL,NULL,NULL,'[{"surface":"Ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است / شده","form":"present_3sg"},{"surface":"das","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"neuter_nominative"},{"surface":"Problem","lemma":"Problem","translation":"مشکل","partOfSpeech":"noun"},{"surface":"gelöst","lemma":"lösen","translation":"حل کردن","partOfSpeech":"verb","meaning":"حل شده","form":"past_participle_predicative","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":4,"moduleFinal":true}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_becker,2,'learner','Ja. Das Problem ist gelöst.','بله. مشکل حل شده.',32,NULL,NULL,'ja das problem ist gelöst',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Das","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"neuter_nominative"},{"surface":"Problem","lemma":"Problem","translation":"مشکل","partOfSpeech":"noun"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است / شده","form":"present_3sg"},{"surface":"gelöst","lemma":"lösen","translation":"حل کردن","partOfSpeech":"verb","meaning":"حل شده","form":"past_participle_predicative","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4,"moduleFinal":true}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_jonas,3,'character','Funktioniert die Heizung?','شوفاژ کار می کند؟',32,NULL,NULL,NULL,NULL,'[{"surface":"Funktioniert","lemma":"funktionieren","translation":"کار کردن / درست کار کردن","partOfSpeech":"verb","meaning":"کار می کند","form":"present_3sg"},{"surface":"die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"feminine_nominative"},{"surface":"Heizung","lemma":"Heizung","translation":"سیستم گرمایشی / شوفاژ","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":4,"moduleFinal":true}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_becker,4,'learner','Ja. Die Heizung funktioniert wieder.','بله. شوفاژ دوباره کار می کند.',32,NULL,NULL,'ja die heizung funktioniert wieder',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"feminine_nominative"},{"surface":"Heizung","lemma":"Heizung","translation":"سیستم گرمایشی / شوفاژ","partOfSpeech":"noun"},{"surface":"funktioniert","lemma":"funktionieren","translation":"کار کردن / درست کار کردن","partOfSpeech":"verb","meaning":"کار می کند","form":"present_3sg"},{"surface":"wieder","lemma":"wieder","translation":"دوباره","partOfSpeech":"adverb","meaning":"دوباره","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4,"moduleFinal":true}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_jonas,5,'character','Danke.','ممنون.',32,NULL,NULL,NULL,NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4,"moduleFinal":true}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_becker,6,'learner','Bitte.','خواهش می کنم.',32,NULL,NULL,'bitte',NULL,'[{"surface":"Bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","meaning":"خواهش می کنم","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4,"moduleFinal":true}');
  SET v_t_18=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_der,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_heizung,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_funktionieren,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_nicht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_loesen,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_problem,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_bitte,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_die_heizung_funktioniert_nicht,'review',0,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_sein,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_der,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_problem,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_loesen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_bitte,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_das_problem_ist_geloest,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_funktionieren,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_der,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_heizung,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_wieder,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_die_heizung_funktioniert_wieder,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_sein,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_der,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_problem,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_loesen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_funktionieren,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_heizung,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wieder,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_bitte,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_das_problem_ist_geloest,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_die_heizung_funktioniert_wieder,'review',0,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_loesen,'فعل جدید',NULL,32,NULL,'{"cefr":"A2","module":4,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به توضیح مشکل گوش کن',NULL,32,NULL,'{"cefr":"A2","module":4,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'بگو مشکل را حل می کنی',NULL,32,NULL,'{"cefr":"A2","module":4,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به تشکر یوناس گوش کن',NULL,32,NULL,'{"cefr":"A2","module":4,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'جواب تشکر را بده',NULL,32,NULL,'{"cefr":"A2","module":4,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,NULL,v_w_loesen,'معنی درست را انتخاب کن',NULL,32,'{"mode":"word_translation","question":"lösen","choices":["حل کردن","تعمیر کردن","تماس گرفتن"],"correctIndex":0}','{"cefr":"A2","module":4,"moduleFinal":true}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_das_problem_ist_geloest,'عبارت جدید',NULL,32,NULL,'{"cefr":"A2","module":4,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به سوال یوناس گوش کن',NULL,32,NULL,'{"cefr":"A2","module":4,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'بگو مشکل حل شده',NULL,32,NULL,'{"cefr":"A2","module":4,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به تشکر یوناس گوش کن',NULL,32,NULL,'{"cefr":"A2","module":4,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'جواب تشکر را بده',NULL,32,NULL,'{"cefr":"A2","module":4,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_6,NULL,'معنی درست را انتخاب کن',NULL,32,'{"mode":"turn_translation","question":"«Das Problem ist gelöst.» یعنی چی؟","choices":["مشکل حل شده.","مشکل هنوز هست.","شوفاژ کار نمی کند."],"correctIndex":0}','{"cefr":"A2","module":4,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',7,v_t_6,NULL,'جمله نتیجه را به ترتیب درست بساز',NULL,32,'{"source":"turn_tokens","shuffle":true}','{"cefr":"A2","module":4,"moduleFinal":true}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_die_heizung_funktioniert_wieder,'عبارت جدید',NULL,32,NULL,'{"cefr":"A2","module":4,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_9,NULL,'به سوال آنا گوش کن',NULL,32,NULL,'{"cefr":"A2","module":4,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_10,NULL,'بگو شوفاژ دوباره کار می کند',NULL,32,NULL,'{"cefr":"A2","module":4,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_11,NULL,'به واکنش آنا گوش کن',NULL,32,NULL,'{"cefr":"A2","module":4,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_12,NULL,'تایید کن',NULL,32,NULL,'{"cefr":"A2","module":4,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_10,NULL,'معنی درست را انتخاب کن',NULL,32,'{"mode":"turn_translation","question":"«Die Heizung funktioniert wieder.» یعنی چی؟","choices":["شوفاژ دوباره کار می کند.","شوفاژ هنوز خراب است.","تعمیرکار فردا می آید."],"correctIndex":0}','{"cefr":"A2","module":4,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,32,'{"source":"lesson_story","question":"بعد از تعمیر، وضعیت شوفاژ چیست؟","choices":["دوباره کار می کند.","هنوز کار نمی کند.","تعمیرکار هنوز نیامده است."],"correctIndex":0}','{"cefr":"A2","module":4,"moduleFinal":true}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_13,NULL,'به سوال نتیجه گوش کن',NULL,32,NULL,'{"cefr":"A2","module":4,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_14,NULL,'تایید کن مشکل حل شده',NULL,32,NULL,'{"cefr":"A2","module":4,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_15,NULL,'به سوال درباره شوفاژ گوش کن',NULL,32,NULL,'{"cefr":"A2","module":4,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_16,NULL,'بگو شوفاژ دوباره کار می کند',NULL,32,NULL,'{"cefr":"A2","module":4,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_17,NULL,'به تشکر یوناس گوش کن',NULL,32,NULL,'{"cefr":"A2","module":4,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_18,NULL,'جواب تشکر را بده',NULL,32,NULL,'{"cefr":"A2","module":4,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',7,NULL,NULL,'کل گفتگو را بخوان و جواب بده',NULL,32,'{"source":"lesson_story","question":"پایان داستان تعمیر چیست؟","choices":["مشکل حل شده و شوفاژ دوباره کار می کند.","تعمیرکار هنوز نیامده است.","یوناس هنوز نمی داند چه کار کند."],"correctIndex":0}','{"cefr":"A2","module":4,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',8,v_t_16,NULL,'نتیجه نهایی را بررسی کن',NULL,32,'{"mode":"turn_translation","question":"«Die Heizung funktioniert wieder.» یعنی چی؟","choices":["شوفاژ دوباره کار می کند.","مشکل هنوز حل نشده.","شوفاژ فردا تعمیر می شود."],"correctIndex":0}','{"cefr":"A2","module":4,"moduleFinal":true}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 060 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (ac.config IS NULL OR JSON_EXTRACT(ac.config,'$.question') IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without task.'; END IF;
  UPDATE chapters SET status='validated' WHERE id=v_chapter;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE module_id=v_module;
  IF v_count<>5 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 04 completion requires exactly 5 Chapters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE module_id=v_module AND status IN ('validated','complete');
  IF v_count<>5 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='All A2 Module 04 Chapters must be validated/complete.'; END IF;
  UPDATE modules SET status='complete' WHERE id=v_module;
  UPDATE levels SET status='active' WHERE id=v_level;
  COMMIT;
END$$
DELIMITER ;

CALL import_nova_series_060_v9();
DROP PROCEDURE IF EXISTS import_nova_series_060_v9;
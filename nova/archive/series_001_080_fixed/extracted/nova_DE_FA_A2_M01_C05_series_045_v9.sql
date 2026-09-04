-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 045
-- A2 > Über gestern sprechen > Von meinem Tag erzählen
-- FINAL CHAPTER OF A2 MODULE 01
-- Completes A2 Module 01.
-- Requires Series 044.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_045_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_045_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_anna BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_laura BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_was BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_haben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_du BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_machen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_arbeiten BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_mit BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_der BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_bus BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_fahren BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_und BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danach BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kaffee BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_was_hast_du_gemacht BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_habe_gearbeitet BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_und_danach BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_bin_mit_dem_bus_gefahren BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danach_habe_ich_kaffee_gemacht BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_zuerst BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_dann BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_zuerst_habe_ich_gearbeitet BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_dann_bin_ich_mit_dem_bus_gefahren BIGINT UNSIGNED DEFAULT NULL;
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

  DECLARE EXIT HANDLER FOR SQLEXCEPTION
  BEGIN ROLLBACK; RESIGNAL; END;

  START TRANSACTION;
  SELECT id INTO v_course FROM courses WHERE learning_language='de' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='A2' AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 041 before Series 045.'; END IF;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 01 not found.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=4 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=5 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 01 Chapter 05 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 044 before Series 045.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 01 Chapter 05 must be empty before Series 045 import.'; END IF;

  SELECT id INTO v_c_anna FROM characters WHERE course_id=v_course AND name='Anna' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_anna IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Anna not found.'; END IF;

  SELECT id INTO v_c_laura FROM characters WHERE course_id=v_course AND name='Laura' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_laura IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Laura not found.'; END IF;

  SELECT id INTO v_w_was FROM words WHERE course_id=v_course AND lemma='was' AND part_of_speech='pronoun' AND translation='چی / چه' ORDER BY id LIMIT 1;
  IF v_w_was IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word was not found.'; END IF;

  SELECT id INTO v_w_haben FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_haben IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word haben not found.'; END IF;

  SELECT id INTO v_w_du FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_du IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word du not found.'; END IF;

  SELECT id INTO v_w_machen FROM words WHERE course_id=v_course AND lemma='machen' AND part_of_speech='verb' AND translation='انجام دادن' ORDER BY id LIMIT 1;
  IF v_w_machen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word machen not found.'; END IF;

  SELECT id INTO v_w_ich FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_ich IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ich not found.'; END IF;

  SELECT id INTO v_w_arbeiten FROM words WHERE course_id=v_course AND lemma='arbeiten' AND part_of_speech='verb' AND translation='کار کردن' ORDER BY id LIMIT 1;
  IF v_w_arbeiten IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word arbeiten not found.'; END IF;

  SELECT id INTO v_w_sein FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_sein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word sein not found.'; END IF;

  SELECT id INTO v_w_mit FROM words WHERE course_id=v_course AND lemma='mit' AND part_of_speech='preposition' AND translation='با' ORDER BY id LIMIT 1;
  IF v_w_mit IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word mit not found.'; END IF;

  SELECT id INTO v_w_der FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_der IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word der not found.'; END IF;

  SELECT id INTO v_w_bus FROM words WHERE course_id=v_course AND lemma='Bus' AND part_of_speech='noun' AND translation='اتوبوس' ORDER BY id LIMIT 1;
  IF v_w_bus IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Bus not found.'; END IF;

  SELECT id INTO v_w_fahren FROM words WHERE course_id=v_course AND lemma='fahren' AND part_of_speech='verb' AND translation='رفتن با وسیله / راندن' ORDER BY id LIMIT 1;
  IF v_w_fahren IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word fahren not found.'; END IF;

  SELECT id INTO v_w_und FROM words WHERE course_id=v_course AND lemma='und' AND part_of_speech='conjunction' AND translation='و' ORDER BY id LIMIT 1;
  IF v_w_und IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word und not found.'; END IF;

  SELECT id INTO v_w_danach FROM words WHERE course_id=v_course AND lemma='danach' AND part_of_speech='adverb' AND translation='بعد از آن / بعدش' ORDER BY id LIMIT 1;
  IF v_w_danach IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word danach not found.'; END IF;

  SELECT id INTO v_w_kaffee FROM words WHERE course_id=v_course AND lemma='Kaffee' AND part_of_speech='noun' AND translation='قهوه' ORDER BY id LIMIT 1;
  IF v_w_kaffee IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Kaffee not found.'; END IF;

  SELECT id INTO v_w_gut FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_gut IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gut not found.'; END IF;

  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;

  SELECT id INTO v_w_was_hast_du_gemacht FROM words WHERE course_id=v_course AND lemma='Was hast du gemacht?' AND part_of_speech='phrase' AND translation='چه کار کردی؟' ORDER BY id LIMIT 1;
  IF v_w_was_hast_du_gemacht IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Was hast du gemacht? not found.'; END IF;

  SELECT id INTO v_w_ich_habe_gearbeitet FROM words WHERE course_id=v_course AND lemma='Ich habe gearbeitet.' AND part_of_speech='phrase' AND translation='کار کردم.' ORDER BY id LIMIT 1;
  IF v_w_ich_habe_gearbeitet IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Ich habe gearbeitet. not found.'; END IF;

  SELECT id INTO v_w_und_danach FROM words WHERE course_id=v_course AND lemma='Und danach?' AND part_of_speech='phrase' AND translation='و بعدش؟' ORDER BY id LIMIT 1;
  IF v_w_und_danach IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Und danach? not found.'; END IF;

  SELECT id INTO v_w_ich_bin_mit_dem_bus_gefahren FROM words WHERE course_id=v_course AND lemma='Ich bin mit dem Bus gefahren.' AND part_of_speech='phrase' AND translation='با اتوبوس رفتم.' ORDER BY id LIMIT 1;
  IF v_w_ich_bin_mit_dem_bus_gefahren IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Ich bin mit dem Bus gefahren. not found.'; END IF;

  SELECT id INTO v_w_danach_habe_ich_kaffee_gemacht FROM words WHERE course_id=v_course AND lemma='Danach habe ich Kaffee gemacht.' AND part_of_speech='phrase' AND translation='بعد از آن قهوه درست کردم.' ORDER BY id LIMIT 1;
  IF v_w_danach_habe_ich_kaffee_gemacht IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Danach habe ich Kaffee gemacht. not found.'; END IF;

  SELECT id INTO v_w_zuerst FROM words WHERE course_id=v_course AND lemma='zuerst' AND part_of_speech='adverb' AND translation='اول / ابتدا' ORDER BY id LIMIT 1;
  IF v_w_zuerst IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'zuerst','zuerst','adverb','اول / ابتدا',23,'{"discourseFunction":"sequence_start"}','[{"text":"danach","translation":"بعد از آن / بعدش"},{"text":"gestern","translation":"دیروز"},{"text":"heute","translation":"امروز"},{"text":"später","translation":"بعدا"},{"text":"dort","translation":"آنجا"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":45,"moduleFinal":true}');
    SET v_w_zuerst=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_dann FROM words WHERE course_id=v_course AND lemma='dann' AND part_of_speech='adverb' AND translation='بعد / سپس' ORDER BY id LIMIT 1;
  IF v_w_dann IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'dann','dann','adverb','بعد / سپس',23,'{"discourseFunction":"sequence_next"}','[{"text":"zuerst","translation":"اول / ابتدا"},{"text":"danach","translation":"بعد از آن / بعدش"},{"text":"heute","translation":"امروز"},{"text":"hier","translation":"اینجا"},{"text":"dort","translation":"آنجا"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":45,"moduleFinal":true}');
    SET v_w_dann=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_zuerst_habe_ich_gearbeitet FROM words WHERE course_id=v_course AND lemma='Zuerst habe ich gearbeitet.' AND part_of_speech='phrase' AND translation='اول کار کردم.' ORDER BY id LIMIT 1;
  IF v_w_zuerst_habe_ich_gearbeitet IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Zuerst habe ich gearbeitet.','Zuerst habe ich gearbeitet.','phrase','اول کار کردم.',23,'{"construction":"Perfekt","auxiliary":"haben","auxiliaryForm":"habe","participle":"gearbeitet","participleLemma":"arbeiten","sequenceConnector":"zuerst"}','[{"text":"Ich habe gearbeitet.","translation":"کار کردم."},{"text":"Danach habe ich Kaffee gemacht.","translation":"بعد از آن قهوه درست کردم."},{"text":"Ich bin mit dem Bus gefahren.","translation":"با اتوبوس رفتم."},{"text":"Zuerst war ich im Büro.","translation":"اول در دفتر کار بودم."},{"text":"Was hast du gemacht?","translation":"چه کار کردی؟"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":45,"moduleFinal":true}');
    SET v_w_zuerst_habe_ich_gearbeitet=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_dann_bin_ich_mit_dem_bus_gefahren FROM words WHERE course_id=v_course AND lemma='Dann bin ich mit dem Bus gefahren.' AND part_of_speech='phrase' AND translation='بعد با اتوبوس رفتم.' ORDER BY id LIMIT 1;
  IF v_w_dann_bin_ich_mit_dem_bus_gefahren IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Dann bin ich mit dem Bus gefahren.','Dann bin ich mit dem Bus gefahren.','phrase','بعد با اتوبوس رفتم.',23,'{"construction":"Perfekt","auxiliary":"sein","auxiliaryForm":"bin","participle":"gefahren","participleLemma":"fahren","sequenceConnector":"dann"}','[{"text":"Ich bin mit dem Bus gefahren.","translation":"با اتوبوس رفتم."},{"text":"Zuerst habe ich gearbeitet.","translation":"اول کار کردم."},{"text":"Danach habe ich Kaffee gemacht.","translation":"بعد از آن قهوه درست کردم."},{"text":"Ich fahre mit dem Bus.","translation":"من با اتوبوس می روم."},{"text":"Und danach?","translation":"و بعدش؟"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":45,"moduleFinal":true}');
    SET v_w_dann_bin_ich_mit_dem_bus_gefahren=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_laura,v_c_anna,'Zuerst','اول','Laura bittet Anna, ihren gestrigen Tag von Anfang an zu erzählen. Anna beginnt mit zuerst.','لورا از آنا می خواهد روز دیروزش را از اول تعریف کند. آنا روایت را با «اول» شروع می کند.','story','anna-laura-office',17,23,115,1,'validated','{"relationship":"colleagues","context":"short-past-day-narrative","cefr":"A2","moduleFinal":true,"focus":"sequence-synthesis"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_laura,1,'character','Was hast du gemacht?','چه کار کردی؟',23,NULL,NULL,NULL,NULL,'[{"surface":"Was","lemma":"was","translation":"چی / چه","partOfSpeech":"pronoun"},{"surface":"hast","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"perfect_auxiliary_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"gemacht","lemma":"machen","translation":"انجام دادن","partOfSpeech":"verb","meaning":"انجام دادی","form":"past_participle","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","moduleFinal":true}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,2,'learner','Zuerst habe ich gearbeitet.','اول کار کردم.',23,NULL,NULL,'zuerst habe ich gearbeitet',NULL,'[{"surface":"Zuerst","lemma":"zuerst","translation":"اول / ابتدا","partOfSpeech":"adverb","meaning":"اول / ابتدا"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"perfect_auxiliary_1sg"},{"surface":"ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"gearbeitet","lemma":"arbeiten","translation":"کار کردن","partOfSpeech":"verb","meaning":"کار کردم","form":"past_participle","suffix":"."}]','شروع یک روایت کوتاه','«zuerst» یعنی «اول / ابتدا». با آن مشخص می کنی اولین اتفاق داستان چه بوده است.',NULL,'{"cefr":"A2","moduleFinal":true}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_laura,3,'character','Und danach?','و بعدش؟',23,NULL,NULL,NULL,NULL,'[{"surface":"Und","lemma":"und","translation":"و","partOfSpeech":"conjunction"},{"surface":"danach","lemma":"danach","translation":"بعد از آن / بعدش","partOfSpeech":"adverb","meaning":"بعد از آن / بعدش","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","moduleFinal":true}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,4,'learner','Ich bin mit dem Bus gefahren.','با اتوبوس رفتم.',23,NULL,NULL,'ich bin mit dem bus gefahren',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"bin","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"perfect_auxiliary_1sg"},{"surface":"mit","lemma":"mit","translation":"با","partOfSpeech":"preposition"},{"surface":"dem","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف","form":"masculine_dative"},{"surface":"Bus","lemma":"Bus","translation":"اتوبوس","partOfSpeech":"noun"},{"surface":"gefahren","lemma":"fahren","translation":"رفتن با وسیله / راندن","partOfSpeech":"verb","meaning":"رفتم با وسیله","form":"past_participle","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","moduleFinal":true}');
  SET v_t_4=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_laura,v_c_anna,'Zuerst habe ich gearbeitet','اول کار کردم','Anna übt den ersten vollständigen Baustein ihrer kleinen Vergangenheitserzählung.','آنا اولین بخش کامل روایت کوتاه گذشته اش را تمرین می کند.','story','anna-laura-office',18,23,115,2,'validated','{"relationship":"colleagues","context":"short-past-day-narrative","cefr":"A2","moduleFinal":true,"focus":"sequence-synthesis"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_laura,1,'character','Was hast du gemacht?','چه کار کردی؟',23,NULL,NULL,NULL,NULL,'[{"surface":"Was","lemma":"was","translation":"چی / چه","partOfSpeech":"pronoun"},{"surface":"hast","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"perfect_auxiliary_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"gemacht","lemma":"machen","translation":"انجام دادن","partOfSpeech":"verb","meaning":"انجام دادی","form":"past_participle","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","moduleFinal":true}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,2,'learner','Zuerst habe ich gearbeitet.','اول کار کردم.',23,NULL,NULL,'zuerst habe ich gearbeitet',NULL,'[{"surface":"Zuerst","lemma":"zuerst","translation":"اول / ابتدا","partOfSpeech":"adverb","meaning":"اول / ابتدا"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"perfect_auxiliary_1sg"},{"surface":"ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"gearbeitet","lemma":"arbeiten","translation":"کار کردن","partOfSpeech":"verb","meaning":"کار کردم","form":"past_participle","suffix":"."}]','zuerst + Perfekt','اینجا فقط یک چیز تازه اضافه شده: با «Zuerst» ترتیب داستان را روشن می کنی؛ خود Perfekt را قبلا تمرین کرده ای.',NULL,'{"cefr":"A2","moduleFinal":true}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_laura,3,'character','Und danach?','و بعدش؟',23,NULL,NULL,NULL,NULL,'[{"surface":"Und","lemma":"und","translation":"و","partOfSpeech":"conjunction"},{"surface":"danach","lemma":"danach","translation":"بعد از آن / بعدش","partOfSpeech":"adverb","meaning":"بعد از آن / بعدش","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","moduleFinal":true}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,4,'learner','Ich bin mit dem Bus gefahren.','با اتوبوس رفتم.',23,NULL,NULL,'ich bin mit dem bus gefahren',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"bin","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"perfect_auxiliary_1sg"},{"surface":"mit","lemma":"mit","translation":"با","partOfSpeech":"preposition"},{"surface":"dem","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف","form":"masculine_dative"},{"surface":"Bus","lemma":"Bus","translation":"اتوبوس","partOfSpeech":"noun"},{"surface":"gefahren","lemma":"fahren","translation":"رفتن با وسیله / راندن","partOfSpeech":"verb","meaning":"رفتم با وسیله","form":"past_participle","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","moduleFinal":true}');
  SET v_t_8=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_laura,v_c_anna,'Dann bin ich mit dem Bus gefahren','بعد با اتوبوس رفتم','Anna ersetzt die kurze Antwort durch einen verbundenen zweiten Erzählschritt mit dann.','آنا جواب کوتاه قبلی را با یک مرحله دوم و متصل در روایت جایگزین می کند و از «بعد» استفاده می کند.','story','anna-laura-office',19,23,115,3,'validated','{"relationship":"colleagues","context":"short-past-day-narrative","cefr":"A2","moduleFinal":true,"focus":"sequence-synthesis"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_laura,1,'character','Und danach?','و بعدش؟',23,NULL,NULL,NULL,NULL,'[{"surface":"Und","lemma":"und","translation":"و","partOfSpeech":"conjunction"},{"surface":"danach","lemma":"danach","translation":"بعد از آن / بعدش","partOfSpeech":"adverb","meaning":"بعد از آن / بعدش","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","moduleFinal":true}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,2,'learner','Dann bin ich mit dem Bus gefahren.','بعد با اتوبوس رفتم.',23,NULL,NULL,'dann bin ich mit dem bus gefahren',NULL,'[{"surface":"Dann","lemma":"dann","translation":"بعد / سپس","partOfSpeech":"adverb","meaning":"بعد / سپس"},{"surface":"bin","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"perfect_auxiliary_1sg"},{"surface":"ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"mit","lemma":"mit","translation":"با","partOfSpeech":"preposition"},{"surface":"dem","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف","form":"masculine_dative"},{"surface":"Bus","lemma":"Bus","translation":"اتوبوس","partOfSpeech":"noun"},{"surface":"gefahren","lemma":"fahren","translation":"رفتن با وسیله / راندن","partOfSpeech":"verb","meaning":"رفتم با وسیله","form":"past_participle","suffix":"."}]','مرحله دوم روایت','«dann» یعنی «بعد / سپس». اینجا ساختار گذشته همان جمله آشنای «Ich bin mit dem Bus gefahren.» است.',NULL,'{"cefr":"A2","moduleFinal":true}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_laura,3,'character','Und danach?','و بعدش؟',23,NULL,NULL,NULL,NULL,'[{"surface":"Und","lemma":"und","translation":"و","partOfSpeech":"conjunction"},{"surface":"danach","lemma":"danach","translation":"بعد از آن / بعدش","partOfSpeech":"adverb","meaning":"بعد از آن / بعدش","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","moduleFinal":true}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,4,'learner','Danach habe ich Kaffee gemacht.','بعد از آن قهوه درست کردم.',23,NULL,NULL,'danach habe ich kaffee gemacht',NULL,'[{"surface":"Danach","lemma":"danach","translation":"بعد از آن / بعدش","partOfSpeech":"adverb"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"perfect_auxiliary_1sg"},{"surface":"ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"Kaffee","lemma":"Kaffee","translation":"قهوه","partOfSpeech":"noun"},{"surface":"gemacht","lemma":"machen","translation":"انجام دادن","partOfSpeech":"verb","meaning":"درست کردم","form":"past_participle","suffix":"."}]','مرحله سوم با danach','حالا سه بخش داری: «zuerst»، «dann»، و «danach». هدف این است که اتفاق ها را با ترتیب روشن تعریف کنی.',NULL,'{"cefr":"A2","moduleFinal":true}');
  SET v_t_12=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_laura,v_c_anna,'Von meinem Tag erzählen','تعریف کردن روزم','Anna erzählt Laura ihren gestrigen Tag nun in drei klar verbundenen Schritten und schließt damit das erste A2-Modul ab.','آنا حالا روز دیروزش را در سه مرحله روشن و به هم پیوسته برای لورا تعریف می کند و اولین ماژول A2 را به پایان می رساند.','story','anna-laura-office',20,23,117,4,'validated','{"relationship":"colleagues","context":"short-past-day-narrative","cefr":"A2","moduleFinal":true,"focus":"sequence-synthesis"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_laura,1,'character','Was hast du gemacht?','چه کار کردی؟',23,NULL,NULL,NULL,NULL,'[{"surface":"Was","lemma":"was","translation":"چی / چه","partOfSpeech":"pronoun"},{"surface":"hast","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"perfect_auxiliary_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"gemacht","lemma":"machen","translation":"انجام دادن","partOfSpeech":"verb","meaning":"انجام دادی","form":"past_participle","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","moduleFinal":true}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,2,'learner','Zuerst habe ich gearbeitet.','اول کار کردم.',23,NULL,NULL,'zuerst habe ich gearbeitet',NULL,'[{"surface":"Zuerst","lemma":"zuerst","translation":"اول / ابتدا","partOfSpeech":"adverb","meaning":"اول / ابتدا"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"perfect_auxiliary_1sg"},{"surface":"ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"gearbeitet","lemma":"arbeiten","translation":"کار کردن","partOfSpeech":"verb","meaning":"کار کردم","form":"past_participle","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","moduleFinal":true}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_laura,3,'character','Und danach?','و بعدش؟',23,NULL,NULL,NULL,NULL,'[{"surface":"Und","lemma":"und","translation":"و","partOfSpeech":"conjunction"},{"surface":"danach","lemma":"danach","translation":"بعد از آن / بعدش","partOfSpeech":"adverb","meaning":"بعد از آن / بعدش","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","moduleFinal":true}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,4,'learner','Dann bin ich mit dem Bus gefahren.','بعد با اتوبوس رفتم.',23,NULL,NULL,'dann bin ich mit dem bus gefahren',NULL,'[{"surface":"Dann","lemma":"dann","translation":"بعد / سپس","partOfSpeech":"adverb","meaning":"بعد / سپس"},{"surface":"bin","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"perfect_auxiliary_1sg"},{"surface":"ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"mit","lemma":"mit","translation":"با","partOfSpeech":"preposition"},{"surface":"dem","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف","form":"masculine_dative"},{"surface":"Bus","lemma":"Bus","translation":"اتوبوس","partOfSpeech":"noun"},{"surface":"gefahren","lemma":"fahren","translation":"رفتن با وسیله / راندن","partOfSpeech":"verb","meaning":"رفتم با وسیله","form":"past_participle","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","moduleFinal":true}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_laura,5,'character','Und danach?','و بعدش؟',23,NULL,NULL,NULL,NULL,'[{"surface":"Und","lemma":"und","translation":"و","partOfSpeech":"conjunction"},{"surface":"danach","lemma":"danach","translation":"بعد از آن / بعدش","partOfSpeech":"adverb","meaning":"بعد از آن / بعدش","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","moduleFinal":true}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,6,'learner','Danach habe ich Kaffee gemacht.','بعد از آن قهوه درست کردم.',23,NULL,NULL,'danach habe ich kaffee gemacht',NULL,'[{"surface":"Danach","lemma":"danach","translation":"بعد از آن / بعدش","partOfSpeech":"adverb"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"perfect_auxiliary_1sg"},{"surface":"ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"Kaffee","lemma":"Kaffee","translation":"قهوه","partOfSpeech":"noun"},{"surface":"gemacht","lemma":"machen","translation":"انجام دادن","partOfSpeech":"verb","meaning":"درست کردم","form":"past_participle","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","moduleFinal":true}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_laura,7,'character','Gut.','خوبه.',23,NULL,NULL,NULL,NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"خوبه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","moduleFinal":true}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,8,'learner','Ja.','بله.',23,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","moduleFinal":true}');
  SET v_t_20=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_was,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_haben,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_machen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_zuerst,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ich,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_arbeiten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_und,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_danach,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_sein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_mit,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_der,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_bus,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_fahren,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_zuerst_habe_ich_gearbeitet,'passive',0,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_was,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_haben,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_machen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_zuerst,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_arbeiten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_und,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_danach,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_sein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_mit,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_der,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_bus,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_fahren,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_und_danach,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich_bin_mit_dem_bus_gefahren,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_zuerst_habe_ich_gearbeitet,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_und,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_danach,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_dann,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_sein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_mit,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_der,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_bus,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_fahren,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_haben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_kaffee,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_machen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_danach_habe_ich_kaffee_gemacht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_dann_bin_ich_mit_dem_bus_gefahren,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_was,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_haben,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_machen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_zuerst,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_arbeiten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_und,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_danach,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_dann,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_sein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_mit,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_der,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_bus,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_fahren,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_kaffee,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_was_hast_du_gemacht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_zuerst_habe_ich_gearbeitet,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_dann_bin_ich_mit_dem_bus_gefahren,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_danach_habe_ich_kaffee_gemacht,'review',0,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_zuerst,'کلمه جدید',NULL,23,NULL,'{"cefr":"A2","moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به سوال گذشته گوش کن',NULL,23,NULL,'{"cefr":"A2","moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'روایتت را با «اول» شروع کن',NULL,23,NULL,'{"cefr":"A2","moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به سوال ادامه داستان گوش کن',NULL,23,NULL,'{"cefr":"A2","moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'بگو با اتوبوس رفتی',NULL,23,NULL,'{"cefr":"A2","moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,NULL,v_w_zuerst,'معنی درست را انتخاب کن',NULL,23,'{"mode":"word_translation","question":"zuerst","choices":["اول","بعدش","دیروز"],"correctIndex":0}','{"cefr":"A2","moduleFinal":true}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_zuerst_habe_ich_gearbeitet,'عبارت جدید',NULL,23,NULL,'{"cefr":"A2","moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به سوال گذشته گوش کن',NULL,23,NULL,'{"cefr":"A2","moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'بگو اول کار کردی',NULL,23,NULL,'{"cefr":"A2","moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به سوال بعدش گوش کن',NULL,23,NULL,'{"cefr":"A2","moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'بگو با اتوبوس رفتی',NULL,23,NULL,'{"cefr":"A2","moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_6,NULL,'معنی درست را انتخاب کن',NULL,23,'{"mode":"turn_translation","question":"«Zuerst habe ich gearbeitet.» یعنی چی؟","choices":["اول کار کردم.","بعد قهوه درست کردم.","با اتوبوس رفتم."],"correctIndex":0}','{"cefr":"A2","moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',7,v_t_6,NULL,'جمله را به ترتیب درست بساز',NULL,23,'{"source":"turn_tokens","shuffle":true}','{"cefr":"A2","moduleFinal":true}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_dann_bin_ich_mit_dem_bus_gefahren,'عبارت جدید',NULL,23,NULL,'{"cefr":"A2","moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_9,NULL,'به سوال بعدش گوش کن',NULL,23,NULL,'{"cefr":"A2","moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_10,NULL,'بگو بعد با اتوبوس رفتی',NULL,23,NULL,'{"cefr":"A2","moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_11,NULL,'دوباره به سوال ادامه داستان گوش کن',NULL,23,NULL,'{"cefr":"A2","moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_12,NULL,'بگو بعد از آن قهوه درست کردی',NULL,23,NULL,'{"cefr":"A2","moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_10,NULL,'معنی درست را انتخاب کن',NULL,23,'{"mode":"turn_translation","question":"«Dann bin ich mit dem Bus gefahren.» یعنی چی؟","choices":["بعد با اتوبوس رفتم.","اول کار کردم.","بعد از آن قهوه درست کردم."],"correctIndex":0}','{"cefr":"A2","moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,23,'{"source":"lesson_story","question":"بعد از رفتن با اتوبوس، آنا چه کار کرد؟","choices":["قهوه درست کرد.","کار کرد.","به داروخانه رفت."],"correctIndex":0}','{"cefr":"A2","moduleFinal":true}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_13,NULL,'به سوال گذشته گوش کن',NULL,23,NULL,'{"cefr":"A2","moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_14,NULL,'بگو اول کار کردی',NULL,23,NULL,'{"cefr":"A2","moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_15,NULL,'به سوال ادامه داستان گوش کن',NULL,23,NULL,'{"cefr":"A2","moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_16,NULL,'بگو بعد با اتوبوس رفتی',NULL,23,NULL,'{"cefr":"A2","moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_17,NULL,'دوباره به سوال ادامه داستان گوش کن',NULL,23,NULL,'{"cefr":"A2","moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_18,NULL,'بگو بعد از آن قهوه درست کردی',NULL,23,NULL,'{"cefr":"A2","moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',7,v_t_19,NULL,'به واکنش لورا گوش کن',NULL,23,NULL,'{"cefr":"A2","moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',8,v_t_20,NULL,'تایید کن',NULL,23,NULL,'{"cefr":"A2","moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',9,NULL,NULL,'روایت را بخوان و ترتیب اتفاق ها را مشخص کن',NULL,23,'{"source":"lesson_story","question":"ترتیب روز آنا کدام است؟","choices":["اول کار کرد، بعد با اتوبوس رفت، بعد قهوه درست کرد.","اول قهوه درست کرد، بعد کار کرد، بعد با اتوبوس رفت.","اول با اتوبوس رفت، بعد قهوه درست کرد، بعد کار کرد."],"correctIndex":0}','{"cefr":"A2","moduleFinal":true}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 045 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (ac.config IS NULL OR JSON_EXTRACT(ac.config,'$.question') IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without task.'; END IF;
  UPDATE chapters SET status='validated' WHERE id=v_chapter;

  SELECT COUNT(*) INTO v_count FROM chapters WHERE module_id=v_module;
  IF v_count<>5 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 01 completion requires exactly 5 Chapters.'; END IF;

  SELECT COUNT(*) INTO v_count FROM chapters WHERE module_id=v_module AND status IN ('validated','complete');
  IF v_count<>5 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='All A2 Module 01 Chapters must be validated/complete.'; END IF;

  UPDATE modules SET status='complete' WHERE id=v_module;
  UPDATE levels SET status='active' WHERE id=v_level;
  COMMIT;
END$$
DELIMITER ;

CALL import_nova_series_045_v9();
DROP PROCEDURE IF EXISTS import_nova_series_045_v9;
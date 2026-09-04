-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 004 / r2 FIXED
-- A1 > Erste Schritte > Wie geht es dir?
-- Absolute beginner continuation
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_004_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_004_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_lena BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_ben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_anna BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_jonas BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_mia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_paul BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_sara BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_max BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_hallo BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_tschuess BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danke BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wie BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gehen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_es BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_du BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wie_geht_es_dir BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_und BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_lena BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_anna BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_jonas BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_mia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_paul BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sara BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_max BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sehr BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sehr_gut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_nicht BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_so BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_nicht_so_gut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_und_dir BIGINT UNSIGNED DEFAULT NULL;
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
  BEGIN
    ROLLBACK;
    RESIGNAL;
  END;

  START TRANSACTION;

  SELECT id INTO v_course FROM courses
  WHERE learning_language='de' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.';
  END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND sort_order=1 ORDER BY id LIMIT 1;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=1 ORDER BY id LIMIT 1;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=3 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=4 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Chapter 4 not found.';
  END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 003 before Series 004.';
  END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Chapter 4 must be empty before Series 004 import.';
  END IF;

  SELECT id INTO v_c_lena FROM characters
  WHERE course_id=v_course AND name='Lena' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_lena IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Lena not found.';
  END IF;

  SELECT id INTO v_c_ben FROM characters
  WHERE course_id=v_course AND name='Ben' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_ben IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Ben not found.';
  END IF;

  SELECT id INTO v_c_anna FROM characters
  WHERE course_id=v_course AND name='Anna' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_anna IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Anna not found.';
  END IF;

  SELECT id INTO v_c_jonas FROM characters
  WHERE course_id=v_course AND name='Jonas' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_jonas IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Jonas not found.';
  END IF;

  SELECT id INTO v_c_mia FROM characters
  WHERE course_id=v_course AND name='Mia' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_mia IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Mia not found.';
  END IF;

  SELECT id INTO v_c_paul FROM characters
  WHERE course_id=v_course AND name='Paul' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_paul IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Paul not found.';
  END IF;

  SELECT id INTO v_c_sara FROM characters
  WHERE course_id=v_course AND name='Sara' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_sara IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Sara not found.';
  END IF;

  SELECT id INTO v_c_max FROM characters
  WHERE course_id=v_course AND name='Max' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_max IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Max not found.';
  END IF;

  SELECT id INTO v_w_hallo FROM words
  WHERE course_id=v_course AND lemma='Hallo' AND part_of_speech='interjection' AND translation='سلام'
  ORDER BY id LIMIT 1;
  IF v_w_hallo IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Hallo not found.';
  END IF;

  SELECT id INTO v_w_tschuess FROM words
  WHERE course_id=v_course AND lemma='Tschüss' AND part_of_speech='interjection' AND translation='خداحافظ'
  ORDER BY id LIMIT 1;
  IF v_w_tschuess IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Tschüss not found.';
  END IF;

  SELECT id INTO v_w_danke FROM words
  WHERE course_id=v_course AND lemma='danke' AND part_of_speech='interjection' AND translation='ممنون'
  ORDER BY id LIMIT 1;
  IF v_w_danke IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word danke not found.';
  END IF;

  SELECT id INTO v_w_gut FROM words
  WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب'
  ORDER BY id LIMIT 1;
  IF v_w_gut IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gut not found.';
  END IF;

  SELECT id INTO v_w_wie FROM words
  WHERE course_id=v_course AND lemma='wie' AND part_of_speech='adverb' AND translation='چطور / چگونه'
  ORDER BY id LIMIT 1;
  IF v_w_wie IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word wie not found.';
  END IF;

  SELECT id INTO v_w_gehen FROM words
  WHERE course_id=v_course AND lemma='gehen' AND part_of_speech='verb' AND translation='رفتن'
  ORDER BY id LIMIT 1;
  IF v_w_gehen IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gehen not found.';
  END IF;

  SELECT id INTO v_w_es FROM words
  WHERE course_id=v_course AND lemma='es' AND part_of_speech='pronoun' AND translation='آن / این'
  ORDER BY id LIMIT 1;
  IF v_w_es IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word es not found.';
  END IF;

  SELECT id INTO v_w_du FROM words
  WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو'
  ORDER BY id LIMIT 1;
  IF v_w_du IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word du not found.';
  END IF;

  SELECT id INTO v_w_wie_geht_es_dir FROM words
  WHERE course_id=v_course AND lemma='Wie geht es dir?' AND part_of_speech='phrase' AND translation='حالت چطوره؟'
  ORDER BY id LIMIT 1;
  IF v_w_wie_geht_es_dir IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Wie geht es dir? not found.';
  END IF;

  SELECT id INTO v_w_und FROM words
  WHERE course_id=v_course AND lemma='und' AND part_of_speech='conjunction' AND translation='و'
  ORDER BY id LIMIT 1;
  IF v_w_und IS NULL THEN
    INSERT INTO words
    (course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES
    (v_course,'und','und','conjunction','و',2,
     NULL,'[{"text":"oder","translation":"یا"},{"text":"aber","translation":"اما"},{"text":"denn","translation":"چون"},{"text":"sondern","translation":"بلکه"},{"text":"weil","translation":"چون"}]',
     NULL,NULL,NULL,NULL,NULL);
    SET v_w_und=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_lena FROM words
  WHERE course_id=v_course AND lemma='Lena' AND part_of_speech='proper_noun' AND translation='لنا (نام زنانه)'
  ORDER BY id LIMIT 1;
  IF v_w_lena IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Lena not found.';
  END IF;

  SELECT id INTO v_w_ben FROM words
  WHERE course_id=v_course AND lemma='Ben' AND part_of_speech='proper_noun' AND translation='بن (نام مردانه)'
  ORDER BY id LIMIT 1;
  IF v_w_ben IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Ben not found.';
  END IF;

  SELECT id INTO v_w_anna FROM words
  WHERE course_id=v_course AND lemma='Anna' AND part_of_speech='proper_noun' AND translation='آنا (نام زنانه)'
  ORDER BY id LIMIT 1;
  IF v_w_anna IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Anna not found.';
  END IF;

  SELECT id INTO v_w_jonas FROM words
  WHERE course_id=v_course AND lemma='Jonas' AND part_of_speech='proper_noun' AND translation='یوناس (نام مردانه)'
  ORDER BY id LIMIT 1;
  IF v_w_jonas IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Jonas not found.';
  END IF;

  SELECT id INTO v_w_mia FROM words
  WHERE course_id=v_course AND lemma='Mia' AND part_of_speech='proper_noun' AND translation='میا (نام زنانه)'
  ORDER BY id LIMIT 1;
  IF v_w_mia IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Mia not found.';
  END IF;

  SELECT id INTO v_w_paul FROM words
  WHERE course_id=v_course AND lemma='Paul' AND part_of_speech='proper_noun' AND translation='پاول (نام مردانه)'
  ORDER BY id LIMIT 1;
  IF v_w_paul IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Paul not found.';
  END IF;

  SELECT id INTO v_w_sara FROM words
  WHERE course_id=v_course AND lemma='Sara' AND part_of_speech='proper_noun' AND translation='سارا (نام زنانه)'
  ORDER BY id LIMIT 1;
  IF v_w_sara IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Sara not found.';
  END IF;

  SELECT id INTO v_w_max FROM words
  WHERE course_id=v_course AND lemma='Max' AND part_of_speech='proper_noun' AND translation='مکس (نام مردانه)'
  ORDER BY id LIMIT 1;
  IF v_w_max IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Max not found.';
  END IF;

  SELECT id INTO v_w_sehr FROM words
  WHERE course_id=v_course AND lemma='sehr' AND part_of_speech='adverb' AND translation='خیلی / بسیار'
  ORDER BY id LIMIT 1;
  IF v_w_sehr IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'sehr','sehr','adverb','خیلی / بسیار',2,
           NULL,'[{"text":"wenig","translation":"کم"},{"text":"auch","translation":"هم"},{"text":"nur","translation":"فقط"},{"text":"fast","translation":"تقریبا"},{"text":"jetzt","translation":"الان"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_sehr=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_sehr_gut FROM words
  WHERE course_id=v_course AND lemma='Sehr gut' AND part_of_speech='phrase' AND translation='خیلی خوب'
  ORDER BY id LIMIT 1;
  IF v_w_sehr_gut IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Sehr gut','Sehr gut','phrase','خیلی خوب',2,
           NULL,'[{"text":"Gut","translation":"خوب"},{"text":"Nicht so gut","translation":"زیاد خوب نیست"},{"text":"Danke","translation":"ممنون"},{"text":"Hallo","translation":"سلام"},{"text":"Tschüss","translation":"خداحافظ"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_sehr_gut=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_nicht FROM words
  WHERE course_id=v_course AND lemma='nicht' AND part_of_speech='particle' AND translation='نه / نیست'
  ORDER BY id LIMIT 1;
  IF v_w_nicht IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'nicht','nicht','particle','نه / نیست',2,
           NULL,'[{"text":"ja","translation":"بله"},{"text":"sehr","translation":"خیلی"},{"text":"auch","translation":"هم"},{"text":"nur","translation":"فقط"},{"text":"so","translation":"این طور / آن طور"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_nicht=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_so FROM words
  WHERE course_id=v_course AND lemma='so' AND part_of_speech='adverb' AND translation='این طور / آن طور'
  ORDER BY id LIMIT 1;
  IF v_w_so IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'so','so','adverb','این طور / آن طور',2,
           NULL,'[{"text":"sehr","translation":"خیلی"},{"text":"nicht","translation":"نه / نیست"},{"text":"auch","translation":"هم"},{"text":"nur","translation":"فقط"},{"text":"jetzt","translation":"الان"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_so=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_nicht_so_gut FROM words
  WHERE course_id=v_course AND lemma='Nicht so gut' AND part_of_speech='phrase' AND translation='زیاد خوب نیستم'
  ORDER BY id LIMIT 1;
  IF v_w_nicht_so_gut IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Nicht so gut','Nicht so gut','phrase','زیاد خوب نیستم',2,
           NULL,'[{"text":"Sehr gut","translation":"خیلی خوبم"},{"text":"Gut, danke","translation":"خوبم، ممنون"},{"text":"Freut mich","translation":"خوشبختم"},{"text":"Guten Morgen","translation":"صبح بخیر"},{"text":"Bis später","translation":"بعدا می بینمت"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_nicht_so_gut=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_und_dir FROM words
  WHERE course_id=v_course AND lemma='Und dir?' AND part_of_speech='phrase' AND translation='تو چطور؟'
  ORDER BY id LIMIT 1;
  IF v_w_und_dir IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Und dir?','Und dir?','phrase','تو چطور؟',2,
           NULL,'[{"text":"Wie heißt du?","translation":"اسمت چیه؟"},{"text":"Woher kommst du?","translation":"اهل کجایی؟"},{"text":"Wie geht es dir?","translation":"حالت چطوره؟"},{"text":"Guten Morgen!","translation":"صبح بخیر!"},{"text":"Tschüss!","translation":"خداحافظ!"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_und_dir=LAST_INSERT_ID();
  END IF;

  -- Lesson 1: Lena trifft Ben
  INSERT INTO lessons
  (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES
  (v_chapter,v_c_lena,v_c_ben,'Lena trifft Ben','لنا بن را می بیند',
   'Lena und Ben treffen sich vor dem Kurs. Sie wiederholen die Frage nach dem Befinden.','لنا و بن قبل از کلاس همدیگر را می بینند و دوباره درباره حال هم حرف می زنند.','story','lena-ben-language-class',3,
   2,90,1,'validated',
   '{"relationship":"classmates","storyArc":"beginning-development-ending","startingPoint":"absolute-beginner"}');
  SET v_l_1=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_lena,1,'character','Hallo, Ben!','سلام، بن!',2,
   NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":","},{"surface":"Ben","lemma":"Ben","translation":"بن (نام مردانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_ben,2,'learner','Hallo, Lena!','سلام، لنا!',2,
   NULL,NULL,'hallo lena',NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":","},{"surface":"Lena","lemma":"Lena","translation":"لنا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_lena,3,'character','Wie geht es dir?','حالت چطوره؟',2,
   NULL,NULL,NULL,NULL,'[{"surface":"Wie","lemma":"wie","translation":"چطور / چگونه","partOfSpeech":"adverb"},{"surface":"geht","lemma":"gehen","translation":"رفتن","partOfSpeech":"verb","meaning":"در این عبارت: می گذرد / است","form":"present_3sg"},{"surface":"es","lemma":"es","translation":"آن / این","partOfSpeech":"pronoun","meaning":"در این عبارت بخشی از ساختار جمله است"},{"surface":"dir","lemma":"du","translation":"تو","partOfSpeech":"pronoun","meaning":"به تو / برای تو","form":"dative","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_ben,4,'learner','Gut, danke.','خوبم، ممنون.',2,
   NULL,NULL,'gut danke',NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","suffix":","},{"surface":"danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_lena,5,'character','Tschüss!','خداحافظ!',2,
   NULL,NULL,NULL,NULL,'[{"surface":"Tschüss","lemma":"Tschüss","translation":"خداحافظ","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_ben,6,'learner','Tschüss!','خداحافظ!',2,
   NULL,NULL,'tschüss',NULL,'[{"surface":"Tschüss","lemma":"Tschüss","translation":"خداحافظ","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_6=LAST_INSERT_ID();

  -- Lesson 2: Anna ist sehr gut
  INSERT INTO lessons
  (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES
  (v_chapter,v_c_jonas,v_c_anna,'Anna ist sehr gut','حال آنا خیلی خوب است',
   'Jonas fragt Anna, wie es ihr geht. Anna antwortet etwas genauer.','یوناس از آنا می پرسد حالش چطور است. آنا این بار کمی کامل تر جواب می دهد.','story','anna-jonas-couple',3,
   2,90,2,'validated',
   '{"relationship":"spouses","storyArc":"beginning-development-ending","startingPoint":"absolute-beginner"}');
  SET v_l_2=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_jonas,1,'character','Wie geht es dir?','حالت چطوره؟',2,
   NULL,NULL,NULL,NULL,'[{"surface":"Wie","lemma":"wie","translation":"چطور / چگونه","partOfSpeech":"adverb"},{"surface":"geht","lemma":"gehen","translation":"رفتن","partOfSpeech":"verb","meaning":"در این عبارت: می گذرد / است","form":"present_3sg"},{"surface":"es","lemma":"es","translation":"آن / این","partOfSpeech":"pronoun","meaning":"در این عبارت بخشی از ساختار جمله است"},{"surface":"dir","lemma":"du","translation":"تو","partOfSpeech":"pronoun","meaning":"به تو / برای تو","form":"dative","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_anna,2,'learner','Sehr gut, danke.','خیلی خوبم، ممنون.',2,
   NULL,NULL,'sehr gut danke',NULL,'[{"surface":"Sehr","lemma":"sehr","translation":"خیلی / بسیار","partOfSpeech":"adverb"},{"surface":"gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","suffix":","},{"surface":"danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_jonas,3,'character','Gut!','خوبه!',2,
   NULL,NULL,NULL,NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_anna,4,'learner','Tschüss!','خداحافظ!',2,
   NULL,NULL,'tschüss',NULL,'[{"surface":"Tschüss","lemma":"Tschüss","translation":"خداحافظ","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_10=LAST_INSERT_ID();

  -- Lesson 3: Paul geht es nicht so gut
  INSERT INTO lessons
  (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES
  (v_chapter,v_c_mia,v_c_paul,'Paul geht es nicht so gut','حال پاول زیاد خوب نیست',
   'Mia fragt Paul, wie es ihm geht. Paul antwortet ehrlich und kurz.','میا از پاول می پرسد حالش چطور است. پاول کوتاه و ساده جواب می دهد.','story','mia-paul-language-class',2,
   2,90,3,'validated',
   '{"relationship":"classmates","storyArc":"beginning-development-ending","startingPoint":"absolute-beginner"}');
  SET v_l_3=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_mia,1,'character','Hallo, Paul! Wie geht es dir?','سلام، پاول! حالت چطوره؟',2,
   NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":","},{"surface":"Paul","lemma":"Paul","translation":"پاول (نام مردانه)","partOfSpeech":"proper_noun","suffix":"!"},{"surface":"Wie","lemma":"wie","translation":"چطور / چگونه","partOfSpeech":"adverb"},{"surface":"geht","lemma":"gehen","translation":"رفتن","partOfSpeech":"verb","meaning":"در این عبارت: می گذرد / است","form":"present_3sg"},{"surface":"es","lemma":"es","translation":"آن / این","partOfSpeech":"pronoun","meaning":"در این عبارت بخشی از ساختار جمله است"},{"surface":"dir","lemma":"du","translation":"تو","partOfSpeech":"pronoun","meaning":"به تو / برای تو","form":"dative","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_paul,2,'learner','Nicht so gut.','زیاد خوب نیستم.',2,
   NULL,NULL,'nicht so gut',NULL,'[{"surface":"Nicht","lemma":"nicht","translation":"نه / نیست","partOfSpeech":"particle"},{"surface":"so","lemma":"so","translation":"این طور / آن طور","partOfSpeech":"adverb"},{"surface":"gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_mia,3,'character','Tschüss, Paul!','خداحافظ، پاول!',2,
   NULL,NULL,NULL,NULL,'[{"surface":"Tschüss","lemma":"Tschüss","translation":"خداحافظ","partOfSpeech":"interjection","suffix":","},{"surface":"Paul","lemma":"Paul","translation":"پاول (نام مردانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_paul,4,'learner','Tschüss, Mia!','خداحافظ، میا!',2,
   NULL,NULL,'tschüss mia',NULL,'[{"surface":"Tschüss","lemma":"Tschüss","translation":"خداحافظ","partOfSpeech":"interjection","suffix":","},{"surface":"Mia","lemma":"Mia","translation":"میا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_14=LAST_INSERT_ID();

  -- Lesson 4: Sara fragt zurück
  INSERT INTO lessons
  (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES
  (v_chapter,v_c_max,v_c_sara,'Sara fragt zurück','سارا هم حال طرف را می پرسد',
   'Max fragt Sara, wie es ihr geht. Sara antwortet und fragt direkt zurück.','مکس از سارا می پرسد حالش چطور است. سارا جواب می دهد و بعد حال مکس را هم می پرسد.','story','sara-max-language-class',2,
   2,90,4,'validated',
   '{"relationship":"classmates","storyArc":"beginning-development-ending","startingPoint":"absolute-beginner"}');
  SET v_l_4=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_max,1,'character','Hallo, Sara! Wie geht es dir?','سلام، سارا! حالت چطوره؟',2,
   NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":","},{"surface":"Sara","lemma":"Sara","translation":"سارا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"},{"surface":"Wie","lemma":"wie","translation":"چطور / چگونه","partOfSpeech":"adverb"},{"surface":"geht","lemma":"gehen","translation":"رفتن","partOfSpeech":"verb","meaning":"در این عبارت: می گذرد / است","form":"present_3sg"},{"surface":"es","lemma":"es","translation":"آن / این","partOfSpeech":"pronoun","meaning":"در این عبارت بخشی از ساختار جمله است"},{"surface":"dir","lemma":"du","translation":"تو","partOfSpeech":"pronoun","meaning":"به تو / برای تو","form":"dative","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_sara,2,'learner','Sehr gut, danke. Und dir?','خیلی خوبم، ممنون. تو چطور؟',2,
   NULL,NULL,'sehr gut danke und dir',NULL,'[{"surface":"Sehr","lemma":"sehr","translation":"خیلی / بسیار","partOfSpeech":"adverb"},{"surface":"gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","suffix":","},{"surface":"danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."},{"surface":"Und","lemma":"und","translation":"و","partOfSpeech":"conjunction"},{"surface":"dir","lemma":"du","translation":"تو","partOfSpeech":"pronoun","meaning":"تو چطور؟","form":"dative","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_max,3,'character','Gut, danke.','خوبم، ممنون.',2,
   NULL,NULL,NULL,NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","suffix":","},{"surface":"danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_sara,4,'learner','Tschüss!','خداحافظ!',2,
   NULL,NULL,'tschüss',NULL,'[{"surface":"Tschüss","lemma":"Tschüss","translation":"خداحافظ","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_18=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_hallo,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_ben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_lena,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_wie,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_gehen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_es,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_tschuess,'review',0,2);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_wie,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_gehen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_es,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_sehr,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_gut,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_tschuess,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_sehr_gut,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_hallo,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_paul,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_wie,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_gehen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_es,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_nicht,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_so,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_tschuess,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_mia,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_nicht_so_gut,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_hallo,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_sara,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_wie,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_gehen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_es,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_du,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_sehr,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_gut,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_danke,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_und,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_tschuess,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_und_dir,'new',1,1);

  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',1,v_t_1,NULL,'به لنا گوش کن',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',2,v_t_2,NULL,'جواب بن را بخوان',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',3,v_t_3,NULL,'به سوال لنا گوش کن',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',4,v_t_4,NULL,'جواب ساده بده',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',5,v_t_5,NULL,'به لنا گوش کن',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',6,v_t_6,NULL,'مکالمه را تمام کن',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',7,v_t_3,NULL,'معنی درست را انتخاب کن',NULL,2,'{"mode":"phrase_meaning","question":"«Wie geht es dir?» یعنی چی؟","choices":["حالت چطوره؟","اسمت چیه؟","اهل کجایی؟"],"correctIndex":0}',NULL);

  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_sehr_gut,'عبارت جدید',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_7,NULL,'به یوناس گوش کن',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_8,NULL,'جواب آنا را بخوان',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_9,NULL,'به یوناس گوش کن',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_10,NULL,'مکالمه را تمام کن',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_8,NULL,'معنی درست را انتخاب کن',NULL,2,'{"mode":"turn_translation","question":"«Sehr gut, danke.» یعنی چی؟","choices":["خیلی خوبم، ممنون.","زیاد خوب نیستم.","خداحافظ، ممنون."],"correctIndex":0}',NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',7,v_t_8,NULL,'جمله را به ترتیب درست بساز',NULL,2,'{"source":"turn_tokens","shuffle":true}',NULL);

  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_nicht_so_gut,'عبارت جدید',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_11,NULL,'به میا گوش کن',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_12,NULL,'جواب پاول را بخوان',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_13,NULL,'به میا گوش کن',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_14,NULL,'مکالمه را تمام کن',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_12,NULL,'معنی درست را انتخاب کن',NULL,2,'{"mode":"turn_translation","question":"«Nicht so gut.» یعنی چی؟","choices":["زیاد خوب نیستم.","خیلی خوبم.","ممنون، خوبم."],"correctIndex":0}',NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,2,'{"source":"lesson_story","question":"حال پاول چطور است؟","choices":["زیاد خوب نیست.","خیلی خوب است.","عالی است."],"correctIndex":0}',NULL);

  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'new_word',1,NULL,v_w_und_dir,'عبارت جدید',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',2,v_t_15,NULL,'به مکس گوش کن',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',3,v_t_16,NULL,'جواب بده و حال طرف را هم بپرس',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',4,v_t_17,NULL,'به جواب مکس گوش کن',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',5,v_t_18,NULL,'مکالمه را تمام کن',NULL,2,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',6,NULL,v_w_und_dir,'معنی درست را انتخاب کن',NULL,2,'{"mode":"phrase_meaning","question":"«Und dir?» یعنی چی؟","choices":["تو چطور؟","اسمت چیه؟","اهل کجایی؟"],"correctIndex":0}',NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,2,'{"source":"lesson_story","question":"بعد از جواب دادن، سارا چه کار می کند؟","choices":["حال مکس را هم می پرسد.","اسم مکس را می پرسد.","خداحافظی می کند."],"correctIndex":0}',NULL);

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 004 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id
  WHERE l.chapter_id=v_chapter AND ((t.role='character' AND t.character_id<>l.prompt_character_id) OR (t.role='learner' AND t.character_id<>l.learner_character_id));
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Turn Character mismatch.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id
  WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities a JOIN lessons l ON l.id=a.lesson_id
  WHERE l.chapter_id=v_chapter AND a.activity_type='reading_comprehension' AND (a.config IS NULL OR JSON_EXTRACT(a.config,'$.question') IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without task.'; END IF;
  UPDATE chapters SET status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;

CALL import_nova_series_004_v9();
DROP PROCEDURE IF EXISTS import_nova_series_004_v9;
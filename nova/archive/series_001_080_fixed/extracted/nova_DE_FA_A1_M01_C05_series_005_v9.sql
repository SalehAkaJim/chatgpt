-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 005
-- A1 > Erste Schritte > Zahlen & einfache Infos
-- Absolute beginner continuation
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_005_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_005_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_mia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_paul BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_sara BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_max BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_hallo BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_tschuess BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danke BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wie BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_du BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_mia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_paul BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sara BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_max BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_eins BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_zwei BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_drei BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_eins_zwei_drei BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_alt BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_zwanzig BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wie_alt_bist_du BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_bin_zwanzig BIGINT UNSIGNED DEFAULT NULL;
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
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=4 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=5 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Chapter 5 not found.';
  END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 004 before Series 005.';
  END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Chapter 5 must be empty before Series 005 import.';
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

  UPDATE characters
  SET metadata = JSON_SET(COALESCE(metadata, JSON_OBJECT()), '$.age', 20)
  WHERE id IN (v_c_paul, v_c_max);

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

  SELECT id INTO v_w_ja FROM words
  WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره'
  ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.';
  END IF;

  SELECT id INTO v_w_wie FROM words
  WHERE course_id=v_course AND lemma='wie' AND part_of_speech='adverb' AND translation='چطور / چگونه'
  ORDER BY id LIMIT 1;
  IF v_w_wie IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word wie not found.';
  END IF;

  SELECT id INTO v_w_du FROM words
  WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو'
  ORDER BY id LIMIT 1;
  IF v_w_du IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word du not found.';
  END IF;

  SELECT id INTO v_w_ich FROM words
  WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من'
  ORDER BY id LIMIT 1;
  IF v_w_ich IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ich not found.';
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

  SELECT id INTO v_w_eins FROM words
  WHERE course_id=v_course AND lemma='eins' AND part_of_speech='number' AND translation='یک'
  ORDER BY id LIMIT 1;
  IF v_w_eins IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'eins','eins','number','یک',3,
           NULL,'[{"text":"zwei","translation":"دو"},{"text":"drei","translation":"سه"},{"text":"vier","translation":"چهار"},{"text":"fünf","translation":"پنج"},{"text":"sechs","translation":"شش"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_eins=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_zwei FROM words
  WHERE course_id=v_course AND lemma='zwei' AND part_of_speech='number' AND translation='دو'
  ORDER BY id LIMIT 1;
  IF v_w_zwei IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'zwei','zwei','number','دو',3,
           NULL,'[{"text":"eins","translation":"یک"},{"text":"drei","translation":"سه"},{"text":"vier","translation":"چهار"},{"text":"fünf","translation":"پنج"},{"text":"sechs","translation":"شش"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_zwei=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_drei FROM words
  WHERE course_id=v_course AND lemma='drei' AND part_of_speech='number' AND translation='سه'
  ORDER BY id LIMIT 1;
  IF v_w_drei IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'drei','drei','number','سه',3,
           NULL,'[{"text":"eins","translation":"یک"},{"text":"zwei","translation":"دو"},{"text":"vier","translation":"چهار"},{"text":"fünf","translation":"پنج"},{"text":"sechs","translation":"شش"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_drei=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_eins_zwei_drei FROM words
  WHERE course_id=v_course AND lemma='Eins, zwei, drei' AND part_of_speech='phrase' AND translation='یک، دو، سه'
  ORDER BY id LIMIT 1;
  IF v_w_eins_zwei_drei IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Eins, zwei, drei','Eins, zwei, drei','phrase','یک، دو، سه',3,
           NULL,'[{"text":"Zwei, drei, vier","translation":"دو، سه، چهار"},{"text":"Drei, vier, fünf","translation":"سه، چهار، پنج"},{"text":"Eins, drei, fünf","translation":"یک، سه، پنج"},{"text":"Hallo","translation":"سلام"},{"text":"Tschüss","translation":"خداحافظ"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_eins_zwei_drei=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_alt FROM words
  WHERE course_id=v_course AND lemma='alt' AND part_of_speech='adjective' AND translation='پیر / دارای سن'
  ORDER BY id LIMIT 1;
  IF v_w_alt IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'alt','alt','adjective','پیر / دارای سن',3,
           NULL,'[{"text":"jung","translation":"جوان"},{"text":"gut","translation":"خوب"},{"text":"neu","translation":"جدید"},{"text":"klein","translation":"کوچک"},{"text":"groß","translation":"بزرگ"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_alt=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_sein FROM words
  WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن'
  ORDER BY id LIMIT 1;
  IF v_w_sein IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'sein','sein','verb','بودن',3,
           '{"present":{"ich":"bin","du":"bist","er_sie_es":"ist","wir":"sind","ihr":"seid","sie_Sie":"sind"}}','[{"text":"haben","translation":"داشتن"},{"text":"kommen","translation":"آمدن"},{"text":"gehen","translation":"رفتن"},{"text":"heißen","translation":"نام داشتن"},{"text":"wohnen","translation":"زندگی کردن"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_sein=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_zwanzig FROM words
  WHERE course_id=v_course AND lemma='zwanzig' AND part_of_speech='number' AND translation='بیست'
  ORDER BY id LIMIT 1;
  IF v_w_zwanzig IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'zwanzig','zwanzig','number','بیست',3,
           NULL,'[{"text":"zehn","translation":"ده"},{"text":"elf","translation":"یازده"},{"text":"zwölf","translation":"دوازده"},{"text":"neunzehn","translation":"نوزده"},{"text":"einundzwanzig","translation":"بیست و یک"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_zwanzig=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_wie_alt_bist_du FROM words
  WHERE course_id=v_course AND lemma='Wie alt bist du?' AND part_of_speech='phrase' AND translation='چند سالته؟'
  ORDER BY id LIMIT 1;
  IF v_w_wie_alt_bist_du IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Wie alt bist du?','Wie alt bist du?','phrase','چند سالته؟',3,
           NULL,'[{"text":"Wie heißt du?","translation":"اسمت چیه؟"},{"text":"Wie geht es dir?","translation":"حالت چطوره؟"},{"text":"Woher kommst du?","translation":"اهل کجایی؟"},{"text":"Guten Morgen!","translation":"صبح بخیر!"},{"text":"Tschüss!","translation":"خداحافظ!"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_wie_alt_bist_du=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_ich_bin_zwanzig FROM words
  WHERE course_id=v_course AND lemma='Ich bin zwanzig.' AND part_of_speech='phrase' AND translation='من بیست سالمه.'
  ORDER BY id LIMIT 1;
  IF v_w_ich_bin_zwanzig IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich bin zwanzig.','Ich bin zwanzig.','phrase','من بیست سالمه.',3,
           NULL,'[{"text":"Ich heiße ...","translation":"اسم من ... است"},{"text":"Ich komme aus ...","translation":"من اهل ... هستم"},{"text":"Sehr gut","translation":"خیلی خوب"},{"text":"Nicht so gut","translation":"زیاد خوب نیستم"},{"text":"Bis später","translation":"بعدا می بینمت"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_ich_bin_zwanzig=LAST_INSERT_ID();
  END IF;

  -- Lesson 1: Eins, zwei, drei
  INSERT INTO lessons
  (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES
  (v_chapter,v_c_mia,v_c_paul,'Eins, zwei, drei','یک، دو، سه',
   'Mia und Paul üben vor dem Kurs gemeinsam die ersten drei Zahlen.','میا و پاول قبل از کلاس سه عدد اول را با هم تمرین می کنند.','story','mia-paul-language-class',3,
   3,90,1,'validated',
   '{"relationship":"classmates","storyArc":"beginning-development-ending","startingPoint":"absolute-beginner"}');
  SET v_l_1=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_mia,1,'character','Eins.','یک.',3,
   NULL,NULL,NULL,NULL,'[{"surface":"Eins","lemma":"eins","translation":"یک","partOfSpeech":"number","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_paul,2,'learner','Zwei.','دو.',3,
   NULL,NULL,'zwei',NULL,'[{"surface":"Zwei","lemma":"zwei","translation":"دو","partOfSpeech":"number","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_mia,3,'character','Drei.','سه.',3,
   NULL,NULL,NULL,NULL,'[{"surface":"Drei","lemma":"drei","translation":"سه","partOfSpeech":"number","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_paul,4,'learner','Eins, zwei, drei.','یک، دو، سه.',3,
   NULL,NULL,'eins zwei drei',NULL,'[{"surface":"Eins","lemma":"eins","translation":"یک","partOfSpeech":"number","suffix":","},{"surface":"zwei","lemma":"zwei","translation":"دو","partOfSpeech":"number","suffix":","},{"surface":"drei","lemma":"drei","translation":"سه","partOfSpeech":"number","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_4=LAST_INSERT_ID();

  -- Lesson 2: Mia fragt Paul
  INSERT INTO lessons
  (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES
  (v_chapter,v_c_mia,v_c_paul,'Mia fragt Paul','میا سن پاول را می پرسد',
   'Nach der Zahlenübung fragt Mia Paul nach seinem Alter. Paul antwortet zuerst nur mit der Zahl.','بعد از تمرین عددها، میا سن پاول را می پرسد. پاول اول فقط با عدد جواب می دهد.','story','mia-paul-language-class',4,
   3,90,2,'validated',
   '{"relationship":"classmates","storyArc":"beginning-development-ending","startingPoint":"absolute-beginner"}');
  SET v_l_2=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_mia,1,'character','Wie alt bist du?','چند سالته؟',3,
   NULL,NULL,NULL,NULL,'[{"surface":"Wie","lemma":"wie","translation":"چطور / چگونه","partOfSpeech":"adverb"},{"surface":"alt","lemma":"alt","translation":"پیر / دارای سن","partOfSpeech":"adjective","meaning":"در این جمله: چند ساله"},{"surface":"bist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"هستی","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun","suffix":"?"}]','فعلا جمله را کامل یاد بگیر','«Wie alt bist du?» یعنی «چند سالته؟». فعلا لازم نیست شکل های فعل sein را حفظ کنی.',NULL,NULL);
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_paul,2,'learner','Zwanzig.','بیست.',3,
   NULL,NULL,'zwanzig',NULL,'[{"surface":"Zwanzig","lemma":"zwanzig","translation":"بیست","partOfSpeech":"number","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_mia,3,'character','Zwanzig?','بیست؟',3,
   NULL,NULL,NULL,NULL,'[{"surface":"Zwanzig","lemma":"zwanzig","translation":"بیست","partOfSpeech":"number","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_paul,4,'learner','Ja.','بله.',3,
   NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_8=LAST_INSERT_ID();

  -- Lesson 3: Max antwortet vollständig
  INSERT INTO lessons
  (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES
  (v_chapter,v_c_sara,v_c_max,'Max antwortet vollständig','مکس کامل جواب می دهد',
   'Sara fragt Max nach seinem Alter. Max antwortet dieses Mal mit einem ganzen Satz.','سارا سن مکس را می پرسد. این بار مکس با یک جمله کامل جواب می دهد.','story','sara-max-language-class',3,
   3,90,3,'validated',
   '{"relationship":"classmates","storyArc":"beginning-development-ending","startingPoint":"absolute-beginner"}');
  SET v_l_3=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_sara,1,'character','Wie alt bist du?','چند سالته؟',3,
   NULL,NULL,NULL,NULL,'[{"surface":"Wie","lemma":"wie","translation":"چطور / چگونه","partOfSpeech":"adverb"},{"surface":"alt","lemma":"alt","translation":"پیر / دارای سن","partOfSpeech":"adjective","meaning":"در این جمله: چند ساله"},{"surface":"bist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"هستی","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_max,2,'learner','Ich bin zwanzig.','من بیست سالمه.',3,
   NULL,NULL,'ich bin zwanzig',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"bin","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"هستم","form":"present_1sg"},{"surface":"zwanzig","lemma":"zwanzig","translation":"بیست","partOfSpeech":"number","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_sara,3,'character','Zwanzig?','بیست؟',3,
   NULL,NULL,NULL,NULL,'[{"surface":"Zwanzig","lemma":"zwanzig","translation":"بیست","partOfSpeech":"number","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_max,4,'learner','Ja.','بله.',3,
   NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_12=LAST_INSERT_ID();

  -- Lesson 4: Sara fragt noch einmal
  INSERT INTO lessons
  (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES
  (v_chapter,v_c_sara,v_c_max,'Sara fragt noch einmal','سارا یک بار دیگر می پرسد',
   'Sara und Max wiederholen die kurze Frage nach dem Alter und beenden dann das Gespräch.','سارا و مکس سوال سن را یک بار دیگر مرور می کنند و بعد مکالمه را تمام می کنند.','story','sara-max-language-class',4,
   3,90,4,'validated',
   '{"relationship":"classmates","storyArc":"beginning-development-ending","startingPoint":"absolute-beginner"}');
  SET v_l_4=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_sara,1,'character','Hallo, Max!','سلام، مکس!',3,
   NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":","},{"surface":"Max","lemma":"Max","translation":"مکس (نام مردانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_max,2,'learner','Hallo, Sara!','سلام، سارا!',3,
   NULL,NULL,'hallo sara',NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":","},{"surface":"Sara","lemma":"Sara","translation":"سارا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_sara,3,'character','Wie alt bist du?','چند سالته؟',3,
   NULL,NULL,NULL,NULL,'[{"surface":"Wie","lemma":"wie","translation":"چطور / چگونه","partOfSpeech":"adverb"},{"surface":"alt","lemma":"alt","translation":"پیر / دارای سن","partOfSpeech":"adjective","meaning":"در این جمله: چند ساله"},{"surface":"bist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"هستی","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_max,4,'learner','Ich bin zwanzig.','من بیست سالمه.',3,
   NULL,NULL,'ich bin zwanzig',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"bin","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"هستم","form":"present_1sg"},{"surface":"zwanzig","lemma":"zwanzig","translation":"بیست","partOfSpeech":"number","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_sara,5,'character','Danke!','ممنون!',3,
   NULL,NULL,NULL,NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_max,6,'learner','Tschüss!','خداحافظ!',3,
   NULL,NULL,'tschüss',NULL,'[{"surface":"Tschüss","lemma":"Tschüss","translation":"خداحافظ","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_18=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_eins,'passive',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_zwei,'passive',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_drei,'passive',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_eins_zwei_drei,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_wie,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_alt,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_sein,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_zwanzig,'passive',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_wie_alt_bist_du,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_wie,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_alt,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_sein,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_zwanzig,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_ich_bin_zwanzig,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_hallo,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_max,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_sara,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_wie,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_alt,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_sein,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_zwanzig,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_tschuess,'review',0,1);

  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_eins_zwei_drei,'عددهای جدید',NULL,3,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به میا گوش کن',NULL,3,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'عدد بعدی را بخوان',NULL,3,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به میا گوش کن',NULL,3,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'هر سه عدد را بخوان',NULL,3,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,NULL,v_w_drei,'معنی درست را انتخاب کن',NULL,3,'{"mode":"word_translation","question":"Drei","choices":["سه","دو","یک"],"correctIndex":0}',NULL);

  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_wie_alt_bist_du,'عبارت جدید',NULL,3,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به سوال میا گوش کن',NULL,3,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'فعلا کوتاه جواب بده',NULL,3,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به میا گوش کن',NULL,3,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'جواب کوتاه بده',NULL,3,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_5,NULL,'معنی درست را انتخاب کن',NULL,3,'{"mode":"phrase_meaning","question":"«Wie alt bist du?» یعنی چی؟","choices":["چند سالته؟","اسمت چیه؟","اهل کجایی؟"],"correctIndex":0}',NULL);

  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_ich_bin_zwanzig,'جواب کامل جدید',NULL,3,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_9,NULL,'به سارا گوش کن',NULL,3,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_10,NULL,'کامل جواب بده',NULL,3,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_11,NULL,'به سارا گوش کن',NULL,3,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_12,NULL,'جواب کوتاه بده',NULL,3,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_10,NULL,'معنی درست را انتخاب کن',NULL,3,'{"mode":"turn_translation","question":"«Ich bin zwanzig.» یعنی چی؟","choices":["من بیست سالمه.","اسم من بیست است.","من اهل آلمان هستم."],"correctIndex":0}',NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'word_order',7,v_t_10,NULL,'جمله را به ترتیب درست بساز',NULL,3,'{"source":"turn_tokens","shuffle":true}',NULL);

  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_13,NULL,'به سارا گوش کن',NULL,3,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_14,NULL,'جواب مکس را بخوان',NULL,3,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_15,NULL,'به سوال سارا گوش کن',NULL,3,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_16,NULL,'کامل جواب بده',NULL,3,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_17,NULL,'به سارا گوش کن',NULL,3,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_18,NULL,'مکالمه را تمام کن',NULL,3,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,3,'{"source":"lesson_story","question":"مکس چند ساله است؟","choices":["بیست","سه","دو"],"correctIndex":0}',NULL);

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 005 lesson count.'; END IF;
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

CALL import_nova_series_005_v9();
DROP PROCEDURE IF EXISTS import_nova_series_005_v9;
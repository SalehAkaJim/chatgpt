-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 012
-- A1 > Mein Alltag > Uhrzeit & Termine
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_012_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_012_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_anna BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_jonas BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_lena BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_ben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wie BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_drei BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kaffee BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danke BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_bitte BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_bis BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_spaeter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_spaet BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_es BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_uhr BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wie_spaet_ist_es BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_um BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_um_drei_uhr BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_termin BIGINT UNSIGNED DEFAULT NULL;
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
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND sort_order=1 ORDER BY id LIMIT 1;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 011 before Series 012.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=1 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Module 03 Chapter 02 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 011 before Series 012.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Module 03 Chapter 02 must be empty before Series 012 import.'; END IF;

  SELECT id INTO v_c_anna FROM characters
  WHERE course_id=v_course AND name='Anna' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_anna IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Anna not found.'; END IF;

  SELECT id INTO v_c_jonas FROM characters
  WHERE course_id=v_course AND name='Jonas' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_jonas IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Jonas not found.'; END IF;

  SELECT id INTO v_c_lena FROM characters
  WHERE course_id=v_course AND name='Lena' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_lena IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Lena not found.'; END IF;

  SELECT id INTO v_c_ben FROM characters
  WHERE course_id=v_course AND name='Ben' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_ben IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Ben not found.'; END IF;

  SELECT id INTO v_w_wie FROM words
  WHERE course_id=v_course AND lemma='wie' AND part_of_speech='adverb' AND translation='چطور / چگونه'
  ORDER BY id LIMIT 1;
  IF v_w_wie IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word wie not found.'; END IF;

  SELECT id INTO v_w_sein FROM words
  WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن'
  ORDER BY id LIMIT 1;
  IF v_w_sein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word sein not found.'; END IF;

  SELECT id INTO v_w_drei FROM words
  WHERE course_id=v_course AND lemma='drei' AND part_of_speech='number' AND translation='سه'
  ORDER BY id LIMIT 1;
  IF v_w_drei IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word drei not found.'; END IF;

  SELECT id INTO v_w_kaffee FROM words
  WHERE course_id=v_course AND lemma='Kaffee' AND part_of_speech='noun' AND translation='قهوه'
  ORDER BY id LIMIT 1;
  IF v_w_kaffee IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Kaffee not found.'; END IF;

  SELECT id INTO v_w_ja FROM words
  WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره'
  ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;

  SELECT id INTO v_w_danke FROM words
  WHERE course_id=v_course AND lemma='danke' AND part_of_speech='interjection' AND translation='ممنون'
  ORDER BY id LIMIT 1;
  IF v_w_danke IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word danke not found.'; END IF;

  SELECT id INTO v_w_bitte FROM words
  WHERE course_id=v_course AND lemma='bitte' AND part_of_speech='interjection' AND translation='لطفا / خواهش می کنم'
  ORDER BY id LIMIT 1;
  IF v_w_bitte IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word bitte not found.'; END IF;

  SELECT id INTO v_w_bis FROM words
  WHERE course_id=v_course AND lemma='bis' AND part_of_speech='preposition' AND translation='تا'
  ORDER BY id LIMIT 1;
  IF v_w_bis IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word bis not found.'; END IF;

  SELECT id INTO v_w_spaeter FROM words
  WHERE course_id=v_course AND lemma='später' AND part_of_speech='adverb' AND translation='بعدا'
  ORDER BY id LIMIT 1;
  IF v_w_spaeter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word später not found.'; END IF;

  SELECT id INTO v_w_spaet FROM words
  WHERE course_id=v_course AND lemma='spät' AND part_of_speech='adjective' AND translation='دیر'
  ORDER BY id LIMIT 1;
  IF v_w_spaet IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'spät','spät','adjective','دیر',7,
           NULL,'[{"text":"früh","translation":"زود"},{"text":"pünktlich","translation":"سر وقت"},{"text":"schnell","translation":"سریع"},{"text":"langsam","translation":"آهسته"},{"text":"lange","translation":"مدت زیاد / طولانی"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_spaet=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_es FROM words
  WHERE course_id=v_course AND lemma='es' AND part_of_speech='pronoun' AND translation='آن / این / ضمیر خنثی'
  ORDER BY id LIMIT 1;
  IF v_w_es IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'es','es','pronoun','آن / این / ضمیر خنثی',7,
           NULL,'[{"text":"ich","translation":"من"},{"text":"du","translation":"تو"},{"text":"er","translation":"او (مذکر)"},{"text":"sie","translation":"او (مونث) / آنها"},{"text":"wir","translation":"ما"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_es=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_uhr FROM words
  WHERE course_id=v_course AND lemma='Uhr' AND part_of_speech='noun' AND translation='ساعت'
  ORDER BY id LIMIT 1;
  IF v_w_uhr IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Uhr','Uhr','noun','ساعت',7,
           '{"article":"die","plural":"Uhren"}','[{"text":"Minute","translation":"دقیقه"},{"text":"Stunde","translation":"ساعت به معنی مدت"},{"text":"Tag","translation":"روز"},{"text":"Morgen","translation":"صبح"},{"text":"Abend","translation":"عصر / شب"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_uhr=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_wie_spaet_ist_es FROM words
  WHERE course_id=v_course AND lemma='Wie spät ist es?' AND part_of_speech='phrase' AND translation='ساعت چنده؟'
  ORDER BY id LIMIT 1;
  IF v_w_wie_spaet_ist_es IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Wie spät ist es?','Wie spät ist es?','phrase','ساعت چنده؟',7,
           NULL,'[{"text":"Wie alt bist du?","translation":"چند سالته؟"},{"text":"Wie geht es dir?","translation":"حالت چطوره؟"},{"text":"Woher kommst du?","translation":"اهل کجایی؟"},{"text":"Wo ist die Milch?","translation":"شیر کجاست؟"},{"text":"Zahlen, bitte.","translation":"می خواهم پرداخت کنم، لطفا."}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_wie_spaet_ist_es=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_um FROM words
  WHERE course_id=v_course AND lemma='um' AND part_of_speech='preposition' AND translation='در ساعت / حوالی'
  ORDER BY id LIMIT 1;
  IF v_w_um IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'um','um','preposition','در ساعت / حوالی',7,
           NULL,'[{"text":"vor","translation":"قبل از"},{"text":"nach","translation":"بعد از"},{"text":"bis","translation":"تا"},{"text":"ab","translation":"از"},{"text":"gegen","translation":"حدود / حوالی"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_um=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_um_drei_uhr FROM words
  WHERE course_id=v_course AND lemma='Um drei Uhr.' AND part_of_speech='phrase' AND translation='ساعت سه.'
  ORDER BY id LIMIT 1;
  IF v_w_um_drei_uhr IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Um drei Uhr.','Um drei Uhr.','phrase','ساعت سه.',7,
           NULL,'[{"text":"Drei Euro.","translation":"سه یورو."},{"text":"Bis später.","translation":"بعدا می بینمت."},{"text":"Sehr gut.","translation":"خیلی خوب."},{"text":"Nicht so gut.","translation":"زیاد خوب نیستم."},{"text":"Mit Karte, bitte.","translation":"با کارت، لطفا."}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_um_drei_uhr=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_termin FROM words
  WHERE course_id=v_course AND lemma='Termin' AND part_of_speech='noun' AND translation='قرار / وقت'
  ORDER BY id LIMIT 1;
  IF v_w_termin IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Termin','Termin','noun','قرار / وقت',8,
           '{"article":"der","plural":"Termine"}','[{"text":"Treffen","translation":"ملاقات"},{"text":"Pause","translation":"استراحت"},{"text":"Kurs","translation":"کلاس"},{"text":"Arbeit","translation":"کار"},{"text":"Urlaub","translation":"تعطیلات"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_termin=LAST_INSERT_ID();
  END IF;

  -- Lesson 1: Wie spät ist es?
  INSERT INTO lessons
  (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES
  (v_chapter,v_c_anna,v_c_jonas,'Wie spät ist es?','ساعت چنده؟',
   'Anna fragt Jonas zu Hause nach der Uhrzeit.','آنا در خانه از یوناس ساعت را می پرسد.','story','anna-jonas-couple',8,
   7,90,1,'validated',
   '{"relationship":"spouses","storyArc":"beginning-development-ending","startingPoint":"absolute-beginner"}');
  SET v_l_1=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_anna,1,'character','Wie spät ist es?','ساعت چنده؟',7,
   NULL,NULL,NULL,NULL,'[{"surface":"Wie","lemma":"wie","translation":"چطور / چگونه","partOfSpeech":"adverb","meaning":"در این جمله: چه"},{"surface":"spät","lemma":"spät","translation":"دیر","partOfSpeech":"adjective","meaning":"در این عبارت مربوط به ساعت"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است","form":"present_3sg"},{"surface":"es","lemma":"es","translation":"آن / این / ضمیر خنثی","partOfSpeech":"pronoun","meaning":"ضمیر این عبارت","suffix":"?"}]','فعلا سوال را کامل یاد بگیر','«Wie spät ist es?» یعنی «ساعت چنده؟». فعلا لازم نیست تک تک بخش های جمله را حفظ کنی.',NULL,NULL);
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_jonas,2,'learner','Drei Uhr.','ساعت سه.',7,
   NULL,NULL,'drei uhr',NULL,'[{"surface":"Drei","lemma":"drei","translation":"سه","partOfSpeech":"number"},{"surface":"Uhr","lemma":"Uhr","translation":"ساعت","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_anna,3,'character','Danke!','ممنون!',7,
   NULL,NULL,NULL,NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_1,v_c_jonas,4,'learner','Bitte!','خواهش می کنم!',7,
   NULL,NULL,'bitte',NULL,'[{"surface":"Bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","meaning":"خواهش می کنم","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_4=LAST_INSERT_ID();

  -- Lesson 2: Kaffee um drei Uhr
  INSERT INTO lessons
  (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES
  (v_chapter,v_c_anna,v_c_jonas,'Kaffee um drei Uhr','قهوه ساعت سه',
   'Anna und Jonas planen einen Kaffee für drei Uhr.','آنا و یوناس برای ساعت سه قرار قهوه می گذارند.','story','anna-jonas-couple',9,
   7,90,2,'validated',
   '{"relationship":"spouses","storyArc":"beginning-development-ending","startingPoint":"absolute-beginner"}');
  SET v_l_2=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_anna,1,'character','Kaffee um drei Uhr?','قهوه ساعت سه؟',7,
   NULL,NULL,NULL,NULL,'[{"surface":"Kaffee","lemma":"Kaffee","translation":"قهوه","partOfSpeech":"noun"},{"surface":"um","lemma":"um","translation":"در ساعت / حوالی","partOfSpeech":"preposition","meaning":"در ساعت"},{"surface":"drei","lemma":"drei","translation":"سه","partOfSpeech":"number"},{"surface":"Uhr","lemma":"Uhr","translation":"ساعت","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_jonas,2,'learner','Ja. Um drei Uhr.','بله. ساعت سه.',7,
   NULL,NULL,'ja um drei uhr',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Um","lemma":"um","translation":"در ساعت / حوالی","partOfSpeech":"preposition","meaning":"در ساعت"},{"surface":"drei","lemma":"drei","translation":"سه","partOfSpeech":"number"},{"surface":"Uhr","lemma":"Uhr","translation":"ساعت","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_anna,3,'character','Bis später!','بعدا می بینمت!',7,
   NULL,NULL,NULL,NULL,'[{"surface":"Bis","lemma":"bis","translation":"تا","partOfSpeech":"preposition"},{"surface":"später","lemma":"später","translation":"بعدا","partOfSpeech":"adverb","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_2,v_c_jonas,4,'learner','Bis später!','بعدا می بینمت!',7,
   NULL,NULL,'bis später',NULL,'[{"surface":"Bis","lemma":"bis","translation":"تا","partOfSpeech":"preposition"},{"surface":"später","lemma":"später","translation":"بعدا","partOfSpeech":"adverb","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_8=LAST_INSERT_ID();

  -- Lesson 3: Ein Termin
  INSERT INTO lessons
  (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES
  (v_chapter,v_c_lena,v_c_ben,'Ein Termin','یک قرار',
   'Lena und Ben bestätigen die Uhrzeit eines Termins.','لنا و بن ساعت یک قرار را با هم تایید می کنند.','story','lena-ben-language-class',4,
   8,90,3,'validated',
   '{"relationship":"classmates","storyArc":"beginning-development-ending","startingPoint":"absolute-beginner"}');
  SET v_l_3=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_lena,1,'character','Termin um drei Uhr?','قرار ساعت سه؟',8,
   NULL,NULL,NULL,NULL,'[{"surface":"Termin","lemma":"Termin","translation":"قرار / وقت","partOfSpeech":"noun"},{"surface":"um","lemma":"um","translation":"در ساعت / حوالی","partOfSpeech":"preposition","meaning":"در ساعت"},{"surface":"drei","lemma":"drei","translation":"سه","partOfSpeech":"number"},{"surface":"Uhr","lemma":"Uhr","translation":"ساعت","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_ben,2,'learner','Ja. Um drei Uhr.','بله. ساعت سه.',8,
   NULL,NULL,'ja um drei uhr',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Um","lemma":"um","translation":"در ساعت / حوالی","partOfSpeech":"preposition","meaning":"در ساعت"},{"surface":"drei","lemma":"drei","translation":"سه","partOfSpeech":"number"},{"surface":"Uhr","lemma":"Uhr","translation":"ساعت","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_lena,3,'character','Danke!','ممنون!',8,
   NULL,NULL,NULL,NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_3,v_c_ben,4,'learner','Bitte!','خواهش می کنم!',8,
   NULL,NULL,'bitte',NULL,'[{"surface":"Bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","meaning":"خواهش می کنم","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_12=LAST_INSERT_ID();

  -- Lesson 4: Uhrzeit und Termin
  INSERT INTO lessons
  (chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES
  (v_chapter,v_c_lena,v_c_ben,'Uhrzeit und Termin','ساعت و قرار',
   'Lena und Ben wiederholen die Uhrzeit und den Termin ohne neuen Lernstoff.','لنا و بن بدون مطلب جدید ساعت و قرار را مرور می کنند.','story','lena-ben-language-class',5,
   8,90,4,'validated',
   '{"relationship":"classmates","storyArc":"beginning-development-ending","startingPoint":"absolute-beginner"}');
  SET v_l_4=LAST_INSERT_ID();

  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_lena,1,'character','Wie spät ist es?','ساعت چنده؟',8,
   NULL,NULL,NULL,NULL,'[{"surface":"Wie","lemma":"wie","translation":"چطور / چگونه","partOfSpeech":"adverb","meaning":"در این جمله: چه"},{"surface":"spät","lemma":"spät","translation":"دیر","partOfSpeech":"adjective","meaning":"در این عبارت مربوط به ساعت"},{"surface":"ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است","form":"present_3sg"},{"surface":"es","lemma":"es","translation":"آن / این / ضمیر خنثی","partOfSpeech":"pronoun","meaning":"ضمیر این عبارت","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_ben,2,'learner','Drei Uhr.','ساعت سه.',8,
   NULL,NULL,'drei uhr',NULL,'[{"surface":"Drei","lemma":"drei","translation":"سه","partOfSpeech":"number"},{"surface":"Uhr","lemma":"Uhr","translation":"ساعت","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_lena,3,'character','Termin um drei Uhr?','قرار ساعت سه؟',8,
   NULL,NULL,NULL,NULL,'[{"surface":"Termin","lemma":"Termin","translation":"قرار / وقت","partOfSpeech":"noun"},{"surface":"um","lemma":"um","translation":"در ساعت / حوالی","partOfSpeech":"preposition","meaning":"در ساعت"},{"surface":"drei","lemma":"drei","translation":"سه","partOfSpeech":"number"},{"surface":"Uhr","lemma":"Uhr","translation":"ساعت","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_ben,4,'learner','Ja.','بله.',8,
   NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_lena,5,'character','Bis später!','بعدا می بینمت!',8,
   NULL,NULL,NULL,NULL,'[{"surface":"Bis","lemma":"bis","translation":"تا","partOfSpeech":"preposition"},{"surface":"später","lemma":"später","translation":"بعدا","partOfSpeech":"adverb","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns
  (lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES
  (v_l_4,v_c_ben,6,'learner','Bis später!','بعدا می بینمت!',8,
   NULL,NULL,'bis später',NULL,'[{"surface":"Bis","lemma":"bis","translation":"تا","partOfSpeech":"preposition"},{"surface":"später","lemma":"später","translation":"بعدا","partOfSpeech":"adverb","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_18=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_wie,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_spaet,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_sein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_es,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_drei,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_uhr,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_bitte,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_wie_spaet_ist_es,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_kaffee,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_um,'passive',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_drei,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_uhr,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_bis,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_spaeter,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_um_drei_uhr,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_termin,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_um,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_drei,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_uhr,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_bitte,'review',0,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_wie,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_spaet,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_sein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_es,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_drei,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_uhr,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_termin,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_um,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_bis,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_spaeter,'review',0,2);

  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_wie_spaet_ist_es,'عبارت جدید',NULL,7,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به سوال آنا گوش کن',NULL,7,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'ساعت را بگو',NULL,7,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به آنا گوش کن',NULL,7,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'جواب بده',NULL,7,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,v_t_1,NULL,'معنی درست را انتخاب کن',NULL,7,'{"mode":"turn_translation","question":"«Wie spät ist es?» یعنی چی؟","choices":["ساعت چنده؟","چند سالته؟","حالت چطوره؟"],"correctIndex":0}',NULL);

  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_um_drei_uhr,'عبارت جدید',NULL,7,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به پیشنهاد آنا گوش کن',NULL,7,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'زمان را تایید کن',NULL,7,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به آنا گوش کن',NULL,7,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'خداحافظی کن',NULL,7,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_6,NULL,'معنی درست را انتخاب کن',NULL,7,'{"mode":"turn_translation","question":"«Um drei Uhr.» یعنی چی؟","choices":["ساعت سه.","سه یورو.","بعدا می بینمت."],"correctIndex":0}',NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',7,v_t_6,NULL,'بخش زمانی را به ترتیب درست بساز',NULL,7,'{"source":"turn_tokens","shuffle":true}',NULL);

  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_termin,'کلمه جدید',NULL,8,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_9,NULL,'به لنا گوش کن',NULL,8,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_10,NULL,'زمان قرار را تایید کن',NULL,8,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_11,NULL,'به لنا گوش کن',NULL,8,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_12,NULL,'جواب بده',NULL,8,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,NULL,v_w_termin,'معنی درست را انتخاب کن',NULL,8,'{"mode":"word_translation","question":"Termin","choices":["قرار / وقت","صبحانه","پرداخت"],"correctIndex":0}',NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,8,'{"source":"lesson_story","question":"قرار لنا و بن چه ساعتی است؟","choices":["ساعت سه","ساعت بیست","زمان مشخص نیست"],"correctIndex":0}',NULL);

  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_13,NULL,'به سوال لنا گوش کن',NULL,8,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_14,NULL,'ساعت را بگو',NULL,8,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_15,NULL,'به زمان قرار گوش کن',NULL,8,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_16,NULL,'تایید کن',NULL,8,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_17,NULL,'به لنا گوش کن',NULL,8,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_18,NULL,'خداحافظی کن',NULL,8,NULL,NULL);
  INSERT INTO activities
  (lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,8,'{"source":"lesson_story","question":"قرار چه ساعتی است؟","choices":["ساعت سه","ساعت یک","زمان مشخص نیست"],"correctIndex":0}',NULL);

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 012 lesson count.'; END IF;
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

CALL import_nova_series_012_v9();
DROP PROCEDURE IF EXISTS import_nova_series_012_v9;
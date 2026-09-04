-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 035
-- A1 > Menschen & Pläne > Einfache Gefühle
-- Completes Module 07.
-- Continues lena-ben-weekend-plans from Series 034.
-- ===============================================================
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_series_035_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_035_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_lena BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_ben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wie BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gehen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_es BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_du BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kaffee BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gern BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_muede BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_bin_muede BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_froh BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_bin_froh BIGINT UNSIGNED DEFAULT NULL;
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
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND sort_order=1 ORDER BY id LIMIT 1;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=7 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 031 before Series 035.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=4 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=5 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Module 07 Chapter 05 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 034 before Series 035.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Module 07 Chapter 05 must be empty before Series 035 import.'; END IF;
  SELECT id INTO v_c_lena FROM characters WHERE course_id=v_course AND name='Lena' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_lena IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Lena not found.'; END IF;
  SELECT id INTO v_c_ben FROM characters WHERE course_id=v_course AND name='Ben' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_ben IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Ben not found.'; END IF;
  SELECT id INTO v_w_wie FROM words WHERE course_id=v_course AND lemma='wie' AND part_of_speech='adverb' AND translation='چطور / چگونه' ORDER BY id LIMIT 1;
  IF v_w_wie IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word wie not found.'; END IF;
  SELECT id INTO v_w_gehen FROM words WHERE course_id=v_course AND lemma='gehen' AND part_of_speech='verb' AND translation='رفتن' ORDER BY id LIMIT 1;
  IF v_w_gehen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gehen not found.'; END IF;
  SELECT id INTO v_w_es FROM words WHERE course_id=v_course AND lemma='es' AND part_of_speech='pronoun' AND translation='آن / این' ORDER BY id LIMIT 1;
  IF v_w_es IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word es not found.'; END IF;
  SELECT id INTO v_w_du FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_du IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word du not found.'; END IF;
  SELECT id INTO v_w_ich FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_ich IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ich not found.'; END IF;
  SELECT id INTO v_w_sein FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_sein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word sein not found.'; END IF;
  SELECT id INTO v_w_kaffee FROM words WHERE course_id=v_course AND lemma='Kaffee' AND part_of_speech='noun' AND translation='قهوه' ORDER BY id LIMIT 1;
  IF v_w_kaffee IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Kaffee not found.'; END IF;
  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;
  SELECT id INTO v_w_gern FROM words WHERE course_id=v_course AND lemma='gern' AND part_of_speech='adverb' AND translation='با علاقه / با میل' ORDER BY id LIMIT 1;
  IF v_w_gern IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gern not found.'; END IF;
  SELECT id INTO v_w_gut FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_gut IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gut not found.'; END IF;
  SELECT id INTO v_w_muede FROM words WHERE course_id=v_course AND lemma='müde' AND part_of_speech='adjective' AND translation='خسته' ORDER BY id LIMIT 1;
  IF v_w_muede IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'müde','müde','adjective','خسته',19,NULL,'[{"text":"froh","translation":"خوشحال"},{"text":"glücklich","translation":"خوشحال"},{"text":"wach","translation":"بیدار / هوشیار"},{"text":"hungrig","translation":"گرسنه"},{"text":"krank","translation":"بیمار"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_muede=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_ich_bin_muede FROM words WHERE course_id=v_course AND lemma='Ich bin müde.' AND part_of_speech='phrase' AND translation='من خسته ام.' ORDER BY id LIMIT 1;
  IF v_w_ich_bin_muede IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich bin müde.','Ich bin müde.','phrase','من خسته ام.',19,NULL,'[{"text":"Ich bin froh.","translation":"من خوشحالم."},{"text":"Sehr gut.","translation":"خیلی خوب."},{"text":"Nicht so gut.","translation":"زیاد خوب نیستم."},{"text":"Ich habe am Samstag keine Zeit.","translation":"شنبه وقت ندارم."},{"text":"Am Sonntag habe ich Zeit.","translation":"یکشنبه وقت دارم."}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_ich_bin_muede=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_froh FROM words WHERE course_id=v_course AND lemma='froh' AND part_of_speech='adjective' AND translation='خوشحال' ORDER BY id LIMIT 1;
  IF v_w_froh IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'froh','froh','adjective','خوشحال',19,NULL,'[{"text":"müde","translation":"خسته"},{"text":"traurig","translation":"ناراحت"},{"text":"glücklich","translation":"خوشحال"},{"text":"gut","translation":"خوب"},{"text":"schlecht","translation":"بد"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_froh=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_ich_bin_froh FROM words WHERE course_id=v_course AND lemma='Ich bin froh.' AND part_of_speech='phrase' AND translation='من خوشحالم.' ORDER BY id LIMIT 1;
  IF v_w_ich_bin_froh IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich bin froh.','Ich bin froh.','phrase','من خوشحالم.',19,NULL,'[{"text":"Ich bin müde.","translation":"من خسته ام."},{"text":"Sehr gut.","translation":"خیلی خوب."},{"text":"Nicht so gut.","translation":"زیاد خوب نیستم."},{"text":"Ich wohne hier.","translation":"من اینجا زندگی می کنم."},{"text":"Ich räume auf.","translation":"من مرتب می کنم."}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_ich_bin_froh=LAST_INSERT_ID();
  END IF;
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_lena,v_c_ben,'Müde','خسته','Ben kommt am Sonntag zu Lena. Lena fragt nach seinem Befinden und Ben sagt kurz, dass er müde ist.','بن یکشنبه پیش لنا می آید. لنا حالش را می پرسد و بن کوتاه می گوید خسته است.','story','lena-ben-weekend-plans',17,19,105,1,'validated','{"relationship":"friends_and_classmates","context":"sunday_coffee_and_feelings","storyArc":"arrival-feeling-support-positive-resolution"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_lena,1,'character','Wie geht es dir?','حالت چطوره؟',19,NULL,NULL,NULL,NULL,'[{"surface":"Wie","lemma":"wie","translation":"چطور / چگونه","partOfSpeech":"adverb"},{"surface":"geht","lemma":"gehen","translation":"رفتن","partOfSpeech":"verb","meaning":"می گذرد / حالت است","form":"present_3sg"},{"surface":"es","lemma":"es","translation":"آن / این","partOfSpeech":"pronoun"},{"surface":"dir","lemma":"du","translation":"تو","partOfSpeech":"pronoun","meaning":"به تو / حالت","form":"dative_2sg","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_ben,2,'learner','Müde.','خسته ام.',19,NULL,NULL,'müde',NULL,'[{"surface":"Müde","lemma":"müde","translation":"خسته","partOfSpeech":"adjective","meaning":"خسته ام","suffix":"."}]','یک جواب خیلی کوتاه','اگر فقط بخواهی خیلی کوتاه حالت را بگویی، «Müde.» یعنی «خسته ام».',NULL,NULL);
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_lena,3,'character','Kaffee?','قهوه؟',19,NULL,NULL,NULL,NULL,'[{"surface":"Kaffee","lemma":"Kaffee","translation":"قهوه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_ben,4,'learner','Ja, gern.','بله، حتما.',19,NULL,NULL,'ja gern',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"gern","lemma":"gern","translation":"با علاقه / با میل","partOfSpeech":"adverb","meaning":"حتما / با میل","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_lena,v_c_ben,'Ich bin müde','من خسته ام','Lena fragt noch einmal vollständig. Ben antwortet diesmal mit einem ganzen Satz.','لنا دوباره کامل حال بن را می پرسد. بن این بار با یک جمله کامل جواب می دهد.','story','lena-ben-weekend-plans',18,19,105,2,'validated','{"relationship":"friends_and_classmates","context":"sunday_coffee_and_feelings","storyArc":"arrival-feeling-support-positive-resolution"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_lena,1,'character','Wie geht es dir?','حالت چطوره؟',19,NULL,NULL,NULL,NULL,'[{"surface":"Wie","lemma":"wie","translation":"چطور / چگونه","partOfSpeech":"adverb"},{"surface":"geht","lemma":"gehen","translation":"رفتن","partOfSpeech":"verb","meaning":"می گذرد / حالت است","form":"present_3sg"},{"surface":"es","lemma":"es","translation":"آن / این","partOfSpeech":"pronoun"},{"surface":"dir","lemma":"du","translation":"تو","partOfSpeech":"pronoun","meaning":"به تو / حالت","form":"dative_2sg","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_ben,2,'learner','Ich bin müde.','من خسته ام.',19,NULL,NULL,'ich bin müde',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"bin","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"هستم","form":"present_1sg"},{"surface":"müde","lemma":"müde","translation":"خسته","partOfSpeech":"adjective","suffix":"."}]','Ich bin + حالت','«Ich bin müde.» یعنی «من خسته ام». فعلا این جمله را به صورت یک الگوی ساده برای گفتن حالتت استفاده کن.',NULL,NULL);
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_lena,3,'character','Kaffee?','قهوه؟',19,NULL,NULL,NULL,NULL,'[{"surface":"Kaffee","lemma":"Kaffee","translation":"قهوه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_ben,4,'learner','Ja, gern.','بله، حتما.',19,NULL,NULL,'ja gern',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"gern","lemma":"gern","translation":"با علاقه / با میل","partOfSpeech":"adverb","meaning":"حتما / با میل","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ben,v_c_lena,'Ich bin froh','من خوشحالم','Der geänderte Sonntagstermin klappt. Ben fragt Lena nach ihrer Stimmung und Lena sagt, dass sie froh ist.','قرار جدید یکشنبه انجام شده است. بن حال لنا را می پرسد و لنا می گوید خوشحال است.','story','lena-ben-weekend-plans',19,19,105,3,'validated','{"relationship":"friends_and_classmates","context":"sunday_coffee_and_feelings","storyArc":"arrival-feeling-support-positive-resolution"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_ben,1,'character','Bist du froh?','خوشحالی؟',19,NULL,NULL,NULL,NULL,'[{"surface":"Bist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"هستی","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"froh","lemma":"froh","translation":"خوشحال","partOfSpeech":"adjective","suffix":"?"}]','همان الگوی sein با حالت جدید','«Bist du froh?» یعنی «خوشحالی؟». کلمه جدید اصلی در این جمله «froh» است.',NULL,NULL);
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_lena,2,'learner','Ja. Ich bin froh.','بله. من خوشحالم.',19,NULL,NULL,'ja ich bin froh',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"bin","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"هستم","form":"present_1sg"},{"surface":"froh","lemma":"froh","translation":"خوشحال","partOfSpeech":"adjective","suffix":"."}]','حالت مثبت را کامل بگو','«Ich bin froh.» یعنی «من خوشحالم».',NULL,NULL);
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_ben,3,'character','Gut.','خوبه.',19,NULL,NULL,NULL,NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"خوبه","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_lena,4,'learner','Ja.','بله.',19,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_lena,v_c_ben,'Müde und froh','خسته و خوشحال','Am Sonntag treffen sich Lena und Ben wirklich. Ben ist müde, nimmt Kaffee an und sagt am Ende, dass er trotzdem froh ist.','یکشنبه لنا و بن بالاخره همدیگر را می بینند. بن خسته است، قهوه را قبول می کند و در پایان می گوید با این حال خوشحال است.','story','lena-ben-weekend-plans',20,19,105,4,'validated','{"relationship":"friends_and_classmates","context":"sunday_coffee_and_feelings","storyArc":"arrival-feeling-support-positive-resolution"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_lena,1,'character','Wie geht es dir?','حالت چطوره؟',19,NULL,NULL,NULL,NULL,'[{"surface":"Wie","lemma":"wie","translation":"چطور / چگونه","partOfSpeech":"adverb"},{"surface":"geht","lemma":"gehen","translation":"رفتن","partOfSpeech":"verb","meaning":"می گذرد / حالت است","form":"present_3sg"},{"surface":"es","lemma":"es","translation":"آن / این","partOfSpeech":"pronoun"},{"surface":"dir","lemma":"du","translation":"تو","partOfSpeech":"pronoun","meaning":"به تو / حالت","form":"dative_2sg","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_ben,2,'learner','Ich bin müde.','من خسته ام.',19,NULL,NULL,'ich bin müde',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"bin","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"هستم","form":"present_1sg"},{"surface":"müde","lemma":"müde","translation":"خسته","partOfSpeech":"adjective","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_lena,3,'character','Kaffee?','قهوه؟',19,NULL,NULL,NULL,NULL,'[{"surface":"Kaffee","lemma":"Kaffee","translation":"قهوه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_ben,4,'learner','Ja, gern.','بله، حتما.',19,NULL,NULL,'ja gern',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"gern","lemma":"gern","translation":"با علاقه / با میل","partOfSpeech":"adverb","meaning":"حتما / با میل","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_lena,5,'character','Bist du froh?','خوشحالی؟',19,NULL,NULL,NULL,NULL,'[{"surface":"Bist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"هستی","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"froh","lemma":"froh","translation":"خوشحال","partOfSpeech":"adjective","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_ben,6,'learner','Ja. Ich bin froh.','بله. من خوشحالم.',19,NULL,NULL,'ja ich bin froh',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"bin","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"هستم","form":"present_1sg"},{"surface":"froh","lemma":"froh","translation":"خوشحال","partOfSpeech":"adjective","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_wie,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_gehen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_es,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_muede,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_kaffee,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_gern,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_wie,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_gehen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_es,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_sein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_muede,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_kaffee,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_gern,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich_bin_muede,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_sein,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_froh,'passive',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich_bin_froh,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wie,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_gehen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_es,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_du,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_sein,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_muede,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_kaffee,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_gern,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_froh,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich_bin_muede,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich_bin_froh,'review',0,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'new_word',1,NULL,v_w_muede,'کلمه جدید',NULL,19,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',2,v_t_1,NULL,'به سوال حال بن گوش کن',NULL,19,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',3,v_t_2,NULL,'بگو خسته ای',NULL,19,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',4,v_t_3,NULL,'به پیشنهاد قهوه گوش کن',NULL,19,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',5,v_t_4,NULL,'قهوه را قبول کن',NULL,19,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'meaning_choice',6,NULL,v_w_muede,'معنی درست را انتخاب کن',NULL,19,'{"mode":"word_translation","question":"müde","choices":["خسته","خوشحال","گرسنه"],"correctIndex":0}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'new_word',1,NULL,v_w_ich_bin_muede,'عبارت جدید',NULL,19,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',2,v_t_5,NULL,'به سوال حال گوش کن',NULL,19,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',3,v_t_6,NULL,'با جمله کامل بگو خسته ای',NULL,19,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',4,v_t_7,NULL,'به پیشنهاد قهوه گوش کن',NULL,19,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',5,v_t_8,NULL,'پیشنهاد را قبول کن',NULL,19,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'meaning_choice',6,v_t_6,NULL,'معنی درست را انتخاب کن',NULL,19,'{"mode":"turn_translation","question":"«Ich bin müde.» یعنی چی؟","choices":["من خسته ام.","من خوشحالم.","من خوبم."],"correctIndex":0}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'word_order',7,v_t_6,NULL,'جمله حالت را به ترتیب درست بساز',NULL,19,'{"source":"turn_tokens","shuffle":true}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'new_word',1,NULL,v_w_ich_bin_froh,'عبارت جدید',NULL,19,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',2,v_t_9,NULL,'به سوال بن گوش کن',NULL,19,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',3,v_t_10,NULL,'بگو خوشحالی',NULL,19,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',4,v_t_11,NULL,'به واکنش بن گوش کن',NULL,19,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',5,v_t_12,NULL,'تایید کن',NULL,19,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'meaning_choice',6,v_t_10,NULL,'معنی درست را انتخاب کن',NULL,19,'{"mode":"turn_translation","question":"«Ich bin froh.» یعنی چی؟","choices":["من خوشحالم.","من خسته ام.","من ناراحتم."],"correctIndex":0}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,19,'{"source":"lesson_story","question":"حال لنا چطور است؟","choices":["خوشحال است.","خسته است.","مشخص نیست."],"correctIndex":0}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',1,v_t_13,NULL,'به سوال حال گوش کن',NULL,19,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',2,v_t_14,NULL,'بگو خسته ای',NULL,19,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',3,v_t_15,NULL,'به پیشنهاد قهوه گوش کن',NULL,19,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',4,v_t_16,NULL,'قهوه را قبول کن',NULL,19,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',5,v_t_17,NULL,'به سوال احساس گوش کن',NULL,19,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',6,v_t_18,NULL,'بگو خوشحالی',NULL,19,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,19,'{"source":"lesson_story","question":"بن در این دیدار چه دو حالتی دارد؟","choices":["خسته و خوشحال","خوشحال و گرسنه","خسته و ناراحت"],"correctIndex":0}',NULL);
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 035 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  UPDATE chapters SET status='validated' WHERE id=v_chapter;
  UPDATE modules SET status='complete' WHERE id=v_module;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_series_035_v9();
DROP PROCEDURE IF EXISTS import_nova_series_035_v9;
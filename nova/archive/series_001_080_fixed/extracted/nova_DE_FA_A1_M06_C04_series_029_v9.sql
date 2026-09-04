-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 029
-- A1 > Zuhause > Mit den Nachbarn
-- Low-new-load chapter: 2 explicit targets only.
-- Canonical dependencies: Series 015 r3, Series 020 r2.
-- ===============================================================
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_series_029_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_029_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED; DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED; DECLARE v_chapter BIGINT UNSIGNED; DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_anna BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_sofia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_hallo BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kommen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danke BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_bitte BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_haben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_du BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_zeit BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kaffee BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gern BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_bis BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_spaeter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_schoen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_rein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_komm_rein BIGINT UNSIGNED DEFAULT NULL;
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
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=6 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 026 before Series 029.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=3 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=4 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Module 06 Chapter 04 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 028 before Series 029.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Module 06 Chapter 04 must be empty before Series 029 import.'; END IF;
  SELECT id INTO v_c_anna FROM characters WHERE course_id=v_course AND name='Anna' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_anna IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Anna not found.'; END IF;
  SELECT id INTO v_c_sofia FROM characters WHERE course_id=v_course AND name='Sofia' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_sofia IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Sofia not found.'; END IF;
  SELECT id INTO v_w_hallo FROM words WHERE course_id=v_course AND lemma='Hallo' AND part_of_speech='interjection' AND translation='سلام' ORDER BY id LIMIT 1;
  IF v_w_hallo IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Hallo not found.'; END IF;
  SELECT id INTO v_w_kommen FROM words WHERE course_id=v_course AND lemma='kommen' AND part_of_speech='verb' AND translation='آمدن' ORDER BY id LIMIT 1;
  IF v_w_kommen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word kommen not found.'; END IF;
  SELECT id INTO v_w_danke FROM words WHERE course_id=v_course AND lemma='danke' AND part_of_speech='interjection' AND translation='ممنون' ORDER BY id LIMIT 1;
  IF v_w_danke IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word danke not found.'; END IF;
  SELECT id INTO v_w_bitte FROM words WHERE course_id=v_course AND lemma='bitte' AND part_of_speech='interjection' AND translation='لطفا / خواهش می کنم' ORDER BY id LIMIT 1;
  IF v_w_bitte IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word bitte not found.'; END IF;
  SELECT id INTO v_w_haben FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_haben IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word haben not found.'; END IF;
  SELECT id INTO v_w_du FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_du IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word du not found.'; END IF;
  SELECT id INTO v_w_zeit FROM words WHERE course_id=v_course AND lemma='Zeit' AND part_of_speech='noun' AND translation='وقت / زمان' ORDER BY id LIMIT 1;
  IF v_w_zeit IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Zeit not found.'; END IF;
  SELECT id INTO v_w_kaffee FROM words WHERE course_id=v_course AND lemma='Kaffee' AND part_of_speech='noun' AND translation='قهوه' ORDER BY id LIMIT 1;
  IF v_w_kaffee IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Kaffee not found.'; END IF;
  SELECT id INTO v_w_gern FROM words WHERE course_id=v_course AND lemma='gern' AND part_of_speech='adverb' AND translation='با علاقه / با میل' ORDER BY id LIMIT 1;
  IF v_w_gern IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gern not found.'; END IF;
  SELECT id INTO v_w_bis FROM words WHERE course_id=v_course AND lemma='bis' AND part_of_speech='preposition' AND translation='تا' ORDER BY id LIMIT 1;
  IF v_w_bis IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word bis not found.'; END IF;
  SELECT id INTO v_w_spaeter FROM words WHERE course_id=v_course AND lemma='später' AND part_of_speech='adverb' AND translation='بعدا' ORDER BY id LIMIT 1;
  IF v_w_spaeter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word später not found.'; END IF;
  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;
  SELECT id INTO v_w_schoen FROM words WHERE course_id=v_course AND lemma='schön' AND part_of_speech='adjective' AND translation='زیبا / قشنگ' ORDER BY id LIMIT 1;
  IF v_w_schoen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word schön not found.'; END IF;
  SELECT id INTO v_w_rein FROM words WHERE course_id=v_course AND lemma='rein' AND part_of_speech='adverb' AND translation='داخل / به داخل' ORDER BY id LIMIT 1;
  IF v_w_rein IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'rein','rein','adverb','داخل / به داخل',17,NULL,'[{"text":"raus","translation":"بیرون / به بیرون"},{"text":"hier","translation":"اینجا"},{"text":"dort","translation":"آنجا"},{"text":"geradeaus","translation":"مستقیم"},{"text":"zurück","translation":"برگشت / عقب"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_rein=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_komm_rein FROM words WHERE course_id=v_course AND lemma='Komm rein.' AND part_of_speech='phrase' AND translation='بیا داخل.' ORDER BY id LIMIT 1;
  IF v_w_komm_rein IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Komm rein.','Komm rein.','phrase','بیا داخل.',17,NULL,'[{"text":"Willkommen!","translation":"خوش آمدی!"},{"text":"Bis später.","translation":"بعدا می بینمت."},{"text":"Hier, bitte.","translation":"همین جا، لطفا."},{"text":"Kommst du aus Iran?","translation":"از ایران می آیی؟"},{"text":"Ich wohne hier.","translation":"من اینجا زندگی می کنم."}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_komm_rein=LAST_INSERT_ID();
  END IF;
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sofia,v_c_anna,'Komm rein','بیا داخل','Sofia kommt zu Anna. Anna öffnet die Tür und lädt ihre Nachbarin direkt herein.','سوفیا به خانه آنا می آید. آنا در را باز می کند و او را به داخل دعوت می کند.','story','anna-sofia-neighbors-home',9,17,100,1,'validated','{"relationship":"neighbors","storyArc":"beginning-development-resolution-ending"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sofia,1,'character','Hallo!','سلام!',17,NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,2,'learner','Hallo! Komm rein.','سلام! بیا داخل.',17,NULL,NULL,'hallo komm rein',NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"!"},{"surface":"Komm","lemma":"kommen","translation":"آمدن","partOfSpeech":"verb","meaning":"بیا","form":"imperative_du"},{"surface":"rein","lemma":"rein","translation":"داخل / به داخل","partOfSpeech":"adverb","suffix":"."}]','یک دعوت کوتاه و کاربردی','«Komm rein.» یعنی «بیا داخل». فعلا آن را به صورت یک عبارت کامل استفاده کن.',NULL,NULL);
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sofia,3,'character','Danke!','ممنون!',17,NULL,NULL,NULL,NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,4,'learner','Bitte!','خواهش می کنم!',17,NULL,NULL,'bitte',NULL,'[{"surface":"Bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","meaning":"خواهش می کنم","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_anna,v_c_sofia,'Kaffee?','قهوه؟','Anna bietet Sofia Kaffee an. Sofia antwortet mit dem schon gesehenen Wort gern, das jetzt aktiv gelernt wird.','آنا به سوفیا قهوه تعارف می کند. سوفیا با کلمه gern جواب می دهد که حالا به شکل فعال یاد گرفته می شود.','story','anna-sofia-neighbors-home',10,17,100,2,'validated','{"relationship":"neighbors","storyArc":"beginning-development-resolution-ending"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,1,'character','Kaffee?','قهوه؟',17,NULL,NULL,NULL,NULL,'[{"surface":"Kaffee","lemma":"Kaffee","translation":"قهوه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sofia,2,'learner','Gern.','با میل.',17,NULL,NULL,'gern',NULL,'[{"surface":"Gern","lemma":"gern","translation":"با علاقه / با میل","partOfSpeech":"adverb","meaning":"با میل / حتما","suffix":"."}]','یک جواب خیلی کوتاه','در این موقعیت «Gern.» یعنی «با میل» یا «حتما».',NULL,NULL);
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,3,'character','Kaffee.','قهوه.',17,NULL,NULL,NULL,NULL,'[{"surface":"Kaffee","lemma":"Kaffee","translation":"قهوه","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sofia,4,'learner','Danke!','ممنون!',17,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sofia,v_c_anna,'Hast du Zeit?','وقت داری؟','Sofia fragt Anna nach Zeit. Die beiden benutzen nur schon bekannte Sprache und festigen den Nachbarschaftsdialog.','سوفیا از آنا می پرسد وقت دارد یا نه. هر دو فقط از زبان آشنا استفاده می کنند و گفتگوی همسایه ها را تمرین می کنند.','story','anna-sofia-neighbors-home',11,17,100,3,'validated','{"relationship":"neighbors","storyArc":"beginning-development-resolution-ending"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sofia,1,'character','Hast du Zeit?','وقت داری؟',17,NULL,NULL,NULL,NULL,'[{"surface":"Hast","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"داری","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"Zeit","lemma":"Zeit","translation":"وقت / زمان","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,2,'learner','Ja.','بله.',17,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sofia,3,'character','Kaffee?','قهوه؟',17,NULL,NULL,NULL,NULL,'[{"surface":"Kaffee","lemma":"Kaffee","translation":"قهوه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,4,'learner','Gern.','با میل.',17,NULL,NULL,'gern',NULL,'[{"surface":"Gern","lemma":"gern","translation":"با علاقه / با میل","partOfSpeech":"adverb","meaning":"با میل / حتما","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_anna,v_c_sofia,'Ein Besuch bei der Nachbarin','دیدار با همسایه','Sofia besucht Anna. Anna lädt sie herein, die beiden trinken Kaffee und verabschieden sich danach.','سوفیا به دیدن آنا می آید. آنا او را به داخل دعوت می کند، با هم قهوه می خورند و بعد خداحافظی می کنند.','story','anna-sofia-neighbors-home',12,17,100,4,'validated','{"relationship":"neighbors","storyArc":"beginning-development-resolution-ending"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,1,'character','Hallo! Komm rein.','سلام! بیا داخل.',17,NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"!"},{"surface":"Komm","lemma":"kommen","translation":"آمدن","partOfSpeech":"verb","meaning":"بیا","form":"imperative_du"},{"surface":"rein","lemma":"rein","translation":"داخل / به داخل","partOfSpeech":"adverb","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sofia,2,'learner','Danke!','ممنون!',17,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,3,'character','Kaffee?','قهوه؟',17,NULL,NULL,NULL,NULL,'[{"surface":"Kaffee","lemma":"Kaffee","translation":"قهوه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sofia,4,'learner','Gern.','با میل.',17,NULL,NULL,'gern',NULL,'[{"surface":"Gern","lemma":"gern","translation":"با علاقه / با میل","partOfSpeech":"adverb","meaning":"با میل / حتما","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,5,'character','Bis später!','بعدا می بینمت!',17,NULL,NULL,NULL,NULL,'[{"surface":"Bis","lemma":"bis","translation":"تا","partOfSpeech":"preposition"},{"surface":"später","lemma":"später","translation":"بعدا","partOfSpeech":"adverb","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sofia,6,'learner','Bis später!','بعدا می بینمت!',17,NULL,NULL,'bis später',NULL,'[{"surface":"Bis","lemma":"bis","translation":"تا","partOfSpeech":"preposition"},{"surface":"später","lemma":"später","translation":"بعدا","partOfSpeech":"adverb","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_hallo,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_kommen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_rein,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_bitte,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_komm_rein,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_kaffee,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_gern,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_haben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_zeit,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_kaffee,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_gern,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_hallo,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_kommen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_rein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_kaffee,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_gern,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_bis,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_spaeter,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_komm_rein,'review',0,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'new_word',1,NULL,v_w_komm_rein,'عبارت جدید',NULL,17,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',2,v_t_1,NULL,'به سلام سوفیا گوش کن',NULL,17,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',3,v_t_2,NULL,'سوفیا را به داخل دعوت کن',NULL,17,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',4,v_t_3,NULL,'به تشکر سوفیا گوش کن',NULL,17,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',5,v_t_4,NULL,'جواب تشکر را بده',NULL,17,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'meaning_choice',6,v_t_2,NULL,'معنی درست را انتخاب کن',NULL,17,'{"mode":"turn_translation","question":"«Komm rein.» یعنی چی؟","choices":["بیا داخل.","برو بیرون.","بعدا می بینمت."],"correctIndex":0}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'new_word',1,NULL,v_w_gern,'کلمه جدید',NULL,17,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',2,v_t_5,NULL,'به تعارف آنا گوش کن',NULL,17,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',3,v_t_6,NULL,'تعارف را قبول کن',NULL,17,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',4,v_t_7,NULL,'به آنا گوش کن',NULL,17,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',5,v_t_8,NULL,'تشکر کن',NULL,17,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'meaning_choice',6,NULL,v_w_gern,'معنی مناسب را انتخاب کن',NULL,17,'{"mode":"word_translation","question":"Gern","choices":["با میل / حتما","نه، ممنون","بعدا"],"correctIndex":0}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'word_order',7,v_t_6,NULL,'جواب کوتاه را بساز',NULL,17,'{"source":"turn_tokens","shuffle":true}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',1,v_t_9,NULL,'به سوال سوفیا گوش کن',NULL,17,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',2,v_t_10,NULL,'بگو وقت داری',NULL,17,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',3,v_t_11,NULL,'به تعارف قهوه گوش کن',NULL,17,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',4,v_t_12,NULL,'تعارف را قبول کن',NULL,17,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'reading_comprehension',5,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,17,'{"source":"lesson_story","question":"آنا وقت دارد؟","choices":["بله","نه","مشخص نیست"],"correctIndex":0}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',1,v_t_13,NULL,'به دعوت آنا گوش کن',NULL,17,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',2,v_t_14,NULL,'تشکر کن',NULL,17,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',3,v_t_15,NULL,'به تعارف قهوه گوش کن',NULL,17,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',4,v_t_16,NULL,'تعارف را قبول کن',NULL,17,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',5,v_t_17,NULL,'به خداحافظی آنا گوش کن',NULL,17,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',6,v_t_18,NULL,'خداحافظی کن',NULL,17,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,17,'{"source":"lesson_story","question":"سوفیا در خانه آنا چه چیزی قبول می کند؟","choices":["قهوه","بلیط","شلوار"],"correctIndex":0}',NULL);
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 029 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  UPDATE chapters SET status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_series_029_v9();
DROP PROCEDURE IF EXISTS import_nova_series_029_v9;
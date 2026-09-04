-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 067
-- A2 > Gesundheit & Beschwerden > Seit wann sind Sie krank?
-- Requires Series 066 / Module 06 Chapter 01.
-- Continues mia-doctor-weber orders 8-11.
-- C03-C05 remain planned; Module 06 remains active.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_067_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_067_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED;
  DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_mia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_doctor BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_haben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sie_formal BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_krank BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wann BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gestern BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_fieber BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_habe_fieber BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_haben_sie_fieber BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_seit BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_seit_wann_sind_sie_krank BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_seit_gestern BIGINT UNSIGNED DEFAULT NULL;
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
  DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN ROLLBACK; RESIGNAL; END;
  START TRANSACTION;
  SELECT id INTO v_course FROM courses WHERE learning_language='de' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='A2' AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Level not found.'; END IF;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=6 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 066 before Series 067.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=1 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_prev_chapter IS NULL OR v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 06 Chapter skeleton is incomplete.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 066 before Series 067.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_prev_chapter AND status IN ('validated','complete');
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 066 Chapter must be validated/complete before Series 067.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 06 Chapter 02 must be empty before Series 067 import.'; END IF;

  SELECT id INTO v_c_mia FROM characters WHERE course_id=v_course AND name='Mia' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_mia IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Mia not found.'; END IF;
  SELECT id INTO v_c_doctor FROM characters WHERE course_id=v_course AND name='Dr. Weber' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_doctor IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Dr. Weber not found.'; END IF;
  SELECT id INTO v_w_ich FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_ich IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ich not found.'; END IF;
  SELECT id INTO v_w_sein FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_sein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word sein not found.'; END IF;
  SELECT id INTO v_w_haben FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_haben IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word haben not found.'; END IF;
  SELECT id INTO v_w_sie_formal FROM words WHERE course_id=v_course AND lemma='Sie' AND part_of_speech='pronoun' AND translation='شما' ORDER BY id LIMIT 1;
  IF v_w_sie_formal IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Sie not found.'; END IF;
  SELECT id INTO v_w_krank FROM words WHERE course_id=v_course AND lemma='krank' AND part_of_speech='adjective' AND translation='بیمار' ORDER BY id LIMIT 1;
  IF v_w_krank IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word krank not found.'; END IF;
  SELECT id INTO v_w_wann FROM words WHERE course_id=v_course AND lemma='wann' AND part_of_speech='adverb' AND translation='کی / چه زمانی' ORDER BY id LIMIT 1;
  IF v_w_wann IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word wann not found.'; END IF;
  SELECT id INTO v_w_gestern FROM words WHERE course_id=v_course AND lemma='gestern' AND part_of_speech='adverb' AND translation='دیروز' ORDER BY id LIMIT 1;
  IF v_w_gestern IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gestern not found.'; END IF;
  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;
  SELECT id INTO v_w_fieber FROM words WHERE course_id=v_course AND lemma='Fieber' AND part_of_speech='noun' AND translation='تب' ORDER BY id LIMIT 1;
  IF v_w_fieber IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Fieber not found.'; END IF;
  SELECT id INTO v_w_ich_habe_fieber FROM words WHERE course_id=v_course AND lemma='Ich habe Fieber.' AND part_of_speech='phrase' AND translation='تب دارم.' ORDER BY id LIMIT 1;
  IF v_w_ich_habe_fieber IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Ich habe Fieber. not found.'; END IF;
  SELECT id INTO v_w_haben_sie_fieber FROM words WHERE course_id=v_course AND lemma='Haben Sie Fieber?' AND part_of_speech='phrase' AND translation='تب دارید؟' ORDER BY id LIMIT 1;
  IF v_w_haben_sie_fieber IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Haben Sie Fieber? not found.'; END IF;
  SELECT id INTO v_w_seit FROM words WHERE course_id=v_course AND lemma='seit' AND part_of_speech='preposition' AND translation='از / از زمان' ORDER BY id LIMIT 1;
  IF v_w_seit IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'seit','seit','preposition','از / از زمان',36,'{"usage":"temporal_preposition","questionPattern":"seit wann","meaning":"since","caseNote":"dative with noun phrases; no visible case marking in seit gestern"}','[{"text":"bis","translation":"تا"},{"text":"ab","translation":"از / از زمانی به بعد"},{"text":"vor","translation":"قبل از"},{"text":"um","translation":"در ساعت"},{"text":"nach","translation":"بعد از"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":67,"module":6}');
    SET v_w_seit=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_seit_wann_sind_sie_krank FROM words WHERE course_id=v_course AND lemma='Seit wann sind Sie krank?' AND part_of_speech='phrase' AND translation='از کی بیمارید؟' ORDER BY id LIMIT 1;
  IF v_w_seit_wann_sind_sie_krank IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Seit wann sind Sie krank?','Seit wann sind Sie krank?','phrase','از کی بیمارید؟',37,'{"question":"seit wann","verb":"sein","verbForm":"sind","person":"formal_2","adjective":"krank","register":"formal"}','[{"text":"Haben Sie Fieber?","translation":"تب دارید؟"},{"text":"Sind Sie krank?","translation":"بیمار هستید؟"},{"text":"Wann können Sie kommen?","translation":"کی می تونید بیاید؟"},{"text":"Seit gestern.","translation":"از دیروز."},{"text":"Ich habe Fieber.","translation":"تب دارم."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":67,"module":6}');
    SET v_w_seit_wann_sind_sie_krank=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_seit_gestern FROM words WHERE course_id=v_course AND lemma='Seit gestern.' AND part_of_speech='phrase' AND translation='از دیروز.' ORDER BY id LIMIT 1;
  IF v_w_seit_gestern IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Seit gestern.','Seit gestern.','phrase','از دیروز.',37,'{"preposition":"seit","timeAdverb":"gestern","usage":"short_duration_answer"}','[{"text":"Gestern.","translation":"دیروز."},{"text":"Seit heute.","translation":"از امروز."},{"text":"Morgen.","translation":"فردا."},{"text":"Seit wann?","translation":"از کی؟"},{"text":"Heute.","translation":"امروز."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":67,"module":6}');
    SET v_w_seit_gestern=LAST_INSERT_ID();
  END IF;
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_doctor,v_c_mia,'Seit wann?','از کی؟','Dr. Weber fragt jetzt nach der Dauer von Mias Beschwerden. Mia antwortet kurz und natürlich mit seit gestern.','دکتر وبر حالا درباره مدت نشانه های میا سوال می کند. میا کوتاه و طبیعی با «از دیروز» جواب می دهد.','story','mia-doctor-weber',8,36,110,1,'validated','{"relationship":"patient_and_doctor","context":"duration-of-illness","cefr":"A2","module":6,"focus":"seit-wann-and-duration"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_doctor,1,'character','Seit wann?','از کی؟',36,NULL,NULL,NULL,NULL,'[{"surface":"Seit","lemma":"seit","translation":"از / از زمان","partOfSpeech":"preposition","meaning":"از / از زمان","form":"temporal_preposition"},{"surface":"wann","lemma":"wann","translation":"کی / چه زمانی","partOfSpeech":"adverb","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,2,'learner','Seit gestern.','از دیروز.',36,NULL,NULL,'seit gestern',NULL,'[{"surface":"Seit","lemma":"seit","translation":"از / از زمان","partOfSpeech":"preposition","meaning":"از / از زمان","form":"temporal_preposition"},{"surface":"gestern","lemma":"gestern","translation":"دیروز","partOfSpeech":"adverb","suffix":"."}]','seit برای شروع زمان','«seit» می گوید یک وضعیت از زمانی در گذشته شروع شده و هنوز ادامه دارد. در «Seit gestern.» یعنی «از دیروز تا الان».',NULL,'{"cefr":"A2","module":6}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_doctor,3,'character','Haben Sie Fieber?','تب دارید؟',36,NULL,NULL,NULL,NULL,'[{"surface":"Haben","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارید","form":"present_formal"},{"surface":"Sie","lemma":"Sie","translation":"شما","partOfSpeech":"pronoun","meaning":"شما","form":"formal_2"},{"surface":"Fieber","lemma":"Fieber","translation":"تب","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,4,'learner','Ja. Ich habe Fieber.','بله. تب دارم.',36,NULL,NULL,'ja ich habe fieber',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارم","form":"present_1sg"},{"surface":"Fieber","lemma":"Fieber","translation":"تب","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_mia,v_c_doctor,'Seit wann sind Sie krank?','از کی بیمارید؟','Mia beschreibt ihren Zustand. Dr. Weber formuliert nun die vollständige formelle Frage nach der Dauer.','میا حالش را توضیح می دهد. دکتر وبر حالا سوال رسمی کامل را درباره مدت بیماری می پرسد.','story','mia-doctor-weber',9,37,110,2,'validated','{"relationship":"patient_and_doctor","context":"duration-of-illness","cefr":"A2","module":6,"focus":"seit-wann-and-duration"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,1,'character','Ich bin krank.','من بیمارم.',37,NULL,NULL,NULL,NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"bin","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"هستم","form":"present_1sg"},{"surface":"krank","lemma":"krank","translation":"بیمار","partOfSpeech":"adjective","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_doctor,2,'learner','Seit wann sind Sie krank?','از کی بیمارید؟',37,NULL,NULL,'seit wann sind sie krank',NULL,'[{"surface":"Seit","lemma":"seit","translation":"از / از زمان","partOfSpeech":"preposition","meaning":"از / از زمان","form":"temporal_preposition"},{"surface":"wann","lemma":"wann","translation":"کی / چه زمانی","partOfSpeech":"adverb"},{"surface":"sind","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"هستید","form":"present_formal"},{"surface":"Sie","lemma":"Sie","translation":"شما","partOfSpeech":"pronoun","meaning":"شما","form":"formal_2"},{"surface":"krank","lemma":"krank","translation":"بیمار","partOfSpeech":"adjective","suffix":"?"}]','Seit wann ...?','«Seit wann ...?» می پرسد یک وضعیت از چه زمانی شروع شده و هنوز ادامه دارد. «sind Sie» همان فرم رسمی sein است.',NULL,'{"cefr":"A2","module":6}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,3,'character','Seit gestern.','از دیروز.',37,NULL,NULL,NULL,NULL,'[{"surface":"Seit","lemma":"seit","translation":"از / از زمان","partOfSpeech":"preposition","meaning":"از / از زمان","form":"temporal_preposition"},{"surface":"gestern","lemma":"gestern","translation":"دیروز","partOfSpeech":"adverb","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_doctor,4,'learner','Haben Sie Fieber?','تب دارید؟',37,NULL,NULL,'haben sie fieber',NULL,'[{"surface":"Haben","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارید","form":"present_formal"},{"surface":"Sie","lemma":"Sie","translation":"شما","partOfSpeech":"pronoun","meaning":"شما","form":"formal_2"},{"surface":"Fieber","lemma":"Fieber","translation":"تب","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,5,'character','Ja. Ich habe Fieber.','بله. تب دارم.',37,NULL,NULL,NULL,NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارم","form":"present_1sg"},{"surface":"Fieber","lemma":"Fieber","translation":"تب","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_doctor,v_c_mia,'Seit gestern','از دیروز','Dr. Weber stellt die vollständige Frage, und Mia übt die kurze, natürliche Zeitantwort als festen Chunk.','دکتر وبر سوال کامل را می پرسد و میا جواب کوتاه و طبیعی زمان را به صورت یک عبارت ثابت تمرین می کند.','story','mia-doctor-weber',10,37,110,3,'validated','{"relationship":"patient_and_doctor","context":"duration-of-illness","cefr":"A2","module":6,"focus":"seit-wann-and-duration"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_doctor,1,'character','Seit wann sind Sie krank?','از کی بیمارید؟',37,NULL,NULL,NULL,NULL,'[{"surface":"Seit","lemma":"seit","translation":"از / از زمان","partOfSpeech":"preposition","meaning":"از / از زمان","form":"temporal_preposition"},{"surface":"wann","lemma":"wann","translation":"کی / چه زمانی","partOfSpeech":"adverb"},{"surface":"sind","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"هستید","form":"present_formal"},{"surface":"Sie","lemma":"Sie","translation":"شما","partOfSpeech":"pronoun","meaning":"شما","form":"formal_2"},{"surface":"krank","lemma":"krank","translation":"بیمار","partOfSpeech":"adjective","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,2,'learner','Seit gestern.','از دیروز.',37,NULL,NULL,'seit gestern',NULL,'[{"surface":"Seit","lemma":"seit","translation":"از / از زمان","partOfSpeech":"preposition","meaning":"از / از زمان","form":"temporal_preposition"},{"surface":"gestern","lemma":"gestern","translation":"دیروز","partOfSpeech":"adverb","suffix":"."}]','جواب کوتاه طبیعی','وقتی زمان از متن روشن است، «Seit gestern.» به تنهایی یک جواب طبیعی و کامل است.',NULL,'{"cefr":"A2","module":6}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_doctor,3,'character','Haben Sie Fieber?','تب دارید؟',37,NULL,NULL,NULL,NULL,'[{"surface":"Haben","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارید","form":"present_formal"},{"surface":"Sie","lemma":"Sie","translation":"شما","partOfSpeech":"pronoun","meaning":"شما","form":"formal_2"},{"surface":"Fieber","lemma":"Fieber","translation":"تب","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,4,'learner','Ja. Ich habe Fieber.','بله. تب دارم.',37,NULL,NULL,'ja ich habe fieber',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارم","form":"present_1sg"},{"surface":"Fieber","lemma":"Fieber","translation":"تب","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_doctor,v_c_mia,'Wie lange schon?','از چه زمانی؟','Dr. Weber verbindet Dauer und Symptom in einer vollständigen Mini-Anamnese. Mia antwortet jetzt auch mit einem vollständigen Satz.','دکتر وبر مدت بیماری و علامت را در یک گفتگوی کوتاه کامل کنار هم می گذارد. میا این بار با یک جمله کامل هم جواب می دهد.','story','mia-doctor-weber',11,37,110,4,'validated','{"relationship":"patient_and_doctor","context":"duration-of-illness","cefr":"A2","module":6,"focus":"seit-wann-and-duration"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_doctor,1,'character','Seit wann sind Sie krank?','از کی بیمارید؟',37,NULL,NULL,NULL,NULL,'[{"surface":"Seit","lemma":"seit","translation":"از / از زمان","partOfSpeech":"preposition","meaning":"از / از زمان","form":"temporal_preposition"},{"surface":"wann","lemma":"wann","translation":"کی / چه زمانی","partOfSpeech":"adverb"},{"surface":"sind","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"هستید","form":"present_formal"},{"surface":"Sie","lemma":"Sie","translation":"شما","partOfSpeech":"pronoun","meaning":"شما","form":"formal_2"},{"surface":"krank","lemma":"krank","translation":"بیمار","partOfSpeech":"adjective","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,2,'learner','Ich bin seit gestern krank.','از دیروز بیمارم.',37,NULL,NULL,'ich bin seit gestern krank',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"bin","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"هستم","form":"present_1sg"},{"surface":"seit","lemma":"seit","translation":"از / از زمان","partOfSpeech":"preposition","meaning":"از / از زمان","form":"temporal_preposition"},{"surface":"gestern","lemma":"gestern","translation":"دیروز","partOfSpeech":"adverb"},{"surface":"krank","lemma":"krank","translation":"بیمار","partOfSpeech":"adjective","suffix":"."}]','جای seit در جمله','در «Ich bin seit gestern krank.» عبارت زمانی «seit gestern» داخل جمله می آید و نشان می دهد بیماری از دیروز تا الان ادامه دارد.',NULL,'{"cefr":"A2","module":6}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_doctor,3,'character','Haben Sie Fieber?','تب دارید؟',37,NULL,NULL,NULL,NULL,'[{"surface":"Haben","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارید","form":"present_formal"},{"surface":"Sie","lemma":"Sie","translation":"شما","partOfSpeech":"pronoun","meaning":"شما","form":"formal_2"},{"surface":"Fieber","lemma":"Fieber","translation":"تب","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,4,'learner','Ja. Ich habe Fieber.','بله. تب دارم.',37,NULL,NULL,'ja ich habe fieber',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارم","form":"present_1sg"},{"surface":"Fieber","lemma":"Fieber","translation":"تب","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_seit,'new',1,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_wann,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_gestern,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_haben,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_sie_formal,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_fieber,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_seit_gestern,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ich_habe_fieber,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_sein,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_krank,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_seit,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_wann,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_sie_formal,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_gestern,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_haben,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_fieber,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_seit_gestern,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich_habe_fieber,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_seit_wann_sind_sie_krank,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_seit,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_wann,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_sein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_sie_formal,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_krank,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_gestern,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_haben,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_fieber,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_seit_wann_sind_sie_krank,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich_habe_fieber,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_seit_gestern,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_seit,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wann,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_sein,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_sie_formal,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_krank,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_gestern,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_haben,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_fieber,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_seit_wann_sind_sie_krank,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_seit_gestern,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich_habe_fieber,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_haben_sie_fieber,'review',0,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_seit,'حرف اضافه جدید',NULL,36,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به سوال کوتاه دکتر گوش کن',NULL,36,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'بگو از دیروز بیمار هستی',NULL,36,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به سوال درباره تب گوش کن',NULL,36,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'بگو تب داری',NULL,36,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,NULL,v_w_seit,'معنی درست را انتخاب کن',NULL,36,'{"mode":"word_translation","question":"seit","choices":["از / از زمان","تا","بعد از"],"correctIndex":0}','{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_seit_wann_sind_sie_krank,'عبارت جدید',NULL,37,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به توضیح میا گوش کن',NULL,37,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'به عنوان دکتر بپرس از کی بیمار است',NULL,37,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به جواب زمان گوش کن',NULL,37,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'درباره تب سوال کن',NULL,37,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',6,v_t_9,NULL,'به جواب میا گوش کن',NULL,37,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',7,v_t_6,NULL,'معنی سوال دکتر را انتخاب کن',NULL,37,'{"mode":"turn_translation","question":"«Seit wann sind Sie krank?» یعنی چی؟","choices":["از کی بیمارید؟","تب دارید؟","از کی اینجا هستید؟"],"correctIndex":0}','{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',8,v_t_6,NULL,'سوال دکتر را به ترتیب درست بساز',NULL,37,'{"source":"turn_tokens","shuffle":true}','{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_seit_gestern,'عبارت جدید',NULL,37,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_10,NULL,'به سوال کامل دکتر گوش کن',NULL,37,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_11,NULL,'کوتاه بگو از دیروز',NULL,37,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_12,NULL,'به سوال درباره تب گوش کن',NULL,37,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_13,NULL,'جواب دکتر را بده',NULL,37,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_11,NULL,'معنی جواب زمان را انتخاب کن',NULL,37,'{"mode":"turn_translation","question":"«Seit gestern.» یعنی چی؟","choices":["از دیروز.","فقط دیروز.","تا دیروز."],"correctIndex":0}','{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,37,'{"source":"lesson_story","question":"میا از چه زمانی بیمار است؟","choices":["از دیروز.","از فردا.","زمانش مشخص نیست."],"correctIndex":0}','{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_14,NULL,'به سوال دکتر درباره مدت بیماری گوش کن',NULL,37,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_15,NULL,'با جمله کامل بگو از دیروز بیماری',NULL,37,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_16,NULL,'به سوال درباره تب گوش کن',NULL,37,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_17,NULL,'بگو تب داری',NULL,37,NULL,'{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',5,v_t_15,NULL,'معنی جمله کامل را انتخاب کن',NULL,37,'{"mode":"turn_translation","question":"«Ich bin seit gestern krank.» یعنی چی؟","choices":["از دیروز بیمارم.","دیروز بیمار بودم.","تا دیروز بیمار بودم."],"correctIndex":0}','{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',6,NULL,NULL,'کل گفتگو را بخوان و جواب بده',NULL,37,'{"source":"lesson_story","question":"دکتر حالا چه دو اطلاعاتی درباره میا دارد؟","choices":["از دیروز بیمار است و تب دارد.","فقط سردرد دارد.","از فردا دارو می خورد."],"correctIndex":0}','{"cefr":"A2","module":6}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'word_order',7,v_t_15,NULL,'جمله کامل زمان را به ترتیب درست بساز',NULL,37,'{"source":"turn_tokens","shuffle":true}','{"cefr":"A2","module":6}');
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 067 lesson count.'; END IF;
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

CALL import_nova_series_067_v9();
DROP PROCEDURE IF EXISTS import_nova_series_067_v9;
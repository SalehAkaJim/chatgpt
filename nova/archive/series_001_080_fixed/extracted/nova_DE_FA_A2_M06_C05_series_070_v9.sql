-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 070
-- A2 > Gesundheit & Beschwerden > Mir geht es besser
-- FINAL CHAPTER OF A2 MODULE 06
-- Requires Series 069.
-- Continues mia-doctor-weber orders 20-23.
-- Resolves the doctor storyline and completes A2 Module 06.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_070_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_070_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_mia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_doctor BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wie BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gehen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_es BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sie_formal BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_haben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_fieber BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_husten BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_noch BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_nein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danke BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_tablette BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_nehme_diese_tabletten BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_mehr BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_mir_geht_es_besser BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_geht_es_ihnen_besser BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_habe_kein_fieber_mehr BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_hallo BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_nehmen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_dieser BIGINT UNSIGNED DEFAULT NULL;
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
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=6 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 066 before Series 070.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=4 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=5 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 06 Chapter 05 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 069 before Series 070.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_prev_chapter AND status IN ('validated','complete');
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 069 Chapter must be validated/complete before Series 070.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 06 Chapter 05 must be empty before Series 070 import.'; END IF;

  SELECT id INTO v_c_mia FROM characters WHERE course_id=v_course AND name='Mia' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_mia IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Mia not found.'; END IF;

  SELECT id INTO v_c_doctor FROM characters WHERE course_id=v_course AND name='Dr. Weber' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_doctor IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Dr. Weber not found.'; END IF;

  SELECT id INTO v_w_wie FROM words WHERE course_id=v_course AND lemma='wie' AND part_of_speech='adverb' AND translation='چطور / چگونه' ORDER BY id LIMIT 1;
  IF v_w_wie IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word wie not found.'; END IF;

  SELECT id INTO v_w_gehen FROM words WHERE course_id=v_course AND lemma='gehen' AND part_of_speech='verb' AND translation='رفتن' ORDER BY id LIMIT 1;
  IF v_w_gehen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gehen not found.'; END IF;

  SELECT id INTO v_w_es FROM words WHERE course_id=v_course AND lemma='es' AND part_of_speech='pronoun' AND translation='آن / این' ORDER BY id LIMIT 1;
  IF v_w_es IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word es not found.'; END IF;

  SELECT id INTO v_w_ich FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_ich IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ich not found.'; END IF;

  SELECT id INTO v_w_sie_formal FROM words WHERE course_id=v_course AND lemma='Sie' AND part_of_speech='pronoun' AND translation='شما' ORDER BY id LIMIT 1;
  IF v_w_sie_formal IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Sie not found.'; END IF;

  SELECT id INTO v_w_gut FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_gut IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gut not found.'; END IF;

  SELECT id INTO v_w_haben FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_haben IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word haben not found.'; END IF;

  SELECT id INTO v_w_kein FROM words WHERE course_id=v_course AND lemma='kein' AND part_of_speech='determiner' AND translation='هیچ / نه یک' ORDER BY id LIMIT 1;
  IF v_w_kein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word kein not found.'; END IF;

  SELECT id INTO v_w_fieber FROM words WHERE course_id=v_course AND lemma='Fieber' AND part_of_speech='noun' AND translation='تب' ORDER BY id LIMIT 1;
  IF v_w_fieber IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Fieber not found.'; END IF;

  SELECT id INTO v_w_husten FROM words WHERE course_id=v_course AND lemma='Husten' AND part_of_speech='noun' AND translation='سرفه' ORDER BY id LIMIT 1;
  IF v_w_husten IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Husten not found.'; END IF;

  SELECT id INTO v_w_noch FROM words WHERE course_id=v_course AND lemma='noch' AND part_of_speech='adverb' AND translation='هنوز' ORDER BY id LIMIT 1;
  IF v_w_noch IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word noch not found.'; END IF;

  SELECT id INTO v_w_nein FROM words WHERE course_id=v_course AND lemma='nein' AND part_of_speech='interjection' AND translation='نه' ORDER BY id LIMIT 1;
  IF v_w_nein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word nein not found.'; END IF;

  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;

  SELECT id INTO v_w_danke FROM words WHERE course_id=v_course AND lemma='danke' AND part_of_speech='interjection' AND translation='ممنون' ORDER BY id LIMIT 1;
  IF v_w_danke IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word danke not found.'; END IF;

  SELECT id INTO v_w_tablette FROM words WHERE course_id=v_course AND lemma='Tablette' AND part_of_speech='noun' AND translation='قرص' ORDER BY id LIMIT 1;
  IF v_w_tablette IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Tablette not found.'; END IF;

  SELECT id INTO v_w_ich_nehme_diese_tabletten FROM words WHERE course_id=v_course AND lemma='Ich nehme diese Tabletten.' AND part_of_speech='phrase' AND translation='این قرص ها را مصرف می کنم.' ORDER BY id LIMIT 1;
  IF v_w_ich_nehme_diese_tabletten IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Ich nehme diese Tabletten. not found.'; END IF;

  SELECT id INTO v_w_hallo FROM words WHERE course_id=v_course AND lemma='Hallo' AND part_of_speech='interjection' AND translation='سلام' ORDER BY id LIMIT 1;
  IF v_w_hallo IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Hallo not found.'; END IF;

  SELECT id INTO v_w_nehmen FROM words WHERE course_id=v_course AND lemma='nehmen' AND part_of_speech='verb' AND translation='گرفتن / مصرف کردن' ORDER BY id LIMIT 1;
  IF v_w_nehmen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word nehmen not found.'; END IF;

  SELECT id INTO v_w_dieser FROM words WHERE course_id=v_course AND lemma='dieser' AND part_of_speech='determiner' AND translation='این' ORDER BY id LIMIT 1;
  IF v_w_dieser IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word dieser not found.'; END IF;

  SELECT id INTO v_w_mehr FROM words WHERE course_id=v_course AND lemma='mehr' AND part_of_speech='adverb' AND translation='دیگه / بیشتر' ORDER BY id LIMIT 1;
  IF v_w_mehr IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'mehr','mehr','adverb','دیگه / بیشتر',38,'{"usage":["more","negative_continuation"],"pattern":"kein/nicht ... mehr"}','[{"text":"noch","translation":"هنوز"},{"text":"wieder","translation":"دوباره"},{"text":"gestern","translation":"دیروز"},{"text":"später","translation":"بعدا"},{"text":"zusammen","translation":"با هم"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":70,"module":6,"moduleFinal":true}');
    SET v_w_mehr=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_mir_geht_es_besser FROM words WHERE course_id=v_course AND lemma='Mir geht es besser.' AND part_of_speech='phrase' AND translation='حالم بهتره.' ORDER BY id LIMIT 1;
  IF v_w_mir_geht_es_besser IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Mir geht es besser.','Mir geht es besser.','phrase','حالم بهتره.',38,'{"recipient":"mir","recipientLemma":"ich","verb":"gehen","verbForm":"geht","subject":"es","comparative":"besser","comparativeLemma":"gut","construction":"health_state"}','[{"text":"Mir geht es gut.","translation":"حالم خوبه."},{"text":"Ich habe Fieber.","translation":"تب دارم."},{"text":"Ich bin krank.","translation":"من بیمارم."},{"text":"Seit gestern.","translation":"از دیروز."},{"text":"Ich habe Husten.","translation":"سرفه دارم."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":70,"module":6,"moduleFinal":true}');
    SET v_w_mir_geht_es_besser=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_geht_es_ihnen_besser FROM words WHERE course_id=v_course AND lemma='Geht es Ihnen besser?' AND part_of_speech='phrase' AND translation='حالتون بهتره؟' ORDER BY id LIMIT 1;
  IF v_w_geht_es_ihnen_besser IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Geht es Ihnen besser?','Geht es Ihnen besser?','phrase','حالتون بهتره؟',38,'{"verb":"gehen","verbForm":"geht","subject":"es","recipient":"Ihnen","recipientLemma":"Sie","register":"formal","comparative":"besser","comparativeLemma":"gut"}','[{"text":"Wie geht es Ihnen?","translation":"حالتون چطوره؟"},{"text":"Haben Sie Fieber?","translation":"تب دارید؟"},{"text":"Mir geht es besser.","translation":"حالم بهتره."},{"text":"Haben Sie noch Husten?","translation":"هنوز سرفه دارید؟"},{"text":"Seit wann sind Sie krank?","translation":"از کی بیمارید؟"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":70,"module":6,"moduleFinal":true}');
    SET v_w_geht_es_ihnen_besser=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_ich_habe_kein_fieber_mehr FROM words WHERE course_id=v_course AND lemma='Ich habe kein Fieber mehr.' AND part_of_speech='phrase' AND translation='دیگه تب ندارم.' ORDER BY id LIMIT 1;
  IF v_w_ich_habe_kein_fieber_mehr IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich habe kein Fieber mehr.','Ich habe kein Fieber mehr.','phrase','دیگه تب ندارم.',38,'{"subject":"ich","verb":"haben","verbForm":"habe","negativeDeterminer":"kein","negativeDeterminerForm":"neuter_accusative","object":"Fieber","adverb":"mehr","pattern":"kein ... mehr"}','[{"text":"Ich habe Fieber.","translation":"تب دارم."},{"text":"Ich habe Husten.","translation":"سرفه دارم."},{"text":"Ich habe kein Problem.","translation":"مشکلی ندارم."},{"text":"Mir geht es besser.","translation":"حالم بهتره."},{"text":"Ich nehme diese Tabletten.","translation":"این قرص ها را مصرف می کنم."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":70,"module":6,"moduleFinal":true}');
    SET v_w_ich_habe_kein_fieber_mehr=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_doctor,v_c_mia,'Mir geht es besser','حالم بهتره','Mia kommt nach der Behandlung wieder zu Dr. Weber. Der Arzt fragt nach ihrem Zustand, und Mia sagt, dass es ihr besser geht.','میا بعد از درمان دوباره پیش دکتر وبر آمده است. دکتر حالش را می پرسد و میا می گوید حالش بهتر شده است.','story','mia-doctor-weber',20,38,110,1,'validated','{"relationship":"patient_and_doctor","context":"recovery-followup","cefr":"A2","module":6,"moduleFinal":true,"focus":"besser-and-no-more-fever"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_doctor,1,'character','Wie geht es Ihnen?','حالتون چطوره؟',38,NULL,NULL,NULL,NULL,'[{"surface":"Wie","lemma":"wie","translation":"چطور / چگونه","partOfSpeech":"adverb","meaning":"چطور"},{"surface":"geht","lemma":"gehen","translation":"رفتن","partOfSpeech":"verb","meaning":"حالت است / می گذرد","form":"present_3sg"},{"surface":"es","lemma":"es","translation":"آن / این","partOfSpeech":"pronoun","meaning":"بخشی از ساختار جمله"},{"surface":"Ihnen","lemma":"Sie","translation":"شما","partOfSpeech":"pronoun","meaning":"به شما / حالتون","form":"dative_formal","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,2,'learner','Mir geht es besser.','حالم بهتره.',38,NULL,NULL,'mir geht es besser',NULL,'[{"surface":"Mir","lemma":"ich","translation":"من","partOfSpeech":"pronoun","meaning":"به من / حالم","form":"dative_1sg"},{"surface":"geht","lemma":"gehen","translation":"رفتن","partOfSpeech":"verb","meaning":"حالم است / می گذرد","form":"present_3sg"},{"surface":"es","lemma":"es","translation":"آن / این","partOfSpeech":"pronoun","meaning":"بخشی از ساختار جمله"},{"surface":"besser","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"بهتر","form":"comparative_adverbial","suffix":"."}]','besser به gut برمی گردد','«besser» شکل مقایسه ای «gut» است. اینجا عبارت کامل «Mir geht es besser.» یعنی «حالم بهتره».',NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_doctor,3,'character','Fieber?','تب؟',38,NULL,NULL,NULL,NULL,'[{"surface":"Fieber","lemma":"Fieber","translation":"تب","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,4,'learner','Nein.','نه.',38,NULL,NULL,'nein',NULL,'[{"surface":"Nein","lemma":"nein","translation":"نه","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  SET v_t_4=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_mia,v_c_doctor,'Geht es Ihnen besser?','حالتون بهتره؟','Dr. Weber fragt jetzt direkt nach der Besserung. Mia bestätigt, dass die Behandlung geholfen hat.','دکتر وبر حالا مستقیم درباره بهتر شدن حال می پرسد. میا تایید می کند که حالش بهتر شده است.','story','mia-doctor-weber',21,38,110,2,'validated','{"relationship":"patient_and_doctor","context":"recovery-followup","cefr":"A2","module":6,"moduleFinal":true,"focus":"besser-and-no-more-fever"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,1,'character','Hallo.','سلام.',38,NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_doctor,2,'learner','Geht es Ihnen besser?','حالتون بهتره؟',38,NULL,NULL,'geht es ihnen besser',NULL,'[{"surface":"Geht","lemma":"gehen","translation":"رفتن","partOfSpeech":"verb","meaning":"حالت است / می گذرد","form":"present_3sg"},{"surface":"es","lemma":"es","translation":"آن / این","partOfSpeech":"pronoun","meaning":"بخشی از ساختار جمله"},{"surface":"Ihnen","lemma":"Sie","translation":"شما","partOfSpeech":"pronoun","meaning":"به شما / حالتون","form":"dative_formal"},{"surface":"besser","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"بهتر","form":"comparative_adverbial","suffix":"?"}]','سوال رسمی درباره بهتر شدن','«Geht es Ihnen besser?» همان الگوی آشنای حال پرسیدن است، اما این بار «besser» یعنی «بهتر».',NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,3,'character','Ja. Mir geht es besser.','بله. حالم بهتره.',38,NULL,NULL,NULL,NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Mir","lemma":"ich","translation":"من","partOfSpeech":"pronoun","meaning":"به من / حالم","form":"dative_1sg"},{"surface":"geht","lemma":"gehen","translation":"رفتن","partOfSpeech":"verb","meaning":"حالم است / می گذرد","form":"present_3sg"},{"surface":"es","lemma":"es","translation":"آن / این","partOfSpeech":"pronoun","meaning":"بخشی از ساختار جمله"},{"surface":"besser","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"بهتر","form":"comparative_adverbial","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_doctor,4,'learner','Gut.','خوبه.',38,NULL,NULL,'gut',NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"خوبه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  SET v_t_8=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_doctor,v_c_mia,'Kein Fieber mehr','دیگه تب ندارم','Dr. Weber prüft, ob das Fieber noch da ist. Mia sagt jetzt klar, dass sie kein Fieber mehr hat.','دکتر وبر بررسی می کند که تب هنوز هست یا نه. میا حالا روشن می گوید که دیگه تب ندارد.','story','mia-doctor-weber',22,38,110,3,'validated','{"relationship":"patient_and_doctor","context":"recovery-followup","cefr":"A2","module":6,"moduleFinal":true,"focus":"besser-and-no-more-fever"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_doctor,1,'character','Haben Sie noch Fieber?','هنوز تب دارید؟',38,NULL,NULL,NULL,NULL,'[{"surface":"Haben","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارید","form":"present_formal"},{"surface":"Sie","lemma":"Sie","translation":"شما","partOfSpeech":"pronoun","meaning":"شما","form":"formal_2"},{"surface":"noch","lemma":"noch","translation":"هنوز","partOfSpeech":"adverb","meaning":"هنوز"},{"surface":"Fieber","lemma":"Fieber","translation":"تب","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,2,'learner','Nein. Ich habe kein Fieber mehr.','نه. دیگه تب ندارم.',38,NULL,NULL,'nein ich habe kein fieber mehr',NULL,'[{"surface":"Nein","lemma":"nein","translation":"نه","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارم","form":"present_1sg"},{"surface":"kein","lemma":"kein","translation":"هیچ / نه یک","partOfSpeech":"determiner","meaning":"هیچ / ندارم","form":"neuter_accusative"},{"surface":"Fieber","lemma":"Fieber","translation":"تب","partOfSpeech":"noun"},{"surface":"mehr","lemma":"mehr","translation":"دیگه / بیشتر","partOfSpeech":"adverb","meaning":"دیگه","form":"negative_continuation","suffix":"."}]','kein ... mehr','الگوی «kein ... mehr» یعنی چیزی دیگر وجود ندارد. «Ich habe kein Fieber mehr.» یعنی «دیگه تب ندارم.»',NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_doctor,3,'character','Husten?','سرفه؟',38,NULL,NULL,NULL,NULL,'[{"surface":"Husten","lemma":"Husten","translation":"سرفه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,4,'learner','Nein.','نه.',38,NULL,NULL,'nein',NULL,'[{"surface":"Nein","lemma":"nein","translation":"نه","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  SET v_t_12=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_doctor,v_c_mia,'Es geht Mia besser','حال میا بهتر شده','Dr. Weber prüft am Ende Behandlung, Fieber und Husten. Mia ist besser, hat kein Fieber mehr und die Arztgeschichte ist abgeschlossen.','دکتر وبر در پایان درمان، تب و سرفه را بررسی می کند. حال میا بهتر شده، دیگه تب ندارد و داستان مراجعه به دکتر کامل می شود.','story','mia-doctor-weber',23,38,130,4,'validated','{"relationship":"patient_and_doctor","context":"recovery-followup","cefr":"A2","module":6,"moduleFinal":true,"focus":"besser-and-no-more-fever"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_doctor,1,'character','Wie geht es Ihnen?','حالتون چطوره؟',38,NULL,NULL,NULL,NULL,'[{"surface":"Wie","lemma":"wie","translation":"چطور / چگونه","partOfSpeech":"adverb","meaning":"چطور"},{"surface":"geht","lemma":"gehen","translation":"رفتن","partOfSpeech":"verb","meaning":"حالت است / می گذرد","form":"present_3sg"},{"surface":"es","lemma":"es","translation":"آن / این","partOfSpeech":"pronoun","meaning":"بخشی از ساختار جمله"},{"surface":"Ihnen","lemma":"Sie","translation":"شما","partOfSpeech":"pronoun","meaning":"به شما / حالتون","form":"dative_formal","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,2,'learner','Mir geht es besser.','حالم بهتره.',38,NULL,NULL,'mir geht es besser',NULL,'[{"surface":"Mir","lemma":"ich","translation":"من","partOfSpeech":"pronoun","meaning":"به من / حالم","form":"dative_1sg"},{"surface":"geht","lemma":"gehen","translation":"رفتن","partOfSpeech":"verb","meaning":"حالم است / می گذرد","form":"present_3sg"},{"surface":"es","lemma":"es","translation":"آن / این","partOfSpeech":"pronoun","meaning":"بخشی از ساختار جمله"},{"surface":"besser","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"بهتر","form":"comparative_adverbial","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_doctor,3,'character','Tabletten?','قرص ها؟',38,NULL,NULL,NULL,NULL,'[{"surface":"Tabletten","lemma":"Tablette","translation":"قرص","partOfSpeech":"noun","meaning":"قرص ها","form":"plural_accusative","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,4,'learner','Ja. Ich nehme diese Tabletten.','بله. این قرص ها را مصرف می کنم.',38,NULL,NULL,'ja ich nehme diese tabletten',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"nehme","lemma":"nehmen","translation":"گرفتن / مصرف کردن","partOfSpeech":"verb","meaning":"مصرف می کنم","form":"present_1sg"},{"surface":"diese","lemma":"dieser","translation":"این","partOfSpeech":"determiner","meaning":"این","form":"plural_accusative"},{"surface":"Tabletten","lemma":"Tablette","translation":"قرص","partOfSpeech":"noun","meaning":"قرص ها","form":"plural_accusative","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_doctor,5,'character','Fieber?','تب؟',38,NULL,NULL,NULL,NULL,'[{"surface":"Fieber","lemma":"Fieber","translation":"تب","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,6,'learner','Nein. Ich habe kein Fieber mehr.','نه. دیگه تب ندارم.',38,NULL,NULL,'nein ich habe kein fieber mehr',NULL,'[{"surface":"Nein","lemma":"nein","translation":"نه","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارم","form":"present_1sg"},{"surface":"kein","lemma":"kein","translation":"هیچ / نه یک","partOfSpeech":"determiner","meaning":"هیچ / ندارم","form":"neuter_accusative"},{"surface":"Fieber","lemma":"Fieber","translation":"تب","partOfSpeech":"noun"},{"surface":"mehr","lemma":"mehr","translation":"دیگه / بیشتر","partOfSpeech":"adverb","meaning":"دیگه","form":"negative_continuation","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_doctor,7,'character','Husten?','سرفه؟',38,NULL,NULL,NULL,NULL,'[{"surface":"Husten","lemma":"Husten","translation":"سرفه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,8,'learner','Nein. Danke.','نه. ممنون.',38,NULL,NULL,'nein danke',NULL,'[{"surface":"Nein","lemma":"nein","translation":"نه","partOfSpeech":"interjection","suffix":"."},{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  SET v_t_20=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_wie,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_gehen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_es,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_sie_formal,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_fieber,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_nein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_mehr,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_mir_geht_es_besser,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_hallo,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_gehen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_es,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_sie_formal,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_gut,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_mir_geht_es_besser,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_geht_es_ihnen_besser,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_haben,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_sie_formal,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_noch,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_fieber,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_nein,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_kein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_mehr,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_husten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_mir_geht_es_besser,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich_habe_kein_fieber_mehr,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wie,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_gehen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_es,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_sie_formal,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_tablette,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_nehmen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_dieser,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_fieber,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_nein,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_haben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_kein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_mehr,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_husten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_mir_geht_es_besser,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_geht_es_ihnen_besser,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich_habe_kein_fieber_mehr,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich_nehme_diese_tabletten,'review',0,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_mir_geht_es_besser,'عبارت جدید',NULL,38,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به سوال دکتر گوش کن',NULL,38,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'بگو حالت بهتره',NULL,38,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به سوال درباره تب گوش کن',NULL,38,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'بگو نه',NULL,38,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,v_t_2,NULL,'معنی درست را انتخاب کن',NULL,38,'{"mode":"turn_translation","question":"«Mir geht es besser.» یعنی چی؟","choices":["حالم بهتره.","حالم بدتره.","تب دارم."],"correctIndex":0}','{"cefr":"A2","module":6,"moduleFinal":true}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_geht_es_ihnen_besser,'عبارت جدید',NULL,38,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به شروع میا گوش کن',NULL,38,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'به عنوان دکتر بپرس حالش بهتره یا نه',NULL,38,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به جواب میا گوش کن',NULL,38,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'واکنش کوتاه بده',NULL,38,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_6,NULL,'معنی سوال را انتخاب کن',NULL,38,'{"mode":"turn_translation","question":"«Geht es Ihnen besser?» یعنی چی؟","choices":["حالتون بهتره؟","تب دارید؟","از کی بیمارید؟"],"correctIndex":0}','{"cefr":"A2","module":6,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',7,v_t_6,NULL,'سوال بهتر شدن را به ترتیب درست بساز',NULL,38,'{"source":"turn_tokens","shuffle":true}','{"cefr":"A2","module":6,"moduleFinal":true}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_ich_habe_kein_fieber_mehr,'عبارت جدید',NULL,38,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_9,NULL,'به سوال دکتر گوش کن',NULL,38,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_10,NULL,'بگو دیگه تب نداری',NULL,38,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_11,NULL,'به سوال درباره سرفه گوش کن',NULL,38,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_12,NULL,'بگو نه',NULL,38,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_10,NULL,'معنی جمله را انتخاب کن',NULL,38,'{"mode":"turn_translation","question":"«Ich habe kein Fieber mehr.» یعنی چی؟","choices":["دیگه تب ندارم.","هنوز تب دارم.","سرفه دارم."],"correctIndex":0}','{"cefr":"A2","module":6,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,38,'{"source":"lesson_story","question":"وضعیت تب میا چطور است؟","choices":["دیگه تب ندارد.","هنوز تب دارد.","دکتر هنوز نپرسیده است."],"correctIndex":0}','{"cefr":"A2","module":6,"moduleFinal":true}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_13,NULL,'به سوال دکتر گوش کن',NULL,38,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_14,NULL,'بگو حالت بهتره',NULL,38,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_15,NULL,'به سوال درباره قرص ها گوش کن',NULL,38,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_16,NULL,'بگو قرص ها را مصرف می کنی',NULL,38,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_17,NULL,'به سوال درباره تب گوش کن',NULL,38,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_18,NULL,'بگو دیگه تب نداری',NULL,38,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',7,v_t_19,NULL,'به سوال درباره سرفه گوش کن',NULL,38,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',8,v_t_20,NULL,'بگو نه و تشکر کن',NULL,38,NULL,'{"cefr":"A2","module":6,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',9,NULL,NULL,'کل گفتگو را بخوان و جواب بده',NULL,38,'{"source":"lesson_story","question":"در پایان داستان، وضعیت میا چیست؟","choices":["حالش بهتره، قرص ها را مصرف می کند و دیگه تب ندارد.","هنوز تب و سرفه دارد.","هنوز قرص ها را شروع نکرده است."],"correctIndex":0}','{"cefr":"A2","module":6,"moduleFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',10,v_t_18,NULL,'نتیجه درمان را بررسی کن',NULL,38,'{"mode":"turn_translation","question":"«Ich habe kein Fieber mehr.» یعنی چی؟","choices":["دیگه تب ندارم.","هنوز تب دارم.","دیگه قرص نمی خورم."],"correctIndex":0}','{"cefr":"A2","module":6,"moduleFinal":true}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 070 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (ac.config IS NULL OR JSON_EXTRACT(ac.config,'$.question') IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without task.'; END IF;
  UPDATE chapters SET status='validated' WHERE id=v_chapter;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE module_id=v_module;
  IF v_count<>5 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 06 completion requires exactly 5 Chapters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE module_id=v_module AND status IN ('validated','complete');
  IF v_count<>5 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='All A2 Module 06 Chapters must be validated/complete.'; END IF;
  UPDATE modules SET status='complete' WHERE id=v_module;
  UPDATE levels SET status='active' WHERE id=v_level;
  COMMIT;
END$$
DELIMITER ;

CALL import_nova_series_070_v9();
DROP PROCEDURE IF EXISTS import_nova_series_070_v9;
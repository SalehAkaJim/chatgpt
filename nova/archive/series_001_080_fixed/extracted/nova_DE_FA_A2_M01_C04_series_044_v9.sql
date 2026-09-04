-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 044
-- A2 > Über gestern sprechen > Am Wochenende
-- Revisits Lena + Ben's A1 weekend storyline in the past.
-- Requires Series 043.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_044_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_044_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_lena BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_ben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_was BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_haben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_du BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_an BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wochenende BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_machen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_treffen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_und BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danach BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wir BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kaffee BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_und_danach BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_habe_gearbeitet BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_trinken BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_was_hast_du_am_wochenende_gemacht BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_habe_dich_getroffen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danach_haben_wir_kaffee_getrunken BIGINT UNSIGNED DEFAULT NULL;
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
  BEGIN ROLLBACK; RESIGNAL; END;

  START TRANSACTION;
  SELECT id INTO v_course FROM courses WHERE learning_language='de' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='A2' AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 041 before Series 044.'; END IF;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 01 not found.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=3 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=4 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 01 Chapter 04 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 043 before Series 044.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 01 Chapter 04 must be empty before Series 044 import.'; END IF;

  SELECT id INTO v_c_lena FROM characters WHERE course_id=v_course AND name='Lena' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_lena IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Lena not found.'; END IF;

  SELECT id INTO v_c_ben FROM characters WHERE course_id=v_course AND name='Ben' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_ben IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Ben not found.'; END IF;

  SELECT id INTO v_w_was FROM words WHERE course_id=v_course AND lemma='was' AND part_of_speech='pronoun' AND translation='چی / چه' ORDER BY id LIMIT 1;
  IF v_w_was IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word was not found.'; END IF;

  SELECT id INTO v_w_haben FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_haben IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word haben not found.'; END IF;

  SELECT id INTO v_w_du FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_du IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word du not found.'; END IF;

  SELECT id INTO v_w_an FROM words WHERE course_id=v_course AND lemma='an' AND part_of_speech='preposition' AND translation='در / در روز' ORDER BY id LIMIT 1;
  IF v_w_an IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word an not found.'; END IF;

  SELECT id INTO v_w_wochenende FROM words WHERE course_id=v_course AND lemma='Wochenende' AND part_of_speech='noun' AND translation='آخر هفته' ORDER BY id LIMIT 1;
  IF v_w_wochenende IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Wochenende not found.'; END IF;

  SELECT id INTO v_w_machen FROM words WHERE course_id=v_course AND lemma='machen' AND part_of_speech='verb' AND translation='انجام دادن' ORDER BY id LIMIT 1;
  IF v_w_machen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word machen not found.'; END IF;

  SELECT id INTO v_w_ich FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_ich IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ich not found.'; END IF;

  SELECT id INTO v_w_treffen FROM words WHERE course_id=v_course AND lemma='treffen' AND part_of_speech='verb' AND translation='دیدن / ملاقات کردن' ORDER BY id LIMIT 1;
  IF v_w_treffen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word treffen not found.'; END IF;

  SELECT id INTO v_w_und FROM words WHERE course_id=v_course AND lemma='und' AND part_of_speech='conjunction' AND translation='و' ORDER BY id LIMIT 1;
  IF v_w_und IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word und not found.'; END IF;

  SELECT id INTO v_w_danach FROM words WHERE course_id=v_course AND lemma='danach' AND part_of_speech='adverb' AND translation='بعد از آن / بعدش' ORDER BY id LIMIT 1;
  IF v_w_danach IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word danach not found.'; END IF;

  SELECT id INTO v_w_wir FROM words WHERE course_id=v_course AND lemma='wir' AND part_of_speech='pronoun' AND translation='ما' ORDER BY id LIMIT 1;
  IF v_w_wir IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word wir not found.'; END IF;

  SELECT id INTO v_w_kaffee FROM words WHERE course_id=v_course AND lemma='Kaffee' AND part_of_speech='noun' AND translation='قهوه' ORDER BY id LIMIT 1;
  IF v_w_kaffee IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Kaffee not found.'; END IF;

  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;

  SELECT id INTO v_w_gut FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_gut IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gut not found.'; END IF;

  SELECT id INTO v_w_und_danach FROM words WHERE course_id=v_course AND lemma='Und danach?' AND part_of_speech='phrase' AND translation='و بعدش؟' ORDER BY id LIMIT 1;
  IF v_w_und_danach IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Und danach? not found.'; END IF;

  SELECT id INTO v_w_ich_habe_gearbeitet FROM words WHERE course_id=v_course AND lemma='Ich habe gearbeitet.' AND part_of_speech='phrase' AND translation='کار کردم.' ORDER BY id LIMIT 1;
  IF v_w_ich_habe_gearbeitet IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Ich habe gearbeitet. not found.'; END IF;

  SELECT id INTO v_w_trinken FROM words WHERE course_id=v_course AND lemma='trinken' AND part_of_speech='verb' AND translation='نوشیدن' ORDER BY id LIMIT 1;
  IF v_w_trinken IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'trinken','trinken','verb','نوشیدن',23,'{"present":{"ich":"trinke","du":"trinkst","er_sie_es":"trinkt","wir":"trinken","Sie":"trinken"},"pastParticiple":"getrunken"}','[{"text":"essen","translation":"خوردن"},{"text":"machen","translation":"انجام دادن"},{"text":"arbeiten","translation":"کار کردن"},{"text":"fahren","translation":"رفتن با وسیله / راندن"},{"text":"treffen","translation":"دیدن / ملاقات کردن"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":44}');
    SET v_w_trinken=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_was_hast_du_am_wochenende_gemacht FROM words WHERE course_id=v_course AND lemma='Was hast du am Wochenende gemacht?' AND part_of_speech='phrase' AND translation='آخر هفته چه کار کردی؟' ORDER BY id LIMIT 1;
  IF v_w_was_hast_du_am_wochenende_gemacht IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Was hast du am Wochenende gemacht?','Was hast du am Wochenende gemacht?','phrase','آخر هفته چه کار کردی؟',22,'{"construction":"Perfekt","auxiliary":"haben","auxiliaryForm":"hast","participle":"gemacht","participleLemma":"machen","timePhrase":"am Wochenende"}','[{"text":"Was hast du gemacht?","translation":"چه کار کردی؟"},{"text":"Was machst du am Wochenende?","translation":"آخر هفته چه کار می کنی؟"},{"text":"Was hast du gestern gemacht?","translation":"دیروز چه کار کردی؟"},{"text":"Und danach?","translation":"و بعدش؟"},{"text":"Wie war dein Wochenende?","translation":"آخر هفته ات چطور بود؟"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":44}');
    SET v_w_was_hast_du_am_wochenende_gemacht=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_ich_habe_dich_getroffen FROM words WHERE course_id=v_course AND lemma='Ich habe dich getroffen.' AND part_of_speech='phrase' AND translation='تو را دیدم.' ORDER BY id LIMIT 1;
  IF v_w_ich_habe_dich_getroffen IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich habe dich getroffen.','Ich habe dich getroffen.','phrase','تو را دیدم.',23,'{"construction":"Perfekt","auxiliary":"haben","auxiliaryForm":"habe","participle":"getroffen","participleLemma":"treffen","object":"dich"}','[{"text":"Ich treffe dich.","translation":"تو را می بینم."},{"text":"Ich habe gearbeitet.","translation":"کار کردم."},{"text":"Ich habe Kaffee gemacht.","translation":"قهوه درست کردم."},{"text":"Ich bin mit dem Bus gefahren.","translation":"با اتوبوس رفتم."},{"text":"Wir treffen uns am Samstag.","translation":"شنبه همدیگر را می بینیم."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":44}');
    SET v_w_ich_habe_dich_getroffen=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_danach_haben_wir_kaffee_getrunken FROM words WHERE course_id=v_course AND lemma='Danach haben wir Kaffee getrunken.' AND part_of_speech='phrase' AND translation='بعد از آن قهوه نوشیدیم.' ORDER BY id LIMIT 1;
  IF v_w_danach_haben_wir_kaffee_getrunken IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Danach haben wir Kaffee getrunken.','Danach haben wir Kaffee getrunken.','phrase','بعد از آن قهوه نوشیدیم.',23,'{"construction":"Perfekt","auxiliary":"haben","auxiliaryForm":"haben","auxiliaryPerson":"1pl","participle":"getrunken","participleLemma":"trinken","sequenceConnector":"danach"}','[{"text":"Danach habe ich Kaffee gemacht.","translation":"بعد از آن قهوه درست کردم."},{"text":"Ich habe dich getroffen.","translation":"تو را دیدم."},{"text":"Wir trinken Kaffee.","translation":"ما قهوه می نوشیم."},{"text":"Ich habe gearbeitet.","translation":"کار کردم."},{"text":"Ich bin mit dem Bus gefahren.","translation":"با اتوبوس رفتم."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":44}');
    SET v_w_danach_haben_wir_kaffee_getrunken=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_lena,v_c_ben,'Was hast du am Wochenende gemacht?','آخر هفته چه کار کردی؟','Lena und Ben sprechen nach ihrem gemeinsamen Wochenende darüber, was tatsächlich passiert ist.','لنا و بن بعد از آخر هفته مشترکشان درباره اتفاقی که واقعا افتاده صحبت می کنند.','story','lena-ben-weekend-plans',21,22,110,1,'validated','{"relationship":"friends_and_classmates","context":"past-weekend-recap","cefr":"A2","grammarFocus":"perfekt-review-and-irregular-participles"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_lena,1,'character','Wochenende?','آخر هفته؟',22,NULL,NULL,NULL,NULL,'[{"surface":"Wochenende","lemma":"Wochenende","translation":"آخر هفته","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2"}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_ben,2,'learner','Was hast du am Wochenende gemacht?','آخر هفته چه کار کردی؟',22,NULL,NULL,'was hast du am wochenende gemacht',NULL,'[{"surface":"Was","lemma":"was","translation":"چی / چه","partOfSpeech":"pronoun"},{"surface":"hast","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"perfect_auxiliary_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"am","lemma":"an","translation":"در / در روز","partOfSpeech":"preposition","meaning":"در / در بازه","form":"contraction_an_dem"},{"surface":"Wochenende","lemma":"Wochenende","translation":"آخر هفته","partOfSpeech":"noun"},{"surface":"gemacht","lemma":"machen","translation":"انجام دادن","partOfSpeech":"verb","meaning":"انجام دادی","form":"past_participle","suffix":"?"}]','سوال قبلی با زمان دقیق تر','ساختار Perfekt همان است که قبلا دیدی؛ فقط «am Wochenende» مشخص می کند درباره آخر هفته حرف می زنی.',NULL,'{"cefr":"A2"}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_lena,3,'character','Ich habe dich getroffen.','تو را دیدم.',22,NULL,NULL,NULL,NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"perfect_auxiliary_1sg"},{"surface":"dich","lemma":"du","translation":"تو","partOfSpeech":"pronoun","meaning":"تو را","form":"accusative_2sg"},{"surface":"getroffen","lemma":"treffen","translation":"دیدن / ملاقات کردن","partOfSpeech":"verb","meaning":"دیدم / ملاقات کردم","form":"past_participle","suffix":"."}]','یک جواب جدید را اول بشنو','«getroffen» شکل گذشته «treffen» است. در درس بعد خودت همین جمله را می گویی.',NULL,'{"cefr":"A2"}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_ben,4,'learner','Ja.','بله.',22,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2"}');
  SET v_t_4=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ben,v_c_lena,'Ich habe dich getroffen','تو را دیدم','Ben fragt nach dem Wochenende. Lena antwortet jetzt selbst mit dem neuen Perfekt-Satz mit treffen.','بن درباره آخر هفته می پرسد. لنا حالا خودش با جمله جدید گذشته و فعل treffen جواب می دهد.','story','lena-ben-weekend-plans',22,23,110,2,'validated','{"relationship":"friends_and_classmates","context":"past-weekend-recap","cefr":"A2","grammarFocus":"perfekt-review-and-irregular-participles"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_ben,1,'character','Was hast du am Wochenende gemacht?','آخر هفته چه کار کردی؟',23,NULL,NULL,NULL,NULL,'[{"surface":"Was","lemma":"was","translation":"چی / چه","partOfSpeech":"pronoun"},{"surface":"hast","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"perfect_auxiliary_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"am","lemma":"an","translation":"در / در روز","partOfSpeech":"preposition","meaning":"در / در بازه","form":"contraction_an_dem"},{"surface":"Wochenende","lemma":"Wochenende","translation":"آخر هفته","partOfSpeech":"noun"},{"surface":"gemacht","lemma":"machen","translation":"انجام دادن","partOfSpeech":"verb","meaning":"انجام دادی","form":"past_participle","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2"}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_lena,2,'learner','Ich habe dich getroffen.','تو را دیدم.',23,NULL,NULL,'ich habe dich getroffen',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"perfect_auxiliary_1sg"},{"surface":"dich","lemma":"du","translation":"تو","partOfSpeech":"pronoun","meaning":"تو را","form":"accusative_2sg"},{"surface":"getroffen","lemma":"treffen","translation":"دیدن / ملاقات کردن","partOfSpeech":"verb","meaning":"دیدم / ملاقات کردم","form":"past_participle","suffix":"."}]','getroffen از treffen','«getroffen» شکل گذشته «treffen» است. «dich» هم همان «du» در نقش «تو را» است؛ فعلا جمله کامل را کاربردی یاد بگیر.',NULL,'{"cefr":"A2"}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_ben,3,'character','Gut.','خوبه.',23,NULL,NULL,NULL,NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"خوبه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2"}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_lena,4,'learner','Ja.','بله.',23,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2"}');
  SET v_t_8=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ben,v_c_lena,'Danach haben wir Kaffee getrunken','بعد از آن قهوه نوشیدیم','Ben fragt, was nach dem Treffen passiert ist. Lena beschreibt nun eine gemeinsame Aktivität mit wir.','بن می پرسد بعد از دیدار چه اتفاقی افتاد. لنا حالا یک کار مشترک را با «ما» تعریف می کند.','story','lena-ben-weekend-plans',23,23,110,3,'validated','{"relationship":"friends_and_classmates","context":"past-weekend-recap","cefr":"A2","grammarFocus":"perfekt-review-and-irregular-participles"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_ben,1,'character','Und danach?','و بعدش؟',23,NULL,NULL,NULL,NULL,'[{"surface":"Und","lemma":"und","translation":"و","partOfSpeech":"conjunction"},{"surface":"danach","lemma":"danach","translation":"بعد از آن / بعدش","partOfSpeech":"adverb","meaning":"بعد از آن / بعدش","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2"}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_lena,2,'learner','Danach haben wir Kaffee getrunken.','بعد از آن قهوه نوشیدیم.',23,NULL,NULL,'danach haben wir kaffee getrunken',NULL,'[{"surface":"Danach","lemma":"danach","translation":"بعد از آن / بعدش","partOfSpeech":"adverb"},{"surface":"haben","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"perfect_auxiliary_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"Kaffee","lemma":"Kaffee","translation":"قهوه","partOfSpeech":"noun"},{"surface":"getrunken","lemma":"trinken","translation":"نوشیدن","partOfSpeech":"verb","meaning":"نوشیدیم","form":"past_participle","suffix":"."}]','Perfekt با wir','برای «wir» فعل کمکی همان «haben» است. «getrunken» شکل گذشته «trinken» است؛ فعلا همین جمله کاربردی کافی است.',NULL,'{"cefr":"A2"}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_ben,3,'character','Kaffee?','قهوه؟',23,NULL,NULL,NULL,NULL,'[{"surface":"Kaffee","lemma":"Kaffee","translation":"قهوه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2"}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_lena,4,'learner','Ja.','بله.',23,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2"}');
  SET v_t_12=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ben,v_c_lena,'Am Wochenende','آخر هفته','Lena und Ben erzählen ihr gemeinsames Wochenende jetzt als kurze vollständige Vergangenheitserzählung.','لنا و بن حالا آخر هفته مشترکشان را به شکل یک روایت کوتاه و کامل در گذشته تعریف می کنند.','story','lena-ben-weekend-plans',24,23,110,4,'validated','{"relationship":"friends_and_classmates","context":"past-weekend-recap","cefr":"A2","grammarFocus":"perfekt-review-and-irregular-participles"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_ben,1,'character','Was hast du am Wochenende gemacht?','آخر هفته چه کار کردی؟',23,NULL,NULL,NULL,NULL,'[{"surface":"Was","lemma":"was","translation":"چی / چه","partOfSpeech":"pronoun"},{"surface":"hast","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"perfect_auxiliary_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"am","lemma":"an","translation":"در / در روز","partOfSpeech":"preposition","meaning":"در / در بازه","form":"contraction_an_dem"},{"surface":"Wochenende","lemma":"Wochenende","translation":"آخر هفته","partOfSpeech":"noun"},{"surface":"gemacht","lemma":"machen","translation":"انجام دادن","partOfSpeech":"verb","meaning":"انجام دادی","form":"past_participle","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2"}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_lena,2,'learner','Ich habe dich getroffen.','تو را دیدم.',23,NULL,NULL,'ich habe dich getroffen',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"perfect_auxiliary_1sg"},{"surface":"dich","lemma":"du","translation":"تو","partOfSpeech":"pronoun","meaning":"تو را","form":"accusative_2sg"},{"surface":"getroffen","lemma":"treffen","translation":"دیدن / ملاقات کردن","partOfSpeech":"verb","meaning":"دیدم / ملاقات کردم","form":"past_participle","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2"}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_ben,3,'character','Und danach?','و بعدش؟',23,NULL,NULL,NULL,NULL,'[{"surface":"Und","lemma":"und","translation":"و","partOfSpeech":"conjunction"},{"surface":"danach","lemma":"danach","translation":"بعد از آن / بعدش","partOfSpeech":"adverb","meaning":"بعد از آن / بعدش","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2"}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_lena,4,'learner','Danach haben wir Kaffee getrunken.','بعد از آن قهوه نوشیدیم.',23,NULL,NULL,'danach haben wir kaffee getrunken',NULL,'[{"surface":"Danach","lemma":"danach","translation":"بعد از آن / بعدش","partOfSpeech":"adverb"},{"surface":"haben","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"perfect_auxiliary_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"Kaffee","lemma":"Kaffee","translation":"قهوه","partOfSpeech":"noun"},{"surface":"getrunken","lemma":"trinken","translation":"نوشیدن","partOfSpeech":"verb","meaning":"نوشیدیم","form":"past_participle","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2"}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_ben,5,'character','Gut.','خوبه.',23,NULL,NULL,NULL,NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"خوبه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2"}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_lena,6,'learner','Ja.','بله.',23,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2"}');
  SET v_t_18=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_wochenende,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_was,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_haben,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_du,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_an,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_machen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_treffen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ich_habe_dich_getroffen,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_was_hast_du_am_wochenende_gemacht,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_was,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_haben,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_du,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_an,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_wochenende,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_machen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_treffen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_was_hast_du_am_wochenende_gemacht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich_habe_dich_getroffen,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_und,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_danach,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_haben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_wir,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_kaffee,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_trinken,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_und_danach,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_danach_haben_wir_kaffee_getrunken,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_was,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_haben,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_du,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_an,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wochenende,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_machen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_treffen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_und,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_danach,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wir,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_kaffee,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_trinken,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_was_hast_du_am_wochenende_gemacht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich_habe_dich_getroffen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_und_danach,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_danach_haben_wir_kaffee_getrunken,'review',0,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_was_hast_du_am_wochenende_gemacht,'عبارت جدید',NULL,22,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به موضوع گفتگو گوش کن',NULL,22,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'بپرس آخر هفته چه کار کرده است',NULL,22,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به جواب لنا گوش کن',NULL,22,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'تایید کن',NULL,22,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,v_t_2,NULL,'معنی درست را انتخاب کن',NULL,22,'{"mode":"turn_translation","question":"«Was hast du am Wochenende gemacht?» یعنی چی؟","choices":["آخر هفته چه کار کردی؟","دیروز کجا بودی؟","آخر هفته چه کار می کنی؟"],"correctIndex":0}','{"cefr":"A2"}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_ich_habe_dich_getroffen,'عبارت جدید',NULL,23,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به سوال آخر هفته گوش کن',NULL,23,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'بگو او را دیدی',NULL,23,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به واکنش بن گوش کن',NULL,23,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'تایید کن',NULL,23,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_6,NULL,'معنی درست را انتخاب کن',NULL,23,'{"mode":"turn_translation","question":"«Ich habe dich getroffen.» یعنی چی؟","choices":["تو را دیدم.","با اتوبوس رفتم.","قهوه درست کردم."],"correctIndex":0}','{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',7,v_t_6,NULL,'جمله گذشته را به ترتیب درست بساز',NULL,23,'{"source":"turn_tokens","shuffle":true}','{"cefr":"A2"}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_danach_haben_wir_kaffee_getrunken,'عبارت جدید',NULL,23,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_9,NULL,'به سوال ادامه داستان گوش کن',NULL,23,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_10,NULL,'بگو بعد از آن قهوه نوشیدید',NULL,23,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_11,NULL,'به سوال قهوه گوش کن',NULL,23,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_12,NULL,'تایید کن',NULL,23,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_10,NULL,'معنی درست را انتخاب کن',NULL,23,'{"mode":"turn_translation","question":"«Danach haben wir Kaffee getrunken.» یعنی چی؟","choices":["بعد از آن قهوه نوشیدیم.","بعد از آن قهوه درست کردم.","بعد از آن با اتوبوس رفتیم."],"correctIndex":0}','{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,23,'{"source":"lesson_story","question":"لنا و بن بعد از دیدار چه کار کردند؟","choices":["قهوه نوشیدند.","کار کردند.","به داروخانه رفتند."],"correctIndex":0}','{"cefr":"A2"}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_13,NULL,'به سوال آخر هفته گوش کن',NULL,23,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_14,NULL,'بگو بن را دیدی',NULL,23,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_15,NULL,'به سوال بعدش گوش کن',NULL,23,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_16,NULL,'بگو بعد از آن قهوه نوشیدید',NULL,23,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_17,NULL,'به واکنش بن گوش کن',NULL,23,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_18,NULL,'تایید کن',NULL,23,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,23,'{"source":"lesson_story","question":"لنا آخر هفته چه چیزی را تعریف می کند؟","choices":["بن را دیده و بعد با او قهوه نوشیده است.","تنها کار کرده و به خانه رفته است.","به دکتر رفته و دارو گرفته است."],"correctIndex":0}','{"cefr":"A2"}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 044 lesson count.'; END IF;
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

CALL import_nova_series_044_v9();
DROP PROCEDURE IF EXISTS import_nova_series_044_v9;
-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 080
-- A2 > Telefon & Nachrichten > Dann sprechen wir morgen
-- FINAL CHAPTER OF A2 MODULE 08 AND FINAL CHAPTER OF A2
-- Requires Series 079.
-- Continues mia-sara-a2-communication orders 17-20.
-- Completes A2 Module 08 and the A2 Level.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_080_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_080_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_mia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_sara BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_du BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wir BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_haben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_nachricht BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_schicken BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sagen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_bescheid BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_dann BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sprechen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_morgen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_anrufen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_bis BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_zeit BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sag_mir_bitte_bescheid BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_sage_dir_bescheid BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_habe_dir_eine_nachricht_geschickt BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_dann_sprechen_wir_morgen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_rufe_dich_morgen_an BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_bis_morgen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_bitte BIGINT UNSIGNED DEFAULT NULL;
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
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=8 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 076 before Series 080.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=4 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=5 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 08 Chapter 05 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 079 before Series 080.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_prev_chapter AND status IN ('validated','complete');
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 079 Chapter must be validated/complete before Series 080.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 08 Chapter 05 must be empty before Series 080 import.'; END IF;
  SELECT id INTO v_c_mia FROM characters WHERE course_id=v_course AND name='Mia' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_mia IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Mia not found.'; END IF;
  SELECT id INTO v_c_sara FROM characters WHERE course_id=v_course AND name='Sara' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_sara IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Sara not found.'; END IF;
  SELECT id INTO v_w_ich FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_ich IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ich not found.'; END IF;
  SELECT id INTO v_w_du FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_du IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word du not found.'; END IF;
  SELECT id INTO v_w_wir FROM words WHERE course_id=v_course AND lemma='wir' AND part_of_speech='pronoun' AND translation='ما' ORDER BY id LIMIT 1;
  IF v_w_wir IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word wir not found.'; END IF;
  SELECT id INTO v_w_haben FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_haben IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word haben not found.'; END IF;
  SELECT id INTO v_w_ein FROM words WHERE course_id=v_course AND lemma='ein' AND part_of_speech='article' AND translation='یک / حرف تعریف نامعین' ORDER BY id LIMIT 1;
  IF v_w_ein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ein not found.'; END IF;
  SELECT id INTO v_w_nachricht FROM words WHERE course_id=v_course AND lemma='Nachricht' AND part_of_speech='noun' AND translation='پیام' ORDER BY id LIMIT 1;
  IF v_w_nachricht IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Nachricht not found.'; END IF;
  SELECT id INTO v_w_schicken FROM words WHERE course_id=v_course AND lemma='schicken' AND part_of_speech='verb' AND translation='فرستادن' ORDER BY id LIMIT 1;
  IF v_w_schicken IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word schicken not found.'; END IF;
  SELECT id INTO v_w_sagen FROM words WHERE course_id=v_course AND lemma='sagen' AND part_of_speech='verb' AND translation='گفتن' ORDER BY id LIMIT 1;
  IF v_w_sagen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word sagen not found.'; END IF;
  SELECT id INTO v_w_bescheid FROM words WHERE course_id=v_course AND lemma='Bescheid' AND part_of_speech='noun' AND translation='خبر / اطلاع' ORDER BY id LIMIT 1;
  IF v_w_bescheid IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Bescheid not found.'; END IF;
  SELECT id INTO v_w_dann FROM words WHERE course_id=v_course AND lemma='dann' AND part_of_speech='adverb' AND translation='بعد / سپس' ORDER BY id LIMIT 1;
  IF v_w_dann IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word dann not found.'; END IF;
  SELECT id INTO v_w_sprechen FROM words WHERE course_id=v_course AND lemma='sprechen' AND part_of_speech='verb' AND translation='صحبت کردن / حرف زدن' ORDER BY id LIMIT 1;
  IF v_w_sprechen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word sprechen not found.'; END IF;
  SELECT id INTO v_w_morgen FROM words WHERE course_id=v_course AND lemma='morgen' AND part_of_speech='adverb' AND translation='فردا' ORDER BY id LIMIT 1;
  IF v_w_morgen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word morgen not found.'; END IF;
  SELECT id INTO v_w_anrufen FROM words WHERE course_id=v_course AND lemma='anrufen' AND part_of_speech='verb' AND translation='زنگ زدن / تماس گرفتن' ORDER BY id LIMIT 1;
  IF v_w_anrufen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word anrufen not found.'; END IF;
  SELECT id INTO v_w_bis FROM words WHERE course_id=v_course AND lemma='bis' AND part_of_speech='preposition' AND translation='تا' ORDER BY id LIMIT 1;
  IF v_w_bis IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word bis not found.'; END IF;
  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;
  SELECT id INTO v_w_gut FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_gut IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gut not found.'; END IF;
  SELECT id INTO v_w_zeit FROM words WHERE course_id=v_course AND lemma='Zeit' AND part_of_speech='noun' AND translation='وقت / زمان' ORDER BY id LIMIT 1;
  IF v_w_zeit IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Zeit not found.'; END IF;
  SELECT id INTO v_w_sag_mir_bitte_bescheid FROM words WHERE course_id=v_course AND lemma='Sag mir bitte Bescheid.' AND part_of_speech='phrase' AND translation='لطفا بهم خبر بده.' ORDER BY id LIMIT 1;
  IF v_w_sag_mir_bitte_bescheid IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Sag mir bitte Bescheid. not found.'; END IF;
  SELECT id INTO v_w_ich_sage_dir_bescheid FROM words WHERE course_id=v_course AND lemma='Ich sage dir Bescheid.' AND part_of_speech='phrase' AND translation='بهت خبر می دم.' ORDER BY id LIMIT 1;
  IF v_w_ich_sage_dir_bescheid IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Ich sage dir Bescheid. not found.'; END IF;
  SELECT id INTO v_w_ich_habe_dir_eine_nachricht_geschickt FROM words WHERE course_id=v_course AND lemma='Ich habe dir eine Nachricht geschickt.' AND part_of_speech='phrase' AND translation='برات پیام فرستادم.' ORDER BY id LIMIT 1;
  IF v_w_ich_habe_dir_eine_nachricht_geschickt IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Ich habe dir eine Nachricht geschickt. not found.'; END IF;
  SELECT id INTO v_w_bitte FROM words WHERE course_id=v_course AND lemma='bitte' AND part_of_speech='interjection' AND translation='لطفا / خواهش می کنم' ORDER BY id LIMIT 1;
  IF v_w_bitte IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word bitte not found.'; END IF;
  SELECT id INTO v_w_dann_sprechen_wir_morgen FROM words WHERE course_id=v_course AND lemma='Dann sprechen wir morgen.' AND part_of_speech='phrase' AND translation='پس، فردا صحبت می کنیم.' ORDER BY id LIMIT 1;
  IF v_w_dann_sprechen_wir_morgen IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Dann sprechen wir morgen.','Dann sprechen wir morgen.','phrase','پس، فردا صحبت می کنیم.',40,'{"connector":"dann","verb":"sprechen","verbForm":"present_1pl","subject":"wir","time":"morgen"}','[{"text":"Wir sprechen später.","translation":"بعدا صحبت می کنیم."},{"text":"Ich rufe dich morgen an.","translation":"فردا بهت زنگ می زنم."},{"text":"Bis morgen.","translation":"تا فردا."},{"text":"Sag mir bitte Bescheid.","translation":"لطفا بهم خبر بده."},{"text":"Ich habe morgen Zeit.","translation":"فردا وقت دارم."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":80,"module":8,"moduleFinal":true,"levelFinal":true}');
    SET v_w_dann_sprechen_wir_morgen=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_ich_rufe_dich_morgen_an FROM words WHERE course_id=v_course AND lemma='Ich rufe dich morgen an.' AND part_of_speech='phrase' AND translation='فردا بهت زنگ می زنم.' ORDER BY id LIMIT 1;
  IF v_w_ich_rufe_dich_morgen_an IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich rufe dich morgen an.','Ich rufe dich morgen an.','phrase','فردا بهت زنگ می زنم.',40,'{"subject":"ich","verb":"anrufen","finiteStem":"rufe","verbForm":"present_1sg","object":"dich","objectLemma":"du","objectForm":"accusative_2sg","time":"morgen","separablePrefix":"an"}','[{"text":"Kann ich dich später anrufen?","translation":"می تونم بعدا بهت زنگ بزنم؟"},{"text":"Dann sprechen wir morgen.","translation":"پس، فردا صحبت می کنیم."},{"text":"Ich sage dir Bescheid.","translation":"بهت خبر می دم."},{"text":"Ich habe dir eine Nachricht geschickt.","translation":"برات پیام فرستادم."},{"text":"Bis morgen.","translation":"تا فردا."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":80,"module":8,"moduleFinal":true,"levelFinal":true}');
    SET v_w_ich_rufe_dich_morgen_an=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_bis_morgen FROM words WHERE course_id=v_course AND lemma='Bis morgen.' AND part_of_speech='phrase' AND translation='تا فردا.' ORDER BY id LIMIT 1;
  IF v_w_bis_morgen IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Bis morgen.','Bis morgen.','phrase','تا فردا.',40,'{"preposition":"bis","time":"morgen","usage":"farewell"}','[{"text":"Bis später.","translation":"تا بعد."},{"text":"Guten Morgen.","translation":"صبح بخیر."},{"text":"Morgen.","translation":"فردا."},{"text":"Dann sprechen wir morgen.","translation":"پس، فردا صحبت می کنیم."},{"text":"Ich rufe dich morgen an.","translation":"فردا بهت زنگ می زنم."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":80,"module":8,"moduleFinal":true,"levelFinal":true}');
    SET v_w_bis_morgen=LAST_INSERT_ID();
  END IF;
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Dann sprechen wir morgen','پس، فردا صحبت می کنیم','Nach den Nachrichten und der klaren Abmachung finden Mia und Sara einen einfachen nächsten Schritt: Morgen sprechen sie miteinander.','بعد از پیام ها و قرار روشنی که گذاشتند، میا و سارا قدم بعدی ساده ای پیدا می کنند: فردا با هم صحبت می کنند.','story','mia-sara-a2-communication',17,40,110,1,'validated','{"relationship":"friends_and_classmates","context":"communication-resolution","cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true,"focus":"tomorrow-call-and-closure"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,1,'character','Ich habe morgen Zeit.','فردا وقت دارم.',40,NULL,NULL,NULL,NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"دارم","form":"present_1sg"},{"surface":"morgen","lemma":"morgen","translation":"فردا","partOfSpeech":"adverb"},{"surface":"Zeit","lemma":"Zeit","translation":"وقت / زمان","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,2,'learner','Dann sprechen wir morgen.','پس، فردا صحبت می کنیم.',40,NULL,NULL,'dann sprechen wir morgen',NULL,'[{"surface":"Dann","lemma":"dann","translation":"بعد / سپس","partOfSpeech":"adverb","meaning":"پس / بعد"},{"surface":"sprechen","lemma":"sprechen","translation":"صحبت کردن / حرف زدن","partOfSpeech":"verb","meaning":"صحبت می کنیم","form":"present_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"morgen","lemma":"morgen","translation":"فردا","partOfSpeech":"adverb","suffix":"."}]','sprechen با wir','در «Dann sprechen wir morgen.»، «sprechen» همان شکل موردنیاز برای «wir» است. این جمله فقط چند واژه آشنا را در یک برنامه طبیعی کنار هم می گذارد.',NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_sara,3,'character','Ja.','آره.',40,NULL,NULL,NULL,NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,4,'learner','Gut.','باشه.',40,NULL,NULL,'gut',NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"باشه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_sara,v_c_mia,'Ich rufe dich morgen an','فردا بهت زنگ می زنم','Mia macht den Plan konkreter: Sie wird Sara morgen anrufen. Dabei wird das bekannte trennbare Verb anrufen noch einmal produktiv benutzt.','میا برنامه را روشن تر می کند: فردا به سارا زنگ می زند. فعل جداشدنی آشنای anrufen هم یک بار دیگر به شکل کاربردی استفاده می شود.','story','mia-sara-a2-communication',18,40,110,2,'validated','{"relationship":"friends_and_classmates","context":"communication-resolution","cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true,"focus":"tomorrow-call-and-closure"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,1,'character','Morgen?','فردا؟',40,NULL,NULL,NULL,NULL,'[{"surface":"Morgen","lemma":"morgen","translation":"فردا","partOfSpeech":"adverb","meaning":"فردا","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,2,'learner','Ja. Ich rufe dich morgen an.','آره. فردا بهت زنگ می زنم.',40,NULL,NULL,'ja ich rufe dich morgen an',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"rufe","lemma":"anrufen","translation":"زنگ زدن / تماس گرفتن","partOfSpeech":"verb","meaning":"زنگ می زنم","form":"separable_present_1sg_stem"},{"surface":"dich","lemma":"du","translation":"تو","partOfSpeech":"pronoun","meaning":"بهت / تو را","form":"accusative_2sg"},{"surface":"morgen","lemma":"morgen","translation":"فردا","partOfSpeech":"adverb"},{"surface":"an","lemma":"anrufen","translation":"زنگ زدن / تماس گرفتن","partOfSpeech":"verb","meaning":"بخش جداشدنی فعل","form":"separable_prefix","suffix":"."}]','anrufen دوباره جدا می شود','در «Ich rufe dich morgen an.»، «rufe» و «an» هر دو به lemma «anrufen» برمی گردند. این همان الگوی آشنای فعل جداشدنی است.',NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_sara,3,'character','Gut.','باشه.',40,NULL,NULL,NULL,NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"باشه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,4,'learner','Dann sprechen wir morgen.','پس، فردا صحبت می کنیم.',40,NULL,NULL,'dann sprechen wir morgen',NULL,'[{"surface":"Dann","lemma":"dann","translation":"بعد / سپس","partOfSpeech":"adverb","meaning":"پس / بعد"},{"surface":"sprechen","lemma":"sprechen","translation":"صحبت کردن / حرف زدن","partOfSpeech":"verb","meaning":"صحبت می کنیم","form":"present_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"morgen","lemma":"morgen","translation":"فردا","partOfSpeech":"adverb","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_mia,v_c_sara,'Bis morgen','تا فردا','Der nächste Kontakt ist geklärt. Mia und Sara beenden das Gespräch jetzt natürlich mit Bis morgen.','تماس بعدی مشخص شده است. میا و سارا حالا گفتگو را طبیعی با «تا فردا» تمام می کنند.','story','mia-sara-a2-communication',19,40,110,3,'validated','{"relationship":"friends_and_classmates","context":"communication-resolution","cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true,"focus":"tomorrow-call-and-closure"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,1,'character','Ich rufe dich morgen an.','فردا بهت زنگ می زنم.',40,NULL,NULL,NULL,NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"rufe","lemma":"anrufen","translation":"زنگ زدن / تماس گرفتن","partOfSpeech":"verb","meaning":"زنگ می زنم","form":"separable_present_1sg_stem"},{"surface":"dich","lemma":"du","translation":"تو","partOfSpeech":"pronoun","meaning":"بهت / تو را","form":"accusative_2sg"},{"surface":"morgen","lemma":"morgen","translation":"فردا","partOfSpeech":"adverb"},{"surface":"an","lemma":"anrufen","translation":"زنگ زدن / تماس گرفتن","partOfSpeech":"verb","meaning":"بخش جداشدنی فعل","form":"separable_prefix","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,2,'learner','Gut.','باشه.',40,NULL,NULL,'gut',NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"باشه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,3,'character','Dann sprechen wir morgen.','پس، فردا صحبت می کنیم.',40,NULL,NULL,NULL,NULL,'[{"surface":"Dann","lemma":"dann","translation":"بعد / سپس","partOfSpeech":"adverb","meaning":"پس / بعد"},{"surface":"sprechen","lemma":"sprechen","translation":"صحبت کردن / حرف زدن","partOfSpeech":"verb","meaning":"صحبت می کنیم","form":"present_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"morgen","lemma":"morgen","translation":"فردا","partOfSpeech":"adverb","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_sara,4,'learner','Bis morgen.','تا فردا.',40,NULL,NULL,'bis morgen',NULL,'[{"surface":"Bis","lemma":"bis","translation":"تا","partOfSpeech":"preposition","meaning":"تا"},{"surface":"morgen","lemma":"morgen","translation":"فردا","partOfSpeech":"adverb","suffix":"."}]','Bis morgen','«Bis morgen.» یک خداحافظی خیلی رایج و کوتاه است وقتی قرار است فردا دوباره با کسی در ارتباط باشی.',NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_mia,v_c_sara,'Wir sprechen morgen','فردا صحبت می کنیم','Mia und Sara schließen die ganze Kommunikationsgeschichte ab: Nachricht, Bescheid sagen, neuer Termin und ein klarer Anruf für morgen.','میا و سارا کل داستان ارتباط را جمع می کنند: پیام، خبر دادن، برنامه جدید و یک تماس روشن برای فردا.','story','mia-sara-a2-communication',20,40,130,4,'validated','{"relationship":"friends_and_classmates","context":"communication-resolution","cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true,"focus":"tomorrow-call-and-closure"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,1,'character','Ich habe dir eine Nachricht geschickt.','برات پیام فرستادم.',40,NULL,NULL,NULL,NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"habe","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"فعل کمکی گذشته","form":"present_1sg"},{"surface":"dir","lemma":"du","translation":"تو","partOfSpeech":"pronoun","meaning":"بهت / برات","form":"dative_2sg"},{"surface":"eine","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","meaning":"یک","form":"feminine_accusative"},{"surface":"Nachricht","lemma":"Nachricht","translation":"پیام","partOfSpeech":"noun"},{"surface":"geschickt","lemma":"schicken","translation":"فرستادن","partOfSpeech":"verb","meaning":"فرستادم","form":"past_participle","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,2,'learner','Ja.','آره.',40,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,3,'character','Sag mir bitte Bescheid.','لطفا بهم خبر بده.',40,NULL,NULL,NULL,NULL,'[{"surface":"Sag","lemma":"sagen","translation":"گفتن","partOfSpeech":"verb","meaning":"خبر بده","form":"imperative_2sg"},{"surface":"mir","lemma":"ich","translation":"من","partOfSpeech":"pronoun","meaning":"بهم","form":"dative_1sg"},{"surface":"bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","meaning":"لطفا"},{"surface":"Bescheid","lemma":"Bescheid","translation":"خبر / اطلاع","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,4,'learner','Ja. Ich sage dir Bescheid.','آره. بهت خبر می دم.',40,NULL,NULL,'ja ich sage dir bescheid',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"sage","lemma":"sagen","translation":"گفتن","partOfSpeech":"verb","meaning":"خبر می دم","form":"present_1sg"},{"surface":"dir","lemma":"du","translation":"تو","partOfSpeech":"pronoun","meaning":"بهت","form":"dative_2sg"},{"surface":"Bescheid","lemma":"Bescheid","translation":"خبر / اطلاع","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,5,'character','Hast du morgen Zeit?','فردا وقت داری؟',40,NULL,NULL,NULL,NULL,'[{"surface":"Hast","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"داری","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"morgen","lemma":"morgen","translation":"فردا","partOfSpeech":"adverb"},{"surface":"Zeit","lemma":"Zeit","translation":"وقت / زمان","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,6,'learner','Ja.','آره.',40,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,7,'character','Dann sprechen wir morgen.','پس، فردا صحبت می کنیم.',40,NULL,NULL,NULL,NULL,'[{"surface":"Dann","lemma":"dann","translation":"بعد / سپس","partOfSpeech":"adverb","meaning":"پس / بعد"},{"surface":"sprechen","lemma":"sprechen","translation":"صحبت کردن / حرف زدن","partOfSpeech":"verb","meaning":"صحبت می کنیم","form":"present_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"morgen","lemma":"morgen","translation":"فردا","partOfSpeech":"adverb","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_sara,8,'learner','Gut. Bis morgen.','باشه. تا فردا.',40,NULL,NULL,'gut bis morgen',NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"باشه","suffix":"."},{"surface":"Bis","lemma":"bis","translation":"تا","partOfSpeech":"preposition","meaning":"تا"},{"surface":"morgen","lemma":"morgen","translation":"فردا","partOfSpeech":"adverb","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  SET v_t_20=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_haben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_morgen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_zeit,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_dann,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_sprechen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_wir,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_dann_sprechen_wir_morgen,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_morgen,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_anrufen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_dann,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_sprechen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_wir,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_dann_sprechen_wir_morgen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich_rufe_dich_morgen_an,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_anrufen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_morgen,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_dann,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_sprechen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_wir,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_bis,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich_rufe_dich_morgen_an,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_dann_sprechen_wir_morgen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_bis_morgen,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_haben,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_du,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_nachricht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_schicken,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ja,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_sagen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_bitte,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_bescheid,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_morgen,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_zeit,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_dann,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_sprechen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wir,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_bis,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich_habe_dir_eine_nachricht_geschickt,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_sag_mir_bitte_bescheid,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich_sage_dir_bescheid,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_dann_sprechen_wir_morgen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich_rufe_dich_morgen_an,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_bis_morgen,'review',0,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_dann_sprechen_wir_morgen,'عبارت جدید',NULL,40,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به برنامه سارا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'بگو پس فردا با هم صحبت می کنید',NULL,40,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به تایید سارا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'واکنش کوتاه بده',NULL,40,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,v_t_2,NULL,'معنی جمله را انتخاب کن',NULL,40,'{"mode":"turn_translation","question":"«Dann sprechen wir morgen.» یعنی چی؟","choices":["پس، فردا صحبت می کنیم.","پس فردای پس فردا صحبت می کنیم.","امروز صحبت نمی کنیم."],"correctIndex":0}','{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_ich_rufe_dich_morgen_an,'عبارت جدید',NULL,40,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به سوال کوتاه سارا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'بگو فردا بهش زنگ می زنی',NULL,40,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به واکنش سارا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'برنامه فردا را جمع بندی کن',NULL,40,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_6,NULL,'معنی جمله تماس را انتخاب کن',NULL,40,'{"mode":"turn_translation","question":"«Ich rufe dich morgen an.» یعنی چی؟","choices":["فردا بهت زنگ می زنم.","فردا برات پیام می فرستم.","امروز بهت زنگ زدم."],"correctIndex":0}','{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',7,v_t_6,NULL,'جمله تماس فردا را به ترتیب درست بساز',NULL,40,'{"source":"turn_tokens","shuffle":true}','{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_bis_morgen,'عبارت جدید',NULL,40,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_9,NULL,'به برنامه تماس میا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_10,NULL,'واکنش کوتاه بده',NULL,40,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_11,NULL,'به جمع بندی برنامه فردا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_12,NULL,'با «تا فردا» خداحافظی کن',NULL,40,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_12,NULL,'معنی خداحافظی را انتخاب کن',NULL,40,'{"mode":"turn_translation","question":"«Bis morgen.» یعنی چی؟","choices":["تا فردا.","صبح بخیر.","بعدا زنگ بزن."],"correctIndex":0}','{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,40,'{"source":"lesson_story","question":"میا و سارا چه زمانی دوباره صحبت می کنند؟","choices":["فردا.","امروز صبح.","هفته بعد."],"correctIndex":0}','{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_13,NULL,'به مرور پیام میا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_14,NULL,'تایید کن',NULL,40,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_15,NULL,'به درخواست خبر دادن گوش کن',NULL,40,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_16,NULL,'قول بده بهش خبر می دی',NULL,40,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_17,NULL,'به سوال برنامه فردا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_18,NULL,'تایید کن',NULL,40,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',7,v_t_19,NULL,'به برنامه نهایی فردا گوش کن',NULL,40,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',8,v_t_20,NULL,'گفتگو را با «تا فردا» تمام کن',NULL,40,NULL,'{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',9,NULL,NULL,'کل داستان را بخوان و جواب بده',NULL,40,'{"source":"lesson_story","question":"در پایان، قرار میا و سارا چیست؟","choices":["فردا با هم صحبت می کنند و میا زنگ می زند.","دیگه با هم تماس نمی گیرند.","همین الان دوباره پیام می فرستند."],"correctIndex":0}','{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',10,v_t_19,NULL,'برنامه نهایی را بررسی کن',NULL,40,'{"mode":"turn_translation","question":"«Dann sprechen wir morgen.» یعنی چی؟","choices":["پس، فردا صحبت می کنیم.","پس فردا صحبت می کنیم.","امروز صحبت کردیم."],"correctIndex":0}','{"cefr":"A2","module":8,"moduleFinal":true,"levelFinal":true}');
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 080 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (ac.config IS NULL OR JSON_EXTRACT(ac.config,'$.question') IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without task.'; END IF;
  UPDATE chapters SET status='validated' WHERE id=v_chapter;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE module_id=v_module;
  IF v_count<>5 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 08 completion requires exactly 5 Chapters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE module_id=v_module AND status IN ('validated','complete');
  IF v_count<>5 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='All A2 Module 08 Chapters must be validated/complete.'; END IF;
  UPDATE modules SET status='complete' WHERE id=v_module;
  SELECT COUNT(*) INTO v_count FROM modules WHERE level_id=v_level;
  IF v_count<>8 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 completion requires exactly 8 Modules.'; END IF;
  SELECT COUNT(*) INTO v_count FROM modules WHERE level_id=v_level AND status='complete';
  IF v_count<>8 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='All 8 A2 Modules must be complete before A2 Level completion.'; END IF;
  UPDATE levels SET status='complete' WHERE id=v_level;
  COMMIT;
END$$
DELIMITER ;

CALL import_nova_series_080_v9();
DROP PROCEDURE IF EXISTS import_nova_series_080_v9;
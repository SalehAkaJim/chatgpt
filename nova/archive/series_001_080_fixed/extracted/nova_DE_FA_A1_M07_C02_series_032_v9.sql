-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 032
-- A1 > Menschen & Pläne > Freunde treffen
-- Continues lena-ben-weekend-plans from Series 015.
-- Canonical dependencies: Series 015 r3, Series 020 r2.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_032_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_032_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_lena BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_ben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_haben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_du BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_an BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_samstag BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_zeit BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gern BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kaffee BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_bis BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_treffen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wir BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_treffen_wir_uns_am_samstag BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_bis_samstag BIGINT UNSIGNED DEFAULT NULL;
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
  DECLARE v_t_21 BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_t_22 BIGINT UNSIGNED DEFAULT NULL;

  DECLARE EXIT HANDLER FOR SQLEXCEPTION
  BEGIN
    ROLLBACK;
    RESIGNAL;
  END;

  START TRANSACTION;
  SELECT id INTO v_course FROM courses WHERE learning_language='de' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND sort_order=1 ORDER BY id LIMIT 1;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=7 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 031 before Series 032.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=1 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Module 07 Chapter 02 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 031 before Series 032.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Module 07 Chapter 02 must be empty before Series 032 import.'; END IF;

  SELECT id INTO v_c_lena FROM characters WHERE course_id=v_course AND name='Lena' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_lena IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Lena not found.'; END IF;

  SELECT id INTO v_c_ben FROM characters WHERE course_id=v_course AND name='Ben' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_ben IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Ben not found.'; END IF;

  SELECT id INTO v_w_haben FROM words WHERE course_id=v_course AND lemma='haben' AND part_of_speech='verb' AND translation='داشتن' ORDER BY id LIMIT 1;
  IF v_w_haben IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word haben not found.'; END IF;

  SELECT id INTO v_w_du FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_du IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word du not found.'; END IF;

  SELECT id INTO v_w_an FROM words WHERE course_id=v_course AND lemma='an' AND part_of_speech='preposition' AND translation='در / در روز' ORDER BY id LIMIT 1;
  IF v_w_an IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word an not found.'; END IF;

  SELECT id INTO v_w_samstag FROM words WHERE course_id=v_course AND lemma='Samstag' AND part_of_speech='noun' AND translation='شنبه' ORDER BY id LIMIT 1;
  IF v_w_samstag IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Samstag not found.'; END IF;

  SELECT id INTO v_w_zeit FROM words WHERE course_id=v_course AND lemma='Zeit' AND part_of_speech='noun' AND translation='وقت / زمان' ORDER BY id LIMIT 1;
  IF v_w_zeit IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Zeit not found.'; END IF;

  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;

  SELECT id INTO v_w_gern FROM words WHERE course_id=v_course AND lemma='gern' AND part_of_speech='adverb' AND translation='با علاقه / با میل' ORDER BY id LIMIT 1;
  IF v_w_gern IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gern not found.'; END IF;

  SELECT id INTO v_w_kaffee FROM words WHERE course_id=v_course AND lemma='Kaffee' AND part_of_speech='noun' AND translation='قهوه' ORDER BY id LIMIT 1;
  IF v_w_kaffee IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Kaffee not found.'; END IF;

  SELECT id INTO v_w_bis FROM words WHERE course_id=v_course AND lemma='bis' AND part_of_speech='preposition' AND translation='تا' ORDER BY id LIMIT 1;
  IF v_w_bis IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word bis not found.'; END IF;

  SELECT id INTO v_w_treffen FROM words WHERE course_id=v_course AND lemma='treffen' AND part_of_speech='verb' AND translation='دیدن / ملاقات کردن' ORDER BY id LIMIT 1;
  IF v_w_treffen IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'treffen','treffen','verb','دیدن / ملاقات کردن',18,'{"present":{"ich":"treffe","du":"triffst","er_sie_es":"trifft","wir":"treffen","ihr":"trefft","sie_Sie":"treffen"}}','[{"text":"kommen","translation":"آمدن"},{"text":"fahren","translation":"رفتن با وسیله / راندن"},{"text":"arbeiten","translation":"کار کردن"},{"text":"wohnen","translation":"زندگی کردن / ساکن بودن"},{"text":"aufräumen","translation":"مرتب کردن"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_treffen=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_wir FROM words WHERE course_id=v_course AND lemma='wir' AND part_of_speech='pronoun' AND translation='ما' ORDER BY id LIMIT 1;
  IF v_w_wir IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'wir','wir','pronoun','ما',18,'{"person":1,"number":"plural","forms":{"nominative":"wir","accusative":"uns","dative":"uns"}}','[{"text":"ich","translation":"من"},{"text":"du","translation":"تو"},{"text":"er","translation":"او"},{"text":"ihr","translation":"شما"},{"text":"sie","translation":"او / آنها"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_wir=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_treffen_wir_uns_am_samstag FROM words WHERE course_id=v_course AND lemma='Treffen wir uns am Samstag?' AND part_of_speech='phrase' AND translation='شنبه همدیگر را ببینیم؟' ORDER BY id LIMIT 1;
  IF v_w_treffen_wir_uns_am_samstag IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Treffen wir uns am Samstag?','Treffen wir uns am Samstag?','phrase','شنبه همدیگر را ببینیم؟',18,NULL,'[{"text":"Hast du Zeit?","translation":"وقت داری؟"},{"text":"Am Samstag.","translation":"شنبه."},{"text":"Kaffee?","translation":"قهوه؟"},{"text":"Bis Samstag!","translation":"تا شنبه!"},{"text":"Komm rein.","translation":"بیا داخل."}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_treffen_wir_uns_am_samstag=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_bis_samstag FROM words WHERE course_id=v_course AND lemma='Bis Samstag!' AND part_of_speech='phrase' AND translation='تا شنبه!' ORDER BY id LIMIT 1;
  IF v_w_bis_samstag IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Bis Samstag!','Bis Samstag!','phrase','تا شنبه!',18,NULL,'[{"text":"Bis später!","translation":"بعدا می بینمت!"},{"text":"Am Samstag.","translation":"شنبه."},{"text":"Guten Morgen!","translation":"صبح بخیر!"},{"text":"Willkommen!","translation":"خوش آمدی!"},{"text":"Danke!","translation":"ممنون!"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_bis_samstag=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ben,v_c_lena,'Treffen','دیدار','Ben fragt Lena, ob sie am Samstag Zeit hat, und schlägt ein Treffen vor.','بن از لنا می پرسد شنبه وقت دارد یا نه و پیشنهاد می دهد همدیگر را ببینند.','story','lena-ben-weekend-plans',5,18,105,1,'validated','{"relationship":"friends_and_classmates","context":"weekend_meeting_plan","storyArc":"beginning-development-resolution-ending"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_ben,1,'character','Hast du am Samstag Zeit?','شنبه وقت داری؟',18,NULL,NULL,NULL,NULL,'[{"surface":"Hast","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"داری","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"am","lemma":"an","translation":"در / در روز","partOfSpeech":"preposition","meaning":"در روز","form":"contraction_an_dem"},{"surface":"Samstag","lemma":"Samstag","translation":"شنبه","partOfSpeech":"noun"},{"surface":"Zeit","lemma":"Zeit","translation":"وقت / زمان","partOfSpeech":"noun","suffix":"?"}]','عبارت های قبلی را کنار هم ببین','«Hast du am Samstag Zeit?» از چیزهایی ساخته شده که قبلا دیده ای: «Hast du Zeit?» و «am Samstag».',NULL,NULL);
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_lena,2,'learner','Ja.','بله.',18,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_ben,3,'character','Treffen wir uns am Samstag?','شنبه همدیگر را ببینیم؟',18,NULL,NULL,NULL,NULL,'[{"surface":"Treffen","lemma":"treffen","translation":"دیدن / ملاقات کردن","partOfSpeech":"verb","meaning":"ببینیم / ملاقات کنیم","form":"present_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"uns","lemma":"wir","translation":"ما","partOfSpeech":"pronoun","meaning":"همدیگر / خودمان","form":"reflexive_accusative_1pl"},{"surface":"am","lemma":"an","translation":"در / در روز","partOfSpeech":"preposition","meaning":"در روز","form":"contraction_an_dem"},{"surface":"Samstag","lemma":"Samstag","translation":"شنبه","partOfSpeech":"noun","suffix":"?"}]','فعلا جمله را به صورت یک پیشنهاد یاد بگیر','«Treffen wir uns am Samstag?» یعنی «شنبه همدیگر را ببینیم؟». «uns» در این جمله به «wir» برمی گردد؛ لازم نیست هنوز ساختار فعل بازتابی را حفظ کنی.',NULL,NULL);
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_lena,4,'learner','Ja, gern.','بله، حتما.',18,NULL,NULL,'ja gern',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"gern","lemma":"gern","translation":"با علاقه / با میل","partOfSpeech":"adverb","meaning":"حتما / با میل","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_4=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_lena,v_c_ben,'Treffen wir uns am Samstag?','شنبه همدیگر را ببینیم؟','Lena benutzt den neuen Vorschlag jetzt selbst. Ben nimmt ihn an und die beiden entscheiden sich für Kaffee.','لنا حالا خودش از جمله جدید استفاده می کند. بن پیشنهاد را قبول می کند و هر دو قهوه را انتخاب می کنند.','story','lena-ben-weekend-plans',6,18,108,2,'validated','{"relationship":"friends_and_classmates","context":"weekend_meeting_plan","storyArc":"beginning-development-resolution-ending"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_lena,1,'character','Hast du am Samstag Zeit?','شنبه وقت داری؟',18,NULL,NULL,NULL,NULL,'[{"surface":"Hast","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"داری","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"am","lemma":"an","translation":"در / در روز","partOfSpeech":"preposition","meaning":"در روز","form":"contraction_an_dem"},{"surface":"Samstag","lemma":"Samstag","translation":"شنبه","partOfSpeech":"noun"},{"surface":"Zeit","lemma":"Zeit","translation":"وقت / زمان","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_ben,2,'learner','Ja.','بله.',18,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_lena,3,'character','Treffen wir uns am Samstag?','شنبه همدیگر را ببینیم؟',18,NULL,NULL,NULL,NULL,'[{"surface":"Treffen","lemma":"treffen","translation":"دیدن / ملاقات کردن","partOfSpeech":"verb","meaning":"ببینیم / ملاقات کنیم","form":"present_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"uns","lemma":"wir","translation":"ما","partOfSpeech":"pronoun","meaning":"همدیگر / خودمان","form":"reflexive_accusative_1pl"},{"surface":"am","lemma":"an","translation":"در / در روز","partOfSpeech":"preposition","meaning":"در روز","form":"contraction_an_dem"},{"surface":"Samstag","lemma":"Samstag","translation":"شنبه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_ben,4,'learner','Ja, gern.','بله، حتما.',18,NULL,NULL,'ja gern',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"gern","lemma":"gern","translation":"با علاقه / با میل","partOfSpeech":"adverb","meaning":"حتما / با میل","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_lena,5,'character','Kaffee?','قهوه؟',18,NULL,NULL,NULL,NULL,'[{"surface":"Kaffee","lemma":"Kaffee","translation":"قهوه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_ben,6,'learner','Gern.','با میل.',18,NULL,NULL,'gern',NULL,'[{"surface":"Gern","lemma":"gern","translation":"با علاقه / با میل","partOfSpeech":"adverb","meaning":"با میل / حتما","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_10=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_ben,v_c_lena,'Bis Samstag!','تا شنبه!','Der Plan steht fest. Ben und Lena bestätigen Samstag und verabschieden sich mit einer neuen kurzen Wendung.','برنامه قطعی شده است. بن و لنا شنبه را تایید می کنند و با یک عبارت کوتاه جدید خداحافظی می کنند.','story','lena-ben-weekend-plans',7,18,105,3,'validated','{"relationship":"friends_and_classmates","context":"weekend_meeting_plan","storyArc":"beginning-development-resolution-ending"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_ben,1,'character','Am Samstag?','شنبه؟',18,NULL,NULL,NULL,NULL,'[{"surface":"Am","lemma":"an","translation":"در / در روز","partOfSpeech":"preposition","meaning":"در روز","form":"contraction_an_dem"},{"surface":"Samstag","lemma":"Samstag","translation":"شنبه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_lena,2,'learner','Ja.','بله.',18,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_ben,3,'character','Bis Samstag!','تا شنبه!',18,NULL,NULL,NULL,NULL,'[{"surface":"Bis","lemma":"bis","translation":"تا","partOfSpeech":"preposition"},{"surface":"Samstag","lemma":"Samstag","translation":"شنبه","partOfSpeech":"noun","suffix":"!"}]','یک خداحافظی متناسب با روز قرار','«Bis Samstag!» یعنی «تا شنبه!»؛ یعنی شنبه دوباره همدیگر را می بینیم.',NULL,NULL);
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_lena,4,'learner','Bis Samstag!','تا شنبه!',18,NULL,NULL,'bis samstag',NULL,'[{"surface":"Bis","lemma":"bis","translation":"تا","partOfSpeech":"preposition"},{"surface":"Samstag","lemma":"Samstag","translation":"شنبه","partOfSpeech":"noun","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_14=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_lena,v_c_ben,'Lena und Ben treffen sich','لنا و بن قرار می گذارند','Lena und Ben machen ihren Plan vollständig: Zeit, Treffen, Kaffee und Abschied für Samstag.','لنا و بن برنامه را کامل می کنند: وقت، دیدار، قهوه و خداحافظی برای شنبه.','story','lena-ben-weekend-plans',8,18,108,4,'validated','{"relationship":"friends_and_classmates","context":"weekend_meeting_plan","storyArc":"beginning-development-resolution-ending"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_lena,1,'character','Hast du am Samstag Zeit?','شنبه وقت داری؟',18,NULL,NULL,NULL,NULL,'[{"surface":"Hast","lemma":"haben","translation":"داشتن","partOfSpeech":"verb","meaning":"داری","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"am","lemma":"an","translation":"در / در روز","partOfSpeech":"preposition","meaning":"در روز","form":"contraction_an_dem"},{"surface":"Samstag","lemma":"Samstag","translation":"شنبه","partOfSpeech":"noun"},{"surface":"Zeit","lemma":"Zeit","translation":"وقت / زمان","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_ben,2,'learner','Ja.','بله.',18,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_lena,3,'character','Treffen wir uns am Samstag?','شنبه همدیگر را ببینیم؟',18,NULL,NULL,NULL,NULL,'[{"surface":"Treffen","lemma":"treffen","translation":"دیدن / ملاقات کردن","partOfSpeech":"verb","meaning":"ببینیم / ملاقات کنیم","form":"present_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"uns","lemma":"wir","translation":"ما","partOfSpeech":"pronoun","meaning":"همدیگر / خودمان","form":"reflexive_accusative_1pl"},{"surface":"am","lemma":"an","translation":"در / در روز","partOfSpeech":"preposition","meaning":"در روز","form":"contraction_an_dem"},{"surface":"Samstag","lemma":"Samstag","translation":"شنبه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_ben,4,'learner','Ja, gern.','بله، حتما.',18,NULL,NULL,'ja gern',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"gern","lemma":"gern","translation":"با علاقه / با میل","partOfSpeech":"adverb","meaning":"حتما / با میل","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_lena,5,'character','Kaffee?','قهوه؟',18,NULL,NULL,NULL,NULL,'[{"surface":"Kaffee","lemma":"Kaffee","translation":"قهوه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_ben,6,'learner','Gern.','با میل.',18,NULL,NULL,'gern',NULL,'[{"surface":"Gern","lemma":"gern","translation":"با علاقه / با میل","partOfSpeech":"adverb","meaning":"با میل / حتما","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_20=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_lena,7,'character','Bis Samstag!','تا شنبه!',18,NULL,NULL,NULL,NULL,'[{"surface":"Bis","lemma":"bis","translation":"تا","partOfSpeech":"preposition"},{"surface":"Samstag","lemma":"Samstag","translation":"شنبه","partOfSpeech":"noun","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_21=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_ben,8,'learner','Bis Samstag!','تا شنبه!',18,NULL,NULL,'bis samstag',NULL,'[{"surface":"Bis","lemma":"bis","translation":"تا","partOfSpeech":"preposition"},{"surface":"Samstag","lemma":"Samstag","translation":"شنبه","partOfSpeech":"noun","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_22=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_haben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_an,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_samstag,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_zeit,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_treffen,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_wir,'passive',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_gern,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_treffen_wir_uns_am_samstag,'passive',0,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_haben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_an,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_samstag,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_zeit,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_treffen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_wir,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_gern,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_kaffee,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_treffen_wir_uns_am_samstag,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_an,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_samstag,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_bis,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_bis_samstag,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_haben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_an,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_samstag,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_zeit,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_treffen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wir,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_gern,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_kaffee,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_bis,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_treffen_wir_uns_am_samstag,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_bis_samstag,'review',0,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_treffen,'کلمه جدید',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به سوال زمان گوش کن',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'بگو وقت داری',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به پیشنهاد دیدار گوش کن',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'پیشنهاد را قبول کن',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,NULL,v_w_treffen,'معنی درست را انتخاب کن',NULL,18,'{"mode":"word_translation","question":"treffen","choices":["دیدن / ملاقات کردن","کار کردن","زندگی کردن"],"correctIndex":0}',NULL);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_treffen_wir_uns_am_samstag,'عبارت جدید',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به سوال زمان گوش کن',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'بگو وقت داری',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به پیشنهاد دیدار گوش کن',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'پیشنهاد را قبول کن',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',6,v_t_9,NULL,'به پیشنهاد قهوه گوش کن',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',7,v_t_10,NULL,'قهوه را قبول کن',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',8,v_t_7,NULL,'معنی درست را انتخاب کن',NULL,18,'{"mode":"turn_translation","question":"«Treffen wir uns am Samstag?» یعنی چی؟","choices":["شنبه همدیگر را ببینیم؟","شنبه کار می کنی؟","شنبه کجایی؟"],"correctIndex":0}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',9,v_t_7,NULL,'پیشنهاد دیدار را به ترتیب درست بساز',NULL,18,'{"source":"turn_tokens","shuffle":true}',NULL);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_bis_samstag,'عبارت جدید',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_11,NULL,'به روز قرار گوش کن',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_12,NULL,'روز را تایید کن',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_13,NULL,'به خداحافظی بن گوش کن',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_14,NULL,'تا شنبه خداحافظی کن',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_13,NULL,'معنی درست را انتخاب کن',NULL,18,'{"mode":"turn_translation","question":"«Bis Samstag!» یعنی چی؟","choices":["تا شنبه!","تا بعد!","شنبه وقت داری؟"],"correctIndex":0}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,18,'{"source":"lesson_story","question":"بن و لنا چه روزی همدیگر را می بینند؟","choices":["شنبه","امروز","زمان مشخص نیست"],"correctIndex":0}',NULL);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_15,NULL,'به سوال زمان گوش کن',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_16,NULL,'بگو وقت داری',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_17,NULL,'به پیشنهاد دیدار گوش کن',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_18,NULL,'پیشنهاد را قبول کن',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_19,NULL,'به پیشنهاد قهوه گوش کن',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_20,NULL,'قهوه را قبول کن',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',7,v_t_21,NULL,'به خداحافظی گوش کن',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',8,v_t_22,NULL,'تا شنبه خداحافظی کن',NULL,18,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',9,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,18,'{"source":"lesson_story","question":"برنامه لنا و بن چیست؟","choices":["شنبه همدیگر را می بینند و قهوه می خورند.","شنبه لباس می خرند.","شنبه به ایستگاه می روند."],"correctIndex":0}',NULL);

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 032 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (ac.config IS NULL OR JSON_EXTRACT(ac.config,'$.question') IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without task.'; END IF;
  UPDATE chapters SET status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;

CALL import_nova_series_032_v9();
DROP PROCEDURE IF EXISTS import_nova_series_032_v9;
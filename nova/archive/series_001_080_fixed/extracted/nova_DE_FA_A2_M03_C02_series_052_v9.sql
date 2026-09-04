-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 052
-- A2 > Arbeit & Aufgaben > Kannst du mir helfen?
-- Requires Series 051.
-- Promotes canonical helfen from prior passive exposure to active target.
-- Continues Anna + Martin office-task storyline.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_052_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_052_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_anna BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_martin BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_helfen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_koennen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_du BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danke BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gern BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_was BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sollen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_machen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_heute BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_in BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_buero BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_arbeiten BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_was_soll_ich_machen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_du_sollst_heute_im_buero_arbeiten BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kannst_du_mir_helfen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja_ich_helfe_dir BIGINT UNSIGNED DEFAULT NULL;
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
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Level not found.'; END IF;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 051 before Series 052.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=1 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 03 Chapter 02 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 051 before Series 052.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 03 Chapter 02 must be empty before Series 052 import.'; END IF;

  SELECT id INTO v_c_anna FROM characters WHERE course_id=v_course AND name='Anna' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_anna IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Anna not found.'; END IF;

  SELECT id INTO v_c_martin FROM characters WHERE course_id=v_course AND name='Martin' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_martin IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Martin not found.'; END IF;

  SELECT id INTO v_w_helfen FROM words WHERE course_id=v_course AND lemma='helfen' AND part_of_speech='verb' AND translation='کمک کردن' ORDER BY id LIMIT 1;
  IF v_w_helfen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word helfen not found.'; END IF;

  SELECT id INTO v_w_koennen FROM words WHERE course_id=v_course AND lemma='können' AND part_of_speech='verb' AND translation='توانستن / بتوان' ORDER BY id LIMIT 1;
  IF v_w_koennen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word können not found.'; END IF;

  SELECT id INTO v_w_du FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_du IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word du not found.'; END IF;

  SELECT id INTO v_w_ich FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_ich IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ich not found.'; END IF;

  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;

  SELECT id INTO v_w_danke FROM words WHERE course_id=v_course AND lemma='danke' AND part_of_speech='interjection' AND translation='ممنون' ORDER BY id LIMIT 1;
  IF v_w_danke IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word danke not found.'; END IF;

  SELECT id INTO v_w_gern FROM words WHERE course_id=v_course AND lemma='gern' AND part_of_speech='adverb' AND translation='با علاقه / با میل' ORDER BY id LIMIT 1;
  IF v_w_gern IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gern not found.'; END IF;

  SELECT id INTO v_w_gut FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_gut IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gut not found.'; END IF;

  SELECT id INTO v_w_was FROM words WHERE course_id=v_course AND lemma='was' AND part_of_speech='pronoun' AND translation='چی / چه' ORDER BY id LIMIT 1;
  IF v_w_was IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word was not found.'; END IF;

  SELECT id INTO v_w_sollen FROM words WHERE course_id=v_course AND lemma='sollen' AND part_of_speech='verb' AND translation='باید / قرار است' ORDER BY id LIMIT 1;
  IF v_w_sollen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word sollen not found.'; END IF;

  SELECT id INTO v_w_machen FROM words WHERE course_id=v_course AND lemma='machen' AND part_of_speech='verb' AND translation='انجام دادن' ORDER BY id LIMIT 1;
  IF v_w_machen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word machen not found.'; END IF;

  SELECT id INTO v_w_heute FROM words WHERE course_id=v_course AND lemma='heute' AND part_of_speech='adverb' AND translation='امروز' ORDER BY id LIMIT 1;
  IF v_w_heute IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word heute not found.'; END IF;

  SELECT id INTO v_w_in FROM words WHERE course_id=v_course AND lemma='in' AND part_of_speech='preposition' AND translation='در / داخل' ORDER BY id LIMIT 1;
  IF v_w_in IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word in not found.'; END IF;

  SELECT id INTO v_w_buero FROM words WHERE course_id=v_course AND lemma='Büro' AND part_of_speech='noun' AND translation='دفتر کار' ORDER BY id LIMIT 1;
  IF v_w_buero IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Büro not found.'; END IF;

  SELECT id INTO v_w_arbeiten FROM words WHERE course_id=v_course AND lemma='arbeiten' AND part_of_speech='verb' AND translation='کار کردن' ORDER BY id LIMIT 1;
  IF v_w_arbeiten IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word arbeiten not found.'; END IF;

  SELECT id INTO v_w_was_soll_ich_machen FROM words WHERE course_id=v_course AND lemma='Was soll ich machen?' AND part_of_speech='phrase' AND translation='باید چه کار کنم؟' ORDER BY id LIMIT 1;
  IF v_w_was_soll_ich_machen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Was soll ich machen? not found.'; END IF;

  SELECT id INTO v_w_du_sollst_heute_im_buero_arbeiten FROM words WHERE course_id=v_course AND lemma='Du sollst heute im Büro arbeiten.' AND part_of_speech='phrase' AND translation='امروز باید در دفتر کار کنی.' ORDER BY id LIMIT 1;
  IF v_w_du_sollst_heute_im_buero_arbeiten IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Du sollst heute im Büro arbeiten. not found.'; END IF;

  SELECT id INTO v_w_kannst_du_mir_helfen FROM words WHERE course_id=v_course AND lemma='Kannst du mir helfen?' AND part_of_speech='phrase' AND translation='می تونی کمکم کنی؟' ORDER BY id LIMIT 1;
  IF v_w_kannst_du_mir_helfen IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Kannst du mir helfen?','Kannst du mir helfen?','phrase','می تونی کمکم کنی؟',28,'{"modal":"können","modalForm":"kannst","person":"2sg","recipient":"mir","recipientLemma":"ich","infinitive":"helfen"}','[{"text":"Bitte helfen Sie mir.","translation":"لطفا به من کمک کنید."},{"text":"Kannst du morgen?","translation":"فردا می تونی؟"},{"text":"Was soll ich machen?","translation":"باید چه کار کنم؟"},{"text":"Ich brauche Hilfe.","translation":"کمک لازم دارم."},{"text":"Du sollst heute im Büro arbeiten.","translation":"امروز باید در دفتر کار کنی."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":52,"module":3}');
    SET v_w_kannst_du_mir_helfen=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_ja_ich_helfe_dir FROM words WHERE course_id=v_course AND lemma='Ja, ich helfe dir.' AND part_of_speech='phrase' AND translation='بله، کمکت می کنم.' ORDER BY id LIMIT 1;
  IF v_w_ja_ich_helfe_dir IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ja, ich helfe dir.','Ja, ich helfe dir.','phrase','بله، کمکت می کنم.',28,'{"verb":"helfen","verbForm":"helfe","person":"1sg","recipient":"dir","recipientLemma":"du"}','[{"text":"Ja, gern.","translation":"بله، حتما."},{"text":"Ich brauche Hilfe.","translation":"کمک لازم دارم."},{"text":"Danke.","translation":"ممنون."},{"text":"Ich soll heute im Büro arbeiten.","translation":"امروز باید در دفتر کار کنم."},{"text":"Kein Problem.","translation":"مشکلی نیست."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":52,"module":3}');
    SET v_w_ja_ich_helfe_dir=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_anna,v_c_martin,'Helfen','کمک کردن','Anna arbeitet an Martins Aufgabe und bittet ihn zum ersten Mal in informeller Form um Hilfe.','آنا مشغول کاری است که مارتین به او داده و برای اولین بار به شکل دوستانه از او کمک می خواهد.','story','anna-martin-work-tasks',5,27,110,1,'validated','{"relationship":"team_lead_and_employee","context":"asking-for-help-at-work","cefr":"A2","focus":"informal-help-request"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,1,'character','Kannst du mir helfen?','می تونی کمکم کنی؟',27,NULL,NULL,NULL,NULL,'[{"surface":"Kannst","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونی","form":"modal_present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"mir","lemma":"ich","translation":"من","partOfSpeech":"pronoun","meaning":"به من / کمکم","form":"dative_1sg"},{"surface":"helfen","lemma":"helfen","translation":"کمک کردن","partOfSpeech":"verb","meaning":"کمک کنی","form":"infinitive_after_modal","suffix":"?"}]','helfen حالا فعال می شود','«helfen» را قبلا در A1 داخل یک عبارت رسمی دیده بودی. اینجا آن را برای یک درخواست روزمره و دوستانه فعال می کنی.',NULL,'{"cefr":"A2","module":3}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_martin,2,'learner','Ja.','بله.',27,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,3,'character','Danke.','ممنون.',27,NULL,NULL,NULL,NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_martin,4,'learner','Gern.','با کمال میل.',27,NULL,NULL,'gern',NULL,'[{"surface":"Gern","lemma":"gern","translation":"با علاقه / با میل","partOfSpeech":"adverb","meaning":"با کمال میل","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_4=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_martin,v_c_anna,'Kannst du mir helfen?','می تونی کمکم کنی؟','Martin fragt nach Annas Aufgabe. Anna erklärt kurz, was sie tun soll, und bittet dann selbst um Hilfe.','مارتین درباره کار آنا می پرسد. آنا کوتاه می گوید چه کاری باید انجام دهد و بعد خودش کمک می خواهد.','story','anna-martin-work-tasks',6,28,110,2,'validated','{"relationship":"team_lead_and_employee","context":"asking-for-help-at-work","cefr":"A2","focus":"informal-help-request"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_martin,1,'character','Was sollst du machen?','باید چه کار کنی؟',28,NULL,NULL,NULL,NULL,'[{"surface":"Was","lemma":"was","translation":"چی / چه","partOfSpeech":"pronoun"},{"surface":"sollst","lemma":"sollen","translation":"باید / قرار است","partOfSpeech":"verb","meaning":"باید","form":"modal_present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"machen","lemma":"machen","translation":"انجام دادن","partOfSpeech":"verb","meaning":"انجام بدهی","form":"infinitive_after_modal","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,2,'learner','Ich soll heute im Büro arbeiten.','امروز باید در دفتر کار کنم.',28,NULL,NULL,'ich soll heute im büro arbeiten',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"soll","lemma":"sollen","translation":"باید / قرار است","partOfSpeech":"verb","meaning":"باید / قرار است","form":"modal_present_1sg"},{"surface":"heute","lemma":"heute","translation":"امروز","partOfSpeech":"adverb"},{"surface":"im","lemma":"in","translation":"در / داخل","partOfSpeech":"preposition","meaning":"در","form":"contraction_in_dem"},{"surface":"Büro","lemma":"Büro","translation":"دفتر کار","partOfSpeech":"noun"},{"surface":"arbeiten","lemma":"arbeiten","translation":"کار کردن","partOfSpeech":"verb","meaning":"کار کنم","form":"infinitive_after_modal","suffix":"."}]','مرور sollen در پاسخ','الگوی sollen همان Chapter قبل است؛ اینجا فقط از آن برای توضیح کاری که به تو سپرده شده استفاده می کنی.',NULL,'{"cefr":"A2","module":3}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_martin,3,'character','Gut.','خوبه.',28,NULL,NULL,NULL,NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"خوبه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,4,'learner','Kannst du mir helfen?','می تونی کمکم کنی؟',28,NULL,NULL,'kannst du mir helfen',NULL,'[{"surface":"Kannst","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونی","form":"modal_present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"mir","lemma":"ich","translation":"من","partOfSpeech":"pronoun","meaning":"به من / کمکم","form":"dative_1sg"},{"surface":"helfen","lemma":"helfen","translation":"کمک کردن","partOfSpeech":"verb","meaning":"کمک کنی","form":"infinitive_after_modal","suffix":"?"}]','mir همان ich است','در «Kannst du mir helfen?» کلمه «mir» شکل دیگری از «ich» است و معنی «به من / کمکم» می دهد. فعلا جمله کامل را کاربردی یاد بگیر.',NULL,'{"cefr":"A2","module":3}');
  SET v_t_8=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_anna,v_c_martin,'Ja, ich helfe dir','بله، کمکت می کنم','Anna bittet Martin um Hilfe. Martin antwortet nun mit einem vollständigen Satz und bietet seine Hilfe direkt an.','آنا از مارتین کمک می خواهد. مارتین حالا با یک جمله کامل جواب می دهد و مستقیم می گوید کمکش می کند.','story','anna-martin-work-tasks',7,28,110,3,'validated','{"relationship":"team_lead_and_employee","context":"asking-for-help-at-work","cefr":"A2","focus":"informal-help-request"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,1,'character','Kannst du mir helfen?','می تونی کمکم کنی؟',28,NULL,NULL,NULL,NULL,'[{"surface":"Kannst","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونی","form":"modal_present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"mir","lemma":"ich","translation":"من","partOfSpeech":"pronoun","meaning":"به من / کمکم","form":"dative_1sg"},{"surface":"helfen","lemma":"helfen","translation":"کمک کردن","partOfSpeech":"verb","meaning":"کمک کنی","form":"infinitive_after_modal","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_martin,2,'learner','Ja, ich helfe dir.','بله، کمکت می کنم.',28,NULL,NULL,'ja ich helfe dir',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"helfe","lemma":"helfen","translation":"کمک کردن","partOfSpeech":"verb","meaning":"کمک می کنم","form":"present_1sg"},{"surface":"dir","lemma":"du","translation":"تو","partOfSpeech":"pronoun","meaning":"به تو / کمکت","form":"dative_2sg","suffix":"."}]','dir همان du است','در «Ich helfe dir.» کلمه «dir» شکل دیگری از «du» است و اینجا یعنی «به تو / کمکت». هیچ لغت جداگانه ای لازم نیست حفظ کنی.',NULL,'{"cefr":"A2","module":3}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,3,'character','Danke.','ممنون.',28,NULL,NULL,NULL,NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_martin,4,'learner','Gern.','با کمال میل.',28,NULL,NULL,'gern',NULL,'[{"surface":"Gern","lemma":"gern","translation":"با علاقه / با میل","partOfSpeech":"adverb","meaning":"با کمال میل","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_12=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_martin,v_c_anna,'Hilfe bei der Arbeit','کمک در کار','Anna beschreibt ihre Aufgabe, bittet Martin um Hilfe und bekommt eine klare positive Antwort.','آنا کارش را توضیح می دهد، از مارتین کمک می خواهد و یک جواب مثبت و روشن می گیرد.','story','anna-martin-work-tasks',8,28,110,4,'validated','{"relationship":"team_lead_and_employee","context":"asking-for-help-at-work","cefr":"A2","focus":"informal-help-request"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_martin,1,'character','Was sollst du machen?','باید چه کار کنی؟',28,NULL,NULL,NULL,NULL,'[{"surface":"Was","lemma":"was","translation":"چی / چه","partOfSpeech":"pronoun"},{"surface":"sollst","lemma":"sollen","translation":"باید / قرار است","partOfSpeech":"verb","meaning":"باید","form":"modal_present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"machen","lemma":"machen","translation":"انجام دادن","partOfSpeech":"verb","meaning":"انجام بدهی","form":"infinitive_after_modal","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,2,'learner','Ich soll heute im Büro arbeiten.','امروز باید در دفتر کار کنم.',28,NULL,NULL,'ich soll heute im büro arbeiten',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"soll","lemma":"sollen","translation":"باید / قرار است","partOfSpeech":"verb","meaning":"باید / قرار است","form":"modal_present_1sg"},{"surface":"heute","lemma":"heute","translation":"امروز","partOfSpeech":"adverb"},{"surface":"im","lemma":"in","translation":"در / داخل","partOfSpeech":"preposition","meaning":"در","form":"contraction_in_dem"},{"surface":"Büro","lemma":"Büro","translation":"دفتر کار","partOfSpeech":"noun"},{"surface":"arbeiten","lemma":"arbeiten","translation":"کار کردن","partOfSpeech":"verb","meaning":"کار کنم","form":"infinitive_after_modal","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_martin,3,'character','Gut.','خوبه.',28,NULL,NULL,NULL,NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"خوبه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,4,'learner','Kannst du mir helfen?','می تونی کمکم کنی؟',28,NULL,NULL,'kannst du mir helfen',NULL,'[{"surface":"Kannst","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونی","form":"modal_present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"mir","lemma":"ich","translation":"من","partOfSpeech":"pronoun","meaning":"به من / کمکم","form":"dative_1sg"},{"surface":"helfen","lemma":"helfen","translation":"کمک کردن","partOfSpeech":"verb","meaning":"کمک کنی","form":"infinitive_after_modal","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_martin,5,'character','Ja, ich helfe dir.','بله، کمکت می کنم.',28,NULL,NULL,NULL,NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"helfe","lemma":"helfen","translation":"کمک کردن","partOfSpeech":"verb","meaning":"کمک می کنم","form":"present_1sg"},{"surface":"dir","lemma":"du","translation":"تو","partOfSpeech":"pronoun","meaning":"به تو / کمکت","form":"dative_2sg","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,6,'learner','Danke.','ممنون.',28,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":3}');
  SET v_t_18=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_koennen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_helfen,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_gern,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_1,v_w_kannst_du_mir_helfen,'passive',0,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_was,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_sollen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_du,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_machen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_ich,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_heute,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_in,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_buero,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_arbeiten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_koennen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_helfen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_du_sollst_heute_im_buero_arbeiten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_2,v_w_kannst_du_mir_helfen,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_koennen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_du,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_ich,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_helfen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_gern,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_kannst_du_mir_helfen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_3,v_w_ja_ich_helfe_dir,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_was,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_sollen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_du,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_machen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_ich,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_heute,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_in,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_buero,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_arbeiten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_koennen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_helfen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_was_soll_ich_machen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_kannst_du_mir_helfen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count)
  VALUES(v_l_4,v_w_ja_ich_helfe_dir,'review',0,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_helfen,'فعل آشنا را این بار فعال یاد بگیر',NULL,27,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به درخواست کمک آنا گوش کن',NULL,27,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'قبول کن',NULL,27,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به تشکر آنا گوش کن',NULL,27,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'مودبانه جواب بده',NULL,27,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,NULL,v_w_helfen,'معنی درست را انتخاب کن',NULL,27,'{"mode":"word_translation","question":"helfen","choices":["کمک کردن","کار کردن","پرسیدن"],"correctIndex":0}','{"cefr":"A2","module":3}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_kannst_du_mir_helfen,'عبارت جدید',NULL,28,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به سوال مارتین گوش کن',NULL,28,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'بگو امروز چه کاری باید انجام بدهی',NULL,28,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به واکنش مارتین گوش کن',NULL,28,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'از مارتین کمک بخواه',NULL,28,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_8,NULL,'معنی درست را انتخاب کن',NULL,28,'{"mode":"turn_translation","question":"«Kannst du mir helfen?» یعنی چی؟","choices":["می تونی کمکم کنی؟","باید چه کار کنم؟","می تونی فردا بیای؟"],"correctIndex":0}','{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',7,v_t_8,NULL,'درخواست کمک را به ترتیب درست بساز',NULL,28,'{"source":"turn_tokens","shuffle":true}','{"cefr":"A2","module":3}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_ja_ich_helfe_dir,'عبارت جدید',NULL,28,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_9,NULL,'به درخواست آنا گوش کن',NULL,28,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_10,NULL,'بگو کمکش می کنی',NULL,28,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_11,NULL,'به تشکر آنا گوش کن',NULL,28,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_12,NULL,'مودبانه جواب بده',NULL,28,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_10,NULL,'معنی درست را انتخاب کن',NULL,28,'{"mode":"turn_translation","question":"«Ja, ich helfe dir.» یعنی چی؟","choices":["بله، کمکت می کنم.","بله، کمک لازم دارم.","نه، باید کار کنم."],"correctIndex":0}','{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,28,'{"source":"lesson_story","question":"مارتین در جواب درخواست آنا چه می گوید؟","choices":["می گوید کمکش می کند.","می گوید فردا نمی تواند.","می گوید کار تمام شده است."],"correctIndex":0}','{"cefr":"A2","module":3}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_13,NULL,'به سوال مارتین گوش کن',NULL,28,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_14,NULL,'کارت را توضیح بده',NULL,28,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_15,NULL,'به واکنش مارتین گوش کن',NULL,28,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_16,NULL,'کمک بخواه',NULL,28,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_17,NULL,'به جواب مارتین گوش کن',NULL,28,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_18,NULL,'تشکر کن',NULL,28,NULL,'{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,28,'{"source":"lesson_story","question":"آنا بعد از توضیح کارش چه درخواستی دارد؟","choices":["از مارتین کمک می خواهد.","می خواهد قرار را جا به جا کند.","می گوید کار تمام شده است."],"correctIndex":0}','{"cefr":"A2","module":3}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',8,v_t_17,NULL,'جواب مارتین را بررسی کن',NULL,28,'{"mode":"turn_translation","question":"«Ja, ich helfe dir.» یعنی چی؟","choices":["بله، کمکت می کنم.","بله، باید کار کنی.","بله، دیرتر میام."],"correctIndex":0}','{"cefr":"A2","module":3}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 052 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count
  FROM turns t JOIN lessons l ON l.id=t.lesson_id
  WHERE l.chapter_id=v_chapter
    AND t.role='learner'
    AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count
  FROM activities ac JOIN lessons l ON l.id=ac.lesson_id
  WHERE l.chapter_id=v_chapter
    AND ac.activity_type='reading_comprehension'
    AND (ac.config IS NULL OR JSON_EXTRACT(ac.config,'$.question') IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without task.'; END IF;
  UPDATE chapters SET status='validated' WHERE id=v_chapter;
  UPDATE modules SET status='active' WHERE id=v_module;
  UPDATE levels SET status='active' WHERE id=v_level;
  COMMIT;
END$$
DELIMITER ;

CALL import_nova_series_052_v9();
DROP PROCEDURE IF EXISTS import_nova_series_052_v9;
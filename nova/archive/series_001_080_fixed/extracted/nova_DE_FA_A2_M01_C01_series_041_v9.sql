-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 041
-- A2 > Über gestern sprechen > Gestern im Büro
-- FIRST A2 CHAPTER
-- Requires complete A1 through Series 040.
-- Creates A2 Level + A2 Module 01 skeleton when missing.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_041_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_041_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_a1 BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_module BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_anna BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_laura BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_du BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_in BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_buero BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kaffee BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gern BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wie BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_es BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_hallo BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gestern BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gestern_war_ich_im_buero BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_es_war_gut BIGINT UNSIGNED DEFAULT NULL;
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

  DECLARE EXIT HANDLER FOR SQLEXCEPTION
  BEGIN
    ROLLBACK;
    RESIGNAL;
  END;

  START TRANSACTION;
  SELECT id INTO v_course FROM courses WHERE learning_language='de' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.'; END IF;

  SELECT id INTO v_a1 FROM levels WHERE course_id=v_course AND cefr_level='A1' AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_a1 IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A1 Level not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM levels WHERE id=v_a1 AND status='complete';
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 040 and complete A1 before Series 041.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters c JOIN modules m ON m.id=c.module_id WHERE m.level_id=v_a1 AND m.sort_order BETWEEN 1 AND 8 AND c.status IN ('validated','complete');
  IF v_count<>40 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 041 requires all 40 A1 Chapters validated/complete.'; END IF;

  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='A2' AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN
    INSERT INTO levels(course_id,cefr_level,title,title_translation,description,description_translation,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES(v_course,'A2','Weiter im Alltag','یک قدم جلوتر در زندگی روزمره','Etwas längere Gespräche über Vergangenes, Pläne, Alltag und häufige praktische Situationen.','درباره گذشته، برنامه ها و موقعیت های روزمره کمی کامل تر و طولانی تر صحبت کن.',21,40,2,'active','{"curriculum":"language-specific","startingPoint":"after-A1","storyFirst":true}');
    SET v_level=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN
    INSERT INTO modules(level_id,title,title_translation,description,description_translation,emoji,difficulty_min,difficulty_max,sort_order,status,metadata)
    VALUES(v_level,'Über gestern sprechen','صحبت درباره دیروز','Einfache vergangene Alltagssituationen Schritt für Schritt erzählen.','موقعیت های ساده روزمره در گذشته را قدم به قدم تعریف کن.','🕒',21,23,1,'active','{"focus":"recent-past","grammarApproach":"context-first"}');
    SET v_module=LAST_INSERT_ID();
  END IF;

  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Gestern im Büro','دیروز در محل کار','Mit sehr einfachen Sätzen über gestern im Büro sprechen.','با جمله های خیلی ساده درباره دیروز در محل کار صحبت کن.',NULL,21,21,1,'draft' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=1);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Was hast du gemacht?','چه کار کردی؟','Erste sehr einfache Perfekt-Sätze mit bekannten Verben verstehen und verwenden.','اولین جمله های خیلی ساده گذشته را با فعل های آشنا بفهم و استفاده کن.',NULL,21,22,2,'planned' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=2);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Nach der Arbeit','بعد از کار','Kurz erzählen, was nach der Arbeit passiert ist.','کوتاه تعریف کن بعد از کار چه اتفاقی افتاد.',NULL,22,22,3,'planned' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=3);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Am Wochenende','آخر هفته','Über ein vergangenes Wochenende mit einfachen Sätzen sprechen.','با جمله های ساده درباره یک آخر هفته گذشته صحبت کن.',NULL,22,23,4,'planned' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=4);
  INSERT INTO chapters(module_id,title,title_translation,description,description_translation,planned_lesson_count,difficulty_min,difficulty_max,sort_order,status)
  SELECT v_module,'Von meinem Tag erzählen','تعریف کردن روزم','Mehrere bekannte Vergangenheitsmuster zu einer kurzen Erzählung verbinden.','چند الگوی آشنای گذشته را در یک روایت کوتاه کنار هم قرار بده.',NULL,23,23,5,'planned' WHERE NOT EXISTS (SELECT 1 FROM chapters WHERE module_id=v_module AND sort_order=5);

  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=1 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 01 Chapter 01 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 01 Chapter 01 must be empty before Series 041 import.'; END IF;

  SELECT id INTO v_c_anna FROM characters WHERE course_id=v_course AND name='Anna' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_anna IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Anna not found.'; END IF;

  SELECT id INTO v_c_laura FROM characters WHERE course_id=v_course AND name='Laura' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_laura IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Laura not found.'; END IF;

  SELECT id INTO v_w_sein FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_sein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word sein not found.'; END IF;

  SELECT id INTO v_w_du FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_du IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word du not found.'; END IF;

  SELECT id INTO v_w_in FROM words WHERE course_id=v_course AND lemma='in' AND part_of_speech='preposition' AND translation='در / داخل' ORDER BY id LIMIT 1;
  IF v_w_in IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word in not found.'; END IF;

  SELECT id INTO v_w_buero FROM words WHERE course_id=v_course AND lemma='Büro' AND part_of_speech='noun' AND translation='دفتر کار' ORDER BY id LIMIT 1;
  IF v_w_buero IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Büro not found.'; END IF;

  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;

  SELECT id INTO v_w_kaffee FROM words WHERE course_id=v_course AND lemma='Kaffee' AND part_of_speech='noun' AND translation='قهوه' ORDER BY id LIMIT 1;
  IF v_w_kaffee IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Kaffee not found.'; END IF;

  SELECT id INTO v_w_gern FROM words WHERE course_id=v_course AND lemma='gern' AND part_of_speech='adverb' AND translation='با علاقه / با میل' ORDER BY id LIMIT 1;
  IF v_w_gern IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gern not found.'; END IF;

  SELECT id INTO v_w_ich FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_ich IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ich not found.'; END IF;

  SELECT id INTO v_w_wie FROM words WHERE course_id=v_course AND lemma='wie' AND part_of_speech='adverb' AND translation='چطور / چگونه' ORDER BY id LIMIT 1;
  IF v_w_wie IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word wie not found.'; END IF;

  SELECT id INTO v_w_es FROM words WHERE course_id=v_course AND lemma='es' AND part_of_speech='pronoun' AND translation='آن / این' ORDER BY id LIMIT 1;
  IF v_w_es IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word es not found.'; END IF;

  SELECT id INTO v_w_gut FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_gut IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gut not found.'; END IF;

  SELECT id INTO v_w_hallo FROM words WHERE course_id=v_course AND lemma='Hallo' AND part_of_speech='interjection' AND translation='سلام' ORDER BY id LIMIT 1;
  IF v_w_hallo IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Hallo not found.'; END IF;

  SELECT id INTO v_w_gestern FROM words WHERE course_id=v_course AND lemma='gestern' AND part_of_speech='adverb' AND translation='دیروز' ORDER BY id LIMIT 1;
  IF v_w_gestern IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'gestern','gestern','adverb','دیروز',21,'{"timeReference":"past_day"}','[{"text":"heute","translation":"امروز"},{"text":"morgen","translation":"فردا"},{"text":"später","translation":"بعدا"},{"text":"Samstag","translation":"شنبه"},{"text":"Sonntag","translation":"یکشنبه"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":41}');
    SET v_w_gestern=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_gestern_war_ich_im_buero FROM words WHERE course_id=v_course AND lemma='Gestern war ich im Büro.' AND part_of_speech='phrase' AND translation='دیروز در دفتر کار بودم.' ORDER BY id LIMIT 1;
  IF v_w_gestern_war_ich_im_buero IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Gestern war ich im Büro.','Gestern war ich im Büro.','phrase','دیروز در دفتر کار بودم.',21,NULL,'[{"text":"Ich bin im Büro.","translation":"من در دفتر کار هستم."},{"text":"Ich arbeite heute.","translation":"امروز کار می کنم."},{"text":"Es war gut.","translation":"خوب بود."},{"text":"Am Sonntag habe ich Zeit.","translation":"یکشنبه وقت دارم."},{"text":"Ich war zu Hause.","translation":"من در خانه بودم."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":41}');
    SET v_w_gestern_war_ich_im_buero=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_es_war_gut FROM words WHERE course_id=v_course AND lemma='Es war gut.' AND part_of_speech='phrase' AND translation='خوب بود.' ORDER BY id LIMIT 1;
  IF v_w_es_war_gut IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Es war gut.','Es war gut.','phrase','خوب بود.',21,NULL,'[{"text":"Sehr gut.","translation":"خیلی خوب."},{"text":"Ich bin froh.","translation":"من خوشحالم."},{"text":"Ich bin müde.","translation":"من خسته ام."},{"text":"Gestern war ich im Büro.","translation":"دیروز در دفتر کار بودم."},{"text":"Nicht so gut.","translation":"زیاد خوب نبود."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":41}');
    SET v_w_es_war_gut=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_laura,v_c_anna,'Gestern','دیروز','Laura trifft Anna wieder im Büro und fragt zum ersten Mal nach dem Vortag.','لورا دوباره آنا را در محل کار می بیند و برای اولین بار درباره روز قبل می پرسد.','story','anna-laura-office',5,21,110,1,'validated','{"relationship":"colleagues","context":"office-small-talk-about-yesterday","cefr":"A2","storyArc":"question-past-answer-evaluation-resolution"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_laura,1,'character','Warst du gestern im Büro?','دیروز در دفتر کار بودی؟',21,NULL,NULL,NULL,NULL,'[{"surface":"Warst","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"بودی","form":"preterite_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"gestern","lemma":"gestern","translation":"دیروز","partOfSpeech":"adverb"},{"surface":"im","lemma":"in","translation":"در / داخل","partOfSpeech":"preposition","meaning":"در","form":"contraction_in_dem"},{"surface":"Büro","lemma":"Büro","translation":"دفتر کار","partOfSpeech":"noun","suffix":"?"}]','اولین نگاه به گذشته','«warst» شکل گذشته «sein» برای «du» است. فعلا لازم نیست صرف گذشته را حفظ کنی؛ فقط معنی این سوال را بفهم.',NULL,'{"cefr":"A2"}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,2,'learner','Ja.','بله.',21,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2"}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_laura,3,'character','Kaffee?','قهوه؟',21,NULL,NULL,NULL,NULL,'[{"surface":"Kaffee","lemma":"Kaffee","translation":"قهوه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2"}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,4,'learner','Ja, gern.','بله، حتما.',21,NULL,NULL,'ja gern',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"gern","lemma":"gern","translation":"با علاقه / با میل","partOfSpeech":"adverb","meaning":"حتما / با میل","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2"}');
  SET v_t_4=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_laura,v_c_anna,'Gestern war ich im Büro','دیروز در دفتر کار بودم','Anna beantwortet Lauras Frage jetzt mit einem vollständigen Satz über gestern.','آنا حالا سوال لورا را با یک جمله کامل درباره دیروز جواب می دهد.','story','anna-laura-office',6,21,110,2,'validated','{"relationship":"colleagues","context":"office-small-talk-about-yesterday","cefr":"A2","storyArc":"question-past-answer-evaluation-resolution"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_laura,1,'character','Warst du gestern im Büro?','دیروز در دفتر کار بودی؟',21,NULL,NULL,NULL,NULL,'[{"surface":"Warst","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"بودی","form":"preterite_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"gestern","lemma":"gestern","translation":"دیروز","partOfSpeech":"adverb"},{"surface":"im","lemma":"in","translation":"در / داخل","partOfSpeech":"preposition","meaning":"در","form":"contraction_in_dem"},{"surface":"Büro","lemma":"Büro","translation":"دفتر کار","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2"}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,2,'learner','Ja. Gestern war ich im Büro.','بله. دیروز در دفتر کار بودم.',21,NULL,NULL,'ja gestern war ich im büro',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Gestern","lemma":"gestern","translation":"دیروز","partOfSpeech":"adverb"},{"surface":"war","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"بودم","form":"preterite_1sg"},{"surface":"ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"im","lemma":"in","translation":"در / داخل","partOfSpeech":"preposition","meaning":"در","form":"contraction_in_dem"},{"surface":"Büro","lemma":"Büro","translation":"دفتر کار","partOfSpeech":"noun","suffix":"."}]','war = گذشته sein','در «Gestern war ich im Büro.» کلمه «war» یعنی «بودم». فعلا همین جمله را به صورت یک الگوی کاربردی برای گذشته یاد بگیر.',NULL,'{"cefr":"A2"}');
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_laura,3,'character','Kaffee?','قهوه؟',21,NULL,NULL,NULL,NULL,'[{"surface":"Kaffee","lemma":"Kaffee","translation":"قهوه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2"}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,4,'learner','Ja, gern.','بله، حتما.',21,NULL,NULL,'ja gern',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"gern","lemma":"gern","translation":"با علاقه / با میل","partOfSpeech":"adverb","meaning":"حتما / با میل","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2"}');
  SET v_t_8=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_laura,v_c_anna,'Es war gut','خوب بود','Laura fragt, wie es gestern im Büro war. Anna bewertet den Tag mit einem sehr einfachen Satz.','لورا می پرسد دیروز در محل کار چطور بود. آنا با یک جمله خیلی ساده درباره آن روز نظر می دهد.','story','anna-laura-office',7,21,110,3,'validated','{"relationship":"colleagues","context":"office-small-talk-about-yesterday","cefr":"A2","storyArc":"question-past-answer-evaluation-resolution"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_laura,1,'character','Wie war es im Büro?','در دفتر کار چطور بود؟',21,NULL,NULL,NULL,NULL,'[{"surface":"Wie","lemma":"wie","translation":"چطور / چگونه","partOfSpeech":"adverb"},{"surface":"war","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"بود","form":"preterite_3sg"},{"surface":"es","lemma":"es","translation":"آن / این","partOfSpeech":"pronoun"},{"surface":"im","lemma":"in","translation":"در / داخل","partOfSpeech":"preposition","meaning":"در","form":"contraction_in_dem"},{"surface":"Büro","lemma":"Büro","translation":"دفتر کار","partOfSpeech":"noun","suffix":"?"}]','همان war با es','در این سوال هم «war» گذشته «sein» است؛ این بار با «es» معنی «بود» می دهد.',NULL,'{"cefr":"A2"}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,2,'learner','Es war gut.','خوب بود.',21,NULL,NULL,'es war gut',NULL,'[{"surface":"Es","lemma":"es","translation":"آن / این","partOfSpeech":"pronoun"},{"surface":"war","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"بود","form":"preterite_3sg"},{"surface":"gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","suffix":"."}]','یک جواب ساده درباره گذشته','«Es war gut.» یعنی «خوب بود». این الگو برای نظر دادن درباره یک موقعیت گذشته خیلی کاربردی است.',NULL,'{"cefr":"A2"}');
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_laura,3,'character','Kaffee?','قهوه؟',21,NULL,NULL,NULL,NULL,'[{"surface":"Kaffee","lemma":"Kaffee","translation":"قهوه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2"}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,4,'learner','Ja, gern.','بله، حتما.',21,NULL,NULL,'ja gern',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"gern","lemma":"gern","translation":"با علاقه / با میل","partOfSpeech":"adverb","meaning":"حتما / با میل","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2"}');
  SET v_t_12=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_laura,v_c_anna,'Gestern im Büro','دیروز در محل کار','Laura und Anna führen ihr erstes vollständiges A2-Gespräch über eine vergangene Alltagssituation.','لورا و آنا اولین گفتگوی کامل A2 را درباره یک موقعیت روزمره در گذشته انجام می دهند.','story','anna-laura-office',8,21,117,4,'validated','{"relationship":"colleagues","context":"office-small-talk-about-yesterday","cefr":"A2","storyArc":"question-past-answer-evaluation-resolution"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_laura,1,'character','Hallo.','سلام.',21,NULL,NULL,NULL,NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2"}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,2,'learner','Hallo.','سلام.',21,NULL,NULL,'hallo',NULL,'[{"surface":"Hallo","lemma":"Hallo","translation":"سلام","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2"}');
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_laura,3,'character','Warst du gestern im Büro?','دیروز در دفتر کار بودی؟',21,NULL,NULL,NULL,NULL,'[{"surface":"Warst","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"بودی","form":"preterite_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"gestern","lemma":"gestern","translation":"دیروز","partOfSpeech":"adverb"},{"surface":"im","lemma":"in","translation":"در / داخل","partOfSpeech":"preposition","meaning":"در","form":"contraction_in_dem"},{"surface":"Büro","lemma":"Büro","translation":"دفتر کار","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2"}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,4,'learner','Ja. Gestern war ich im Büro.','بله. دیروز در دفتر کار بودم.',21,NULL,NULL,'ja gestern war ich im büro',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Gestern","lemma":"gestern","translation":"دیروز","partOfSpeech":"adverb"},{"surface":"war","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"بودم","form":"preterite_1sg"},{"surface":"ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"im","lemma":"in","translation":"در / داخل","partOfSpeech":"preposition","meaning":"در","form":"contraction_in_dem"},{"surface":"Büro","lemma":"Büro","translation":"دفتر کار","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2"}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_laura,5,'character','Wie war es im Büro?','در دفتر کار چطور بود؟',21,NULL,NULL,NULL,NULL,'[{"surface":"Wie","lemma":"wie","translation":"چطور / چگونه","partOfSpeech":"adverb"},{"surface":"war","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"بود","form":"preterite_3sg"},{"surface":"es","lemma":"es","translation":"آن / این","partOfSpeech":"pronoun"},{"surface":"im","lemma":"in","translation":"در / داخل","partOfSpeech":"preposition","meaning":"در","form":"contraction_in_dem"},{"surface":"Büro","lemma":"Büro","translation":"دفتر کار","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2"}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,6,'learner','Es war gut.','خوب بود.',21,NULL,NULL,'es war gut',NULL,'[{"surface":"Es","lemma":"es","translation":"آن / این","partOfSpeech":"pronoun"},{"surface":"war","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"بود","form":"preterite_3sg"},{"surface":"gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2"}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_laura,7,'character','Kaffee?','قهوه؟',21,NULL,NULL,NULL,NULL,'[{"surface":"Kaffee","lemma":"Kaffee","translation":"قهوه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2"}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,8,'learner','Ja, gern.','بله، حتما.',21,NULL,NULL,'ja gern',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"gern","lemma":"gern","translation":"با علاقه / با میل","partOfSpeech":"adverb","meaning":"حتما / با میل","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2"}');
  SET v_t_20=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_sein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_gestern,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_in,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_buero,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_kaffee,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_gern,'review',0,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_sein,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_gestern,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_in,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_buero,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_kaffee,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_gern,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_gestern_war_ich_im_buero,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_wie,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_sein,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_es,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_in,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_buero,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_kaffee,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_gern,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_es_war_gut,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_hallo,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_sein,'review',0,4);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_gestern,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_in,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_buero,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wie,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_es,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_kaffee,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_gern,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_gestern_war_ich_im_buero,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_es_war_gut,'review',0,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_gestern,'کلمه جدید',NULL,21,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به سوال درباره دیروز گوش کن',NULL,21,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'تایید کن',NULL,21,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به پیشنهاد قهوه گوش کن',NULL,21,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'پیشنهاد را قبول کن',NULL,21,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',6,NULL,v_w_gestern,'معنی درست را انتخاب کن',NULL,21,'{"mode":"word_translation","question":"gestern","choices":["دیروز","امروز","فردا"],"correctIndex":0}','{"cefr":"A2"}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_gestern_war_ich_im_buero,'عبارت جدید',NULL,21,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_5,NULL,'به سوال لورا گوش کن',NULL,21,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_6,NULL,'بگو دیروز در دفتر کار بودی',NULL,21,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_7,NULL,'به پیشنهاد قهوه گوش کن',NULL,21,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_8,NULL,'پیشنهاد را قبول کن',NULL,21,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_6,NULL,'معنی درست را انتخاب کن',NULL,21,'{"mode":"turn_translation","question":"«Gestern war ich im Büro.» یعنی چی؟","choices":["دیروز در دفتر کار بودم.","امروز در دفتر کار هستم.","دیروز در خانه بودم."],"correctIndex":0}','{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',7,v_t_6,NULL,'جمله گذشته را به ترتیب درست بساز',NULL,21,'{"source":"turn_tokens","shuffle":true}','{"cefr":"A2"}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_es_war_gut,'عبارت جدید',NULL,21,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_9,NULL,'به سوال درباره دیروز گوش کن',NULL,21,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_10,NULL,'بگو خوب بود',NULL,21,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_11,NULL,'به پیشنهاد قهوه گوش کن',NULL,21,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_12,NULL,'پیشنهاد را قبول کن',NULL,21,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_10,NULL,'معنی درست را انتخاب کن',NULL,21,'{"mode":"turn_translation","question":"«Es war gut.» یعنی چی؟","choices":["خوب بود.","خوب است.","خسته بودم."],"correctIndex":0}','{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,21,'{"source":"lesson_story","question":"نظر آنا درباره دیروز در محل کار چیست؟","choices":["خوب بود.","بد بود.","جوابی نمی دهد."],"correctIndex":0}','{"cefr":"A2"}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_13,NULL,'به سلام لورا گوش کن',NULL,21,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_14,NULL,'سلام کن',NULL,21,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_15,NULL,'به سوال درباره دیروز گوش کن',NULL,21,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_16,NULL,'بگو دیروز در دفتر کار بودی',NULL,21,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_17,NULL,'به سوال نظر دادن گوش کن',NULL,21,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_18,NULL,'بگو خوب بود',NULL,21,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',7,v_t_19,NULL,'به پیشنهاد قهوه گوش کن',NULL,21,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',8,v_t_20,NULL,'پیشنهاد را قبول کن',NULL,21,NULL,'{"cefr":"A2"}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',9,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,21,'{"source":"lesson_story","question":"آنا درباره چه زمانی صحبت می کند؟","choices":["دیروز","امروز","فردا"],"correctIndex":0}','{"cefr":"A2"}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 041 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)='');
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  SELECT COUNT(*) INTO v_count FROM activities ac JOIN lessons l ON l.id=ac.lesson_id WHERE l.chapter_id=v_chapter AND ac.activity_type='reading_comprehension' AND (ac.config IS NULL OR JSON_EXTRACT(ac.config,'$.question') IS NULL);
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Reading Activity without task.'; END IF;
  UPDATE chapters SET status='validated' WHERE id=v_chapter;
  UPDATE levels SET status='active' WHERE id=v_level;
  COMMIT;
END$$
DELIMITER ;

CALL import_nova_series_041_v9();
DROP PROCEDURE IF EXISTS import_nova_series_041_v9;
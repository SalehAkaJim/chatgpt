-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 063
-- A2 > Im Hotel > Ich bleibe eine Nacht länger
-- Requires Series 062.
-- Continues mia-marie-hotel orders 12-15.
-- Extends the hotel stay by one night.
-- Breakfast and checkout vocabulary are deferred to Series 064-065.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_063_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_063_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_mia BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_marie BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_der BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_zimmer BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_moechten BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danke BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_laut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_zu_degree BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_andere BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_geben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_das_zimmer_ist_zu_laut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_koennen_sie_mir_ein_anderes_zimmer_geben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_gebe_ihnen_ein_anderes_zimmer BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_bleiben BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_nacht BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_lang BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_bleibe_eine_nacht_laenger BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_moechte_eine_nacht_laenger_bleiben BIGINT UNSIGNED DEFAULT NULL;
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
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=5 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 061 before Series 063.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=2 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 05 Chapter 03 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 062 before Series 063.'; END IF;
  SELECT COUNT(*) INTO v_count FROM chapters WHERE id=v_prev_chapter AND status IN ('validated','complete');
  IF v_count<>1 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Series 062 Chapter must be validated/complete before Series 063.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 05 Chapter 03 must be empty before Series 063 import.'; END IF;

  SELECT id INTO v_c_mia FROM characters WHERE course_id=v_course AND name='Mia' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_mia IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Mia not found.'; END IF;

  SELECT id INTO v_c_marie FROM characters WHERE course_id=v_course AND name='Marie' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_marie IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Marie not found.'; END IF;

  SELECT id INTO v_w_der FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_der IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word der not found.'; END IF;

  SELECT id INTO v_w_ein FROM words WHERE course_id=v_course AND lemma='ein' AND part_of_speech='article' AND translation='یک / حرف تعریف نامعین' ORDER BY id LIMIT 1;
  IF v_w_ein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ein not found.'; END IF;

  SELECT id INTO v_w_zimmer FROM words WHERE course_id=v_course AND lemma='Zimmer' AND part_of_speech='noun' AND translation='اتاق' ORDER BY id LIMIT 1;
  IF v_w_zimmer IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Zimmer not found.'; END IF;

  SELECT id INTO v_w_sein FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_sein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word sein not found.'; END IF;

  SELECT id INTO v_w_moechten FROM words WHERE course_id=v_course AND lemma='möchten' AND part_of_speech='verb' AND translation='خواستن / مایل بودن' ORDER BY id LIMIT 1;
  IF v_w_moechten IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word möchten not found.'; END IF;

  SELECT id INTO v_w_ich FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_ich IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ich not found.'; END IF;

  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;

  SELECT id INTO v_w_danke FROM words WHERE course_id=v_course AND lemma='danke' AND part_of_speech='interjection' AND translation='ممنون' ORDER BY id LIMIT 1;
  IF v_w_danke IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word danke not found.'; END IF;

  SELECT id INTO v_w_gut FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_gut IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gut not found.'; END IF;

  SELECT id INTO v_w_laut FROM words WHERE course_id=v_course AND lemma='laut' AND part_of_speech='adjective' AND translation='پر سر و صدا' ORDER BY id LIMIT 1;
  IF v_w_laut IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word laut not found.'; END IF;

  SELECT id INTO v_w_zu_degree FROM words WHERE course_id=v_course AND lemma='zu' AND part_of_speech='particle' AND translation='بیش از حد / خیلی' ORDER BY id LIMIT 1;
  IF v_w_zu_degree IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word zu not found.'; END IF;

  SELECT id INTO v_w_andere FROM words WHERE course_id=v_course AND lemma='andere' AND part_of_speech='adjective' AND translation='دیگر / متفاوت' ORDER BY id LIMIT 1;
  IF v_w_andere IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word andere not found.'; END IF;

  SELECT id INTO v_w_geben FROM words WHERE course_id=v_course AND lemma='geben' AND part_of_speech='verb' AND translation='دادن' ORDER BY id LIMIT 1;
  IF v_w_geben IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word geben not found.'; END IF;

  SELECT id INTO v_w_das_zimmer_ist_zu_laut FROM words WHERE course_id=v_course AND lemma='Das Zimmer ist zu laut.' AND part_of_speech='phrase' AND translation='اتاق خیلی پر سر و صداست.' ORDER BY id LIMIT 1;
  IF v_w_das_zimmer_ist_zu_laut IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Das Zimmer ist zu laut. not found.'; END IF;

  SELECT id INTO v_w_koennen_sie_mir_ein_anderes_zimmer_geben FROM words WHERE course_id=v_course AND lemma='Können Sie mir ein anderes Zimmer geben?' AND part_of_speech='phrase' AND translation='می تونید یک اتاق دیگه بهم بدید؟' ORDER BY id LIMIT 1;
  IF v_w_koennen_sie_mir_ein_anderes_zimmer_geben IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Können Sie mir ein anderes Zimmer geben? not found.'; END IF;

  SELECT id INTO v_w_ich_gebe_ihnen_ein_anderes_zimmer FROM words WHERE course_id=v_course AND lemma='Ich gebe Ihnen ein anderes Zimmer.' AND part_of_speech='phrase' AND translation='یک اتاق دیگه بهتون می دم.' ORDER BY id LIMIT 1;
  IF v_w_ich_gebe_ihnen_ein_anderes_zimmer IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Ich gebe Ihnen ein anderes Zimmer. not found.'; END IF;

  SELECT id INTO v_w_bleiben FROM words WHERE course_id=v_course AND lemma='bleiben' AND part_of_speech='verb' AND translation='ماندن' ORDER BY id LIMIT 1;
  IF v_w_bleiben IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'bleiben','bleiben','verb','ماندن',34,'{"present":{"ich":"bleibe","du":"bleibst","er_sie_es":"bleibt"},"usage":"stay_or_remain"}','[{"text":"gehen","translation":"رفتن"},{"text":"kommen","translation":"آمدن"},{"text":"wohnen","translation":"زندگی کردن"},{"text":"arbeiten","translation":"کار کردن"},{"text":"warten","translation":"منتظر ماندن"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":63,"module":5}');
    SET v_w_bleiben=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_nacht FROM words WHERE course_id=v_course AND lemma='Nacht' AND part_of_speech='noun' AND translation='شب' ORDER BY id LIMIT 1;
  IF v_w_nacht IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Nacht','Nacht','noun','شب',34,'{"gender":"feminine","article":"die","plural":"Nächte"}','[{"text":"Tag","translation":"روز"},{"text":"Morgen","translation":"صبح"},{"text":"Abend","translation":"عصر / شب"},{"text":"Woche","translation":"هفته"},{"text":"Stunde","translation":"ساعت"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":63,"module":5}');
    SET v_w_nacht=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_lang FROM words WHERE course_id=v_course AND lemma='lang' AND part_of_speech='adjective' AND translation='طولانی / بلند' ORDER BY id LIMIT 1;
  IF v_w_lang IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'lang','lang','adjective','طولانی / بلند',34,'{"comparative":"länger","usage":"duration_or_length"}','[{"text":"kurz","translation":"کوتاه"},{"text":"spät","translation":"دیر"},{"text":"früh","translation":"زود"},{"text":"groß","translation":"بزرگ"},{"text":"klein","translation":"کوچک"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":63,"module":5}');
    SET v_w_lang=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_ich_bleibe_eine_nacht_laenger FROM words WHERE course_id=v_course AND lemma='Ich bleibe eine Nacht länger.' AND part_of_speech='phrase' AND translation='یک شب بیشتر می مونم.' ORDER BY id LIMIT 1;
  IF v_w_ich_bleibe_eine_nacht_laenger IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich bleibe eine Nacht länger.','Ich bleibe eine Nacht länger.','phrase','یک شب بیشتر می مونم.',34,'{"verb":"bleiben","verbForm":"bleibe","person":"1sg","duration":"eine Nacht","comparative":"länger","comparativeLemma":"lang"}','[{"text":"Ich bleibe heute hier.","translation":"امروز اینجا می مونم."},{"text":"Ich komme morgen.","translation":"فردا میام."},{"text":"Ich möchte ein anderes Zimmer.","translation":"یک اتاق دیگه می خوام."},{"text":"Eine Nacht ist genug.","translation":"یک شب کافیه."},{"text":"Ich bleibe nicht länger.","translation":"بیشتر نمی مونم."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":63,"module":5}');
    SET v_w_ich_bleibe_eine_nacht_laenger=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_ich_moechte_eine_nacht_laenger_bleiben FROM words WHERE course_id=v_course AND lemma='Ich möchte eine Nacht länger bleiben.' AND part_of_speech='phrase' AND translation='می خوام یک شب بیشتر بمونم.' ORDER BY id LIMIT 1;
  IF v_w_ich_moechte_eine_nacht_laenger_bleiben IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich möchte eine Nacht länger bleiben.','Ich möchte eine Nacht länger bleiben.','phrase','می خوام یک شب بیشتر بمونم.',34,'{"politeIntent":"möchten","form":"möchte","person":"1sg","duration":"eine Nacht","comparative":"länger","infinitive":"bleiben"}','[{"text":"Ich bleibe eine Nacht länger.","translation":"یک شب بیشتر می مونم."},{"text":"Ich möchte ein anderes Zimmer.","translation":"یک اتاق دیگه می خوام."},{"text":"Ich möchte morgen kommen.","translation":"می خوام فردا بیام."},{"text":"Ich kann eine Nacht bleiben.","translation":"می تونم یک شب بمونم."},{"text":"Das Zimmer ist zu laut.","translation":"اتاق خیلی پر سر و صداست."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":63,"module":5}');
    SET v_w_ich_moechte_eine_nacht_laenger_bleiben=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_marie,v_c_mia,'Bleiben','ماندن','Nach dem Zimmerwechsel ist Mia zufrieden. Jetzt sagt sie Marie, dass sie ihren Aufenthalt um eine Nacht verlängern möchte.','بعد از عوض کردن اتاق، میا راضی است. حالا به ماری می گوید که می خواهد یک شب بیشتر در هتل بماند.','story','mia-marie-hotel',12,34,110,1,'validated','{"relationship":"hotel_guest_and_receptionist","context":"extend-hotel-stay","cefr":"A2","module":5,"focus":"bleiben-nacht-laenger"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_marie,1,'character','Ist das Zimmer gut?','اتاق خوبه؟',34,NULL,NULL,NULL,NULL,'[{"surface":"Ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است / هست","form":"present_3sg"},{"surface":"das","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"neuter_nominative"},{"surface":"Zimmer","lemma":"Zimmer","translation":"اتاق","partOfSpeech":"noun"},{"surface":"gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"خوب","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,2,'learner','Ja. Ich bleibe eine Nacht länger.','بله. یک شب بیشتر می مونم.',34,NULL,NULL,'ja ich bleibe eine nacht länger',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"bleibe","lemma":"bleiben","translation":"ماندن","partOfSpeech":"verb","meaning":"می مونم","form":"present_1sg"},{"surface":"eine","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","meaning":"یک","form":"feminine_accusative"},{"surface":"Nacht","lemma":"Nacht","translation":"شب","partOfSpeech":"noun"},{"surface":"länger","lemma":"lang","translation":"طولانی / بلند","partOfSpeech":"adjective","meaning":"بیشتر / طولانی تر","form":"comparative_adverbial","suffix":"."}]','bleiben برای ادامه اقامت','«bleiben» یعنی ماندن. در «Ich bleibe ...» شکل «bleibe» برای ich می آید.',NULL,'{"cefr":"A2","module":5}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_marie,3,'character','Eine Nacht länger?','یک شب بیشتر؟',34,NULL,NULL,NULL,NULL,'[{"surface":"Eine","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","meaning":"یک","form":"feminine_accusative"},{"surface":"Nacht","lemma":"Nacht","translation":"شب","partOfSpeech":"noun"},{"surface":"länger","lemma":"lang","translation":"طولانی / بلند","partOfSpeech":"adjective","meaning":"بیشتر / طولانی تر","form":"comparative_adverbial","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,4,'learner','Ja.','بله.',34,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_marie,5,'character','Gut.','خوبه.',34,NULL,NULL,NULL,NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"خوبه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_mia,6,'learner','Danke.','ممنون.',34,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_6=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_marie,v_c_mia,'Ich bleibe eine Nacht länger','یک شب بیشتر می مونم','Marie prüft die Verlängerung noch einmal. Mia sagt die gewünschte zusätzliche Nacht jetzt als vollständigen Satz.','ماری تمدید اقامت را دوباره بررسی می کند. میا این بار خواسته اش را با یک جمله کامل می گوید.','story','mia-marie-hotel',13,34,110,2,'validated','{"relationship":"hotel_guest_and_receptionist","context":"extend-hotel-stay","cefr":"A2","module":5,"focus":"bleiben-nacht-laenger"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_marie,1,'character','Eine Nacht länger?','یک شب بیشتر؟',34,NULL,NULL,NULL,NULL,'[{"surface":"Eine","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","meaning":"یک","form":"feminine_accusative"},{"surface":"Nacht","lemma":"Nacht","translation":"شب","partOfSpeech":"noun"},{"surface":"länger","lemma":"lang","translation":"طولانی / بلند","partOfSpeech":"adjective","meaning":"بیشتر / طولانی تر","form":"comparative_adverbial","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,2,'learner','Ja. Ich bleibe eine Nacht länger.','بله. یک شب بیشتر می مونم.',34,NULL,NULL,'ja ich bleibe eine nacht länger',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"bleibe","lemma":"bleiben","translation":"ماندن","partOfSpeech":"verb","meaning":"می مونم","form":"present_1sg"},{"surface":"eine","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","meaning":"یک","form":"feminine_accusative"},{"surface":"Nacht","lemma":"Nacht","translation":"شب","partOfSpeech":"noun"},{"surface":"länger","lemma":"lang","translation":"طولانی / بلند","partOfSpeech":"adjective","meaning":"بیشتر / طولانی تر","form":"comparative_adverbial","suffix":"."}]','eine Nacht länger','«länger» در اینجا یعنی مدت بیشتری. این شکل به lemma «lang» وصل می شود؛ فقط همین کاربرد را لازم داری.',NULL,'{"cefr":"A2","module":5}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_marie,3,'character','Gut.','خوبه.',34,NULL,NULL,NULL,NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"خوبه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_mia,4,'learner','Danke.','ممنون.',34,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_10=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_marie,v_c_mia,'Ich möchte eine Nacht länger bleiben','می خوام یک شب بیشتر بمونم','Mia formuliert die Verlängerung jetzt als höflichen Wunsch. Marie versteht genau, was Mia möchte.','میا حالا تمدید اقامت را به شکل یک خواسته مودبانه مطرح می کند. ماری دقیقا می فهمد میا چه می خواهد.','story','mia-marie-hotel',14,34,110,3,'validated','{"relationship":"hotel_guest_and_receptionist","context":"extend-hotel-stay","cefr":"A2","module":5,"focus":"bleiben-nacht-laenger"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_marie,1,'character','Eine Nacht länger?','یک شب بیشتر؟',34,NULL,NULL,NULL,NULL,'[{"surface":"Eine","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","meaning":"یک","form":"feminine_accusative"},{"surface":"Nacht","lemma":"Nacht","translation":"شب","partOfSpeech":"noun"},{"surface":"länger","lemma":"lang","translation":"طولانی / بلند","partOfSpeech":"adjective","meaning":"بیشتر / طولانی تر","form":"comparative_adverbial","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,2,'learner','Ja. Ich möchte eine Nacht länger bleiben.','بله. می خوام یک شب بیشتر بمونم.',34,NULL,NULL,'ja ich möchte eine nacht länger bleiben',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"möchte","lemma":"möchten","translation":"خواستن / مایل بودن","partOfSpeech":"verb","meaning":"می خوام","form":"present_1sg"},{"surface":"eine","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","meaning":"یک","form":"feminine_accusative"},{"surface":"Nacht","lemma":"Nacht","translation":"شب","partOfSpeech":"noun"},{"surface":"länger","lemma":"lang","translation":"طولانی / بلند","partOfSpeech":"adjective","meaning":"بیشتر / طولانی تر","form":"comparative_adverbial"},{"surface":"bleiben","lemma":"bleiben","translation":"ماندن","partOfSpeech":"verb","meaning":"بمونم","form":"infinitive_after_moechten","suffix":"."}]','möchte + bleiben','برای بیان خواسته مودبانه می تونی از «Ich möchte ... bleiben.» استفاده کنی. «bleiben» در پایان به شکل مصدر می ماند.',NULL,'{"cefr":"A2","module":5}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_marie,3,'character','Gut.','خوبه.',34,NULL,NULL,NULL,NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"خوبه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_mia,4,'learner','Danke.','ممنون.',34,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_14=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_marie,v_c_mia,'Eine Nacht länger','یک شب بیشتر','Mia und Marie schließen die Verlängerung klar ab. Das neue Zimmer ist in Ordnung, und Mia bleibt eine zusätzliche Nacht.','میا و ماری تمدید اقامت را روشن نهایی می کنند. اتاق جدید خوب است و میا یک شب بیشتر می ماند.','story','mia-marie-hotel',15,34,110,4,'validated','{"relationship":"hotel_guest_and_receptionist","context":"extend-hotel-stay","cefr":"A2","module":5,"focus":"bleiben-nacht-laenger"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_marie,1,'character','Ist das Zimmer gut?','اتاق خوبه؟',34,NULL,NULL,NULL,NULL,'[{"surface":"Ist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"است / هست","form":"present_3sg"},{"surface":"das","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"neuter_nominative"},{"surface":"Zimmer","lemma":"Zimmer","translation":"اتاق","partOfSpeech":"noun"},{"surface":"gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"خوب","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,2,'learner','Ja. Danke.','بله. ممنون.',34,NULL,NULL,'ja danke',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_marie,3,'character','Eine Nacht länger?','یک شب بیشتر؟',34,NULL,NULL,NULL,NULL,'[{"surface":"Eine","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","meaning":"یک","form":"feminine_accusative"},{"surface":"Nacht","lemma":"Nacht","translation":"شب","partOfSpeech":"noun"},{"surface":"länger","lemma":"lang","translation":"طولانی / بلند","partOfSpeech":"adjective","meaning":"بیشتر / طولانی تر","form":"comparative_adverbial","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,4,'learner','Ja. Ich möchte eine Nacht länger bleiben.','بله. می خوام یک شب بیشتر بمونم.',34,NULL,NULL,'ja ich möchte eine nacht länger bleiben',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"möchte","lemma":"möchten","translation":"خواستن / مایل بودن","partOfSpeech":"verb","meaning":"می خوام","form":"present_1sg"},{"surface":"eine","lemma":"ein","translation":"یک / حرف تعریف نامعین","partOfSpeech":"article","meaning":"یک","form":"feminine_accusative"},{"surface":"Nacht","lemma":"Nacht","translation":"شب","partOfSpeech":"noun"},{"surface":"länger","lemma":"lang","translation":"طولانی / بلند","partOfSpeech":"adjective","meaning":"بیشتر / طولانی تر","form":"comparative_adverbial"},{"surface":"bleiben","lemma":"bleiben","translation":"ماندن","partOfSpeech":"verb","meaning":"بمونم","form":"infinitive_after_moechten","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_marie,5,'character','Gut.','خوبه.',34,NULL,NULL,NULL,NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"خوبه","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_mia,6,'learner','Danke.','ممنون.',34,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":5}');
  SET v_t_20=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_sein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_der,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_zimmer,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_gut,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_bleiben,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ein,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_nacht,'passive',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_lang,'passive',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ich_bleibe_eine_nacht_laenger,'passive',0,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ein,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_nacht,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_lang,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_bleiben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich_bleibe_eine_nacht_laenger,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ein,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_nacht,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_lang,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_moechten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_bleiben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich_moechte_eine_nacht_laenger_bleiben,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_sein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_der,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_zimmer,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_gut,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_danke,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ein,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_nacht,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_lang,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_moechten,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_bleiben,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich_bleibe_eine_nacht_laenger,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich_moechte_eine_nacht_laenger_bleiben,'review',0,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_bleiben,'فعل جدید',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به سوال ماری گوش کن',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'بگو یک شب بیشتر می مونی',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به سوال تاییدی ماری گوش کن',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'تایید کن',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',6,v_t_5,NULL,'به واکنش ماری گوش کن',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',7,v_t_6,NULL,'تشکر کن',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',8,NULL,v_w_bleiben,'معنی درست را انتخاب کن',NULL,34,'{"mode":"word_translation","question":"bleiben","choices":["ماندن","رفتن","آمدن"],"correctIndex":0}','{"cefr":"A2","module":5}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_ich_bleibe_eine_nacht_laenger,'عبارت جدید',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_7,NULL,'به سوال درباره شب اضافه گوش کن',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_8,NULL,'کامل بگو یک شب بیشتر می مونی',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_9,NULL,'به واکنش ماری گوش کن',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_10,NULL,'تشکر کن',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_8,NULL,'معنی درست را انتخاب کن',NULL,34,'{"mode":"turn_translation","question":"«Ich bleibe eine Nacht länger.» یعنی چی؟","choices":["یک شب بیشتر می مونم.","یک شب کمتر می مونم.","امشب می رم."],"correctIndex":0}','{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',7,v_t_8,NULL,'جمله تمدید اقامت را به ترتیب درست بساز',NULL,34,'{"source":"turn_tokens","shuffle":true}','{"cefr":"A2","module":5}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_ich_moechte_eine_nacht_laenger_bleiben,'عبارت جدید',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_11,NULL,'به سوال ماری گوش کن',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_12,NULL,'مودبانه بگو یک شب بیشتر می خوای بمونی',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_13,NULL,'به واکنش ماری گوش کن',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_14,NULL,'تشکر کن',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_12,NULL,'معنی درست را انتخاب کن',NULL,34,'{"mode":"turn_translation","question":"«Ich möchte eine Nacht länger bleiben.» یعنی چی؟","choices":["می خوام یک شب بیشتر بمونم.","می خوام اتاق را عوض کنم.","می خوام فردا برم."],"correctIndex":0}','{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,34,'{"source":"lesson_story","question":"میا چه تغییری در اقامتش می خواهد؟","choices":["می خواهد یک شب بیشتر بماند.","می خواهد همان روز برود.","می خواهد دوباره اتاقش را عوض کند."],"correctIndex":0}','{"cefr":"A2","module":5}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_15,NULL,'به سوال درباره اتاق گوش کن',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_16,NULL,'تایید کن اتاق خوب است',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_17,NULL,'به سوال درباره تمدید گوش کن',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_18,NULL,'مودبانه درخواست یک شب بیشتر کن',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_19,NULL,'به واکنش ماری گوش کن',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_20,NULL,'تشکر کن',NULL,34,NULL,'{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',7,NULL,NULL,'کل گفتگو را بخوان و جواب بده',NULL,34,'{"source":"lesson_story","question":"در پایان این Chapter چه چیزی مشخص شده است؟","choices":["میا یک شب بیشتر در هتل می ماند.","میا همان روز هتل را ترک می کند.","اتاق جدید دوباره مشکل دارد."],"correctIndex":0}','{"cefr":"A2","module":5}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',8,v_t_18,NULL,'خواسته میا را بررسی کن',NULL,34,'{"mode":"turn_translation","question":"«Ich möchte eine Nacht länger bleiben.» یعنی چی؟","choices":["می خوام یک شب بیشتر بمونم.","می خوام اتاق دیگری بگیرم.","می خوام صبحانه بخورم."],"correctIndex":0}','{"cefr":"A2","module":5}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 063 lesson count.'; END IF;
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

CALL import_nova_series_063_v9();
DROP PROCEDURE IF EXISTS import_nova_series_063_v9;
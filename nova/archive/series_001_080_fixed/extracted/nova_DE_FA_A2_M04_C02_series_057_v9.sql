-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 057
-- A2 > Probleme zu Hause > Kannst du das reparieren?
-- Requires Series 056.
-- Continues Anna + Jonas home-repair storyline.
-- Technician/contact vocabulary is deferred to Series 058.
-- ===============================================================
SET NAMES utf8mb4;

DROP PROCEDURE IF EXISTS import_nova_series_057_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_057_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED;
  DECLARE v_level BIGINT UNSIGNED;
  DECLARE v_module BIGINT UNSIGNED;
  DECLARE v_chapter BIGINT UNSIGNED;
  DECLARE v_prev_chapter BIGINT UNSIGNED;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_anna BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_jonas BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_der BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_heizung BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_funktionieren BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_nicht BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_koennen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_du BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_das BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_was BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wir BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_machen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_brauchen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_hilfe BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_nein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_die_heizung_funktioniert_nicht BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_was_koennen_wir_machen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_reparieren BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kannst_du_das_reparieren BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_kann_das_nicht_reparieren BIGINT UNSIGNED DEFAULT NULL;
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

  DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN ROLLBACK; RESIGNAL; END;
  START TRANSACTION;
  SELECT id INTO v_course FROM courses WHERE learning_language='de' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND cefr_level='A2' AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_level IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Level not found.'; END IF;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=4 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 056 before Series 057.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=1 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=2 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 04 Chapter 02 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 056 before Series 057.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='A2 Module 04 Chapter 02 must be empty before Series 057 import.'; END IF;

  SELECT id INTO v_c_anna FROM characters WHERE course_id=v_course AND name='Anna' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_anna IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Anna not found.'; END IF;

  SELECT id INTO v_c_jonas FROM characters WHERE course_id=v_course AND name='Jonas' AND gender='male' ORDER BY id LIMIT 1;
  IF v_c_jonas IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Jonas not found.'; END IF;

  SELECT id INTO v_w_der FROM words WHERE course_id=v_course AND lemma='der' AND part_of_speech='article' AND translation='حرف تعریف' ORDER BY id LIMIT 1;
  IF v_w_der IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word der not found.'; END IF;

  SELECT id INTO v_w_heizung FROM words WHERE course_id=v_course AND lemma='Heizung' AND part_of_speech='noun' AND translation='سیستم گرمایشی / شوفاژ' ORDER BY id LIMIT 1;
  IF v_w_heizung IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Heizung not found.'; END IF;

  SELECT id INTO v_w_funktionieren FROM words WHERE course_id=v_course AND lemma='funktionieren' AND part_of_speech='verb' AND translation='کار کردن / درست کار کردن' ORDER BY id LIMIT 1;
  IF v_w_funktionieren IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word funktionieren not found.'; END IF;

  SELECT id INTO v_w_nicht FROM words WHERE course_id=v_course AND lemma='nicht' AND part_of_speech='particle' AND translation='نه / نیست' ORDER BY id LIMIT 1;
  IF v_w_nicht IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word nicht not found.'; END IF;

  SELECT id INTO v_w_koennen FROM words WHERE course_id=v_course AND lemma='können' AND part_of_speech='verb' AND translation='توانستن / بتوان' ORDER BY id LIMIT 1;
  IF v_w_koennen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word können not found.'; END IF;

  SELECT id INTO v_w_du FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_du IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word du not found.'; END IF;

  SELECT id INTO v_w_das FROM words WHERE course_id=v_course AND lemma='das' AND part_of_speech='pronoun' AND translation='این / آن' ORDER BY id LIMIT 1;
  IF v_w_das IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word das not found.'; END IF;

  SELECT id INTO v_w_ich FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_ich IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ich not found.'; END IF;

  SELECT id INTO v_w_was FROM words WHERE course_id=v_course AND lemma='was' AND part_of_speech='pronoun' AND translation='چی / چه' ORDER BY id LIMIT 1;
  IF v_w_was IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word was not found.'; END IF;

  SELECT id INTO v_w_wir FROM words WHERE course_id=v_course AND lemma='wir' AND part_of_speech='pronoun' AND translation='ما' ORDER BY id LIMIT 1;
  IF v_w_wir IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word wir not found.'; END IF;

  SELECT id INTO v_w_machen FROM words WHERE course_id=v_course AND lemma='machen' AND part_of_speech='verb' AND translation='انجام دادن' ORDER BY id LIMIT 1;
  IF v_w_machen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word machen not found.'; END IF;

  SELECT id INTO v_w_brauchen FROM words WHERE course_id=v_course AND lemma='brauchen' AND part_of_speech='verb' AND translation='نیاز داشتن / لازم داشتن' ORDER BY id LIMIT 1;
  IF v_w_brauchen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word brauchen not found.'; END IF;

  SELECT id INTO v_w_hilfe FROM words WHERE course_id=v_course AND lemma='Hilfe' AND part_of_speech='noun' AND translation='کمک' ORDER BY id LIMIT 1;
  IF v_w_hilfe IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Hilfe not found.'; END IF;

  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;

  SELECT id INTO v_w_nein FROM words WHERE course_id=v_course AND lemma='nein' AND part_of_speech='interjection' AND translation='نه' ORDER BY id LIMIT 1;
  IF v_w_nein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word nein not found.'; END IF;

  SELECT id INTO v_w_die_heizung_funktioniert_nicht FROM words WHERE course_id=v_course AND lemma='Die Heizung funktioniert nicht.' AND part_of_speech='phrase' AND translation='شوفاژ کار نمی کند.' ORDER BY id LIMIT 1;
  IF v_w_die_heizung_funktioniert_nicht IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Die Heizung funktioniert nicht. not found.'; END IF;

  SELECT id INTO v_w_was_koennen_wir_machen FROM words WHERE course_id=v_course AND lemma='Was können wir machen?' AND part_of_speech='phrase' AND translation='چه کاری می تونیم انجام بدیم؟' ORDER BY id LIMIT 1;
  IF v_w_was_koennen_wir_machen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Was können wir machen? not found.'; END IF;

  SELECT id INTO v_w_reparieren FROM words WHERE course_id=v_course AND lemma='reparieren' AND part_of_speech='verb' AND translation='تعمیر کردن' ORDER BY id LIMIT 1;
  IF v_w_reparieren IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'reparieren','reparieren','verb','تعمیر کردن',31,'{"present":{"ich":"repariere","du":"reparierst","er_sie_es":"repariert"},"usage":"repair_objects_and_systems"}','[{"text":"funktionieren","translation":"درست کار کردن"},{"text":"machen","translation":"انجام دادن"},{"text":"helfen","translation":"کمک کردن"},{"text":"arbeiten","translation":"کار کردن"},{"text":"kaufen","translation":"خریدن"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":57,"module":4}');
    SET v_w_reparieren=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_kannst_du_das_reparieren FROM words WHERE course_id=v_course AND lemma='Kannst du das reparieren?' AND part_of_speech='phrase' AND translation='می تونی این را تعمیر کنی؟' ORDER BY id LIMIT 1;
  IF v_w_kannst_du_das_reparieren IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Kannst du das reparieren?','Kannst du das reparieren?','phrase','می تونی این را تعمیر کنی؟',31,'{"modal":"können","modalForm":"kannst","person":"2sg","object":"das","infinitive":"reparieren"}','[{"text":"Kannst du mir helfen?","translation":"می تونی کمکم کنی؟"},{"text":"Was können wir machen?","translation":"چه کاری می تونیم انجام بدیم؟"},{"text":"Die Heizung funktioniert nicht.","translation":"شوفاژ کار نمی کند."},{"text":"Ich kann das machen.","translation":"می تونم این را انجام بدم."},{"text":"Funktioniert die Heizung?","translation":"شوفاژ کار می کند؟"}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":57,"module":4}');
    SET v_w_kannst_du_das_reparieren=LAST_INSERT_ID();
  END IF;

  SELECT id INTO v_w_ich_kann_das_nicht_reparieren FROM words WHERE course_id=v_course AND lemma='Ich kann das nicht reparieren.' AND part_of_speech='phrase' AND translation='نمی تونم این را تعمیر کنم.' ORDER BY id LIMIT 1;
  IF v_w_ich_kann_das_nicht_reparieren IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich kann das nicht reparieren.','Ich kann das nicht reparieren.','phrase','نمی تونم این را تعمیر کنم.',31,'{"modal":"können","modalForm":"kann","person":"1sg","object":"das","negation":"nicht","infinitive":"reparieren"}','[{"text":"Ich kann das reparieren.","translation":"می تونم این را تعمیر کنم."},{"text":"Ich verstehe das nicht.","translation":"این را نمی فهمم."},{"text":"Ich muss arbeiten.","translation":"باید کار کنم."},{"text":"Wir machen das zusammen.","translation":"با هم انجامش می دیم."},{"text":"Die Heizung funktioniert nicht.","translation":"شوفاژ کار نمی کند."}]',NULL,NULL,NULL,NULL,'{"cefr":"A2","introducedInSeries":57,"module":4}');
    SET v_w_ich_kann_das_nicht_reparieren=LAST_INSERT_ID();
  END IF;

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_jonas,v_c_anna,'Reparieren','تعمیر کردن','Anna und Jonas wissen, dass die Heizung nicht funktioniert. Anna fragt jetzt, ob Jonas sie selbst reparieren kann.','آنا و یوناس می دانند شوفاژ کار نمی کند. آنا حالا می پرسد آیا یوناس خودش می تواند آن را تعمیر کند.','story','anna-jonas-a2-home-repairs',5,30,110,1,'validated','{"relationship":"spouses","context":"checking-self-repair","cefr":"A2","module":4,"focus":"reparieren-with-koennen"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_jonas,1,'character','Die Heizung funktioniert nicht.','شوفاژ کار نمی کند.',30,NULL,NULL,NULL,NULL,'[{"surface":"Die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"feminine_nominative"},{"surface":"Heizung","lemma":"Heizung","translation":"سیستم گرمایشی / شوفاژ","partOfSpeech":"noun"},{"surface":"funktioniert","lemma":"funktionieren","translation":"کار کردن / درست کار کردن","partOfSpeech":"verb","meaning":"کار می کند","form":"present_3sg"},{"surface":"nicht","lemma":"nicht","translation":"نه / نیست","partOfSpeech":"particle","meaning":"نمی","form":"negation","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,2,'learner','Kannst du das reparieren?','می تونی این را تعمیر کنی؟',30,NULL,NULL,'kannst du das reparieren',NULL,'[{"surface":"Kannst","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونی","form":"modal_present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"das","lemma":"das","translation":"این / آن","partOfSpeech":"pronoun","meaning":"این را","form":"accusative_neuter"},{"surface":"reparieren","lemma":"reparieren","translation":"تعمیر کردن","partOfSpeech":"verb","meaning":"تعمیر کنی","form":"infinitive_after_modal","suffix":"?"}]','reparieren بعد از modal','«reparieren» یعنی تعمیر کردن. بعد از «kannst» فعل اصلی در پایان و به شکل ساده می ماند.',NULL,'{"cefr":"A2","module":4}');
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_jonas,3,'character','Nein.','نه.',30,NULL,NULL,NULL,NULL,'[{"surface":"Nein","lemma":"nein","translation":"نه","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,4,'learner','Was können wir machen?','چه کاری می تونیم انجام بدیم؟',30,NULL,NULL,'was können wir machen',NULL,'[{"surface":"Was","lemma":"was","translation":"چی / چه","partOfSpeech":"pronoun"},{"surface":"können","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونیم","form":"modal_present_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"machen","lemma":"machen","translation":"انجام دادن","partOfSpeech":"verb","meaning":"انجام بدیم","form":"infinitive_after_modal","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_jonas,5,'character','Wir brauchen Hilfe.','کمک لازم داریم.',30,NULL,NULL,NULL,NULL,'[{"surface":"Wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"brauchen","lemma":"brauchen","translation":"نیاز داشتن / لازم داشتن","partOfSpeech":"verb","meaning":"لازم داریم","form":"present_1pl"},{"surface":"Hilfe","lemma":"Hilfe","translation":"کمک","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,6,'learner','Ja.','بله.',30,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_6=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_jonas,v_c_anna,'Kannst du das reparieren?','می تونی این را تعمیر کنی؟','Jonas fragt nach dem nächsten Schritt. Anna prüft direkt, ob er die Reparatur selbst übernehmen kann.','یوناس درباره قدم بعدی می پرسد. آنا مستقیم بررسی می کند آیا او می تواند تعمیر را خودش انجام دهد.','story','anna-jonas-a2-home-repairs',6,31,110,2,'validated','{"relationship":"spouses","context":"checking-self-repair","cefr":"A2","module":4,"focus":"reparieren-with-koennen"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_jonas,1,'character','Was können wir machen?','چه کاری می تونیم انجام بدیم؟',31,NULL,NULL,NULL,NULL,'[{"surface":"Was","lemma":"was","translation":"چی / چه","partOfSpeech":"pronoun"},{"surface":"können","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونیم","form":"modal_present_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"machen","lemma":"machen","translation":"انجام دادن","partOfSpeech":"verb","meaning":"انجام بدیم","form":"infinitive_after_modal","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,2,'learner','Kannst du das reparieren?','می تونی این را تعمیر کنی؟',31,NULL,NULL,'kannst du das reparieren',NULL,'[{"surface":"Kannst","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونی","form":"modal_present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"das","lemma":"das","translation":"این / آن","partOfSpeech":"pronoun","meaning":"این را","form":"accusative_neuter"},{"surface":"reparieren","lemma":"reparieren","translation":"تعمیر کردن","partOfSpeech":"verb","meaning":"تعمیر کنی","form":"infinitive_after_modal","suffix":"?"}]','das به جای تکرار Heizung','چون هر دو می دانند درباره شوفاژ حرف می زنند، «das» اینجا یعنی «این را / آن را» و لازم نیست Heizung دوباره تکرار شود.',NULL,'{"cefr":"A2","module":4}');
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_jonas,3,'character','Nein. Ich kann das nicht reparieren.','نه. نمی تونم این را تعمیر کنم.',31,NULL,NULL,NULL,NULL,'[{"surface":"Nein","lemma":"nein","translation":"نه","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"kann","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونم","form":"modal_present_1sg"},{"surface":"das","lemma":"das","translation":"این / آن","partOfSpeech":"pronoun","meaning":"این را","form":"accusative_neuter"},{"surface":"nicht","lemma":"nicht","translation":"نه / نیست","partOfSpeech":"particle","meaning":"نمی","form":"negation"},{"surface":"reparieren","lemma":"reparieren","translation":"تعمیر کردن","partOfSpeech":"verb","meaning":"تعمیر کنم","form":"infinitive_after_modal","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,4,'learner','Wir brauchen Hilfe.','کمک لازم داریم.',31,NULL,NULL,'wir brauchen hilfe',NULL,'[{"surface":"Wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"brauchen","lemma":"brauchen","translation":"نیاز داشتن / لازم داشتن","partOfSpeech":"verb","meaning":"لازم داریم","form":"present_1pl"},{"surface":"Hilfe","lemma":"Hilfe","translation":"کمک","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_10=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_anna,v_c_jonas,'Ich kann das nicht reparieren','نمی تونم این را تعمیر کنم','Anna fragt Jonas noch einmal direkt. Jonas erklärt nun vollständig, dass er die Heizung nicht selbst reparieren kann.','آنا دوباره مستقیم از یوناس می پرسد. یوناس حالا کامل توضیح می دهد که خودش نمی تواند شوفاژ را تعمیر کند.','story','anna-jonas-a2-home-repairs',7,31,110,3,'validated','{"relationship":"spouses","context":"checking-self-repair","cefr":"A2","module":4,"focus":"reparieren-with-koennen"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,1,'character','Kannst du das reparieren?','می تونی این را تعمیر کنی؟',31,NULL,NULL,NULL,NULL,'[{"surface":"Kannst","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونی","form":"modal_present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"das","lemma":"das","translation":"این / آن","partOfSpeech":"pronoun","meaning":"این را","form":"accusative_neuter"},{"surface":"reparieren","lemma":"reparieren","translation":"تعمیر کردن","partOfSpeech":"verb","meaning":"تعمیر کنی","form":"infinitive_after_modal","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_jonas,2,'learner','Nein. Ich kann das nicht reparieren.','نه. نمی تونم این را تعمیر کنم.',31,NULL,NULL,'nein ich kann das nicht reparieren',NULL,'[{"surface":"Nein","lemma":"nein","translation":"نه","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"kann","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونم","form":"modal_present_1sg"},{"surface":"das","lemma":"das","translation":"این / آن","partOfSpeech":"pronoun","meaning":"این را","form":"accusative_neuter"},{"surface":"nicht","lemma":"nicht","translation":"نه / نیست","partOfSpeech":"particle","meaning":"نمی","form":"negation"},{"surface":"reparieren","lemma":"reparieren","translation":"تعمیر کردن","partOfSpeech":"verb","meaning":"تعمیر کنم","form":"infinitive_after_modal","suffix":"."}]','modal منفی با nicht','در «Ich kann das nicht reparieren.» توانایی تعمیر کردن منفی شده است. الگوی können آشناست و reparieren در پایان می ماند.',NULL,'{"cefr":"A2","module":4}');
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,3,'character','Was können wir machen?','چه کاری می تونیم انجام بدیم؟',31,NULL,NULL,NULL,NULL,'[{"surface":"Was","lemma":"was","translation":"چی / چه","partOfSpeech":"pronoun"},{"surface":"können","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونیم","form":"modal_present_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"machen","lemma":"machen","translation":"انجام دادن","partOfSpeech":"verb","meaning":"انجام بدیم","form":"infinitive_after_modal","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_jonas,4,'learner','Wir brauchen Hilfe.','کمک لازم داریم.',31,NULL,NULL,'wir brauchen hilfe',NULL,'[{"surface":"Wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"brauchen","lemma":"brauchen","translation":"نیاز داشتن / لازم داشتن","partOfSpeech":"verb","meaning":"لازم داریم","form":"present_1pl"},{"surface":"Hilfe","lemma":"Hilfe","translation":"کمک","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_14=LAST_INSERT_ID();

  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_anna,v_c_jonas,'Wir brauchen Hilfe','کمک لازم داریم','Anna und Jonas prüfen die Reparaturmöglichkeit. Jonas kann die Heizung nicht selbst reparieren, deshalb bleibt als nächster Schritt professionelle Hilfe.','آنا و یوناس امکان تعمیر را بررسی می کنند. یوناس خودش نمی تواند شوفاژ را تعمیر کند، پس قدم بعدی گرفتن کمک است.','story','anna-jonas-a2-home-repairs',8,31,117,4,'validated','{"relationship":"spouses","context":"checking-self-repair","cefr":"A2","module":4,"focus":"reparieren-with-koennen"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,1,'character','Die Heizung funktioniert nicht.','شوفاژ کار نمی کند.',31,NULL,NULL,NULL,NULL,'[{"surface":"Die","lemma":"der","translation":"حرف تعریف","partOfSpeech":"article","meaning":"حرف تعریف این اسم","form":"feminine_nominative"},{"surface":"Heizung","lemma":"Heizung","translation":"سیستم گرمایشی / شوفاژ","partOfSpeech":"noun"},{"surface":"funktioniert","lemma":"funktionieren","translation":"کار کردن / درست کار کردن","partOfSpeech":"verb","meaning":"کار می کند","form":"present_3sg"},{"surface":"nicht","lemma":"nicht","translation":"نه / نیست","partOfSpeech":"particle","meaning":"نمی","form":"negation","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_jonas,2,'learner','Ja.','بله.',31,NULL,NULL,'ja',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,3,'character','Kannst du das reparieren?','می تونی این را تعمیر کنی؟',31,NULL,NULL,NULL,NULL,'[{"surface":"Kannst","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونی","form":"modal_present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"das","lemma":"das","translation":"این / آن","partOfSpeech":"pronoun","meaning":"این را","form":"accusative_neuter"},{"surface":"reparieren","lemma":"reparieren","translation":"تعمیر کردن","partOfSpeech":"verb","meaning":"تعمیر کنی","form":"infinitive_after_modal","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_jonas,4,'learner','Nein. Ich kann das nicht reparieren.','نه. نمی تونم این را تعمیر کنم.',31,NULL,NULL,'nein ich kann das nicht reparieren',NULL,'[{"surface":"Nein","lemma":"nein","translation":"نه","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"kann","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونم","form":"modal_present_1sg"},{"surface":"das","lemma":"das","translation":"این / آن","partOfSpeech":"pronoun","meaning":"این را","form":"accusative_neuter"},{"surface":"nicht","lemma":"nicht","translation":"نه / نیست","partOfSpeech":"particle","meaning":"نمی","form":"negation"},{"surface":"reparieren","lemma":"reparieren","translation":"تعمیر کردن","partOfSpeech":"verb","meaning":"تعمیر کنم","form":"infinitive_after_modal","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,5,'character','Was können wir machen?','چه کاری می تونیم انجام بدیم؟',31,NULL,NULL,NULL,NULL,'[{"surface":"Was","lemma":"was","translation":"چی / چه","partOfSpeech":"pronoun"},{"surface":"können","lemma":"können","translation":"توانستن / بتوان","partOfSpeech":"verb","meaning":"می تونیم","form":"modal_present_1pl"},{"surface":"wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"machen","lemma":"machen","translation":"انجام دادن","partOfSpeech":"verb","meaning":"انجام بدیم","form":"infinitive_after_modal","suffix":"?"}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_jonas,6,'learner','Wir brauchen Hilfe.','کمک لازم داریم.',31,NULL,NULL,'wir brauchen hilfe',NULL,'[{"surface":"Wir","lemma":"wir","translation":"ما","partOfSpeech":"pronoun"},{"surface":"brauchen","lemma":"brauchen","translation":"نیاز داشتن / لازم داشتن","partOfSpeech":"verb","meaning":"لازم داریم","form":"present_1pl"},{"surface":"Hilfe","lemma":"Hilfe","translation":"کمک","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_20=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,7,'character','Ja.','بله.',31,NULL,NULL,NULL,NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,'{"cefr":"A2","module":4}');
  SET v_t_21=LAST_INSERT_ID();

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_der,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_heizung,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_funktionieren,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_nicht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_koennen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_das,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_reparieren,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_nein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_was,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_wir,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_machen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_brauchen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_hilfe,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_kannst_du_das_reparieren,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_was_koennen_wir_machen,'review',0,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_was,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_koennen,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_wir,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_machen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_das,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_reparieren,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_nein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_nicht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_brauchen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_hilfe,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich_kann_das_nicht_reparieren,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_kannst_du_das_reparieren,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_koennen,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_das,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_reparieren,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_nein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_nicht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_was,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_wir,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_machen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_brauchen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_hilfe,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_kannst_du_das_reparieren,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_was_koennen_wir_machen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ich_kann_das_nicht_reparieren,'new',1,1);

  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_der,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_heizung,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_funktionieren,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_nicht,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_koennen,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_das,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_reparieren,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_nein,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_was,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wir,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_machen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_brauchen,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_hilfe,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_die_heizung_funktioniert_nicht,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_kannst_du_das_reparieren,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich_kann_das_nicht_reparieren,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_was_koennen_wir_machen,'review',0,1);

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'new_word',1,NULL,v_w_reparieren,'فعل جدید',NULL,30,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',2,v_t_1,NULL,'به مشکل شوفاژ گوش کن',NULL,30,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',3,v_t_2,NULL,'بپرس آیا یوناس می تواند تعمیرش کند',NULL,30,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',4,v_t_3,NULL,'به جواب یوناس گوش کن',NULL,30,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',5,v_t_4,NULL,'درباره راه حل بپرس',NULL,30,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'listen',6,v_t_5,NULL,'به نتیجه یوناس گوش کن',NULL,30,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'speak',7,v_t_6,NULL,'تایید کن',NULL,30,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_1,'meaning_choice',8,NULL,v_w_reparieren,'معنی درست را انتخاب کن',NULL,30,'{"mode":"word_translation","question":"reparieren","choices":["تعمیر کردن","درست کار کردن","کمک کردن"],"correctIndex":0}','{"cefr":"A2","module":4}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'new_word',1,NULL,v_w_kannst_du_das_reparieren,'عبارت جدید',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',2,v_t_7,NULL,'به سوال یوناس گوش کن',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',3,v_t_8,NULL,'بپرس آیا می تواند تعمیرش کند',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'listen',4,v_t_9,NULL,'به جواب یوناس گوش کن',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'speak',5,v_t_10,NULL,'بگو کمک لازم دارید',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'meaning_choice',6,v_t_8,NULL,'معنی درست را انتخاب کن',NULL,31,'{"mode":"turn_translation","question":"«Kannst du das reparieren?» یعنی چی؟","choices":["می تونی این را تعمیر کنی؟","این درست کار می کند؟","چه کاری می تونیم انجام بدیم؟"],"correctIndex":0}','{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_2,'word_order',7,v_t_8,NULL,'سوال تعمیر را به ترتیب درست بساز',NULL,31,'{"source":"turn_tokens","shuffle":true}','{"cefr":"A2","module":4}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'new_word',1,NULL,v_w_ich_kann_das_nicht_reparieren,'عبارت جدید',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',2,v_t_11,NULL,'به سوال آنا گوش کن',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',3,v_t_12,NULL,'بگو نمی تونی تعمیرش کنی',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'listen',4,v_t_13,NULL,'به سوال راه حل گوش کن',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'speak',5,v_t_14,NULL,'بگو کمک لازم دارید',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'meaning_choice',6,v_t_12,NULL,'معنی درست را انتخاب کن',NULL,31,'{"mode":"turn_translation","question":"«Ich kann das nicht reparieren.» یعنی چی؟","choices":["نمی تونم این را تعمیر کنم.","می تونم این را تعمیر کنم.","این کار نمی کند."],"correctIndex":0}','{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_3,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,31,'{"source":"lesson_story","question":"چرا آنا و یوناس به کمک نیاز دارند؟","choices":["چون یوناس نمی تواند شوفاژ را تعمیر کند.","چون شوفاژ دوباره کار می کند.","چون آنا می خواهد شوفاژ جدید بخرد."],"correctIndex":0}','{"cefr":"A2","module":4}');

  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',1,v_t_15,NULL,'به توضیح مشکل گوش کن',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',2,v_t_16,NULL,'تایید کن',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',3,v_t_17,NULL,'به سوال تعمیر گوش کن',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',4,v_t_18,NULL,'بگو نمی تونی تعمیرش کنی',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',5,v_t_19,NULL,'به سوال راه حل گوش کن',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'speak',6,v_t_20,NULL,'بگو کمک لازم دارید',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'listen',7,v_t_21,NULL,'به تایید آنا گوش کن',NULL,31,NULL,'{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'reading_comprehension',8,NULL,NULL,'کل مکالمه را بخوان و جواب بده',NULL,31,'{"source":"lesson_story","question":"نتیجه بررسی آنا و یوناس چیست؟","choices":["خودشان نمی توانند مشکل را تعمیر کنند و به کمک نیاز دارند.","شوفاژ تعمیر شده است.","یوناس می تواند شوفاژ را به تنهایی تعمیر کند."],"correctIndex":0}','{"cefr":"A2","module":4}');
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata)
  VALUES(v_l_4,'meaning_choice',9,v_t_18,NULL,'جواب یوناس را بررسی کن',NULL,31,'{"mode":"turn_translation","question":"«Ich kann das nicht reparieren.» یعنی چی؟","choices":["نمی تونم این را تعمیر کنم.","می تونی این را تعمیر کنی؟","کمک لازم داریم."],"correctIndex":0}','{"cefr":"A2","module":4}');

  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 057 lesson count.'; END IF;
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

CALL import_nova_series_057_v9();
DROP PROCEDURE IF EXISTS import_nova_series_057_v9;
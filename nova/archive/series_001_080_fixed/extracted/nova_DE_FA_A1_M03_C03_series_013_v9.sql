-- ===============================================================
-- NOVA v9 / REAL DATA / SERIES 013
-- A1 > Mein Alltag > Mein Arbeitstag
-- ===============================================================
SET NAMES utf8mb4;
DROP PROCEDURE IF EXISTS import_nova_series_013_v9;
DELIMITER $$
CREATE PROCEDURE import_nova_series_013_v9()
BEGIN
  DECLARE v_course BIGINT UNSIGNED; DECLARE v_level BIGINT UNSIGNED; DECLARE v_module BIGINT UNSIGNED;
  DECLARE v_chapter BIGINT UNSIGNED; DECLARE v_prev_chapter BIGINT UNSIGNED; DECLARE v_count INT DEFAULT 0;
  DECLARE v_c_anna BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_c_laura BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_gut BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_morgen BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_du BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_sein BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_wo BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ja BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_bitte BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_danke BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_kaffee BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_bis BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_spaeter BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_anna BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_arbeiten BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_heute BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_arbeite_heute BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_in BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_buero BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_ich_bin_im_buero BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_pause BIGINT UNSIGNED DEFAULT NULL;
  DECLARE v_w_laura BIGINT UNSIGNED DEFAULT NULL;
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
  DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN ROLLBACK; RESIGNAL; END;
  START TRANSACTION;
  SELECT id INTO v_course FROM courses WHERE learning_language='de' AND base_language='fa' ORDER BY id LIMIT 1;
  IF v_course IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Run nova_DE_FA_base_seed_v9.sql first.'; END IF;
  SELECT id INTO v_level FROM levels WHERE course_id=v_course AND sort_order=1 ORDER BY id LIMIT 1;
  SELECT id INTO v_module FROM modules WHERE level_id=v_level AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_module IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 011 before Series 013.'; END IF;
  SELECT id INTO v_prev_chapter FROM chapters WHERE module_id=v_module AND sort_order=2 ORDER BY id LIMIT 1;
  SELECT id INTO v_chapter FROM chapters WHERE module_id=v_module AND sort_order=3 ORDER BY id LIMIT 1;
  IF v_chapter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Module 03 Chapter 03 not found.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_prev_chapter;
  IF v_count=0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Import Series 012 before Series 013.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter;
  IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Module 03 Chapter 03 must be empty before Series 013 import.'; END IF;
  SELECT id INTO v_c_anna FROM characters WHERE course_id=v_course AND name='Anna' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_anna IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Character Anna not found.'; END IF;
  SELECT id INTO v_c_laura FROM characters WHERE course_id=v_course AND name='Laura' AND gender='female' ORDER BY id LIMIT 1;
  IF v_c_laura IS NULL THEN
    INSERT INTO characters(course_id,name,gender,avatar_url,voice_key,profile,metadata)
    VALUES(v_course,'Laura','female',NULL,NULL,'{"role":"office_colleague"}','{"context":"office","relationshipToAnna":"colleague","introducedInModule":3,"introducedInChapter":3}');
    SET v_c_laura=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_gut FROM words WHERE course_id=v_course AND lemma='gut' AND part_of_speech='adjective' AND translation='خوب' ORDER BY id LIMIT 1;
  IF v_w_gut IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word gut not found.'; END IF;
  SELECT id INTO v_w_morgen FROM words WHERE course_id=v_course AND lemma='Morgen' AND part_of_speech='noun' AND translation='صبح' ORDER BY id LIMIT 1;
  IF v_w_morgen IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Morgen not found.'; END IF;
  SELECT id INTO v_w_ich FROM words WHERE course_id=v_course AND lemma='ich' AND part_of_speech='pronoun' AND translation='من' ORDER BY id LIMIT 1;
  IF v_w_ich IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ich not found.'; END IF;
  SELECT id INTO v_w_du FROM words WHERE course_id=v_course AND lemma='du' AND part_of_speech='pronoun' AND translation='تو' ORDER BY id LIMIT 1;
  IF v_w_du IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word du not found.'; END IF;
  SELECT id INTO v_w_sein FROM words WHERE course_id=v_course AND lemma='sein' AND part_of_speech='verb' AND translation='بودن' ORDER BY id LIMIT 1;
  IF v_w_sein IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word sein not found.'; END IF;
  SELECT id INTO v_w_wo FROM words WHERE course_id=v_course AND lemma='wo' AND part_of_speech='adverb' AND translation='کجا' ORDER BY id LIMIT 1;
  IF v_w_wo IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word wo not found.'; END IF;
  SELECT id INTO v_w_ja FROM words WHERE course_id=v_course AND lemma='ja' AND part_of_speech='interjection' AND translation='بله / آره' ORDER BY id LIMIT 1;
  IF v_w_ja IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word ja not found.'; END IF;
  SELECT id INTO v_w_bitte FROM words WHERE course_id=v_course AND lemma='bitte' AND part_of_speech='interjection' AND translation='لطفا / خواهش می کنم' ORDER BY id LIMIT 1;
  IF v_w_bitte IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word bitte not found.'; END IF;
  SELECT id INTO v_w_danke FROM words WHERE course_id=v_course AND lemma='danke' AND part_of_speech='interjection' AND translation='ممنون' ORDER BY id LIMIT 1;
  IF v_w_danke IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word danke not found.'; END IF;
  SELECT id INTO v_w_kaffee FROM words WHERE course_id=v_course AND lemma='Kaffee' AND part_of_speech='noun' AND translation='قهوه' ORDER BY id LIMIT 1;
  IF v_w_kaffee IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Kaffee not found.'; END IF;
  SELECT id INTO v_w_bis FROM words WHERE course_id=v_course AND lemma='bis' AND part_of_speech='preposition' AND translation='تا' ORDER BY id LIMIT 1;
  IF v_w_bis IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word bis not found.'; END IF;
  SELECT id INTO v_w_spaeter FROM words WHERE course_id=v_course AND lemma='später' AND part_of_speech='adverb' AND translation='بعدا' ORDER BY id LIMIT 1;
  IF v_w_spaeter IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word später not found.'; END IF;
  SELECT id INTO v_w_anna FROM words WHERE course_id=v_course AND lemma='Anna' AND part_of_speech='proper_noun' AND translation='آنا (نام زنانه)' ORDER BY id LIMIT 1;
  IF v_w_anna IS NULL THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Required existing Word Anna not found.'; END IF;
  SELECT id INTO v_w_arbeiten FROM words WHERE course_id=v_course AND lemma='arbeiten' AND part_of_speech='verb' AND translation='کار کردن' ORDER BY id LIMIT 1;
  IF v_w_arbeiten IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'arbeiten','arbeiten','verb','کار کردن',8,'{"present":{"ich":"arbeite","du":"arbeitest","er_sie_es":"arbeitet","wir":"arbeiten","ihr":"arbeitet","sie_Sie":"arbeiten"}}','[{"text":"lernen","translation":"یاد گرفتن"},{"text":"essen","translation":"خوردن"},{"text":"trinken","translation":"نوشیدن"},{"text":"schlafen","translation":"خوابیدن"},{"text":"kaufen","translation":"خریدن"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_arbeiten=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_heute FROM words WHERE course_id=v_course AND lemma='heute' AND part_of_speech='adverb' AND translation='امروز' ORDER BY id LIMIT 1;
  IF v_w_heute IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'heute','heute','adverb','امروز',8,NULL,'[{"text":"morgen","translation":"فردا"},{"text":"gestern","translation":"دیروز"},{"text":"jetzt","translation":"الان"},{"text":"später","translation":"بعدا"},{"text":"früh","translation":"زود"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_heute=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_ich_arbeite_heute FROM words WHERE course_id=v_course AND lemma='Ich arbeite heute.' AND part_of_speech='phrase' AND translation='امروز کار می کنم.' ORDER BY id LIMIT 1;
  IF v_w_ich_arbeite_heute IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich arbeite heute.','Ich arbeite heute.','phrase','امروز کار می کنم.',8,NULL,'[{"text":"Ich frühstücke.","translation":"من صبحانه می خورم."},{"text":"Ich stehe auf.","translation":"من از خواب بلند می شوم."},{"text":"Ich bin zwanzig.","translation":"من بیست سالمه."},{"text":"Ich komme aus ...","translation":"من اهل ... هستم."},{"text":"Mit Karte, bitte.","translation":"با کارت، لطفا."}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_ich_arbeite_heute=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_in FROM words WHERE course_id=v_course AND lemma='in' AND part_of_speech='preposition' AND translation='در / داخل' ORDER BY id LIMIT 1;
  IF v_w_in IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'in','in','preposition','در / داخل',8,NULL,'[{"text":"aus","translation":"از"},{"text":"mit","translation":"با"},{"text":"bei","translation":"نزد / در"},{"text":"für","translation":"برای"},{"text":"ohne","translation":"بدون"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_in=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_buero FROM words WHERE course_id=v_course AND lemma='Büro' AND part_of_speech='noun' AND translation='دفتر کار' ORDER BY id LIMIT 1;
  IF v_w_buero IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Büro','Büro','noun','دفتر کار',8,'{"article":"das","plural":"Büros"}','[{"text":"Café","translation":"کافه"},{"text":"Restaurant","translation":"رستوران"},{"text":"Supermarkt","translation":"سوپرمارکت"},{"text":"Wohnung","translation":"خانه / آپارتمان"},{"text":"Schule","translation":"مدرسه"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_buero=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_ich_bin_im_buero FROM words WHERE course_id=v_course AND lemma='Ich bin im Büro.' AND part_of_speech='phrase' AND translation='من در دفتر کار هستم.' ORDER BY id LIMIT 1;
  IF v_w_ich_bin_im_buero IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Ich bin im Büro.','Ich bin im Büro.','phrase','من در دفتر کار هستم.',8,NULL,'[{"text":"Ich arbeite heute.","translation":"امروز کار می کنم."},{"text":"Ich bin zwanzig.","translation":"من بیست سالمه."},{"text":"Ich komme aus ...","translation":"من اهل ... هستم."},{"text":"Ich frühstücke.","translation":"من صبحانه می خورم."},{"text":"Bis später.","translation":"بعدا می بینمت."}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_ich_bin_im_buero=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_pause FROM words WHERE course_id=v_course AND lemma='Pause' AND part_of_speech='noun' AND translation='استراحت' ORDER BY id LIMIT 1;
  IF v_w_pause IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Pause','Pause','noun','استراحت',8,'{"article":"die","plural":"Pausen"}','[{"text":"Arbeit","translation":"کار"},{"text":"Termin","translation":"قرار / وقت"},{"text":"Frühstück","translation":"صبحانه"},{"text":"Kaffee","translation":"قهوه"},{"text":"Urlaub","translation":"تعطیلات"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_pause=LAST_INSERT_ID();
  END IF;
  SELECT id INTO v_w_laura FROM words WHERE course_id=v_course AND lemma='Laura' AND part_of_speech='proper_noun' AND translation='لورا (نام زنانه)' ORDER BY id LIMIT 1;
  IF v_w_laura IS NULL THEN
    INSERT INTO words(course_id,lemma,display_form,part_of_speech,translation,difficulty,grammar,distractors,example_text,example_translation,audio_url,audio_duration_ms,metadata)
    VALUES(v_course,'Laura','Laura','proper_noun','لورا (نام زنانه)',8,NULL,'[{"text":"Anna","translation":"آنا (نام زنانه)"},{"text":"Mia","translation":"میا (نام زنانه)"},{"text":"Sara","translation":"سارا (نام زنانه)"},{"text":"Lena","translation":"لنا (نام زنانه)"},{"text":"Sofia","translation":"سوفیا (نام زنانه)"}]',NULL,NULL,NULL,NULL,NULL);
    SET v_w_laura=LAST_INSERT_ID();
  END IF;
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_laura,v_c_anna,'Anna arbeitet heute','آنا امروز کار می کند','Laura trifft Anna am Morgen im Büro und fragt, ob sie heute arbeitet.','لورا صبح آنا را در محل کار می بیند و می پرسد امروز کار می کند یا نه.','story','anna-laura-office',1,8,110,1,'validated','{"relationship":"colleagues","storyArc":"beginning-development-ending"}');
  SET v_l_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_laura,1,'character','Guten Morgen, Anna!','صبح بخیر، آنا!',8,NULL,NULL,NULL,NULL,'[{"surface":"Guten","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"در این عبارت: بخیر","form":"inflected_adjective"},{"surface":"Morgen","lemma":"Morgen","translation":"صبح","partOfSpeech":"noun","suffix":","},{"surface":"Anna","lemma":"Anna","translation":"آنا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_1=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,2,'learner','Guten Morgen, Laura!','صبح بخیر، لورا!',8,NULL,NULL,'guten morgen laura',NULL,'[{"surface":"Guten","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","meaning":"در این عبارت: بخیر","form":"inflected_adjective"},{"surface":"Morgen","lemma":"Morgen","translation":"صبح","partOfSpeech":"noun","suffix":","},{"surface":"Laura","lemma":"Laura","translation":"لورا (نام زنانه)","partOfSpeech":"proper_noun","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_laura,3,'character','Arbeitest du heute?','امروز کار می کنی؟',8,NULL,NULL,NULL,NULL,'[{"surface":"Arbeitest","lemma":"arbeiten","translation":"کار کردن","partOfSpeech":"verb","meaning":"کار می کنی","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"heute","lemma":"heute","translation":"امروز","partOfSpeech":"adverb","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,4,'learner','Ja. Ich arbeite heute.','بله. امروز کار می کنم.',8,NULL,NULL,'ja ich arbeite heute',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"arbeite","lemma":"arbeiten","translation":"کار کردن","partOfSpeech":"verb","meaning":"کار می کنم","form":"present_1sg"},{"surface":"heute","lemma":"heute","translation":"امروز","partOfSpeech":"adverb","suffix":"."}]','اول جمله را کامل استفاده کن','«Ich arbeite heute.» یعنی «امروز کار می کنم». فعلا فقط شکل همین جمله را یاد بگیر.',NULL,NULL);
  SET v_t_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_laura,5,'character','Gut.','خوبه.',8,NULL,NULL,NULL,NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_5=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_1,v_c_anna,6,'learner','Danke!','ممنون!',8,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_6=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_laura,v_c_anna,'Anna ist im Büro','آنا در دفتر کار است','Laura fragt Anna, wo sie ist. Anna antwortet mit einem kurzen neuen Satz.','لورا از آنا می پرسد کجاست. آنا با یک جمله کوتاه جدید جواب می دهد.','story','anna-laura-office',2,8,110,2,'validated','{"relationship":"colleagues","storyArc":"beginning-development-ending"}');
  SET v_l_2=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_laura,1,'character','Wo bist du?','کجایی؟',8,NULL,NULL,NULL,NULL,'[{"surface":"Wo","lemma":"wo","translation":"کجا","partOfSpeech":"adverb"},{"surface":"bist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"هستی","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_7=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,2,'learner','Ich bin im Büro.','من در دفتر کار هستم.',8,NULL,NULL,'ich bin im büro',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"bin","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"هستم","form":"present_1sg"},{"surface":"im","lemma":"in","translation":"در / داخل","partOfSpeech":"preposition","meaning":"در","form":"contraction_in_dem"},{"surface":"Büro","lemma":"Büro","translation":"دفتر کار","partOfSpeech":"noun","suffix":"."}]','im را فعلا داخل جمله یاد بگیر','در این جمله «im Büro» یعنی «در دفتر کار». فعلا لازم نیست ساختار «im» را جداگانه حفظ کنی.',NULL,NULL);
  SET v_t_8=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_laura,3,'character','Gut.','خوبه.',8,NULL,NULL,NULL,NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_9=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_2,v_c_anna,4,'learner','Bis später!','بعدا می بینمت!',8,NULL,NULL,'bis später',NULL,'[{"surface":"Bis","lemma":"bis","translation":"تا","partOfSpeech":"preposition"},{"surface":"später","lemma":"später","translation":"بعدا","partOfSpeech":"adverb","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_10=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_laura,v_c_anna,'Kleine Pause','یک استراحت کوتاه','Laura und Anna machen bei der Arbeit eine kurze Pause mit Kaffee.','لورا و آنا وسط کار یک استراحت کوتاه همراه با قهوه دارند.','story','anna-laura-office',3,8,110,3,'validated','{"relationship":"colleagues","storyArc":"beginning-development-ending"}');
  SET v_l_3=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_laura,1,'character','Pause?','استراحت؟',8,NULL,NULL,NULL,NULL,'[{"surface":"Pause","lemma":"Pause","translation":"استراحت","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_11=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,2,'learner','Ja, bitte.','بله، لطفا.',8,NULL,NULL,'ja bitte',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_12=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_laura,3,'character','Kaffee?','قهوه؟',8,NULL,NULL,NULL,NULL,'[{"surface":"Kaffee","lemma":"Kaffee","translation":"قهوه","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_13=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,4,'learner','Ja, bitte.','بله، لطفا.',8,NULL,NULL,'ja bitte',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_14=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_laura,5,'character','Gut.','خوبه.',8,NULL,NULL,NULL,NULL,'[{"surface":"Gut","lemma":"gut","translation":"خوب","partOfSpeech":"adjective","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_15=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_3,v_c_anna,6,'learner','Danke!','ممنون!',8,NULL,NULL,'danke',NULL,'[{"surface":"Danke","lemma":"danke","translation":"ممنون","partOfSpeech":"interjection","suffix":"!"}]',NULL,NULL,NULL,NULL);
  SET v_t_16=LAST_INSERT_ID();
  INSERT INTO lessons(chapter_id,prompt_character_id,learner_character_id,title,title_translation,description,description_translation,lesson_type,storyline_key,storyline_order,difficulty,estimated_duration_sec,sort_order,status,metadata)
  VALUES(v_chapter,v_c_laura,v_c_anna,'Ein Arbeitstag','یک روز کاری','Laura und Anna wiederholen Arbeit, Büro und Pause in einem kurzen Ablauf.','لورا و آنا کار، دفتر و استراحت را در یک مکالمه کوتاه مرور می کنند.','story','anna-laura-office',4,8,110,4,'validated','{"relationship":"colleagues","storyArc":"beginning-development-ending"}');
  SET v_l_4=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_laura,1,'character','Arbeitest du heute?','امروز کار می کنی؟',8,NULL,NULL,NULL,NULL,'[{"surface":"Arbeitest","lemma":"arbeiten","translation":"کار کردن","partOfSpeech":"verb","meaning":"کار می کنی","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun"},{"surface":"heute","lemma":"heute","translation":"امروز","partOfSpeech":"adverb","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_17=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,2,'learner','Ja. Ich arbeite heute.','بله. امروز کار می کنم.',8,NULL,NULL,'ja ich arbeite heute',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":"."},{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"arbeite","lemma":"arbeiten","translation":"کار کردن","partOfSpeech":"verb","meaning":"کار می کنم","form":"present_1sg"},{"surface":"heute","lemma":"heute","translation":"امروز","partOfSpeech":"adverb","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_18=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_laura,3,'character','Wo bist du?','کجایی؟',8,NULL,NULL,NULL,NULL,'[{"surface":"Wo","lemma":"wo","translation":"کجا","partOfSpeech":"adverb"},{"surface":"bist","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"هستی","form":"present_2sg"},{"surface":"du","lemma":"du","translation":"تو","partOfSpeech":"pronoun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_19=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,4,'learner','Ich bin im Büro.','من در دفتر کار هستم.',8,NULL,NULL,'ich bin im büro',NULL,'[{"surface":"Ich","lemma":"ich","translation":"من","partOfSpeech":"pronoun"},{"surface":"bin","lemma":"sein","translation":"بودن","partOfSpeech":"verb","meaning":"هستم","form":"present_1sg"},{"surface":"im","lemma":"in","translation":"در / داخل","partOfSpeech":"preposition","meaning":"در","form":"contraction_in_dem"},{"surface":"Büro","lemma":"Büro","translation":"دفتر کار","partOfSpeech":"noun","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_20=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_laura,5,'character','Pause?','استراحت؟',8,NULL,NULL,NULL,NULL,'[{"surface":"Pause","lemma":"Pause","translation":"استراحت","partOfSpeech":"noun","suffix":"?"}]',NULL,NULL,NULL,NULL);
  SET v_t_21=LAST_INSERT_ID();
  INSERT INTO turns(lesson_id,character_id,sort_order,role,text,translation,difficulty,audio_url,audio_duration_ms,speech_target,speech_alternatives,tokens,grammar_title,grammar_note,grammar_data,metadata)
  VALUES(v_l_4,v_c_anna,6,'learner','Ja, bitte.','بله، لطفا.',8,NULL,NULL,'ja bitte',NULL,'[{"surface":"Ja","lemma":"ja","translation":"بله / آره","partOfSpeech":"interjection","suffix":","},{"surface":"bitte","lemma":"bitte","translation":"لطفا / خواهش می کنم","partOfSpeech":"interjection","suffix":"."}]',NULL,NULL,NULL,NULL);
  SET v_t_22=LAST_INSERT_ID();
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_gut,'review',0,3);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_morgen,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_anna,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_laura,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_arbeiten,'passive',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_heute,'passive',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ja,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_1,v_w_ich_arbeite_heute,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_wo,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_sein,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_du,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_in,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_buero,'passive',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_bis,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_spaeter,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_2,v_w_ich_bin_im_buero,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_pause,'new',1,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_bitte,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_kaffee,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_gut,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_3,v_w_danke,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_arbeiten,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_du,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_heute,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ja,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_ich,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_wo,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_sein,'review',0,2);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_in,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_buero,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_pause,'review',0,1);
  INSERT INTO lesson_words(lesson_id,word_id,learning_role,is_target,exposure_count) VALUES(v_l_4,v_w_bitte,'review',0,1);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'new_word',1,NULL,v_w_ich_arbeite_heute,'عبارت جدید',NULL,8,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',2,v_t_1,NULL,'به لورا گوش کن',NULL,8,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',3,v_t_2,NULL,'صبح بخیر بگو',NULL,8,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',4,v_t_3,NULL,'به سوال لورا گوش کن',NULL,8,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',5,v_t_4,NULL,'بگو امروز کار می کنی',NULL,8,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'listen',6,v_t_5,NULL,'به لورا گوش کن',NULL,8,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'speak',7,v_t_6,NULL,'تشکر کن',NULL,8,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_1,'meaning_choice',8,v_t_4,NULL,'معنی درست را انتخاب کن',NULL,8,'{"mode":"turn_translation","question":"«Ich arbeite heute.» یعنی چی؟","choices":["امروز کار می کنم.","امروز صبحانه می خورم.","امروز قهوه می خواهم."],"correctIndex":0}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'new_word',1,NULL,v_w_ich_bin_im_buero,'عبارت جدید',NULL,8,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',2,v_t_7,NULL,'به سوال لورا گوش کن',NULL,8,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',3,v_t_8,NULL,'بگو کجایی',NULL,8,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'listen',4,v_t_9,NULL,'به لورا گوش کن',NULL,8,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'speak',5,v_t_10,NULL,'خداحافظی کن',NULL,8,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'meaning_choice',6,v_t_8,NULL,'معنی درست را انتخاب کن',NULL,8,'{"mode":"turn_translation","question":"«Ich bin im Büro.» یعنی چی؟","choices":["من در دفتر کار هستم.","من در کافه هستم.","من امروز کار نمی کنم."],"correctIndex":0}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_2,'word_order',7,v_t_8,NULL,'جمله را به ترتیب درست بساز',NULL,8,'{"source":"turn_tokens","shuffle":true}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'new_word',1,NULL,v_w_pause,'کلمه جدید',NULL,8,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',2,v_t_11,NULL,'به لورا گوش کن',NULL,8,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',3,v_t_12,NULL,'استراحت را قبول کن',NULL,8,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',4,v_t_13,NULL,'به لورا گوش کن',NULL,8,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',5,v_t_14,NULL,'قهوه را قبول کن',NULL,8,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'listen',6,v_t_15,NULL,'به لورا گوش کن',NULL,8,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'speak',7,v_t_16,NULL,'تشکر کن',NULL,8,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'meaning_choice',8,NULL,v_w_pause,'معنی درست را انتخاب کن',NULL,8,'{"mode":"word_translation","question":"Pause","choices":["استراحت","قرار","صبحانه"],"correctIndex":0}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_3,'reading_comprehension',9,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,8,'{"source":"lesson_story","question":"آنا در زمان استراحت چه چیزی می خواهد؟","choices":["قهوه","آبمیوه","سوپ"],"correctIndex":0}',NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',1,v_t_17,NULL,'به سوال لورا گوش کن',NULL,8,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',2,v_t_18,NULL,'بگو امروز کار می کنی',NULL,8,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',3,v_t_19,NULL,'به لورا گوش کن',NULL,8,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',4,v_t_20,NULL,'بگو کجایی',NULL,8,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'listen',5,v_t_21,NULL,'به لورا گوش کن',NULL,8,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'speak',6,v_t_22,NULL,'استراحت را قبول کن',NULL,8,NULL,NULL);
  INSERT INTO activities(lesson_id,activity_type,sort_order,turn_id,word_id,prompt,instruction,difficulty,config,metadata) VALUES(v_l_4,'reading_comprehension',7,NULL,NULL,'مکالمه را بخوان و جواب بده',NULL,8,'{"source":"lesson_story","question":"آنا امروز کجاست؟","choices":["در دفتر کار","در سوپرمارکت","در رستوران"],"correctIndex":0}',NULL);
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter; IF v_count<>4 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Unexpected Series 013 lesson count.'; END IF;
  SELECT COUNT(*) INTO v_count FROM lessons WHERE chapter_id=v_chapter AND prompt_character_id=learner_character_id; IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Every Lesson requires two different Characters.'; END IF;
  SELECT COUNT(*) INTO v_count FROM turns t JOIN lessons l ON l.id=t.lesson_id WHERE l.chapter_id=v_chapter AND t.role='learner' AND (t.speech_target IS NULL OR TRIM(t.speech_target)=''); IF v_count<>0 THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Learner Turn without speech_target.'; END IF;
  UPDATE chapters SET status='validated' WHERE id=v_chapter;
  COMMIT;
END$$
DELIMITER ;
CALL import_nova_series_013_v9();
DROP PROCEDURE IF EXISTS import_nova_series_013_v9;